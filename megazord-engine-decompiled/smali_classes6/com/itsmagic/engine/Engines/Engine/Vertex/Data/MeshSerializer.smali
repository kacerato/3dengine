.class public Lcom/itsmagic/engine/Engines/Engine/Vertex/Data/MeshSerializer;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/itsmagic/engine/Engines/Engine/Vertex/Data/MeshSerializer$Data;,
        Lcom/itsmagic/engine/Engines/Engine/Vertex/Data/MeshSerializer$b;,
        Lcom/itsmagic/engine/Engines/Engine/Vertex/Data/MeshSerializer$c;
    }
.end annotation


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "MeshSerializer"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Ljava/nio/ByteBuffer;Ljava/nio/ShortBuffer;Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)[B
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Data/MeshSerializer;->b(Ljava/nio/ByteBuffer;Ljava/nio/ShortBuffer;Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)[B

    move-result-object p0

    return-object p0
.end method

.method public static b(Ljava/nio/ByteBuffer;Ljava/nio/ShortBuffer;Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)[B
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "posUv",
            "quatS4",
            "indexData",
            "skinData"
        }
    .end annotation

    invoke-static {p0}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Data/MeshSerializer;->e(Ljava/nio/ByteBuffer;)[B

    move-result-object p0

    invoke-static {p1}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Data/MeshSerializer;->f(Ljava/nio/ShortBuffer;)[B

    move-result-object p1

    invoke-static {p2}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Data/MeshSerializer;->e(Ljava/nio/ByteBuffer;)[B

    move-result-object p2

    invoke-static {p3}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Data/MeshSerializer;->e(Ljava/nio/ByteBuffer;)[B

    move-result-object p3

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    array-length v1, p0

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    add-int/lit8 v1, v1, 0x10

    if-eqz p1, :cond_1

    array-length v2, p1

    goto :goto_1

    :cond_1
    move v2, v0

    :goto_1
    add-int/lit8 v2, v2, 0x8

    add-int/2addr v1, v2

    if-eqz p2, :cond_2

    array-length v2, p2

    goto :goto_2

    :cond_2
    move v2, v0

    :goto_2
    add-int/lit8 v2, v2, 0x8

    add-int/2addr v1, v2

    if-eqz p3, :cond_3

    array-length v0, p3

    :cond_3
    add-int/lit8 v0, v0, 0x8

    add-int/2addr v1, v0

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    const v1, 0x42494e32

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    invoke-static {v0, v1, p0}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Data/MeshSerializer;->o(Ljava/nio/ByteBuffer;I[B)V

    const/4 p0, 0x2

    invoke-static {v0, p0, p1}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Data/MeshSerializer;->o(Ljava/nio/ByteBuffer;I[B)V

    invoke-static {v0, v1, p2}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Data/MeshSerializer;->o(Ljava/nio/ByteBuffer;I[B)V

    invoke-static {v0, v1, p3}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Data/MeshSerializer;->o(Ljava/nio/ByteBuffer;I[B)V

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p0

    return-object p0
.end method

.method public static c(Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;Z)Lcom/itsmagic/engine/Engines/Engine/Vertex/Data/MeshSerializer$Data;
    .locals 13
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "vertex",
            "serializeRenderableData"
        }
    .end annotation

    if-eqz p0, :cond_14

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vertex/Data/MeshSerializer$Data;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Data/MeshSerializer$Data;-><init>()V

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->p1()Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    move-result-object v1

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->i1()Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    move-result-object v2

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->d1()Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;

    move-result-object v3

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->s1()Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    move-result-object v4

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->w0()Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    move-result-object v5

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->H0()Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    move-result-object v6

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->P0()Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    move-result-object p0

    const/4 v7, 0x1

    const/4 v8, 0x3

    const/4 v9, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->h()I

    move-result v10

    if-lt v10, v8, :cond_0

    move v10, v7

    goto :goto_0

    :cond_0
    move v10, v9

    :goto_0
    iput-boolean v10, v0, Lcom/itsmagic/engine/Engines/Engine/Vertex/Data/MeshSerializer$Data;->hasVertices:Z

    const/4 v10, 0x2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->h()I

    move-result v11

    if-lt v11, v10, :cond_1

    move v11, v7

    goto :goto_1

    :cond_1
    move v11, v9

    :goto_1
    iput-boolean v11, v0, Lcom/itsmagic/engine/Engines/Engine/Vertex/Data/MeshSerializer$Data;->hasUVs:Z

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->h()I

    move-result v11

    if-lt v11, v8, :cond_2

    move v11, v7

    goto :goto_2

    :cond_2
    move v11, v9

    :goto_2
    iput-boolean v11, v0, Lcom/itsmagic/engine/Engines/Engine/Vertex/Data/MeshSerializer$Data;->hasIndices:Z

    if-eqz v4, :cond_3

    invoke-virtual {v4}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->h()I

    move-result v11

    if-lt v11, v8, :cond_3

    move v11, v7

    goto :goto_3

    :cond_3
    move v11, v9

    :goto_3
    iput-boolean v11, v0, Lcom/itsmagic/engine/Engines/Engine/Vertex/Data/MeshSerializer$Data;->hasWeights:Z

    if-eqz v5, :cond_4

    invoke-virtual {v5}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->h()I

    move-result v11

    if-lt v11, v8, :cond_4

    move v11, v7

    goto :goto_4

    :cond_4
    move v11, v9

    :goto_4
    iput-boolean v11, v0, Lcom/itsmagic/engine/Engines/Engine/Vertex/Data/MeshSerializer$Data;->hasJoints:Z

    if-eqz v6, :cond_5

    invoke-virtual {v6}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->h()I

    move-result v11

    if-lt v11, v8, :cond_5

    move v11, v7

    goto :goto_5

    :cond_5
    move v11, v9

    :goto_5
    iput-boolean v11, v0, Lcom/itsmagic/engine/Engines/Engine/Vertex/Data/MeshSerializer$Data;->hasNormals:Z

    const/4 v11, 0x4

    if-eqz p0, :cond_6

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->h()I

    move-result v12

    if-lt v12, v11, :cond_6

    move v12, v7

    goto :goto_6

    :cond_6
    move v12, v9

    :goto_6
    iput-boolean v12, v0, Lcom/itsmagic/engine/Engines/Engine/Vertex/Data/MeshSerializer$Data;->hasTangents:Z

    iget-boolean v12, v0, Lcom/itsmagic/engine/Engines/Engine/Vertex/Data/MeshSerializer$Data;->hasVertices:Z

    if-eqz v12, :cond_7

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->h()I

    move-result v12

    div-int/2addr v12, v8

    goto :goto_7

    :cond_7
    move v12, v9

    :goto_7
    iput v12, v0, Lcom/itsmagic/engine/Engines/Engine/Vertex/Data/MeshSerializer$Data;->verticesCount:I

    iget-boolean v12, v0, Lcom/itsmagic/engine/Engines/Engine/Vertex/Data/MeshSerializer$Data;->hasUVs:Z

    if-eqz v12, :cond_8

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->h()I

    move-result v2

    div-int/2addr v2, v10

    goto :goto_8

    :cond_8
    move v2, v9

    :goto_8
    iput v2, v0, Lcom/itsmagic/engine/Engines/Engine/Vertex/Data/MeshSerializer$Data;->uvsCount:I

    iget-boolean v2, v0, Lcom/itsmagic/engine/Engines/Engine/Vertex/Data/MeshSerializer$Data;->hasIndices:Z

    if-eqz v2, :cond_9

    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->h()I

    move-result v2

    div-int/2addr v2, v8

    goto :goto_9

    :cond_9
    move v2, v9

    :goto_9
    iput v2, v0, Lcom/itsmagic/engine/Engines/Engine/Vertex/Data/MeshSerializer$Data;->trianglesCount:I

    iget-boolean v2, v0, Lcom/itsmagic/engine/Engines/Engine/Vertex/Data/MeshSerializer$Data;->hasWeights:Z

    if-eqz v2, :cond_a

    invoke-virtual {v4}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->h()I

    move-result v2

    div-int/2addr v2, v8

    goto :goto_a

    :cond_a
    move v2, v9

    :goto_a
    iput v2, v0, Lcom/itsmagic/engine/Engines/Engine/Vertex/Data/MeshSerializer$Data;->weightsCount:I

    iget-boolean v2, v0, Lcom/itsmagic/engine/Engines/Engine/Vertex/Data/MeshSerializer$Data;->hasJoints:Z

    if-eqz v2, :cond_b

    invoke-virtual {v5}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->h()I

    move-result v2

    div-int/2addr v2, v8

    goto :goto_b

    :cond_b
    move v2, v9

    :goto_b
    iput v2, v0, Lcom/itsmagic/engine/Engines/Engine/Vertex/Data/MeshSerializer$Data;->jointsCount:I

    iget-boolean v2, v0, Lcom/itsmagic/engine/Engines/Engine/Vertex/Data/MeshSerializer$Data;->hasNormals:Z

    if-eqz v2, :cond_c

    invoke-virtual {v6}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->h()I

    move-result v2

    div-int/2addr v2, v8

    goto :goto_c

    :cond_c
    move v2, v9

    :goto_c
    iput v2, v0, Lcom/itsmagic/engine/Engines/Engine/Vertex/Data/MeshSerializer$Data;->normalsCount:I

    iget-boolean v2, v0, Lcom/itsmagic/engine/Engines/Engine/Vertex/Data/MeshSerializer$Data;->hasTangents:Z

    if-eqz v2, :cond_d

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->h()I

    move-result p0

    div-int/2addr p0, v11

    goto :goto_d

    :cond_d
    move p0, v9

    :goto_d
    iput p0, v0, Lcom/itsmagic/engine/Engines/Engine/Vertex/Data/MeshSerializer$Data;->tangentsCount:I

    invoke-static {v0, v7}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Data/MeshSerializer$Data;->b(Lcom/itsmagic/engine/Engines/Engine/Vertex/Data/MeshSerializer$Data;Z)Z

    if-eqz p1, :cond_f

    if-eqz v3, :cond_f

    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->U()I

    move-result p0

    const p1, 0xffff

    if-gt p0, p1, :cond_e

    goto :goto_e

    :cond_e
    move v7, v9

    :goto_e
    iput-boolean v7, v0, Lcom/itsmagic/engine/Engines/Engine/Vertex/Data/MeshSerializer$Data;->useUshortRenderableData:Z

    :cond_f
    iget-boolean p0, v0, Lcom/itsmagic/engine/Engines/Engine/Vertex/Data/MeshSerializer$Data;->hasVertices:Z

    const/4 p1, 0x0

    if-eqz p0, :cond_11

    move p0, p1

    :goto_f
    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->h()I

    move-result v2

    if-ge v9, v2, :cond_12

    invoke-virtual {v1, v9}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->X(I)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpl-float v3, v2, p0

    if-lez v3, :cond_10

    move p0, v2

    :cond_10
    add-int/lit8 v9, v9, 0x1

    goto :goto_f

    :cond_11
    move p0, p1

    :cond_12
    cmpl-float p1, p0, p1

    if-nez p1, :cond_13

    const/high16 p0, 0x3f800000    # 1.0f

    :cond_13
    iput p0, v0, Lcom/itsmagic/engine/Engines/Engine/Vertex/Data/MeshSerializer$Data;->maxExtent:F

    return-object v0

    :cond_14
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "vertex can\'t be null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static d([B[B[B)[B
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "jsonBytes",
            "binBytes",
            "bin2Bytes"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    array-length v1, p0

    array-length v2, p1

    add-int/2addr v1, v2

    const/4 v2, 0x0

    if-eqz p2, :cond_0

    array-length v3, p2

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    add-int/2addr v1, v3

    add-int/lit16 v1, v1, 0x400

    invoke-direct {v0, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    new-instance v1, Ljava/util/zip/ZipOutputStream;

    new-instance v3, Ljava/io/BufferedOutputStream;

    invoke-direct {v3, v0}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v1, v3}, Ljava/util/zip/ZipOutputStream;-><init>(Ljava/io/OutputStream;)V

    new-instance v3, Ljava/util/zip/CRC32;

    invoke-direct {v3}, Ljava/util/zip/CRC32;-><init>()V

    invoke-virtual {v3, p0}, Ljava/util/zip/CRC32;->update([B)V

    new-instance v4, Ljava/util/zip/ZipEntry;

    const-string v5, "data"

    invoke-direct {v4, v5}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/util/zip/ZipEntry;->setMethod(I)V

    array-length v5, p0

    int-to-long v5, v5

    invoke-virtual {v4, v5, v6}, Ljava/util/zip/ZipEntry;->setSize(J)V

    array-length v5, p0

    int-to-long v5, v5

    invoke-virtual {v4, v5, v6}, Ljava/util/zip/ZipEntry;->setCompressedSize(J)V

    invoke-virtual {v3}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/util/zip/ZipEntry;->setCrc(J)V

    invoke-virtual {v1, v4}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    invoke-virtual {v1, p0}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v1}, Ljava/util/zip/ZipOutputStream;->closeEntry()V

    invoke-virtual {v3}, Ljava/util/zip/CRC32;->reset()V

    invoke-virtual {v3, p1}, Ljava/util/zip/CRC32;->update([B)V

    new-instance p0, Ljava/util/zip/ZipEntry;

    const-string v4, "bin"

    invoke-direct {p0, v4}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Ljava/util/zip/ZipEntry;->setMethod(I)V

    array-length v4, p1

    int-to-long v4, v4

    invoke-virtual {p0, v4, v5}, Ljava/util/zip/ZipEntry;->setSize(J)V

    array-length v4, p1

    int-to-long v4, v4

    invoke-virtual {p0, v4, v5}, Ljava/util/zip/ZipEntry;->setCompressedSize(J)V

    invoke-virtual {v3}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v4

    invoke-virtual {p0, v4, v5}, Ljava/util/zip/ZipEntry;->setCrc(J)V

    invoke-virtual {v1, p0}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    invoke-virtual {v1, p1}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v1}, Ljava/util/zip/ZipOutputStream;->closeEntry()V

    if-eqz p2, :cond_1

    array-length p0, p2

    if-lez p0, :cond_1

    invoke-virtual {v3}, Ljava/util/zip/CRC32;->reset()V

    invoke-virtual {v3, p2}, Ljava/util/zip/CRC32;->update([B)V

    new-instance p0, Ljava/util/zip/ZipEntry;

    const-string p1, "bin2"

    invoke-direct {p0, p1}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Ljava/util/zip/ZipEntry;->setMethod(I)V

    array-length p1, p2

    int-to-long v4, p1

    invoke-virtual {p0, v4, v5}, Ljava/util/zip/ZipEntry;->setSize(J)V

    array-length p1, p2

    int-to-long v4, p1

    invoke-virtual {p0, v4, v5}, Ljava/util/zip/ZipEntry;->setCompressedSize(J)V

    invoke-virtual {v3}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Ljava/util/zip/ZipEntry;->setCrc(J)V

    invoke-virtual {v1, p0}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    invoke-virtual {v1, p2}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v1}, Ljava/util/zip/ZipOutputStream;->closeEntry()V

    :cond_1
    invoke-virtual {v1}, Ljava/util/zip/ZipOutputStream;->finish()V

    invoke-virtual {v1}, Ljava/util/zip/ZipOutputStream;->close()V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0
.end method

.method public static e(Ljava/nio/ByteBuffer;)[B
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "buf"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    invoke-virtual {p0}, Ljava/nio/Buffer;->remaining()I

    move-result v1

    new-array v2, v1, [B

    invoke-virtual {p0, v2}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    move-object v0, v2

    :goto_0
    return-object v0
.end method

.method public static f(Ljava/nio/ShortBuffer;)[B
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "sb"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Ljava/nio/ShortBuffer;->duplicate()Ljava/nio/ShortBuffer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/nio/ShortBuffer;->clear()Ljava/nio/Buffer;

    invoke-virtual {p0}, Ljava/nio/Buffer;->remaining()I

    move-result v1

    if-gtz v1, :cond_1

    return-object v0

    :cond_1
    mul-int/lit8 v0, v1, 0x2

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    invoke-virtual {p0}, Ljava/nio/ShortBuffer;->get()S

    move-result v3

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p0

    return-object p0
.end method

.method public static g(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dataFile"
        }
    .end annotation

    const-string v0, ".mesh"

    invoke-static {p0, v0}, Lbd/l;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, ".mwf"

    invoke-static {p0, v0}, Lbd/l;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "File needs to be .mesh"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lf8/c;->t()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/itsmagic/engine/Core/Components/ProjectController/a;->Q(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lmd/b;->o(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_2
    return-void
.end method

.method public static h(Ljava/io/File;LYb/a;Lcom/itsmagic/engine/Engines/Engine/Vertex/Data/MeshSerializer$b;)Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;
    .locals 37
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "file",
            "importSettings",
            "listener"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->exists()Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    return-object v3

    :cond_0
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-virtual {v2}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const-wide v7, 0x7fffffffffffffffL

    const/4 v9, 0x1

    const-wide/16 v5, 0x0

    move-object v4, v10

    :try_start_2
    invoke-virtual/range {v4 .. v9}, Ljava/nio/channels/FileChannel;->lock(JJZ)Ljava/nio/channels/FileLock;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    :try_start_3
    new-instance v4, Ljava/util/zip/ZipFile;

    invoke-direct {v4, v0}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :try_start_4
    const-string v5, "data"

    invoke-virtual {v4, v5}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    if-nez v5, :cond_2

    :try_start_5
    invoke-virtual {v4}, Ljava/util/zip/ZipFile;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    if-eqz v10, :cond_1

    :try_start_6
    invoke-virtual {v10}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    move-object v1, v0

    goto/16 :goto_18

    :cond_1
    :goto_0
    :try_start_7
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0

    return-object v3

    :catch_0
    move-exception v0

    goto/16 :goto_1a

    :catchall_2
    move-exception v0

    move-object v1, v0

    goto/16 :goto_16

    :cond_2
    :try_start_8
    invoke-virtual {v4, v5}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v5
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    :try_start_9
    new-instance v6, Ljava/io/BufferedReader;

    new-instance v7, Ljava/io/InputStreamReader;

    sget-object v8, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v7, v5, v8}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v6, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_7

    :try_start_a
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    :goto_1
    invoke-virtual {v6}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_3

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v8, 0xa

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    :catchall_3
    move-exception v0

    move-object v1, v0

    goto/16 :goto_10

    :cond_3
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-static {}, Lp8/a;->m()Lcom/google/gson/Gson;

    move-result-object v8

    const-class v9, Lcom/itsmagic/engine/Engines/Engine/Vertex/Data/MeshSerializer$Data;

    invoke-virtual {v8, v7, v9}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/itsmagic/engine/Engines/Engine/Vertex/Data/MeshSerializer$Data;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    :try_start_b
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_7

    if-eqz v5, :cond_4

    :try_start_c
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    goto :goto_2

    :catchall_4
    move-exception v0

    move-object v1, v0

    goto/16 :goto_14

    :cond_4
    :goto_2
    const-string v5, "bin2"

    invoke-virtual {v4, v5}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v5

    const/4 v6, 0x0

    if-eqz v5, :cond_7

    invoke-virtual {v5}, Ljava/util/zip/ZipEntry;->getSize()J

    move-result-wide v8

    const-wide/16 v11, 0x0

    cmp-long v8, v8, v11

    if-lez v8, :cond_7

    invoke-virtual {v4, v5}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v8
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    :try_start_d
    new-instance v9, Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v5}, Ljava/util/zip/ZipEntry;->getSize()J

    move-result-wide v11

    const-wide/16 v13, 0x400

    invoke-static {v13, v14, v11, v12}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v11

    long-to-int v5, v11

    invoke-direct {v9, v5}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    const/16 v5, 0x2000

    new-array v5, v5, [B

    :goto_3
    invoke-virtual {v8, v5}, Ljava/io/InputStream;->read([B)I

    move-result v11

    const/4 v12, -0x1

    if-eq v11, v12, :cond_5

    invoke-virtual {v9, v5, v6, v11}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_3

    :catchall_5
    move-exception v0

    move-object v1, v0

    goto :goto_4

    :cond_5
    invoke-virtual {v9}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_5

    :try_start_e
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_4

    goto :goto_6

    :goto_4
    if-eqz v8, :cond_6

    :try_start_f
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_6

    goto :goto_5

    :catchall_6
    move-exception v0

    move-object v5, v0

    :try_start_10
    invoke-virtual {v1, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_6
    :goto_5
    throw v1
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_4

    :cond_7
    move-object v5, v3

    :goto_6
    :try_start_11
    invoke-virtual {v4}, Ljava/util/zip/ZipFile;->close()V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_2

    if-nez v7, :cond_9

    if-eqz v10, :cond_8

    :try_start_12
    invoke-virtual {v10}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->close()V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_1

    :cond_8
    :try_start_13
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_0

    return-object v3

    :cond_9
    :try_start_14
    new-instance v4, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    invoke-direct {v4}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;-><init>()V

    iget-boolean v8, v7, Lcom/itsmagic/engine/Engines/Engine/Vertex/Data/MeshSerializer$Data;->hasIndices:Z

    if-eqz v8, :cond_a

    new-instance v8, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;

    iget v9, v7, Lcom/itsmagic/engine/Engines/Engine/Vertex/Data/MeshSerializer$Data;->trianglesCount:I

    mul-int/lit8 v9, v9, 0x3

    invoke-direct {v8, v9}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;-><init>(I)V

    invoke-virtual {v4, v8}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->o2(Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;)V

    :cond_a
    iget-boolean v8, v7, Lcom/itsmagic/engine/Engines/Engine/Vertex/Data/MeshSerializer$Data;->hasVertices:Z

    if-eqz v8, :cond_b

    new-instance v8, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    iget v9, v7, Lcom/itsmagic/engine/Engines/Engine/Vertex/Data/MeshSerializer$Data;->verticesCount:I

    mul-int/lit8 v9, v9, 0x3

    sget-object v11, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer$b;->FLOAT32:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer$b;

    invoke-direct {v8, v9, v11}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;-><init>(ILcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer$b;)V

    invoke-virtual {v4, v8}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->w2(Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;)V

    :cond_b
    iget-boolean v8, v7, Lcom/itsmagic/engine/Engines/Engine/Vertex/Data/MeshSerializer$Data;->hasUVs:Z

    if-eqz v8, :cond_c

    new-instance v8, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    iget v9, v7, Lcom/itsmagic/engine/Engines/Engine/Vertex/Data/MeshSerializer$Data;->uvsCount:I

    mul-int/lit8 v9, v9, 0x2

    sget-object v11, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer$b;->FLOAT16:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer$b;

    invoke-direct {v8, v9, v11}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;-><init>(ILcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer$b;)V

    invoke-virtual {v4, v8}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->s2(Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;)V

    :cond_c
    iget-boolean v8, v7, Lcom/itsmagic/engine/Engines/Engine/Vertex/Data/MeshSerializer$Data;->hasWeights:Z

    if-eqz v8, :cond_d

    new-instance v8, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    iget v9, v7, Lcom/itsmagic/engine/Engines/Engine/Vertex/Data/MeshSerializer$Data;->weightsCount:I

    mul-int/lit8 v9, v9, 0x3

    sget-object v11, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer$b;->UNSIGNED_BYTE_NORMALIZED:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer$b;

    invoke-direct {v8, v9, v11}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;-><init>(ILcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer$b;)V

    invoke-virtual {v4, v8}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->y2(Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;)V

    :cond_d
    iget-boolean v8, v7, Lcom/itsmagic/engine/Engines/Engine/Vertex/Data/MeshSerializer$Data;->hasJoints:Z

    if-eqz v8, :cond_e

    new-instance v8, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    iget v9, v7, Lcom/itsmagic/engine/Engines/Engine/Vertex/Data/MeshSerializer$Data;->jointsCount:I

    mul-int/lit8 v9, v9, 0x3

    sget-object v11, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer$b;->UNSIGNED_BYTE:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer$b;

    invoke-direct {v8, v9, v11}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;-><init>(ILcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer$b;)V

    invoke-virtual {v4, v8}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->Y1(Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;)V

    :cond_e
    iget-boolean v8, v7, Lcom/itsmagic/engine/Engines/Engine/Vertex/Data/MeshSerializer$Data;->hasNormals:Z

    if-eqz v8, :cond_f

    new-instance v8, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    iget v9, v7, Lcom/itsmagic/engine/Engines/Engine/Vertex/Data/MeshSerializer$Data;->normalsCount:I

    mul-int/lit8 v9, v9, 0x3

    sget-object v11, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer$b;->FLOAT32:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer$b;

    invoke-direct {v8, v9, v11}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;-><init>(ILcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer$b;)V

    invoke-virtual {v4, v8}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->e2(Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;)V

    :cond_f
    iget-boolean v8, v7, Lcom/itsmagic/engine/Engines/Engine/Vertex/Data/MeshSerializer$Data;->hasTangents:Z

    if-eqz v8, :cond_10

    new-instance v8, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    iget v9, v7, Lcom/itsmagic/engine/Engines/Engine/Vertex/Data/MeshSerializer$Data;->tangentsCount:I

    mul-int/lit8 v9, v9, 0x4

    sget-object v11, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer$b;->FLOAT32:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer$b;

    invoke-direct {v8, v9, v11}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;-><init>(ILcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer$b;)V

    invoke-virtual {v4, v8}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->k2(Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;)V

    :cond_10
    iget-boolean v8, v7, Lcom/itsmagic/engine/Engines/Engine/Vertex/Data/MeshSerializer$Data;->hasVertices:Z

    const-wide/16 v11, -0x1

    if-eqz v8, :cond_11

    invoke-virtual {v4}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->p1()Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    move-result-object v8

    invoke-virtual {v8}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->e0()J

    move-result-wide v8

    move-wide v13, v8

    goto :goto_7

    :cond_11
    move-wide v13, v11

    :goto_7
    iget-boolean v8, v7, Lcom/itsmagic/engine/Engines/Engine/Vertex/Data/MeshSerializer$Data;->hasUVs:Z

    if-eqz v8, :cond_12

    invoke-virtual {v4}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->i1()Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    move-result-object v8

    invoke-virtual {v8}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->e0()J

    move-result-wide v8

    move-wide/from16 v16, v8

    goto :goto_8

    :cond_12
    move-wide/from16 v16, v11

    :goto_8
    iget-boolean v8, v7, Lcom/itsmagic/engine/Engines/Engine/Vertex/Data/MeshSerializer$Data;->hasIndices:Z

    if-eqz v8, :cond_13

    invoke-virtual {v4}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->d1()Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;

    move-result-object v8

    invoke-virtual {v8}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->X()J

    move-result-wide v8

    move-wide/from16 v19, v8

    goto :goto_9

    :cond_13
    move-wide/from16 v19, v11

    :goto_9
    iget-boolean v8, v7, Lcom/itsmagic/engine/Engines/Engine/Vertex/Data/MeshSerializer$Data;->hasWeights:Z

    if-eqz v8, :cond_14

    invoke-virtual {v4}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->s1()Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    move-result-object v8

    invoke-virtual {v8}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->e0()J

    move-result-wide v8

    move-wide/from16 v22, v8

    goto :goto_a

    :cond_14
    move-wide/from16 v22, v11

    :goto_a
    iget-boolean v8, v7, Lcom/itsmagic/engine/Engines/Engine/Vertex/Data/MeshSerializer$Data;->hasJoints:Z

    if-eqz v8, :cond_15

    invoke-virtual {v4}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->w0()Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    move-result-object v8

    invoke-virtual {v8}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->e0()J

    move-result-wide v8

    move-wide/from16 v25, v8

    goto :goto_b

    :cond_15
    move-wide/from16 v25, v11

    :goto_b
    iget-boolean v8, v7, Lcom/itsmagic/engine/Engines/Engine/Vertex/Data/MeshSerializer$Data;->hasNormals:Z

    if-eqz v8, :cond_16

    invoke-virtual {v4}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->H0()Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    move-result-object v8

    invoke-virtual {v8}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->e0()J

    move-result-wide v8

    move-wide/from16 v28, v8

    goto :goto_c

    :cond_16
    move-wide/from16 v28, v11

    :goto_c
    iget-boolean v8, v7, Lcom/itsmagic/engine/Engines/Engine/Vertex/Data/MeshSerializer$Data;->hasTangents:Z

    if-eqz v8, :cond_17

    invoke-virtual {v4}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->P0()Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    move-result-object v8

    invoke-virtual {v8}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->e0()J

    move-result-wide v11

    :cond_17
    move-wide/from16 v31, v11

    iget-boolean v15, v7, Lcom/itsmagic/engine/Engines/Engine/Vertex/Data/MeshSerializer$Data;->hasVertices:Z

    iget-boolean v8, v7, Lcom/itsmagic/engine/Engines/Engine/Vertex/Data/MeshSerializer$Data;->hasUVs:Z

    iget-boolean v9, v7, Lcom/itsmagic/engine/Engines/Engine/Vertex/Data/MeshSerializer$Data;->hasIndices:Z

    iget-boolean v11, v7, Lcom/itsmagic/engine/Engines/Engine/Vertex/Data/MeshSerializer$Data;->hasWeights:Z

    iget-boolean v12, v7, Lcom/itsmagic/engine/Engines/Engine/Vertex/Data/MeshSerializer$Data;->hasJoints:Z

    iget-boolean v3, v7, Lcom/itsmagic/engine/Engines/Engine/Vertex/Data/MeshSerializer$Data;->hasNormals:Z

    iget-boolean v6, v7, Lcom/itsmagic/engine/Engines/Engine/Vertex/Data/MeshSerializer$Data;->hasTangents:Z

    invoke-static {v7}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Data/MeshSerializer$Data;->a(Lcom/itsmagic/engine/Engines/Engine/Vertex/Data/MeshSerializer$Data;)Z

    move-result v34

    iget v0, v7, Lcom/itsmagic/engine/Engines/Engine/Vertex/Data/MeshSerializer$Data;->maxExtent:F

    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v36

    move/from16 v18, v8

    move/from16 v21, v9

    move/from16 v24, v11

    move/from16 v27, v12

    move/from16 v30, v3

    move/from16 v33, v6

    move/from16 v35, v0

    invoke-static/range {v13 .. v36}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Data/MeshSerializer;->nativeDeserialize(JZJZJZJZJZJZJZZFLjava/lang/String;)V

    if-eqz v5, :cond_18

    array-length v0, v5

    if-lez v0, :cond_18

    invoke-static {v5}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Data/MeshSerializer;->l([B)Lcom/itsmagic/engine/Engines/Engine/Vertex/Data/MeshSerializer$c;

    move-result-object v0

    iget-object v12, v0, Lcom/itsmagic/engine/Engines/Engine/Vertex/Data/MeshSerializer$c;->a:Ljava/nio/ByteBuffer;

    iget-object v13, v0, Lcom/itsmagic/engine/Engines/Engine/Vertex/Data/MeshSerializer$c;->b:Ljava/nio/ShortBuffer;

    iget-object v14, v0, Lcom/itsmagic/engine/Engines/Engine/Vertex/Data/MeshSerializer$c;->c:Ljava/nio/ByteBuffer;

    iget-object v15, v0, Lcom/itsmagic/engine/Engines/Engine/Vertex/Data/MeshSerializer$c;->d:Ljava/nio/ByteBuffer;

    iget-boolean v0, v7, Lcom/itsmagic/engine/Engines/Engine/Vertex/Data/MeshSerializer$Data;->useUshortRenderableData:Z

    move-object v11, v4

    move/from16 v16, v0

    invoke-virtual/range {v11 .. v16}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->g2(Ljava/nio/ByteBuffer;Ljava/nio/ShortBuffer;Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;Z)V

    :cond_18
    if-eqz v1, :cond_1b

    iget-boolean v0, v1, LYb/a;->a:Z

    if-eqz v0, :cond_19

    goto :goto_e

    :cond_19
    if-eqz v1, :cond_1a

    iget-boolean v0, v1, LYb/a;->b:Z

    if-eqz v0, :cond_1a

    invoke-virtual {v4}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->m0()Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;

    :cond_1a
    :goto_d
    const/4 v0, 0x0

    goto :goto_f

    :cond_1b
    :goto_e
    invoke-virtual {v4}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->apply()V

    goto :goto_d

    :goto_f
    invoke-virtual {v4, v0}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->W1(Z)V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_2

    if-eqz v10, :cond_1c

    :try_start_15
    invoke-virtual {v10}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->close()V
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_1

    :cond_1c
    :try_start_16
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_16} :catch_0

    return-object v4

    :catchall_7
    move-exception v0

    move-object v1, v0

    goto :goto_12

    :goto_10
    :try_start_17
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_8

    goto :goto_11

    :catchall_8
    move-exception v0

    move-object v3, v0

    :try_start_18
    invoke-virtual {v1, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_11
    throw v1
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_7

    :goto_12
    if-eqz v5, :cond_1d

    :try_start_19
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_9

    goto :goto_13

    :catchall_9
    move-exception v0

    move-object v3, v0

    :try_start_1a
    invoke-virtual {v1, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1d
    :goto_13
    throw v1
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_4

    :goto_14
    :try_start_1b
    invoke-virtual {v4}, Ljava/util/zip/ZipFile;->close()V
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_a

    goto :goto_15

    :catchall_a
    move-exception v0

    move-object v3, v0

    :try_start_1c
    invoke-virtual {v1, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_15
    throw v1
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_2

    :goto_16
    if-eqz v10, :cond_1e

    :try_start_1d
    invoke-virtual {v10}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->close()V
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_b

    goto :goto_17

    :catchall_b
    move-exception v0

    move-object v3, v0

    :try_start_1e
    invoke-virtual {v1, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1e
    :goto_17
    throw v1
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_1

    :goto_18
    :try_start_1f
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_c

    goto :goto_19

    :catchall_c
    move-exception v0

    move-object v2, v0

    :try_start_20
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_19
    throw v1
    :try_end_20
    .catch Ljava/io/IOException; {:try_start_20 .. :try_end_20} :catch_0

    :goto_1a
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 v1, 0x0

    return-object v1
.end method

.method public static i(Ljava/io/FileInputStream;LYb/a;Lcom/itsmagic/engine/Engines/Engine/Vertex/Data/MeshSerializer$b;)Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "file",
            "importSettings",
            "listener"
        }
    .end annotation

    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lo8/b;->f:LU8/a;

    iget-object v2, v2, LU8/a;->a:LV8/a;

    invoke-virtual {v2}, LV8/a;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/vtx/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lmd/b;->L()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    :cond_0
    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_5

    :catch_0
    move-exception p0

    goto :goto_4

    :cond_1
    :goto_0
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v2, 0x1000

    :try_start_1
    new-array v2, v2, [B

    :goto_1
    invoke-virtual {p0, v2}, Ljava/io/FileInputStream;->read([B)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_2

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4, v3}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p0

    goto :goto_2

    :cond_2
    :try_start_2
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    invoke-static {v0, p1, p2}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Data/MeshSerializer;->h(Ljava/io/File;LYb/a;Lcom/itsmagic/engine/Engines/Engine/Vertex/Data/MeshSerializer$b;)Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    move-result-object p0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :catchall_2
    return-object p0

    :goto_2
    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    goto :goto_3

    :catchall_3
    move-exception p1

    :try_start_5
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_3
    throw p0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :goto_4
    :try_start_6
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    :catchall_4
    const/4 p0, 0x0

    return-object p0

    :goto_5
    :try_start_8
    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    :catchall_5
    throw p0
.end method

.method public static j(Ljava/io/InputStream;LYb/a;Lcom/itsmagic/engine/Engines/Engine/Vertex/Data/MeshSerializer$b;)Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "file",
            "importSettings",
            "listener"
        }
    .end annotation

    instance-of v0, p0, Ljava/io/FileInputStream;

    if-eqz v0, :cond_0

    check-cast p0, Ljava/io/FileInputStream;

    invoke-static {p0, p1, p2}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Data/MeshSerializer;->i(Ljava/io/FileInputStream;LYb/a;Lcom/itsmagic/engine/Engines/Engine/Vertex/Data/MeshSerializer$b;)Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lo8/b;->f:LU8/a;

    iget-object v2, v2, LU8/a;->a:LV8/a;

    invoke-virtual {v2}, LV8/a;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/vtx/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lmd/b;->L()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    :cond_1
    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_5

    :catch_0
    move-exception p0

    goto :goto_4

    :cond_2
    :goto_0
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v2, 0x1000

    :try_start_1
    new-array v2, v2, [B

    :goto_1
    invoke-virtual {p0, v2}, Ljava/io/InputStream;->read([B)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4, v3}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p0

    goto :goto_2

    :cond_3
    :try_start_2
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    invoke-static {v0, p1, p2}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Data/MeshSerializer;->h(Ljava/io/File;LYb/a;Lcom/itsmagic/engine/Engines/Engine/Vertex/Data/MeshSerializer$b;)Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    move-result-object p0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :catchall_2
    return-object p0

    :goto_2
    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    goto :goto_3

    :catchall_3
    move-exception p1

    :try_start_5
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_3
    throw p0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :goto_4
    :try_start_6
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    :catchall_4
    const/4 p0, 0x0

    return-object p0

    :goto_5
    :try_start_8
    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    :catchall_5
    throw p0
.end method

.method public static k(Ljava/lang/String;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dataFile"
        }
    .end annotation

    const-string v0, ".mesh"

    invoke-static {p0, v0}, Lbd/l;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, ".mwf"

    invoke-static {p0, v0}, Lbd/l;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "File needs to be .mesh"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lf8/c;->t()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/itsmagic/engine/Core/Components/ProjectController/a;->Q(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lmd/b;->o(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    return p0
.end method

.method public static l([B)Lcom/itsmagic/engine/Engines/Engine/Vertex/Data/MeshSerializer$c;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bin2"
        }
    .end annotation

    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p0

    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/nio/Buffer;->remaining()I

    move-result v0

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-ge v0, v1, :cond_0

    new-instance p0, Lcom/itsmagic/engine/Engines/Engine/Vertex/Data/MeshSerializer$c;

    invoke-direct {p0, v2}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Data/MeshSerializer$c;-><init>(Lcom/itsmagic/engine/Engines/Engine/Vertex/Data/MeshSerializer$a;)V

    return-object p0

    :cond_0
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    const v3, 0x42494e32

    if-ne v0, v3, :cond_2

    const/4 v0, 0x1

    if-eq v1, v0, :cond_1

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vertex/Data/MeshSerializer$c;

    invoke-direct {v0, v2}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Data/MeshSerializer$c;-><init>(Lcom/itsmagic/engine/Engines/Engine/Vertex/Data/MeshSerializer$a;)V

    invoke-static {p0}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Data/MeshSerializer;->p(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v1

    iput-object v1, v0, Lcom/itsmagic/engine/Engines/Engine/Vertex/Data/MeshSerializer$c;->a:Ljava/nio/ByteBuffer;

    invoke-static {p0}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Data/MeshSerializer;->q(Ljava/nio/ByteBuffer;)Ljava/nio/ShortBuffer;

    move-result-object v1

    iput-object v1, v0, Lcom/itsmagic/engine/Engines/Engine/Vertex/Data/MeshSerializer$c;->b:Ljava/nio/ShortBuffer;

    invoke-static {p0}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Data/MeshSerializer;->p(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v1

    iput-object v1, v0, Lcom/itsmagic/engine/Engines/Engine/Vertex/Data/MeshSerializer$c;->c:Ljava/nio/ByteBuffer;

    invoke-static {p0}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Data/MeshSerializer;->p(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object p0

    iput-object p0, v0, Lcom/itsmagic/engine/Engines/Engine/Vertex/Data/MeshSerializer$c;->d:Ljava/nio/ByteBuffer;

    return-object v0

    :cond_2
    :goto_0
    new-instance p0, Lcom/itsmagic/engine/Engines/Engine/Vertex/Data/MeshSerializer$c;

    invoke-direct {p0, v2}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Data/MeshSerializer$c;-><init>(Lcom/itsmagic/engine/Engines/Engine/Vertex/Data/MeshSerializer$a;)V

    return-object p0
.end method

.method public static m(Ljava/io/File;)Ljava/io/File;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "file"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, ".mesh"

    invoke-static {v0, v1}, Lbd/l;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, ".mwf"

    invoke-static {v0, v1}, Lbd/l;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "File needs to be .mesh"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :cond_2
    return-object p0
.end method

.method public static n(Ljava/lang/String;)Ljava/io/File;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dataFile"
        }
    .end annotation

    const-string v0, ".mesh"

    invoke-static {p0, v0}, Lbd/l;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, ".mwf"

    invoke-static {p0, v0}, Lbd/l;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "File needs to be .mesh"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lf8/c;->t()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/itsmagic/engine/Core/Components/ProjectController/a;->Q(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lmd/b;->o(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z

    :cond_2
    return-object v0
.end method

.method public static native nativeBuildBin(JZJZJZJZJZJZJZFLjava/nio/ByteBuffer;)I
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
            "verticesPointer",
            "hasVertices",
            "uvsPointer",
            "hasUVs",
            "indicesPointer",
            "hasIndices",
            "weightsPointer",
            "hasWeights",
            "jointsPointer",
            "hasJoints",
            "normalsPointer",
            "hasNormals",
            "tangentsPointer",
            "hasTangents",
            "maxExtent",
            "outBuffer"
        }
    .end annotation
.end method

.method public static native nativeDeserialize(JZJZJZJZJZJZJZZFLjava/lang/String;)V
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
            "verticesPointer",
            "hasVertices",
            "uvsPointer",
            "hasUVs",
            "indicesPointer",
            "hasIndices",
            "weightsPointer",
            "hasWeights",
            "jointsPointer",
            "hasJoints",
            "normalsPointer",
            "hasNormals",
            "tangentsPointer",
            "hasTangents",
            "halfFloatUV",
            "maxExtent",
            "filepath"
        }
    .end annotation
.end method

.method public static o(Ljava/nio/ByteBuffer;I[B)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "out",
            "type",
            "payload"
        }
    .end annotation

    if-eqz p2, :cond_1

    array-length v0, p2

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    array-length p1, p2

    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    invoke-virtual {p0, p2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    :goto_1
    return-void
.end method

.method public static p(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "src"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/nio/Buffer;->remaining()I

    move-result v0

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-ge v0, v1, :cond_0

    return-object v2

    :cond_0
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    if-eqz v0, :cond_6

    if-gtz v1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v3, 0x1

    if-eq v0, v3, :cond_3

    if-lez v1, :cond_2

    invoke-virtual {p0}, Ljava/nio/Buffer;->remaining()I

    move-result v0

    if-lt v0, v1, :cond_2

    invoke-virtual {p0}, Ljava/nio/Buffer;->position()I

    move-result v0

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    :cond_2
    return-object v2

    :cond_3
    invoke-virtual {p0}, Ljava/nio/Buffer;->remaining()I

    move-result v0

    if-ge v0, v1, :cond_4

    return-object v2

    :cond_4
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_5

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v3

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_5
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    return-object v0

    :cond_6
    :goto_1
    return-object v2
.end method

.method public static q(Ljava/nio/ByteBuffer;)Ljava/nio/ShortBuffer;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "src"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/nio/Buffer;->remaining()I

    move-result v0

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-ge v0, v1, :cond_0

    return-object v2

    :cond_0
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    if-eqz v0, :cond_6

    if-gtz v1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v3, 0x2

    if-eq v0, v3, :cond_3

    if-lez v1, :cond_2

    invoke-virtual {p0}, Ljava/nio/Buffer;->remaining()I

    move-result v0

    if-lt v0, v1, :cond_2

    invoke-virtual {p0}, Ljava/nio/Buffer;->position()I

    move-result v0

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    :cond_2
    return-object v2

    :cond_3
    invoke-virtual {p0}, Ljava/nio/Buffer;->remaining()I

    move-result v0

    if-ge v0, v1, :cond_4

    return-object v2

    :cond_4
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_5

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v3

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_5
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object p0

    return-object p0

    :cond_6
    :goto_1
    return-object v2
.end method

.method public static r(Ljava/io/File;Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "file",
            "vertex"
        }
    .end annotation

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Data/MeshSerializer;->s(Ljava/io/File;Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;Z)Z

    move-result p0

    return p0
.end method

.method public static s(Ljava/io/File;Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;Z)Z
    .locals 46
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "file",
            "vertex",
            "serializeRenderableData"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_12

    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, ".mesh"

    invoke-static {v4, v5}, Lbd/l;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, ".mwf"

    invoke-static {v4, v5}, Lbd/l;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "File needs to be .mesh"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    invoke-static/range {p1 .. p2}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Data/MeshSerializer;->c(Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;Z)Lcom/itsmagic/engine/Engines/Engine/Vertex/Data/MeshSerializer$Data;

    move-result-object v4

    invoke-static {}, Lp8/a;->m()Lcom/google/gson/Gson;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    sget-object v6, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v5, v6}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v5

    iget-boolean v6, v4, Lcom/itsmagic/engine/Engines/Engine/Vertex/Data/MeshSerializer$Data;->hasVertices:Z

    const-wide/16 v7, -0x1

    if-eqz v6, :cond_2

    invoke-virtual/range {p1 .. p1}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->p1()Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    move-result-object v6

    invoke-virtual {v6}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->e0()J

    move-result-wide v9

    goto :goto_1

    :cond_2
    move-wide v9, v7

    :goto_1
    iget-boolean v6, v4, Lcom/itsmagic/engine/Engines/Engine/Vertex/Data/MeshSerializer$Data;->hasUVs:Z

    if-eqz v6, :cond_3

    invoke-virtual/range {p1 .. p1}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->i1()Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    move-result-object v6

    invoke-virtual {v6}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->e0()J

    move-result-wide v11

    move-wide/from16 v34, v11

    goto :goto_2

    :cond_3
    move-wide/from16 v34, v7

    :goto_2
    iget-boolean v6, v4, Lcom/itsmagic/engine/Engines/Engine/Vertex/Data/MeshSerializer$Data;->hasIndices:Z

    if-eqz v6, :cond_4

    invoke-virtual/range {p1 .. p1}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->d1()Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;

    move-result-object v6

    invoke-virtual {v6}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->X()J

    move-result-wide v11

    move-wide/from16 v36, v11

    goto :goto_3

    :cond_4
    move-wide/from16 v36, v7

    :goto_3
    iget-boolean v6, v4, Lcom/itsmagic/engine/Engines/Engine/Vertex/Data/MeshSerializer$Data;->hasWeights:Z

    if-eqz v6, :cond_5

    invoke-virtual/range {p1 .. p1}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->s1()Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    move-result-object v6

    invoke-virtual {v6}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->e0()J

    move-result-wide v11

    move-wide/from16 v38, v11

    goto :goto_4

    :cond_5
    move-wide/from16 v38, v7

    :goto_4
    iget-boolean v6, v4, Lcom/itsmagic/engine/Engines/Engine/Vertex/Data/MeshSerializer$Data;->hasJoints:Z

    if-eqz v6, :cond_6

    invoke-virtual/range {p1 .. p1}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->w0()Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    move-result-object v6

    invoke-virtual {v6}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->e0()J

    move-result-wide v11

    move-wide/from16 v40, v11

    goto :goto_5

    :cond_6
    move-wide/from16 v40, v7

    :goto_5
    iget-boolean v6, v4, Lcom/itsmagic/engine/Engines/Engine/Vertex/Data/MeshSerializer$Data;->hasNormals:Z

    if-eqz v6, :cond_7

    invoke-virtual/range {p1 .. p1}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->H0()Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    move-result-object v6

    invoke-virtual {v6}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->e0()J

    move-result-wide v11

    move-wide/from16 v42, v11

    goto :goto_6

    :cond_7
    move-wide/from16 v42, v7

    :goto_6
    iget-boolean v6, v4, Lcom/itsmagic/engine/Engines/Engine/Vertex/Data/MeshSerializer$Data;->hasTangents:Z

    if-eqz v6, :cond_8

    invoke-virtual/range {p1 .. p1}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->P0()Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    move-result-object v6

    invoke-virtual {v6}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->e0()J

    move-result-wide v11

    move-wide/from16 v44, v11

    goto :goto_7

    :cond_8
    move-wide/from16 v44, v7

    :goto_7
    iget-boolean v13, v4, Lcom/itsmagic/engine/Engines/Engine/Vertex/Data/MeshSerializer$Data;->hasVertices:Z

    iget-boolean v6, v4, Lcom/itsmagic/engine/Engines/Engine/Vertex/Data/MeshSerializer$Data;->hasUVs:Z

    move/from16 v16, v6

    iget-boolean v6, v4, Lcom/itsmagic/engine/Engines/Engine/Vertex/Data/MeshSerializer$Data;->hasIndices:Z

    move/from16 v19, v6

    iget-boolean v6, v4, Lcom/itsmagic/engine/Engines/Engine/Vertex/Data/MeshSerializer$Data;->hasWeights:Z

    move/from16 v22, v6

    iget-boolean v6, v4, Lcom/itsmagic/engine/Engines/Engine/Vertex/Data/MeshSerializer$Data;->hasJoints:Z

    move/from16 v25, v6

    iget-boolean v6, v4, Lcom/itsmagic/engine/Engines/Engine/Vertex/Data/MeshSerializer$Data;->hasNormals:Z

    move/from16 v28, v6

    iget-boolean v6, v4, Lcom/itsmagic/engine/Engines/Engine/Vertex/Data/MeshSerializer$Data;->hasTangents:Z

    move/from16 v31, v6

    iget v6, v4, Lcom/itsmagic/engine/Engines/Engine/Vertex/Data/MeshSerializer$Data;->maxExtent:F

    move/from16 v32, v6

    const/16 v33, 0x0

    move-wide v11, v9

    move-wide/from16 v14, v34

    move-wide/from16 v17, v36

    move-wide/from16 v20, v38

    move-wide/from16 v23, v40

    move-wide/from16 v26, v42

    move-wide/from16 v29, v44

    invoke-static/range {v11 .. v33}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Data/MeshSerializer;->nativeBuildBin(JZJZJZJZJZJZJZFLjava/nio/ByteBuffer;)I

    move-result v6

    if-lez v6, :cond_11

    invoke-static {v6}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v11

    sget-object v12, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v11, v12}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v14

    move-object/from16 v33, v14

    iget-boolean v13, v4, Lcom/itsmagic/engine/Engines/Engine/Vertex/Data/MeshSerializer$Data;->hasVertices:Z

    iget-boolean v11, v4, Lcom/itsmagic/engine/Engines/Engine/Vertex/Data/MeshSerializer$Data;->hasUVs:Z

    move/from16 v16, v11

    iget-boolean v11, v4, Lcom/itsmagic/engine/Engines/Engine/Vertex/Data/MeshSerializer$Data;->hasIndices:Z

    move/from16 v19, v11

    iget-boolean v11, v4, Lcom/itsmagic/engine/Engines/Engine/Vertex/Data/MeshSerializer$Data;->hasWeights:Z

    move/from16 v22, v11

    iget-boolean v11, v4, Lcom/itsmagic/engine/Engines/Engine/Vertex/Data/MeshSerializer$Data;->hasJoints:Z

    move/from16 v25, v11

    iget-boolean v11, v4, Lcom/itsmagic/engine/Engines/Engine/Vertex/Data/MeshSerializer$Data;->hasNormals:Z

    move/from16 v28, v11

    iget-boolean v11, v4, Lcom/itsmagic/engine/Engines/Engine/Vertex/Data/MeshSerializer$Data;->hasTangents:Z

    move/from16 v31, v11

    iget v4, v4, Lcom/itsmagic/engine/Engines/Engine/Vertex/Data/MeshSerializer$Data;->maxExtent:F

    move/from16 v32, v4

    move-wide v11, v9

    move-object v4, v14

    move-wide/from16 v14, v34

    move-wide/from16 v17, v36

    move-wide/from16 v20, v38

    move-wide/from16 v23, v40

    move-wide/from16 v26, v42

    move-wide/from16 v29, v44

    invoke-static/range {v11 .. v33}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Data/MeshSerializer;->nativeBuildBin(JZJZJZJZJZJZJZFLjava/nio/ByteBuffer;)I

    move-result v9

    if-ne v9, v6, :cond_10

    new-array v6, v9, [B

    invoke-virtual {v4, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {v4, v6}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    const/4 v4, 0x0

    filled-new-array {v4}, [[B

    move-result-object v4

    if-eqz p2, :cond_9

    new-instance v9, Lcom/itsmagic/engine/Engines/Engine/Vertex/Data/MeshSerializer$a;

    invoke-direct {v9, v4}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Data/MeshSerializer$a;-><init>([[B)V

    invoke-virtual {v1, v9}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->c0(Lcc/j$a;)V

    :cond_9
    :try_start_0
    aget-object v1, v4, v3

    invoke-static {v5, v6, v1}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Data/MeshSerializer;->d([B[B[B)[B

    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    :try_start_1
    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v4

    invoke-interface {v4}, Ljava/nio/file/Path;->getParent()Ljava/nio/file/Path;

    move-result-object v5

    new-array v6, v3, [Ljava/nio/file/attribute/FileAttribute;

    invoke-static {v5, v6}, Ljava/nio/file/Files;->createDirectories(Ljava/nio/file/Path;[Ljava/nio/file/attribute/FileAttribute;)Ljava/nio/file/Path;

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/nio/file/OpenOption;

    sget-object v6, Ljava/nio/file/StandardOpenOption;->CREATE:Ljava/nio/file/StandardOpenOption;

    aput-object v6, v5, v3

    sget-object v6, Ljava/nio/file/StandardOpenOption;->TRUNCATE_EXISTING:Ljava/nio/file/StandardOpenOption;

    aput-object v6, v5, v2

    sget-object v6, Ljava/nio/file/StandardOpenOption;->WRITE:Ljava/nio/file/StandardOpenOption;

    const/4 v9, 0x2

    aput-object v6, v5, v9

    invoke-static {v4, v1, v5}, Ljava/nio/file/Files;->write(Ljava/nio/file/Path;[B[Ljava/nio/file/OpenOption;)Ljava/nio/file/Path;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :try_start_2
    new-instance v1, Ljava/util/zip/ZipFile;

    invoke-direct {v1, v0}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :try_start_3
    const-string v4, "data"

    invoke-virtual {v1, v4}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v4

    const-string v5, "bin"

    invoke-virtual {v1, v5}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v5

    if-eqz v4, :cond_a

    invoke-virtual {v4}, Ljava/util/zip/ZipEntry;->getSize()J

    move-result-wide v9

    goto :goto_8

    :catchall_0
    move-exception v0

    move-object v2, v0

    goto/16 :goto_c

    :cond_a
    move-wide v9, v7

    :goto_8
    if-eqz v5, :cond_b

    invoke-virtual {v5}, Ljava/util/zip/ZipEntry;->getSize()J

    move-result-wide v7

    :cond_b
    const-string v6, "VtxSerializer"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "ZIP wrote entries: data="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v9, " bytes, bin="

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v9, " bytes, file="

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v4, :cond_d

    if-eqz v5, :cond_d

    const-wide/16 v9, 0x0

    cmp-long v0, v7, v9

    if-gtz v0, :cond_c

    goto :goto_9

    :cond_c
    :try_start_4
    invoke-virtual {v1}, Ljava/util/zip/ZipFile;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    return v2

    :catch_0
    move-exception v0

    goto :goto_e

    :cond_d
    :goto_9
    :try_start_5
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "ZIP on disk missing entries (data? "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v4, :cond_e

    move v4, v2

    goto :goto_a

    :cond_e
    move v4, v3

    :goto_a
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", bin? "

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v5, :cond_f

    goto :goto_b

    :cond_f
    move v2, v3

    :goto_b
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", binSize="

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :goto_c
    :try_start_6
    invoke-virtual {v1}, Ljava/util/zip/ZipFile;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_d

    :catchall_1
    move-exception v0

    move-object v1, v0

    :try_start_7
    invoke-virtual {v2, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_d
    throw v2
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    :goto_e
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_2
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_10
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "nativeBuildBin wrote "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_11
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "nativeBuildBin(size) returned "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_12
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "vertex can\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
