.class public LV9/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:LY9/a;

.field public final b:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "voxelChunk"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, LY9/a;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, LY9/a;-><init>(I)V

    iput-object v0, p0, LV9/a;->a:LY9/a;

    iput-object p1, p0, LV9/a;->b:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;

    return-void
.end method


# virtual methods
.method public a(IIILOc/h;II)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "x",
            "y",
            "z",
            "blocks",
            "chunkX",
            "chunkZ"
        }
    .end annotation

    :try_start_0
    invoke-virtual {p4, p1, p3, p2}, LOc/h;->u(III)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    add-int/2addr p5, p1

    add-int/2addr p6, p3

    iget-object p1, p0, LV9/a;->a:LY9/a;

    invoke-virtual {p1, p5, p2, p6}, LY9/a;->c(III)Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1, p5, p2, p6}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;->getBlock(III)I

    move-result p1

    if-ltz p1, :cond_0

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public b(IILOc/h;LZ9/c;IILX9/c;)V
    .locals 16
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "width",
            "height",
            "blocks",
            "data",
            "chunkX",
            "chunkZ",
            "generatorListener"
        }
    .end annotation

    move/from16 v0, p1

    const/4 v1, 0x0

    move v12, v1

    :goto_0
    if-ge v12, v0, :cond_2

    move v13, v1

    :goto_1
    if-ge v13, v0, :cond_1

    move/from16 v14, p2

    move v15, v1

    :goto_2
    if-ge v15, v14, :cond_0

    move-object/from16 v11, p3

    invoke-virtual {v11, v12, v13, v15}, LOc/h;->u(III)I

    move-result v6

    move-object/from16 v2, p0

    move v3, v12

    move v4, v15

    move v5, v13

    move-object/from16 v7, p4

    move-object/from16 v8, p3

    move/from16 v9, p5

    move/from16 v10, p6

    move-object/from16 v11, p7

    invoke-virtual/range {v2 .. v11}, LV9/a;->c(IIIILZ9/c;LOc/h;IILX9/c;)V

    add-int/lit8 v15, v15, 0x1

    goto :goto_2

    :cond_0
    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    :cond_1
    move/from16 v14, p2

    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final c(IIIILZ9/c;LOc/h;IILX9/c;)V
    .locals 15
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "x",
            "y",
            "z",
            "blockType",
            "data",
            "blocks",
            "chunkX",
            "chunkZ",
            "generatorListener"
        }
    .end annotation

    move/from16 v7, p1

    move/from16 v8, p2

    move/from16 v9, p3

    move/from16 v10, p4

    move-object/from16 v11, p5

    move-object/from16 v12, p9

    new-instance v13, LJAVARuntime/Point3;

    invoke-direct {v13, v7, v8, v9}, LJAVARuntime/Point3;-><init>(III)V

    iput v7, v11, LZ9/c;->f:I

    iput v8, v11, LZ9/c;->g:I

    iput v9, v11, LZ9/c;->h:I

    iput v10, v11, LZ9/c;->i:I

    if-lez v10, :cond_5

    add-int/lit8 v2, v8, 0x1

    move-object v0, p0

    move/from16 v1, p1

    move/from16 v3, p3

    move-object/from16 v4, p6

    move/from16 v5, p7

    move/from16 v6, p8

    invoke-virtual/range {v0 .. v6}, LV9/a;->a(IIILOc/h;II)I

    move-result v0

    const/4 v1, 0x2

    invoke-interface {v12, v10, v0, v1, v13}, LX9/c;->drawFace(IIILJAVARuntime/Point3;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, v11, LZ9/c;->i:I

    invoke-interface {v12, v0, v1}, LX9/c;->getTextureIndex(II)I

    move-result v0

    invoke-static {v11, v0, v12, v13, v1}, LZ9/b;->h(LZ9/c;ILX9/c;LJAVARuntime/Point3;I)V

    :cond_0
    add-int/lit8 v2, v8, -0x1

    move-object v0, p0

    move/from16 v1, p1

    move/from16 v3, p3

    move-object/from16 v4, p6

    move/from16 v5, p7

    move/from16 v6, p8

    invoke-virtual/range {v0 .. v6}, LV9/a;->a(IIILOc/h;II)I

    move-result v0

    const/4 v1, 0x3

    invoke-interface {v12, v10, v0, v1, v13}, LX9/c;->drawFace(IIILJAVARuntime/Point3;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, v11, LZ9/c;->i:I

    invoke-interface {v12, v0, v1}, LX9/c;->getTextureIndex(II)I

    move-result v0

    invoke-static {v11, v0, v12, v13, v1}, LZ9/b;->d(LZ9/c;ILX9/c;LJAVARuntime/Point3;I)V

    :cond_1
    add-int/lit8 v3, v9, 0x1

    move-object v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v4, p6

    move/from16 v5, p7

    move/from16 v6, p8

    invoke-virtual/range {v0 .. v6}, LV9/a;->a(IIILOc/h;II)I

    move-result v0

    const/4 v1, 0x4

    invoke-interface {v12, v10, v0, v1, v13}, LX9/c;->drawFace(IIILJAVARuntime/Point3;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, v11, LZ9/c;->i:I

    invoke-interface {v12, v0, v1}, LX9/c;->getTextureIndex(II)I

    move-result v0

    invoke-static {v11, v0, v12, v13, v1}, LZ9/b;->e(LZ9/c;ILX9/c;LJAVARuntime/Point3;I)V

    :cond_2
    add-int/lit8 v3, v9, -0x1

    move-object v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v4, p6

    move/from16 v5, p7

    move/from16 v6, p8

    invoke-virtual/range {v0 .. v6}, LV9/a;->a(IIILOc/h;II)I

    move-result v0

    const/4 v1, 0x5

    invoke-interface {v12, v10, v0, v1, v13}, LX9/c;->drawFace(IIILJAVARuntime/Point3;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget v0, v11, LZ9/c;->i:I

    invoke-interface {v12, v0, v1}, LX9/c;->getTextureIndex(II)I

    move-result v0

    invoke-static {v11, v0, v12, v13, v1}, LZ9/b;->c(LZ9/c;ILX9/c;LJAVARuntime/Point3;I)V

    :cond_3
    add-int/lit8 v1, v7, 0x1

    move-object v0, p0

    move/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p6

    move/from16 v5, p7

    move/from16 v6, p8

    invoke-virtual/range {v0 .. v6}, LV9/a;->a(IIILOc/h;II)I

    move-result v0

    const/4 v1, 0x0

    invoke-interface {v12, v10, v0, v1, v13}, LX9/c;->drawFace(IIILJAVARuntime/Point3;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget v0, v11, LZ9/c;->i:I

    invoke-interface {v12, v0, v1}, LX9/c;->getTextureIndex(II)I

    move-result v0

    invoke-static {v11, v0, v12, v13, v1}, LZ9/b;->f(LZ9/c;ILX9/c;LJAVARuntime/Point3;I)V

    :cond_4
    const/4 v14, 0x1

    add-int/lit8 v1, v7, -0x1

    move-object v0, p0

    move/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p6

    move/from16 v5, p7

    move/from16 v6, p8

    invoke-virtual/range {v0 .. v6}, LV9/a;->a(IIILOc/h;II)I

    move-result v0

    invoke-interface {v12, v10, v0, v14, v13}, LX9/c;->drawFace(IIILJAVARuntime/Point3;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget v0, v11, LZ9/c;->i:I

    invoke-interface {v12, v0, v14}, LX9/c;->getTextureIndex(II)I

    move-result v0

    invoke-static {v11, v0, v12, v13, v14}, LZ9/b;->g(LZ9/c;ILX9/c;LJAVARuntime/Point3;I)V

    :cond_5
    return-void
.end method
