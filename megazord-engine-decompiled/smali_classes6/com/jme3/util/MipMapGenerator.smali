.class public Lcom/jme3/util/MipMapGenerator;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static generateMipMaps(Lcom/jme3/texture/Image;)V
    .locals 8

    invoke-virtual {p0}, Lcom/jme3/texture/Image;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/jme3/texture/Image;->getHeight()I

    move-result v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    move-object v4, p0

    move v5, v3

    :goto_0
    const/4 v6, 0x1

    if-ge v1, v6, :cond_0

    if-lt v0, v6, :cond_2

    :cond_0
    invoke-virtual {v4, v3}, Lcom/jme3/texture/Image;->getData(I)Ljava/nio/ByteBuffer;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v4, v3}, Lcom/jme3/texture/Image;->getData(I)Ljava/nio/ByteBuffer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/nio/Buffer;->capacity()I

    move-result v7

    add-int/2addr v5, v7

    if-eq v1, v6, :cond_2

    if-ne v0, v6, :cond_1

    goto :goto_1

    :cond_1
    div-int/lit8 v1, v1, 0x2

    div-int/lit8 v0, v0, 0x2

    invoke-static {v4, v0, v1}, Lcom/jme3/util/MipMapGenerator;->scaleImage(Lcom/jme3/texture/Image;II)Lcom/jme3/texture/Image;

    move-result-object v4

    goto :goto_0

    :cond_2
    :goto_1
    invoke-static {v5}, Lcom/jme3/util/BufferUtils;->createByteBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [I

    move v4, v3

    :goto_2
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_3

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/nio/ByteBuffer;

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    invoke-virtual {v5}, Ljava/nio/Buffer;->capacity()I

    move-result v5

    aput v5, v1, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_3
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    invoke-virtual {p0, v3, v0}, Lcom/jme3/texture/Image;->setData(ILjava/nio/ByteBuffer;)V

    invoke-virtual {p0, v1}, Lcom/jme3/texture/Image;->setMipMapSizes([I)V

    return-void
.end method

.method public static resizeToPowerOf2(Lcom/jme3/texture/Image;)Lcom/jme3/texture/Image;
    .locals 2

    invoke-virtual {p0}, Lcom/jme3/texture/Image;->getWidth()I

    move-result v0

    invoke-static {v0}, Lcom/jme3/math/FastMath;->nearestPowerOfTwo(I)I

    move-result v0

    invoke-virtual {p0}, Lcom/jme3/texture/Image;->getHeight()I

    move-result v1

    invoke-static {v1}, Lcom/jme3/math/FastMath;->nearestPowerOfTwo(I)I

    move-result v1

    invoke-static {p0, v0, v1}, Lcom/jme3/util/MipMapGenerator;->scaleImage(Lcom/jme3/texture/Image;II)Lcom/jme3/texture/Image;

    move-result-object p0

    return-object p0
.end method

.method public static scaleImage(Lcom/jme3/texture/Image;II)Lcom/jme3/texture/Image;
    .locals 16

    move/from16 v6, p1

    move/from16 v7, p2

    mul-int v0, v6, v7

    invoke-virtual/range {p0 .. p0}, Lcom/jme3/texture/Image;->getFormat()Lcom/jme3/texture/Image$Format;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jme3/texture/Image$Format;->getBitsPerPixel()I

    move-result v1

    mul-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x8

    invoke-static {v0}, Lcom/jme3/util/BufferUtils;->createByteBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    new-instance v8, Lcom/jme3/texture/Image;

    invoke-virtual/range {p0 .. p0}, Lcom/jme3/texture/Image;->getFormat()Lcom/jme3/texture/Image$Format;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Lcom/jme3/texture/Image;->getColorSpace()Lcom/jme3/texture/image/ColorSpace;

    move-result-object v5

    move-object v0, v8

    move/from16 v2, p1

    move/from16 v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/jme3/texture/Image;-><init>(Lcom/jme3/texture/Image$Format;IILjava/nio/ByteBuffer;Lcom/jme3/texture/image/ColorSpace;)V

    const/4 v0, 0x0

    move-object/from16 v1, p0

    invoke-static {v1, v0, v0, v0}, Lcom/jme3/texture/image/ImageRaster;->create(Lcom/jme3/texture/Image;IIZ)Lcom/jme3/texture/image/ImageRaster;

    move-result-object v1

    invoke-static {v8, v0, v0, v0}, Lcom/jme3/texture/image/ImageRaster;->create(Lcom/jme3/texture/Image;IIZ)Lcom/jme3/texture/image/ImageRaster;

    move-result-object v2

    invoke-virtual {v1}, Lcom/jme3/texture/image/ImageRaster;->getWidth()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    int-to-float v3, v3

    invoke-virtual {v2}, Lcom/jme3/texture/image/ImageRaster;->getWidth()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    invoke-virtual {v1}, Lcom/jme3/texture/image/ImageRaster;->getHeight()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    int-to-float v4, v4

    invoke-virtual {v2}, Lcom/jme3/texture/image/ImageRaster;->getHeight()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v4, v5

    new-instance v5, Lcom/jme3/math/ColorRGBA;

    const/4 v9, 0x0

    invoke-direct {v5, v9, v9, v9, v9}, Lcom/jme3/math/ColorRGBA;-><init>(FFFF)V

    new-instance v9, Lcom/jme3/math/ColorRGBA;

    invoke-direct {v9}, Lcom/jme3/math/ColorRGBA;-><init>()V

    new-instance v10, Lcom/jme3/math/ColorRGBA;

    invoke-direct {v10}, Lcom/jme3/math/ColorRGBA;-><init>()V

    new-instance v11, Lcom/jme3/math/ColorRGBA;

    invoke-direct {v11}, Lcom/jme3/math/ColorRGBA;-><init>()V

    new-instance v12, Lcom/jme3/math/ColorRGBA;

    invoke-direct {v12}, Lcom/jme3/math/ColorRGBA;-><init>()V

    move v13, v0

    :goto_0
    if-ge v13, v7, :cond_1

    move v14, v0

    :goto_1
    if-ge v14, v6, :cond_0

    int-to-float v15, v14

    mul-float/2addr v15, v3

    int-to-float v0, v13

    mul-float/2addr v0, v4

    float-to-int v15, v15

    float-to-int v0, v0

    invoke-virtual {v1, v15, v0, v9}, Lcom/jme3/texture/image/ImageRaster;->getPixel(IILcom/jme3/math/ColorRGBA;)Lcom/jme3/math/ColorRGBA;

    move/from16 p0, v3

    add-int/lit8 v3, v15, 0x1

    invoke-virtual {v1, v3, v0, v10}, Lcom/jme3/texture/image/ImageRaster;->getPixel(IILcom/jme3/math/ColorRGBA;)Lcom/jme3/math/ColorRGBA;

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v1, v15, v0, v11}, Lcom/jme3/texture/image/ImageRaster;->getPixel(IILcom/jme3/math/ColorRGBA;)Lcom/jme3/math/ColorRGBA;

    invoke-virtual {v1, v3, v0, v12}, Lcom/jme3/texture/image/ImageRaster;->getPixel(IILcom/jme3/math/ColorRGBA;)Lcom/jme3/math/ColorRGBA;

    invoke-virtual {v5, v9}, Lcom/jme3/math/ColorRGBA;->set(Lcom/jme3/math/ColorRGBA;)Lcom/jme3/math/ColorRGBA;

    move-result-object v0

    invoke-virtual {v0, v10}, Lcom/jme3/math/ColorRGBA;->addLocal(Lcom/jme3/math/ColorRGBA;)Lcom/jme3/math/ColorRGBA;

    move-result-object v0

    invoke-virtual {v0, v11}, Lcom/jme3/math/ColorRGBA;->addLocal(Lcom/jme3/math/ColorRGBA;)Lcom/jme3/math/ColorRGBA;

    move-result-object v0

    invoke-virtual {v0, v12}, Lcom/jme3/math/ColorRGBA;->addLocal(Lcom/jme3/math/ColorRGBA;)Lcom/jme3/math/ColorRGBA;

    const/high16 v0, 0x3e800000    # 0.25f

    invoke-virtual {v5, v0}, Lcom/jme3/math/ColorRGBA;->multLocal(F)Lcom/jme3/math/ColorRGBA;

    invoke-virtual {v2, v14, v13, v5}, Lcom/jme3/texture/image/ImageRaster;->setPixel(IILcom/jme3/math/ColorRGBA;)V

    add-int/lit8 v14, v14, 0x1

    const/4 v0, 0x0

    move/from16 v3, p0

    goto :goto_1

    :cond_0
    move/from16 p0, v3

    add-int/lit8 v13, v13, 0x1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    return-object v8
.end method
