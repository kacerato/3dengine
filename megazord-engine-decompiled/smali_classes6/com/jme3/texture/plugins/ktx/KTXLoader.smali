.class public Lcom/jme3/texture/plugins/ktx/KTXLoader;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/jme3/asset/AssetLoader;


# static fields
.field private static final fileIdentifier:[B

.field private static final log:Ljava/util/logging/Logger;


# instance fields
.field private slicesInside:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/jme3/texture/plugins/ktx/KTXLoader;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/jme3/texture/plugins/ktx/KTXLoader;->log:Ljava/util/logging/Logger;

    const/16 v0, 0xc

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/jme3/texture/plugins/ktx/KTXLoader;->fileIdentifier:[B

    return-void

    :array_0
    .array-data 1
        -0x55t
        0x4bt
        0x54t
        0x58t
        0x20t
        0x31t
        0x31t
        -0x45t
        0xdt
        0xat
        0x1at
        0xat
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jme3/texture/plugins/ktx/KTXLoader;->slicesInside:Z

    return-void
.end method

.method private checkFileIdentifier([B)Z
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    const/16 v3, 0xc

    if-ge v2, v3, :cond_1

    aget-byte v3, p1, v2

    sget-object v4, Lcom/jme3/texture/plugins/ktx/KTXLoader;->fileIdentifier:[B

    aget-byte v4, v4, v2

    if-eq v3, v4, :cond_0

    move v0, v1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method private computeBuffersSize(IIIII)I
    .locals 6

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v0, p1, :cond_0

    shr-int v2, p2, v0

    const/4 v3, 0x1

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    shr-int v4, p3, v0

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    mul-int/2addr v2, v3

    mul-int/2addr v2, p4

    add-int/2addr v1, v2

    sget-object v3, Lcom/jme3/texture/plugins/ktx/KTXLoader;->log:Ljava/util/logging/Logger;

    sget-object v4, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v5, v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v5, "mip level size : {0} : {1}"

    invoke-virtual {v3, v4, v5, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;[Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    mul-int/2addr v1, p5

    return v1
.end method

.method private createImage(IILcom/jme3/texture/Image$Format;III)Lcom/jme3/texture/Image;
    .locals 7

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, p1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_0

    invoke-static {p2}, Lcom/jme3/util/BufferUtils;->createByteBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/jme3/texture/Image;

    sget-object v6, Lcom/jme3/texture/image/ColorSpace;->sRGB:Lcom/jme3/texture/image/ColorSpace;

    move-object v0, p1

    move-object v1, p3

    move v2, p4

    move v3, p5

    move v4, p6

    invoke-direct/range {v0 .. v6}, Lcom/jme3/texture/Image;-><init>(Lcom/jme3/texture/Image$Format;IIILjava/util/ArrayList;Lcom/jme3/texture/image/ColorSpace;)V

    return-object p1
.end method

.method private getImageFormat(III)Lcom/jme3/texture/Image$Format;
    .locals 8

    const-class v0, Lcom/jme3/renderer/Caps;

    invoke-static {v0}, Ljava/util/EnumSet;->allOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    invoke-static {v0}, Lcom/jme3/renderer/opengl/GLImageFormats;->getFormatsForCaps(Ljava/util/EnumSet;)[[Lcom/jme3/renderer/opengl/GLImageFormat;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_3

    aget-object v4, v0, v3

    move v5, v2

    :goto_1
    array-length v6, v4

    if-ge v5, v6, :cond_2

    aget-object v6, v4, v5

    if-eqz v6, :cond_1

    iget v7, v6, Lcom/jme3/renderer/opengl/GLImageFormat;->format:I

    if-ne v7, p1, :cond_1

    iget v7, v6, Lcom/jme3/renderer/opengl/GLImageFormat;->dataType:I

    if-ne v7, p3, :cond_1

    if-eq p1, p2, :cond_0

    iget v6, v6, Lcom/jme3/renderer/opengl/GLImageFormat;->internalFormat:I

    if-ne v6, p2, :cond_1

    :cond_0
    invoke-static {}, Lcom/jme3/texture/Image$Format;->values()[Lcom/jme3/texture/Image$Format;

    move-result-object p1

    aget-object p1, p1, v5

    return-object p1

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    return-object p1
.end method

.method private static getSlice(II)I
    .locals 0

    invoke-static {p0, p1}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0
.end method

.method private load(Ljava/io/InputStream;)Lcom/jme3/texture/Image;
    .locals 27

    move-object/from16 v8, p0

    move-object/from16 v0, p1

    const/16 v1, 0xc

    .line 7
    new-array v2, v1, [B

    .line 8
    new-instance v3, Ljava/io/DataInputStream;

    invoke-direct {v3, v0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    const/4 v9, 0x0

    .line 9
    :try_start_0
    invoke-virtual {v0, v2, v9, v1}, Ljava/io/InputStream;->read([BII)I

    .line 10
    invoke-direct {v8, v2}, Lcom/jme3/texture/plugins/ktx/KTXLoader;->checkFileIdentifier([B)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 11
    invoke-interface {v3}, Ljava/io/DataInput;->readInt()I

    move-result v1

    const v2, 0x1020304

    if-ne v1, v2, :cond_0

    .line 12
    new-instance v3, Lcom/jme3/util/LittleEndien;

    invoke-direct {v3, v0}, Lcom/jme3/util/LittleEndien;-><init>(Ljava/io/InputStream;)V

    :cond_0
    move-object v0, v3

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v3, v8

    goto/16 :goto_a

    .line 13
    :goto_0
    invoke-interface {v0}, Ljava/io/DataInput;->readInt()I

    move-result v1

    .line 14
    invoke-interface {v0}, Ljava/io/DataInput;->readInt()I

    move-result v2

    .line 15
    invoke-interface {v0}, Ljava/io/DataInput;->readInt()I

    move-result v3

    .line 16
    invoke-interface {v0}, Ljava/io/DataInput;->readInt()I

    move-result v4

    .line 17
    invoke-interface {v0}, Ljava/io/DataInput;->readInt()I

    move-result v5

    .line 18
    invoke-interface {v0}, Ljava/io/DataInput;->readInt()I

    move-result v16

    .line 19
    invoke-interface {v0}, Ljava/io/DataInput;->readInt()I

    move-result v17

    .line 20
    invoke-interface {v0}, Ljava/io/DataInput;->readInt()I

    move-result v6

    .line 21
    invoke-interface {v0}, Ljava/io/DataInput;->readInt()I

    move-result v7

    .line 22
    invoke-interface {v0}, Ljava/io/DataInput;->readInt()I

    move-result v10

    .line 23
    invoke-interface {v0}, Ljava/io/DataInput;->readInt()I

    move-result v11

    .line 24
    invoke-interface {v0}, Ljava/io/DataInput;->readInt()I

    move-result v12

    .line 25
    sget-object v13, Lcom/jme3/texture/plugins/ktx/KTXLoader;->log:Ljava/util/logging/Logger;

    sget-object v14, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v15, "glType = {0}"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v13, v14, v15, v9}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V

    .line 26
    const-string v9, "glTypeSize = {0}"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v13, v14, v9, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V

    .line 27
    const-string v2, "glFormat = {0}"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v13, v14, v2, v9}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V

    .line 28
    const-string v2, "glInternalFormat = {0}"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v13, v14, v2, v9}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V

    .line 29
    const-string v2, "glBaseInternalFormat = {0}"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v13, v14, v2, v5}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V

    .line 30
    const-string v2, "pixelWidth = {0}"

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v13, v14, v2, v5}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V

    .line 31
    const-string v2, "pixelHeight = {0}"

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v13, v14, v2, v5}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V

    .line 32
    const-string v2, "pixelDepth = {0}"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v13, v14, v2, v5}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V

    .line 33
    const-string v2, "numberOfArrayElements = {0}"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v13, v14, v2, v5}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V

    .line 34
    const-string v2, "numberOfFaces = {0}"

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v13, v14, v2, v5}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V

    .line 35
    const-string v2, "numberOfMipmapLevels = {0}"

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v13, v14, v2, v5}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V

    .line 36
    const-string v2, "bytesOfKeyValueData = {0}"

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v13, v14, v2, v5}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v9, 0x1

    if-le v10, v9, :cond_1

    if-gt v6, v9, :cond_3

    :cond_1
    if-le v10, v9, :cond_2

    if-gt v7, v9, :cond_3

    :cond_2
    if-le v6, v9, :cond_4

    if-gt v7, v9, :cond_3

    goto :goto_1

    .line 37
    :cond_3
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "jME doesn\'t support cube maps of 3D textures or arrays of 3D texture or arrays of cube map of 3d textures"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 38
    :cond_4
    :goto_1
    invoke-direct {v8, v12, v0}, Lcom/jme3/texture/plugins/ktx/KTXLoader;->parseMetaData(ILjava/io/DataInput;)Lcom/jme3/texture/plugins/ktx/PixelReader;

    move-result-object v2

    if-nez v2, :cond_5

    .line 39
    new-instance v2, Lcom/jme3/texture/plugins/ktx/SrTuRoPixelReader;

    invoke-direct {v2}, Lcom/jme3/texture/plugins/ktx/SrTuRoPixelReader;-><init>()V

    :cond_5
    move-object/from16 v18, v2

    .line 40
    invoke-static {v9, v6}, Ljava/lang/Math;->max(II)I

    move-result v15

    .line 41
    invoke-static {v9, v7}, Ljava/lang/Math;->max(II)I

    move-result v12

    .line 42
    invoke-static {v9, v10}, Ljava/lang/Math;->max(II)I

    move-result v10

    .line 43
    invoke-static {v9, v11}, Ljava/lang/Math;->max(II)I

    move-result v11

    .line 44
    invoke-static {v10, v12}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 45
    invoke-direct {v8, v3, v4, v1}, Lcom/jme3/texture/plugins/ktx/KTXLoader;->getImageFormat(III)Lcom/jme3/texture/Image$Format;

    move-result-object v19

    .line 46
    const-string v1, "img format {0}"

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v13, v14, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V

    .line 47
    invoke-virtual/range {v19 .. v19}, Lcom/jme3/texture/Image$Format;->getBitsPerPixel()I

    move-result v1

    div-int/lit8 v6, v1, 0x8

    move-object/from16 v1, p0

    move v2, v11

    move/from16 v3, v16

    move/from16 v4, v17

    move v5, v6

    move v9, v6

    move v6, v15

    .line 48
    invoke-direct/range {v1 .. v6}, Lcom/jme3/texture/plugins/ktx/KTXLoader;->computeBuffersSize(IIIII)I

    move-result v3

    .line 49
    const-string v1, "data size {0}"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v13, v14, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V

    .line 50
    new-array v14, v11, [I

    move-object/from16 v1, p0

    move v2, v7

    move-object/from16 v4, v19

    move/from16 v5, v16

    move/from16 v6, v17

    move v7, v15

    .line 51
    invoke-direct/range {v1 .. v7}, Lcom/jme3/texture/plugins/ktx/KTXLoader;->createImage(IILcom/jme3/texture/Image$Format;III)Lcom/jme3/texture/Image;

    move-result-object v1

    .line 52
    new-array v2, v9, [B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_2
    if-ge v3, v11, :cond_b

    .line 53
    :try_start_1
    invoke-interface {v0}, Ljava/io/DataInput;->readInt()I

    move-result v5

    shr-int v6, v16, v3

    const/4 v7, 0x1

    .line 54
    invoke-static {v7, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    shr-int v13, v17, v3

    .line 55
    invoke-static {v7, v13}, Ljava/lang/Math;->max(II)I

    move-result v19

    mul-int v7, v6, v19

    mul-int/2addr v7, v9

    .line 56
    aput v7, v14, v3

    .line 57
    sget-object v13, Lcom/jme3/texture/plugins/ktx/KTXLoader;->log:Ljava/util/logging/Logger;

    move/from16 v20, v9

    sget-object v9, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    move/from16 v21, v11

    const-string v11, "current mip size {0}"

    move-object/from16 v22, v14

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v13, v9, v11, v14}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V

    if-eq v5, v7, :cond_6

    .line 58
    sget-object v9, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v11, "Mip map size is wrong in the file for mip level {0} size is {1} should be {2}"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    filled-new-array {v14, v5, v8}, [Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v13, v9, v11, v5}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_3

    :catch_1
    move-exception v0

    move-object/from16 v3, p0

    goto/16 :goto_a

    :cond_6
    :goto_3
    const/4 v5, 0x0

    :goto_4
    if-ge v5, v12, :cond_a

    const/4 v8, 0x0

    :goto_5
    if-ge v8, v10, :cond_9

    const/4 v9, 0x0

    const/4 v11, 0x0

    :goto_6
    if-ge v9, v15, :cond_7

    .line 59
    invoke-static {v8, v5}, Lcom/jme3/texture/plugins/ktx/KTXLoader;->getSlice(II)I

    move-result v11

    invoke-virtual {v1, v11}, Lcom/jme3/texture/Image;->getData(I)Ljava/nio/ByteBuffer;

    move-result-object v14

    .line 60
    sget-object v11, Lcom/jme3/texture/plugins/ktx/KTXLoader;->log:Ljava/util/logging/Logger;

    sget-object v13, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    move/from16 v23, v10

    const-string v10, "position {0}"

    invoke-virtual {v14}, Ljava/nio/Buffer;->position()I

    move-result v24

    move/from16 v25, v12

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v11, v13, v10, v12}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V

    .line 61
    invoke-virtual {v14, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move/from16 v13, v23

    move-object/from16 v10, v18

    move/from16 v12, v21

    move v11, v6

    move/from16 v23, v6

    move v6, v12

    move/from16 v21, v25

    move/from16 v12, v19

    move-object/from16 v24, v1

    move v1, v13

    move-object v13, v2

    move-object/from16 v25, v2

    move-object/from16 v2, v22

    move/from16 v26, v15

    move-object v15, v0

    .line 62
    invoke-interface/range {v10 .. v15}, Lcom/jme3/texture/plugins/ktx/PixelReader;->readPixels(II[BLjava/nio/ByteBuffer;Ljava/io/DataInput;)I

    move-result v11

    add-int/lit8 v9, v9, 0x1

    move v10, v1

    move-object/from16 v22, v2

    move/from16 v12, v21

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    move/from16 v15, v26

    move/from16 v21, v6

    move/from16 v6, v23

    goto :goto_6

    :cond_7
    move-object/from16 v24, v1

    move-object/from16 v25, v2

    move/from16 v23, v6

    move v1, v10

    move/from16 v26, v15

    move/from16 v6, v21

    move-object/from16 v2, v22

    move/from16 v21, v12

    const/4 v9, 0x6

    if-ne v1, v9, :cond_8

    if-nez v21, :cond_8

    add-int/lit8 v11, v11, 0x3

    .line 63
    rem-int/lit8 v11, v11, 0x4

    rsub-int/lit8 v9, v11, 0x3

    invoke-interface {v0, v9}, Ljava/io/DataInput;->skipBytes(I)I

    :cond_8
    add-int/lit8 v8, v8, 0x1

    move v10, v1

    move-object/from16 v22, v2

    move/from16 v12, v21

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    move/from16 v15, v26

    move/from16 v21, v6

    move/from16 v6, v23

    goto/16 :goto_5

    :cond_9
    move-object/from16 v24, v1

    move-object/from16 v25, v2

    move/from16 v23, v6

    move v1, v10

    move/from16 v26, v15

    move/from16 v6, v21

    move-object/from16 v2, v22

    move/from16 v21, v12

    add-int/lit8 v5, v5, 0x1

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    move/from16 v21, v6

    move/from16 v6, v23

    goto/16 :goto_4

    :cond_a
    move-object/from16 v24, v1

    move-object/from16 v25, v2

    move v1, v10

    move/from16 v26, v15

    move/from16 v6, v21

    move-object/from16 v2, v22

    move/from16 v21, v12

    .line 64
    sget-object v5, Lcom/jme3/texture/plugins/ktx/KTXLoader;->log:Ljava/util/logging/Logger;

    sget-object v8, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v9, "skipping {0}"

    add-int/lit8 v10, v7, 0x3

    rem-int/lit8 v11, v10, 0x4

    rsub-int/lit8 v11, v11, 0x3

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v5, v8, v9, v11}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V

    .line 65
    rem-int/lit8 v10, v10, 0x4

    rsub-int/lit8 v5, v10, 0x3

    invoke-interface {v0, v5}, Ljava/io/DataInput;->skipBytes(I)I

    add-int/2addr v4, v7

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v8, p0

    move v10, v1

    move-object v14, v2

    move v11, v6

    move/from16 v9, v20

    move/from16 v12, v21

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    move/from16 v15, v26

    goto/16 :goto_2

    :cond_b
    move-object/from16 v24, v1

    move v6, v11

    move-object v2, v14

    move/from16 v26, v15

    const/4 v0, 0x1

    if-le v6, v0, :cond_c

    move-object/from16 v1, v24

    .line 66
    invoke-virtual {v1, v2}, Lcom/jme3/texture/Image;->setMipMapSizes([I)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_7
    move/from16 v2, v26

    goto :goto_8

    :cond_c
    move-object/from16 v1, v24

    goto :goto_7

    :goto_8
    if-le v2, v0, :cond_d

    move-object/from16 v3, p0

    .line 67
    :try_start_2
    iget-boolean v0, v3, Lcom/jme3/texture/plugins/ktx/KTXLoader;->slicesInside:Z

    if-eqz v0, :cond_e

    .line 68
    invoke-virtual {v1}, Lcom/jme3/texture/Image;->getData()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    goto :goto_9

    :catch_2
    move-exception v0

    goto :goto_a

    :cond_d
    move-object/from16 v3, p0

    :cond_e
    :goto_9
    return-object v1

    :cond_f
    move-object v3, v8

    .line 69
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unrecognized ktx file identifier : "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v2}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " should be "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/String;

    sget-object v4, Lcom/jme3/texture/plugins/ktx/KTXLoader;->fileIdentifier:[B

    invoke-direct {v2, v4}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 70
    :goto_a
    const-class v1, Lcom/jme3/texture/plugins/ktx/KTXLoader;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v1

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v4
.end method

.method private parseMetaData(ILjava/io/DataInput;)Lcom/jme3/texture/plugins/ktx/PixelReader;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, p1, :cond_4

    invoke-interface {p2}, Ljava/io/DataInput;->readInt()I

    move-result v3

    new-array v4, v3, [B

    invoke-interface {p2, v4}, Ljava/io/DataInput;->readFully([B)V

    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v4}, Ljava/lang/String;-><init>([B)V

    const-string v4, "\u0000"

    invoke-virtual {v5, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    move v5, v1

    :goto_1
    array-length v6, v4

    if-ge v5, v6, :cond_2

    sget-object v6, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "key : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v8, v4, v5

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "value : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v8, v5, 0x1

    aget-object v9, v4, v8

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    aget-object v6, v4, v5

    const-string v7, "KTXorientation"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    aget-object v0, v4, v8

    const-string v6, "S=r,T=d"

    invoke-virtual {v0, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/jme3/texture/plugins/ktx/SrTdRiPixelReader;

    invoke-direct {v0}, Lcom/jme3/texture/plugins/ktx/SrTdRiPixelReader;-><init>()V

    goto :goto_2

    :cond_0
    new-instance v0, Lcom/jme3/texture/plugins/ktx/SrTuRoPixelReader;

    invoke-direct {v0}, Lcom/jme3/texture/plugins/ktx/SrTuRoPixelReader;-><init>()V

    :goto_2
    aget-object v6, v4, v8

    const-string v7, "R=i"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/jme3/texture/plugins/ktx/KTXLoader;->slicesInside:Z

    :cond_1
    add-int/lit8 v5, v5, 0x2

    goto :goto_1

    :cond_2
    add-int/lit8 v4, v3, 0x3

    rem-int/lit8 v4, v4, 0x4

    rsub-int/lit8 v4, v4, 0x3

    if-lez v4, :cond_3

    invoke-interface {p2, v4}, Ljava/io/DataInput;->skipBytes(I)I

    :cond_3
    add-int/lit8 v3, v3, 0x4

    add-int/2addr v3, v4

    add-int/2addr v2, v3

    goto/16 :goto_0

    :cond_4
    return-object v0
.end method


# virtual methods
.method public load(Lcom/jme3/asset/AssetInfo;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/jme3/asset/AssetInfo;->getKey()Lcom/jme3/asset/AssetKey;

    move-result-object v0

    instance-of v0, v0, Lcom/jme3/asset/TextureKey;

    if-eqz v0, :cond_2

    .line 2
    :try_start_0
    invoke-virtual {p1}, Lcom/jme3/asset/AssetInfo;->openStream()Ljava/io/InputStream;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 3
    :try_start_1
    invoke-direct {p0, p1}, Lcom/jme3/texture/plugins/ktx/KTXLoader;->load(Ljava/io/InputStream;)Lcom/jme3/texture/Image;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_0

    .line 4
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    :cond_0
    return-object v0

    :catchall_0
    move-exception v0

    goto :goto_0

    :catchall_1
    move-exception v0

    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    .line 5
    :cond_1
    throw v0

    .line 6
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Texture assets must be loaded using a TextureKey"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
