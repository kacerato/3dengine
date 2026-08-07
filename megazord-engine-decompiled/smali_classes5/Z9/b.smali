.class public LZ9/b;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(IIILZ9/c;)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "x",
            "y",
            "z",
            "data"
        }
    .end annotation

    iget-object v0, p3, LZ9/c;->b:LOc/q;

    int-to-float p0, p0

    int-to-float p1, p1

    int-to-float p2, p2

    invoke-virtual {v0, p0, p1, p2}, LOc/q;->s(FFF)V

    iget p0, p3, LZ9/c;->c:I

    add-int/lit8 p1, p0, 0x1

    iput p1, p3, LZ9/c;->c:I

    return p0
.end method

.method public static b(FF)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "blockType",
            "atlasSideCount"
        }
    .end annotation

    div-float/2addr p0, p1

    float-to-int v0, p0

    int-to-float v0, v0

    sub-float/2addr p0, v0

    mul-float/2addr p0, p1

    float-to-int p0, p0

    add-int/lit8 p0, p0, -0x1

    sub-float/2addr p1, v0

    float-to-int p1, p1

    add-int/lit8 p1, p1, -0x1

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    int-to-float p0, p0

    int-to-float p1, p1

    invoke-direct {v0, p0, p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;-><init>(FF)V

    return-object v0
.end method

.method public static c(LZ9/c;ILX9/c;LJAVARuntime/Point3;I)V
    .locals 14
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "data",
            "textureIndex",
            "generatorListener",
            "coords",
            "forwardDir"
        }
    .end annotation

    move-object v0, p0

    iget v1, v0, LZ9/c;->f:I

    iget v2, v0, LZ9/c;->g:I

    iget v3, v0, LZ9/c;->h:I

    invoke-static {v1, v2, v3, p0}, LZ9/b;->a(IIILZ9/c;)I

    move-result v10

    iget v1, v0, LZ9/c;->f:I

    add-int/lit8 v1, v1, 0x1

    iget v2, v0, LZ9/c;->g:I

    iget v3, v0, LZ9/c;->h:I

    invoke-static {v1, v2, v3, p0}, LZ9/b;->a(IIILZ9/c;)I

    move-result v11

    iget v1, v0, LZ9/c;->f:I

    add-int/lit8 v1, v1, 0x1

    iget v2, v0, LZ9/c;->g:I

    add-int/lit8 v2, v2, 0x1

    iget v3, v0, LZ9/c;->h:I

    invoke-static {v1, v2, v3, p0}, LZ9/b;->a(IIILZ9/c;)I

    move-result v12

    iget v1, v0, LZ9/c;->f:I

    iget v2, v0, LZ9/c;->g:I

    add-int/lit8 v2, v2, 0x1

    iget v3, v0, LZ9/c;->h:I

    invoke-static {v1, v2, v3, p0}, LZ9/b;->a(IIILZ9/c;)I

    move-result v13

    iget-object v1, v0, LZ9/c;->a:LOc/n;

    invoke-virtual {v1, v12, v11, v10}, LOc/n;->l(III)V

    iget-object v1, v0, LZ9/c;->a:LOc/n;

    invoke-virtual {v1, v10, v13, v12}, LOc/n;->l(III)V

    iget-object v1, v0, LZ9/c;->d:LOc/q;

    const/4 v2, 0x0

    const/high16 v3, -0x40800000    # -1.0f

    invoke-virtual {v1, v2, v2, v3}, LOc/q;->s(FFF)V

    iget-object v1, v0, LZ9/c;->d:LOc/q;

    invoke-virtual {v1, v2, v2, v3}, LOc/q;->s(FFF)V

    iget-object v1, v0, LZ9/c;->d:LOc/q;

    invoke-virtual {v1, v2, v2, v3}, LOc/q;->s(FFF)V

    iget-object v1, v0, LZ9/c;->d:LOc/q;

    invoke-virtual {v1, v2, v2, v3}, LOc/q;->s(FFF)V

    move v1, p1

    int-to-float v1, v1

    iget v2, v0, LZ9/c;->j:I

    int-to-float v2, v2

    invoke-static {v1, v2}, LZ9/b;->b(FF)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    move-result-object v1

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->k0()F

    move-result v2

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->l0()F

    move-result v1

    iget v3, v0, LZ9/c;->j:I

    int-to-float v3, v3

    iget-object v4, v0, LZ9/c;->e:LOc/p;

    div-float/2addr v2, v3

    div-float/2addr v1, v3

    invoke-virtual {v4, v2, v1}, LOc/p;->m(FF)V

    iget-object v4, v0, LZ9/c;->e:LOc/p;

    const/high16 v5, 0x3f800000    # 1.0f

    div-float/2addr v5, v3

    add-float v3, v2, v5

    invoke-virtual {v4, v3, v1}, LOc/p;->m(FF)V

    iget-object v4, v0, LZ9/c;->e:LOc/p;

    add-float/2addr v1, v5

    invoke-virtual {v4, v3, v1}, LOc/p;->m(FF)V

    iget-object v3, v0, LZ9/c;->e:LOc/p;

    invoke-virtual {v3, v2, v1}, LOc/p;->m(FF)V

    iget-object v5, v0, LZ9/c;->k:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    iget-object v6, v0, LZ9/c;->l:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;

    iget v7, v0, LZ9/c;->i:I

    move-object/from16 v4, p2

    move/from16 v8, p4

    move-object/from16 v9, p3

    invoke-interface/range {v4 .. v13}, LX9/c;->onFaceBuilt(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;IILJAVARuntime/Point3;IIII)V

    return-void
.end method

.method public static d(LZ9/c;ILX9/c;LJAVARuntime/Point3;I)V
    .locals 14
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "data",
            "textureIndex",
            "generatorListener",
            "coords",
            "forwardDir"
        }
    .end annotation

    move-object v0, p0

    iget v1, v0, LZ9/c;->f:I

    iget v2, v0, LZ9/c;->g:I

    iget v3, v0, LZ9/c;->h:I

    invoke-static {v1, v2, v3, p0}, LZ9/b;->a(IIILZ9/c;)I

    move-result v10

    iget v1, v0, LZ9/c;->f:I

    add-int/lit8 v1, v1, 0x1

    iget v2, v0, LZ9/c;->g:I

    iget v3, v0, LZ9/c;->h:I

    invoke-static {v1, v2, v3, p0}, LZ9/b;->a(IIILZ9/c;)I

    move-result v11

    iget v1, v0, LZ9/c;->f:I

    add-int/lit8 v1, v1, 0x1

    iget v2, v0, LZ9/c;->g:I

    iget v3, v0, LZ9/c;->h:I

    add-int/lit8 v3, v3, 0x1

    invoke-static {v1, v2, v3, p0}, LZ9/b;->a(IIILZ9/c;)I

    move-result v12

    iget v1, v0, LZ9/c;->f:I

    iget v2, v0, LZ9/c;->g:I

    iget v3, v0, LZ9/c;->h:I

    add-int/lit8 v3, v3, 0x1

    invoke-static {v1, v2, v3, p0}, LZ9/b;->a(IIILZ9/c;)I

    move-result v13

    iget-object v1, v0, LZ9/c;->a:LOc/n;

    invoke-virtual {v1, v10, v11, v12}, LOc/n;->l(III)V

    iget-object v1, v0, LZ9/c;->a:LOc/n;

    invoke-virtual {v1, v12, v13, v10}, LOc/n;->l(III)V

    iget-object v1, v0, LZ9/c;->d:LOc/q;

    const/4 v2, 0x0

    const/high16 v3, -0x40800000    # -1.0f

    invoke-virtual {v1, v2, v3, v2}, LOc/q;->s(FFF)V

    iget-object v1, v0, LZ9/c;->d:LOc/q;

    invoke-virtual {v1, v2, v3, v2}, LOc/q;->s(FFF)V

    iget-object v1, v0, LZ9/c;->d:LOc/q;

    invoke-virtual {v1, v2, v3, v2}, LOc/q;->s(FFF)V

    iget-object v1, v0, LZ9/c;->d:LOc/q;

    invoke-virtual {v1, v2, v3, v2}, LOc/q;->s(FFF)V

    move v1, p1

    int-to-float v1, v1

    iget v2, v0, LZ9/c;->j:I

    int-to-float v2, v2

    invoke-static {v1, v2}, LZ9/b;->b(FF)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    move-result-object v1

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->k0()F

    move-result v2

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->l0()F

    move-result v1

    iget v3, v0, LZ9/c;->j:I

    int-to-float v3, v3

    iget-object v4, v0, LZ9/c;->e:LOc/p;

    div-float/2addr v2, v3

    div-float/2addr v1, v3

    const/high16 v5, 0x3f800000    # 1.0f

    div-float/2addr v5, v3

    add-float v3, v1, v5

    invoke-virtual {v4, v2, v3}, LOc/p;->m(FF)V

    iget-object v4, v0, LZ9/c;->e:LOc/p;

    add-float/2addr v5, v2

    invoke-virtual {v4, v5, v3}, LOc/p;->m(FF)V

    iget-object v3, v0, LZ9/c;->e:LOc/p;

    invoke-virtual {v3, v5, v1}, LOc/p;->m(FF)V

    iget-object v3, v0, LZ9/c;->e:LOc/p;

    invoke-virtual {v3, v2, v1}, LOc/p;->m(FF)V

    iget-object v5, v0, LZ9/c;->k:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    iget-object v6, v0, LZ9/c;->l:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;

    iget v7, v0, LZ9/c;->i:I

    move-object/from16 v4, p2

    move/from16 v8, p4

    move-object/from16 v9, p3

    invoke-interface/range {v4 .. v13}, LX9/c;->onFaceBuilt(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;IILJAVARuntime/Point3;IIII)V

    return-void
.end method

.method public static e(LZ9/c;ILX9/c;LJAVARuntime/Point3;I)V
    .locals 14
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "data",
            "textureIndex",
            "generatorListener",
            "coords",
            "forwardDir"
        }
    .end annotation

    move-object v0, p0

    iget v1, v0, LZ9/c;->f:I

    iget v2, v0, LZ9/c;->g:I

    iget v3, v0, LZ9/c;->h:I

    add-int/lit8 v3, v3, 0x1

    invoke-static {v1, v2, v3, p0}, LZ9/b;->a(IIILZ9/c;)I

    move-result v10

    iget v1, v0, LZ9/c;->f:I

    add-int/lit8 v1, v1, 0x1

    iget v2, v0, LZ9/c;->g:I

    iget v3, v0, LZ9/c;->h:I

    add-int/lit8 v3, v3, 0x1

    invoke-static {v1, v2, v3, p0}, LZ9/b;->a(IIILZ9/c;)I

    move-result v11

    iget v1, v0, LZ9/c;->f:I

    add-int/lit8 v1, v1, 0x1

    iget v2, v0, LZ9/c;->g:I

    add-int/lit8 v2, v2, 0x1

    iget v3, v0, LZ9/c;->h:I

    add-int/lit8 v3, v3, 0x1

    invoke-static {v1, v2, v3, p0}, LZ9/b;->a(IIILZ9/c;)I

    move-result v12

    iget v1, v0, LZ9/c;->f:I

    iget v2, v0, LZ9/c;->g:I

    add-int/lit8 v2, v2, 0x1

    iget v3, v0, LZ9/c;->h:I

    add-int/lit8 v3, v3, 0x1

    invoke-static {v1, v2, v3, p0}, LZ9/b;->a(IIILZ9/c;)I

    move-result v13

    iget-object v1, v0, LZ9/c;->a:LOc/n;

    invoke-virtual {v1, v10, v11, v12}, LOc/n;->l(III)V

    iget-object v1, v0, LZ9/c;->a:LOc/n;

    invoke-virtual {v1, v12, v13, v10}, LOc/n;->l(III)V

    iget-object v1, v0, LZ9/c;->d:LOc/q;

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2, v2, v3}, LOc/q;->s(FFF)V

    iget-object v1, v0, LZ9/c;->d:LOc/q;

    invoke-virtual {v1, v2, v2, v3}, LOc/q;->s(FFF)V

    iget-object v1, v0, LZ9/c;->d:LOc/q;

    invoke-virtual {v1, v2, v2, v3}, LOc/q;->s(FFF)V

    iget-object v1, v0, LZ9/c;->d:LOc/q;

    invoke-virtual {v1, v2, v2, v3}, LOc/q;->s(FFF)V

    move v1, p1

    int-to-float v1, v1

    iget v2, v0, LZ9/c;->j:I

    int-to-float v2, v2

    invoke-static {v1, v2}, LZ9/b;->b(FF)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    move-result-object v1

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->k0()F

    move-result v2

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->l0()F

    move-result v1

    iget v4, v0, LZ9/c;->j:I

    int-to-float v4, v4

    iget-object v5, v0, LZ9/c;->e:LOc/p;

    div-float/2addr v2, v4

    div-float/2addr v1, v4

    invoke-virtual {v5, v2, v1}, LOc/p;->m(FF)V

    iget-object v5, v0, LZ9/c;->e:LOc/p;

    div-float/2addr v3, v4

    add-float v4, v2, v3

    invoke-virtual {v5, v4, v1}, LOc/p;->m(FF)V

    iget-object v5, v0, LZ9/c;->e:LOc/p;

    add-float/2addr v1, v3

    invoke-virtual {v5, v4, v1}, LOc/p;->m(FF)V

    iget-object v3, v0, LZ9/c;->e:LOc/p;

    invoke-virtual {v3, v2, v1}, LOc/p;->m(FF)V

    iget-object v5, v0, LZ9/c;->k:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    iget-object v6, v0, LZ9/c;->l:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;

    iget v7, v0, LZ9/c;->i:I

    move-object/from16 v4, p2

    move/from16 v8, p4

    move-object/from16 v9, p3

    invoke-interface/range {v4 .. v13}, LX9/c;->onFaceBuilt(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;IILJAVARuntime/Point3;IIII)V

    return-void
.end method

.method public static f(LZ9/c;ILX9/c;LJAVARuntime/Point3;I)V
    .locals 14
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "data",
            "textureIndex",
            "generatorListener",
            "coords",
            "forwardDir"
        }
    .end annotation

    move-object v0, p0

    iget v1, v0, LZ9/c;->f:I

    add-int/lit8 v1, v1, 0x1

    iget v2, v0, LZ9/c;->g:I

    iget v3, v0, LZ9/c;->h:I

    invoke-static {v1, v2, v3, p0}, LZ9/b;->a(IIILZ9/c;)I

    move-result v10

    iget v1, v0, LZ9/c;->f:I

    add-int/lit8 v1, v1, 0x1

    iget v2, v0, LZ9/c;->g:I

    iget v3, v0, LZ9/c;->h:I

    add-int/lit8 v3, v3, 0x1

    invoke-static {v1, v2, v3, p0}, LZ9/b;->a(IIILZ9/c;)I

    move-result v11

    iget v1, v0, LZ9/c;->f:I

    add-int/lit8 v1, v1, 0x1

    iget v2, v0, LZ9/c;->g:I

    add-int/lit8 v2, v2, 0x1

    iget v3, v0, LZ9/c;->h:I

    add-int/lit8 v3, v3, 0x1

    invoke-static {v1, v2, v3, p0}, LZ9/b;->a(IIILZ9/c;)I

    move-result v12

    iget v1, v0, LZ9/c;->f:I

    add-int/lit8 v1, v1, 0x1

    iget v2, v0, LZ9/c;->g:I

    add-int/lit8 v2, v2, 0x1

    iget v3, v0, LZ9/c;->h:I

    invoke-static {v1, v2, v3, p0}, LZ9/b;->a(IIILZ9/c;)I

    move-result v13

    iget-object v1, v0, LZ9/c;->a:LOc/n;

    invoke-virtual {v1, v12, v11, v10}, LOc/n;->l(III)V

    iget-object v1, v0, LZ9/c;->a:LOc/n;

    invoke-virtual {v1, v10, v13, v12}, LOc/n;->l(III)V

    iget-object v1, v0, LZ9/c;->d:LOc/q;

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v3}, LOc/q;->s(FFF)V

    iget-object v1, v0, LZ9/c;->d:LOc/q;

    invoke-virtual {v1, v2, v3, v3}, LOc/q;->s(FFF)V

    iget-object v1, v0, LZ9/c;->d:LOc/q;

    invoke-virtual {v1, v2, v3, v3}, LOc/q;->s(FFF)V

    iget-object v1, v0, LZ9/c;->d:LOc/q;

    invoke-virtual {v1, v2, v3, v3}, LOc/q;->s(FFF)V

    move v1, p1

    int-to-float v1, v1

    iget v3, v0, LZ9/c;->j:I

    int-to-float v3, v3

    invoke-static {v1, v3}, LZ9/b;->b(FF)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    move-result-object v1

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->k0()F

    move-result v3

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->l0()F

    move-result v1

    iget v4, v0, LZ9/c;->j:I

    int-to-float v4, v4

    iget-object v5, v0, LZ9/c;->e:LOc/p;

    div-float/2addr v3, v4

    div-float/2addr v1, v4

    invoke-virtual {v5, v3, v1}, LOc/p;->m(FF)V

    iget-object v5, v0, LZ9/c;->e:LOc/p;

    div-float/2addr v2, v4

    add-float v4, v3, v2

    invoke-virtual {v5, v4, v1}, LOc/p;->m(FF)V

    iget-object v5, v0, LZ9/c;->e:LOc/p;

    add-float/2addr v1, v2

    invoke-virtual {v5, v4, v1}, LOc/p;->m(FF)V

    iget-object v2, v0, LZ9/c;->e:LOc/p;

    invoke-virtual {v2, v3, v1}, LOc/p;->m(FF)V

    iget-object v5, v0, LZ9/c;->k:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    iget-object v6, v0, LZ9/c;->l:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;

    iget v7, v0, LZ9/c;->i:I

    move-object/from16 v4, p2

    move/from16 v8, p4

    move-object/from16 v9, p3

    invoke-interface/range {v4 .. v13}, LX9/c;->onFaceBuilt(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;IILJAVARuntime/Point3;IIII)V

    return-void
.end method

.method public static g(LZ9/c;ILX9/c;LJAVARuntime/Point3;I)V
    .locals 14
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "data",
            "textureIndex",
            "generatorListener",
            "coords",
            "forwardDir"
        }
    .end annotation

    move-object v0, p0

    iget v1, v0, LZ9/c;->f:I

    iget v2, v0, LZ9/c;->g:I

    iget v3, v0, LZ9/c;->h:I

    invoke-static {v1, v2, v3, p0}, LZ9/b;->a(IIILZ9/c;)I

    move-result v10

    iget v1, v0, LZ9/c;->f:I

    iget v2, v0, LZ9/c;->g:I

    iget v3, v0, LZ9/c;->h:I

    add-int/lit8 v3, v3, 0x1

    invoke-static {v1, v2, v3, p0}, LZ9/b;->a(IIILZ9/c;)I

    move-result v11

    iget v1, v0, LZ9/c;->f:I

    iget v2, v0, LZ9/c;->g:I

    add-int/lit8 v2, v2, 0x1

    iget v3, v0, LZ9/c;->h:I

    add-int/lit8 v3, v3, 0x1

    invoke-static {v1, v2, v3, p0}, LZ9/b;->a(IIILZ9/c;)I

    move-result v12

    iget v1, v0, LZ9/c;->f:I

    iget v2, v0, LZ9/c;->g:I

    add-int/lit8 v2, v2, 0x1

    iget v3, v0, LZ9/c;->h:I

    invoke-static {v1, v2, v3, p0}, LZ9/b;->a(IIILZ9/c;)I

    move-result v13

    iget-object v1, v0, LZ9/c;->a:LOc/n;

    invoke-virtual {v1, v10, v11, v12}, LOc/n;->l(III)V

    iget-object v1, v0, LZ9/c;->a:LOc/n;

    invoke-virtual {v1, v12, v13, v10}, LOc/n;->l(III)V

    iget-object v1, v0, LZ9/c;->d:LOc/q;

    const/high16 v2, -0x40800000    # -1.0f

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v3}, LOc/q;->s(FFF)V

    iget-object v1, v0, LZ9/c;->d:LOc/q;

    invoke-virtual {v1, v2, v3, v3}, LOc/q;->s(FFF)V

    iget-object v1, v0, LZ9/c;->d:LOc/q;

    invoke-virtual {v1, v2, v3, v3}, LOc/q;->s(FFF)V

    iget-object v1, v0, LZ9/c;->d:LOc/q;

    invoke-virtual {v1, v2, v3, v3}, LOc/q;->s(FFF)V

    move v1, p1

    int-to-float v1, v1

    iget v2, v0, LZ9/c;->j:I

    int-to-float v2, v2

    invoke-static {v1, v2}, LZ9/b;->b(FF)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    move-result-object v1

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->k0()F

    move-result v2

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->l0()F

    move-result v1

    iget v3, v0, LZ9/c;->j:I

    int-to-float v3, v3

    iget-object v4, v0, LZ9/c;->e:LOc/p;

    div-float/2addr v2, v3

    div-float/2addr v1, v3

    invoke-virtual {v4, v2, v1}, LOc/p;->m(FF)V

    iget-object v4, v0, LZ9/c;->e:LOc/p;

    const/high16 v5, 0x3f800000    # 1.0f

    div-float/2addr v5, v3

    add-float v3, v2, v5

    invoke-virtual {v4, v3, v1}, LOc/p;->m(FF)V

    iget-object v4, v0, LZ9/c;->e:LOc/p;

    add-float/2addr v1, v5

    invoke-virtual {v4, v3, v1}, LOc/p;->m(FF)V

    iget-object v3, v0, LZ9/c;->e:LOc/p;

    invoke-virtual {v3, v2, v1}, LOc/p;->m(FF)V

    iget-object v5, v0, LZ9/c;->k:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    iget-object v6, v0, LZ9/c;->l:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;

    iget v7, v0, LZ9/c;->i:I

    move-object/from16 v4, p2

    move/from16 v8, p4

    move-object/from16 v9, p3

    invoke-interface/range {v4 .. v13}, LX9/c;->onFaceBuilt(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;IILJAVARuntime/Point3;IIII)V

    return-void
.end method

.method public static h(LZ9/c;ILX9/c;LJAVARuntime/Point3;I)V
    .locals 14
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "data",
            "textureIndex",
            "generatorListener",
            "coords",
            "forwardDir"
        }
    .end annotation

    move-object v0, p0

    iget v1, v0, LZ9/c;->f:I

    iget v2, v0, LZ9/c;->g:I

    add-int/lit8 v2, v2, 0x1

    iget v3, v0, LZ9/c;->h:I

    invoke-static {v1, v2, v3, p0}, LZ9/b;->a(IIILZ9/c;)I

    move-result v10

    iget v1, v0, LZ9/c;->f:I

    add-int/lit8 v1, v1, 0x1

    iget v2, v0, LZ9/c;->g:I

    add-int/lit8 v2, v2, 0x1

    iget v3, v0, LZ9/c;->h:I

    invoke-static {v1, v2, v3, p0}, LZ9/b;->a(IIILZ9/c;)I

    move-result v11

    iget v1, v0, LZ9/c;->f:I

    add-int/lit8 v1, v1, 0x1

    iget v2, v0, LZ9/c;->g:I

    add-int/lit8 v2, v2, 0x1

    iget v3, v0, LZ9/c;->h:I

    add-int/lit8 v3, v3, 0x1

    invoke-static {v1, v2, v3, p0}, LZ9/b;->a(IIILZ9/c;)I

    move-result v12

    iget v1, v0, LZ9/c;->f:I

    iget v2, v0, LZ9/c;->g:I

    add-int/lit8 v2, v2, 0x1

    iget v3, v0, LZ9/c;->h:I

    add-int/lit8 v3, v3, 0x1

    invoke-static {v1, v2, v3, p0}, LZ9/b;->a(IIILZ9/c;)I

    move-result v13

    iget-object v1, v0, LZ9/c;->a:LOc/n;

    invoke-virtual {v1, v12, v11, v10}, LOc/n;->l(III)V

    iget-object v1, v0, LZ9/c;->a:LOc/n;

    invoke-virtual {v1, v10, v13, v12}, LOc/n;->l(III)V

    iget-object v1, v0, LZ9/c;->d:LOc/q;

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2, v3, v2}, LOc/q;->s(FFF)V

    iget-object v1, v0, LZ9/c;->d:LOc/q;

    invoke-virtual {v1, v2, v3, v2}, LOc/q;->s(FFF)V

    iget-object v1, v0, LZ9/c;->d:LOc/q;

    invoke-virtual {v1, v2, v3, v2}, LOc/q;->s(FFF)V

    iget-object v1, v0, LZ9/c;->d:LOc/q;

    invoke-virtual {v1, v2, v3, v2}, LOc/q;->s(FFF)V

    move v1, p1

    int-to-float v1, v1

    iget v2, v0, LZ9/c;->j:I

    int-to-float v2, v2

    invoke-static {v1, v2}, LZ9/b;->b(FF)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    move-result-object v1

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->k0()F

    move-result v2

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->l0()F

    move-result v1

    iget v4, v0, LZ9/c;->j:I

    int-to-float v4, v4

    iget-object v5, v0, LZ9/c;->e:LOc/p;

    div-float/2addr v2, v4

    div-float/2addr v1, v4

    div-float/2addr v3, v4

    add-float v4, v1, v3

    invoke-virtual {v5, v2, v4}, LOc/p;->m(FF)V

    iget-object v5, v0, LZ9/c;->e:LOc/p;

    add-float/2addr v3, v2

    invoke-virtual {v5, v3, v4}, LOc/p;->m(FF)V

    iget-object v4, v0, LZ9/c;->e:LOc/p;

    invoke-virtual {v4, v3, v1}, LOc/p;->m(FF)V

    iget-object v3, v0, LZ9/c;->e:LOc/p;

    invoke-virtual {v3, v2, v1}, LOc/p;->m(FF)V

    iget-object v5, v0, LZ9/c;->k:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    iget-object v6, v0, LZ9/c;->l:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;

    iget v7, v0, LZ9/c;->i:I

    move-object/from16 v4, p2

    move/from16 v8, p4

    move-object/from16 v9, p3

    invoke-interface/range {v4 .. v13}, LX9/c;->onFaceBuilt(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;IILJAVARuntime/Point3;IIII)V

    return-void
.end method

.method public static i(LV9/b;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
        }
    .end annotation

    iget v0, p0, LV9/b;->a:I

    add-int/lit8 v0, v0, 0x4

    iput v0, p0, LV9/b;->a:I

    iget v0, p0, LV9/b;->b:I

    add-int/lit8 v0, v0, 0x4

    iput v0, p0, LV9/b;->b:I

    iget v0, p0, LV9/b;->d:I

    add-int/lit8 v0, v0, 0x4

    iput v0, p0, LV9/b;->d:I

    iget v0, p0, LV9/b;->c:I

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, LV9/b;->c:I

    return-void
.end method
