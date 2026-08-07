.class public Lcom/jme3/scene/debug/WireFrustum;
.super Lcom/jme3/scene/Mesh;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/jme3/scene/Mesh;-><init>()V

    return-void
.end method

.method public constructor <init>([Lcom/jme3/math/Vector3f;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/jme3/scene/Mesh;-><init>()V

    .line 3
    invoke-static {p0, p1}, Lcom/jme3/scene/debug/WireFrustum;->initGeom(Lcom/jme3/scene/Mesh;[Lcom/jme3/math/Vector3f;)V

    return-void
.end method

.method private static initGeom(Lcom/jme3/scene/Mesh;[Lcom/jme3/math/Vector3f;)V
    .locals 3

    const/4 v0, 0x2

    const/4 v1, 0x3

    if-eqz p1, :cond_0

    sget-object v2, Lcom/jme3/scene/VertexBuffer$Type;->Position:Lcom/jme3/scene/VertexBuffer$Type;

    invoke-static {p1}, Lcom/jme3/util/BufferUtils;->createFloatBuffer([Lcom/jme3/math/Vector3f;)Ljava/nio/FloatBuffer;

    move-result-object p1

    invoke-virtual {p0, v2, v1, p1}, Lcom/jme3/scene/Mesh;->setBuffer(Lcom/jme3/scene/VertexBuffer$Type;ILjava/nio/FloatBuffer;)V

    :cond_0
    sget-object p1, Lcom/jme3/scene/VertexBuffer$Type;->Index:Lcom/jme3/scene/VertexBuffer$Type;

    const/16 v1, 0x18

    new-array v1, v1, [S

    fill-array-data v1, :array_0

    invoke-virtual {p0, p1, v0, v1}, Lcom/jme3/scene/Mesh;->setBuffer(Lcom/jme3/scene/VertexBuffer$Type;I[S)V

    invoke-virtual {p0, p1}, Lcom/jme3/scene/Mesh;->getBuffer(Lcom/jme3/scene/VertexBuffer$Type;)Lcom/jme3/scene/VertexBuffer;

    move-result-object p1

    sget-object v0, Lcom/jme3/scene/VertexBuffer$Usage;->Static:Lcom/jme3/scene/VertexBuffer$Usage;

    invoke-virtual {p1, v0}, Lcom/jme3/scene/VertexBuffer;->setUsage(Lcom/jme3/scene/VertexBuffer$Usage;)V

    sget-object p1, Lcom/jme3/scene/Mesh$Mode;->Lines:Lcom/jme3/scene/Mesh$Mode;

    invoke-virtual {p0, p1}, Lcom/jme3/scene/Mesh;->setMode(Lcom/jme3/scene/Mesh$Mode;)V

    return-void

    :array_0
    .array-data 2
        0x0s
        0x1s
        0x1s
        0x2s
        0x2s
        0x3s
        0x3s
        0x0s
        0x4s
        0x5s
        0x5s
        0x6s
        0x6s
        0x7s
        0x7s
        0x4s
        0x0s
        0x4s
        0x1s
        0x5s
        0x2s
        0x6s
        0x3s
        0x7s
    .end array-data
.end method

.method public static makeFrustum([Lcom/jme3/math/Vector3f;)Lcom/jme3/scene/Mesh;
    .locals 1

    new-instance v0, Lcom/jme3/scene/Mesh;

    invoke-direct {v0}, Lcom/jme3/scene/Mesh;-><init>()V

    invoke-static {v0, p0}, Lcom/jme3/scene/debug/WireFrustum;->initGeom(Lcom/jme3/scene/Mesh;[Lcom/jme3/math/Vector3f;)V

    return-object v0
.end method


# virtual methods
.method public update([Lcom/jme3/math/Vector3f;)V
    .locals 2

    sget-object v0, Lcom/jme3/scene/VertexBuffer$Type;->Position:Lcom/jme3/scene/VertexBuffer$Type;

    invoke-virtual {p0, v0}, Lcom/jme3/scene/Mesh;->getBuffer(Lcom/jme3/scene/VertexBuffer$Type;)Lcom/jme3/scene/VertexBuffer;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v1, 0x3

    invoke-static {p1}, Lcom/jme3/util/BufferUtils;->createFloatBuffer([Lcom/jme3/math/Vector3f;)Ljava/nio/FloatBuffer;

    move-result-object p1

    invoke-virtual {p0, v0, v1, p1}, Lcom/jme3/scene/Mesh;->setBuffer(Lcom/jme3/scene/VertexBuffer$Type;ILjava/nio/FloatBuffer;)V

    return-void

    :cond_0
    invoke-static {p1}, Lcom/jme3/util/BufferUtils;->createFloatBuffer([Lcom/jme3/math/Vector3f;)Ljava/nio/FloatBuffer;

    move-result-object p1

    invoke-virtual {v1}, Lcom/jme3/scene/VertexBuffer;->getData()Ljava/nio/Buffer;

    move-result-object v0

    check-cast v0, Ljava/nio/FloatBuffer;

    invoke-virtual {p1}, Ljava/nio/FloatBuffer;->rewind()Ljava/nio/Buffer;

    invoke-virtual {v0}, Ljava/nio/FloatBuffer;->rewind()Ljava/nio/Buffer;

    invoke-virtual {v0, p1}, Ljava/nio/FloatBuffer;->put(Ljava/nio/FloatBuffer;)Ljava/nio/FloatBuffer;

    invoke-virtual {v0}, Ljava/nio/FloatBuffer;->rewind()Ljava/nio/Buffer;

    invoke-virtual {v1, v0}, Lcom/jme3/scene/VertexBuffer;->updateData(Ljava/nio/Buffer;)V

    invoke-virtual {p0}, Lcom/jme3/scene/Mesh;->updateBound()V

    return-void
.end method
