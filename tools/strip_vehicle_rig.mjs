import { readFileSync, writeFileSync } from "node:fs";

const [inputPath, outputPath] = process.argv.slice(2);
if (!inputPath || !outputPath) {
  throw new Error("Usage: node tools/strip_vehicle_rig.mjs input.glb output.glb");
}

const source = readFileSync(inputPath);
if (source.toString("ascii", 0, 4) !== "glTF" || source.readUInt32LE(4) !== 2) {
  throw new Error("Input is not a glTF 2.0 binary.");
}

const chunks = [];
let offset = 12;
while (offset < source.length) {
  const length = source.readUInt32LE(offset);
  const type = source.readUInt32LE(offset + 4);
  const data = source.subarray(offset + 8, offset + 8 + length);
  chunks.push({ type, data });
  offset += 8 + length;
}

const jsonChunk = chunks.find((chunk) => chunk.type === 0x4e4f534a);
if (!jsonChunk) throw new Error("GLB has no JSON chunk.");

const document = JSON.parse(jsonChunk.data.toString("utf8").trimEnd());
const removedAnimations = document.animations?.length ?? 0;
const removedSkins = document.skins?.length ?? 0;
delete document.animations;
delete document.skins;

for (const node of document.nodes ?? []) delete node.skin;
for (const mesh of document.meshes ?? []) {
  for (const primitive of mesh.primitives ?? []) {
    delete primitive.attributes?.JOINTS_0;
    delete primitive.attributes?.WEIGHTS_0;
  }
}

const encodedJson = Buffer.from(JSON.stringify(document), "utf8");
const jsonPadding = (4 - (encodedJson.length % 4)) % 4;
const paddedJson = Buffer.concat([encodedJson, Buffer.alloc(jsonPadding, 0x20)]);
const outputChunks = [
  { type: 0x4e4f534a, data: paddedJson },
  ...chunks.filter((chunk) => chunk.type !== 0x4e4f534a),
];
const totalLength = 12 + outputChunks.reduce(
  (sum, chunk) => sum + 8 + chunk.data.length,
  0,
);
const output = Buffer.alloc(totalLength);
output.write("glTF", 0, "ascii");
output.writeUInt32LE(2, 4);
output.writeUInt32LE(totalLength, 8);
offset = 12;
for (const chunk of outputChunks) {
  output.writeUInt32LE(chunk.data.length, offset);
  output.writeUInt32LE(chunk.type, offset + 4);
  chunk.data.copy(output, offset + 8);
  offset += 8 + chunk.data.length;
}
writeFileSync(outputPath, output);
console.log(JSON.stringify({
  inputBytes: source.length,
  outputBytes: output.length,
  removedAnimations,
  removedSkins,
}));
