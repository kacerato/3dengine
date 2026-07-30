from pathlib import Path

ROOT = Path(__file__).resolve().parents[1]
MARKER = ROOT / ".studio-v3-validation-applied"


def main() -> None:
    if MARKER.exists():
        return
    path = ROOT / "core/model/src/main/kotlin/com/mobilegamestudio/core/model/SceneValidation.kt"
    text = path.read_text(encoding="utf-8")
    anchor = '''                is TerrainComponent -> if (
                    component.resolution !in 9..257 ||'''
    replacement = '''                is EditableMeshComponent -> if (
                    component.vertices.isEmpty() ||
                    component.vertices.size > 250_000 ||
                    component.vertices.any { !it.isFinite() } ||
                    component.faces.isEmpty() ||
                    component.faces.size > 250_000 ||
                    component.faces.any { face ->
                        face.vertexIndices.size < 3 ||
                            face.vertexIndices.any { it !in component.vertices.indices }
                    } ||
                    component.selectedVertices.any { it !in component.vertices.indices } ||
                    (component.selectedFace != null && component.selectedFace !in component.faces.indices) ||
                    !component.detailSize.isFinite() ||
                    component.detailSize !in 0.001f..100f
                ) errors += SceneValidationError.InvalidComponent(objectValue.id, component.componentId)
                is VoxelVolumeComponent -> if (
                    component.resolution !in 8..48 ||
                    component.density.size != component.resolution * component.resolution * component.resolution ||
                    component.density.any { !it.isFinite() || it !in 0f..1f } ||
                    !component.size.isFinite() ||
                    component.size.x <= 0f ||
                    component.size.y <= 0f ||
                    component.size.z <= 0f ||
                    !component.isoLevel.isFinite() ||
                    component.isoLevel !in 0.01f..0.99f
                ) errors += SceneValidationError.InvalidComponent(objectValue.id, component.componentId)
                is TerrainComponent -> if (
                    component.resolution !in 9..257 ||'''
    if replacement not in text:
        if text.count(anchor) != 1:
            raise RuntimeError("SceneValidation terrain anchor was not unique")
        path.write_text(text.replace(anchor, replacement, 1), encoding="utf-8")
    MARKER.write_text("Studio V3 component validation applied\n", encoding="utf-8")


if __name__ == "__main__":
    main()
