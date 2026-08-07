.class public final Lcom/jme3/renderer/opengl/GLImageFormats;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static format([[Lcom/jme3/renderer/opengl/GLImageFormat;Lcom/jme3/texture/Image$Format;III)V
    .locals 1

    const/4 v0, 0x0

    aget-object p0, p0, v0

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    new-instance v0, Lcom/jme3/renderer/opengl/GLImageFormat;

    invoke-direct {v0, p2, p3, p4}, Lcom/jme3/renderer/opengl/GLImageFormat;-><init>(III)V

    aput-object v0, p0, p1

    return-void
.end method

.method private static formatComp([[Lcom/jme3/renderer/opengl/GLImageFormat;Lcom/jme3/texture/Image$Format;III)V
    .locals 2

    const/4 v0, 0x0

    aget-object p0, p0, v0

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    new-instance v0, Lcom/jme3/renderer/opengl/GLImageFormat;

    const/4 v1, 0x1

    invoke-direct {v0, p2, p3, p4, v1}, Lcom/jme3/renderer/opengl/GLImageFormat;-><init>(IIIZ)V

    aput-object v0, p0, p1

    return-void
.end method

.method private static formatCompSrgb([[Lcom/jme3/renderer/opengl/GLImageFormat;Lcom/jme3/texture/Image$Format;III)V
    .locals 2

    const/4 v0, 0x1

    aget-object p0, p0, v0

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    new-instance v1, Lcom/jme3/renderer/opengl/GLImageFormat;

    invoke-direct {v1, p2, p3, p4, v0}, Lcom/jme3/renderer/opengl/GLImageFormat;-><init>(IIIZ)V

    aput-object v1, p0, p1

    return-void
.end method

.method private static formatSrgb([[Lcom/jme3/renderer/opengl/GLImageFormat;Lcom/jme3/texture/Image$Format;III)V
    .locals 1

    const/4 v0, 0x1

    aget-object p0, p0, v0

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    new-instance v0, Lcom/jme3/renderer/opengl/GLImageFormat;

    invoke-direct {v0, p2, p3, p4}, Lcom/jme3/renderer/opengl/GLImageFormat;-><init>(III)V

    aput-object v0, p0, p1

    return-void
.end method

.method private static formatSrgbSwiz([[Lcom/jme3/renderer/opengl/GLImageFormat;Lcom/jme3/texture/Image$Format;III)V
    .locals 7

    const/4 v0, 0x1

    aget-object p0, p0, v0

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    new-instance v6, Lcom/jme3/renderer/opengl/GLImageFormat;

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, v6

    move v1, p2

    move v2, p3

    move v3, p4

    invoke-direct/range {v0 .. v5}, Lcom/jme3/renderer/opengl/GLImageFormat;-><init>(IIIZZ)V

    aput-object v6, p0, p1

    return-void
.end method

.method private static formatSwiz([[Lcom/jme3/renderer/opengl/GLImageFormat;Lcom/jme3/texture/Image$Format;III)V
    .locals 7

    const/4 v0, 0x0

    aget-object p0, p0, v0

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    new-instance v6, Lcom/jme3/renderer/opengl/GLImageFormat;

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, v6

    move v1, p2

    move v2, p3

    move v3, p4

    invoke-direct/range {v0 .. v5}, Lcom/jme3/renderer/opengl/GLImageFormat;-><init>(IIIZZ)V

    aput-object v6, p0, p1

    return-void
.end method

.method public static getFormatsForCaps(Ljava/util/EnumSet;)[[Lcom/jme3/renderer/opengl/GLImageFormat;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/EnumSet<",
            "Lcom/jme3/renderer/Caps;",
            ">;)[[",
            "Lcom/jme3/renderer/opengl/GLImageFormat;"
        }
    .end annotation

    move-object/from16 v0, p0

    invoke-static {}, Lcom/jme3/texture/Image$Format;->values()[Lcom/jme3/texture/Image$Format;

    move-result-object v1

    array-length v1, v1

    const/4 v2, 0x2

    new-array v2, v2, [I

    const/4 v3, 0x1

    aput v1, v2, v3

    const/4 v1, 0x0

    const/4 v3, 0x2

    aput v3, v2, v1

    const-class v1, Lcom/jme3/renderer/opengl/GLImageFormat;

    invoke-static {v1, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[Lcom/jme3/renderer/opengl/GLImageFormat;

    sget-object v2, Lcom/jme3/renderer/Caps;->OpenGLES20:Lcom/jme3/renderer/Caps;

    invoke-virtual {v0, v2}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const v3, 0x8d61

    goto :goto_0

    :cond_0
    const/16 v3, 0x140b

    :goto_0
    sget-object v4, Lcom/jme3/renderer/Caps;->CoreProfile:Lcom/jme3/renderer/Caps;

    invoke-virtual {v0, v4}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v5

    const v6, 0x8c41

    const v7, 0x8c43

    const v8, 0x8227

    const/16 v9, 0x1406

    const/16 v10, 0x1903

    const/16 v11, 0x1401

    if-eqz v5, :cond_1

    sget-object v5, Lcom/jme3/texture/Image$Format;->Alpha8:Lcom/jme3/texture/Image$Format;

    const v12, 0x8229

    invoke-static {v1, v5, v12, v10, v11}, Lcom/jme3/renderer/opengl/GLImageFormats;->formatSwiz([[Lcom/jme3/renderer/opengl/GLImageFormat;Lcom/jme3/texture/Image$Format;III)V

    sget-object v5, Lcom/jme3/texture/Image$Format;->Luminance8:Lcom/jme3/texture/Image$Format;

    invoke-static {v1, v5, v12, v10, v11}, Lcom/jme3/renderer/opengl/GLImageFormats;->formatSwiz([[Lcom/jme3/renderer/opengl/GLImageFormat;Lcom/jme3/texture/Image$Format;III)V

    sget-object v12, Lcom/jme3/texture/Image$Format;->Luminance8Alpha8:Lcom/jme3/texture/Image$Format;

    const v13, 0x822b

    invoke-static {v1, v12, v13, v8, v11}, Lcom/jme3/renderer/opengl/GLImageFormats;->formatSwiz([[Lcom/jme3/renderer/opengl/GLImageFormat;Lcom/jme3/texture/Image$Format;III)V

    sget-object v13, Lcom/jme3/texture/Image$Format;->Luminance16F:Lcom/jme3/texture/Image$Format;

    const v14, 0x822d

    invoke-static {v1, v13, v14, v10, v3}, Lcom/jme3/renderer/opengl/GLImageFormats;->formatSwiz([[Lcom/jme3/renderer/opengl/GLImageFormat;Lcom/jme3/texture/Image$Format;III)V

    sget-object v13, Lcom/jme3/texture/Image$Format;->Luminance32F:Lcom/jme3/texture/Image$Format;

    const v14, 0x822e

    invoke-static {v1, v13, v14, v10, v9}, Lcom/jme3/renderer/opengl/GLImageFormats;->formatSwiz([[Lcom/jme3/renderer/opengl/GLImageFormat;Lcom/jme3/texture/Image$Format;III)V

    sget-object v13, Lcom/jme3/texture/Image$Format;->Luminance16FAlpha16F:Lcom/jme3/texture/Image$Format;

    const v14, 0x822f

    invoke-static {v1, v13, v14, v8, v3}, Lcom/jme3/renderer/opengl/GLImageFormats;->formatSwiz([[Lcom/jme3/renderer/opengl/GLImageFormat;Lcom/jme3/texture/Image$Format;III)V

    invoke-static {v1, v5, v6, v10, v11}, Lcom/jme3/renderer/opengl/GLImageFormats;->formatSrgbSwiz([[Lcom/jme3/renderer/opengl/GLImageFormat;Lcom/jme3/texture/Image$Format;III)V

    invoke-static {v1, v12, v7, v8, v11}, Lcom/jme3/renderer/opengl/GLImageFormats;->formatSrgbSwiz([[Lcom/jme3/renderer/opengl/GLImageFormat;Lcom/jme3/texture/Image$Format;III)V

    :cond_1
    sget-object v5, Lcom/jme3/renderer/Caps;->OpenGL20:Lcom/jme3/renderer/Caps;

    invoke-virtual {v0, v5}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v12

    const/16 v13, 0x1906

    const v14, 0x8051

    const/16 v15, 0x190a

    const/16 v8, 0x1909

    const v10, 0x8058

    const/16 v9, 0x1907

    const/16 v7, 0x1908

    if-nez v12, :cond_6

    sget-object v12, Lcom/jme3/renderer/Caps;->OpenGLES30:Lcom/jme3/renderer/Caps;

    invoke-virtual {v0, v12}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2

    goto :goto_1

    :cond_2
    sget-object v12, Lcom/jme3/renderer/Caps;->Rgba8:Lcom/jme3/renderer/Caps;

    invoke-virtual {v0, v12}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_4

    invoke-virtual {v0, v4}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_3

    sget-object v12, Lcom/jme3/texture/Image$Format;->Alpha8:Lcom/jme3/texture/Image$Format;

    invoke-static {v1, v12, v10, v13, v11}, Lcom/jme3/renderer/opengl/GLImageFormats;->format([[Lcom/jme3/renderer/opengl/GLImageFormat;Lcom/jme3/texture/Image$Format;III)V

    sget-object v12, Lcom/jme3/texture/Image$Format;->Luminance8:Lcom/jme3/texture/Image$Format;

    invoke-static {v1, v12, v10, v8, v11}, Lcom/jme3/renderer/opengl/GLImageFormats;->format([[Lcom/jme3/renderer/opengl/GLImageFormat;Lcom/jme3/texture/Image$Format;III)V

    sget-object v12, Lcom/jme3/texture/Image$Format;->Luminance8Alpha8:Lcom/jme3/texture/Image$Format;

    invoke-static {v1, v12, v10, v15, v11}, Lcom/jme3/renderer/opengl/GLImageFormats;->format([[Lcom/jme3/renderer/opengl/GLImageFormat;Lcom/jme3/texture/Image$Format;III)V

    :cond_3
    sget-object v12, Lcom/jme3/texture/Image$Format;->RGB8:Lcom/jme3/texture/Image$Format;

    invoke-static {v1, v12, v14, v9, v11}, Lcom/jme3/renderer/opengl/GLImageFormats;->format([[Lcom/jme3/renderer/opengl/GLImageFormat;Lcom/jme3/texture/Image$Format;III)V

    sget-object v12, Lcom/jme3/texture/Image$Format;->RGBA8:Lcom/jme3/texture/Image$Format;

    invoke-static {v1, v12, v10, v7, v11}, Lcom/jme3/renderer/opengl/GLImageFormats;->format([[Lcom/jme3/renderer/opengl/GLImageFormat;Lcom/jme3/texture/Image$Format;III)V

    sget-object v12, Lcom/jme3/texture/Image$Format;->BGR8:Lcom/jme3/texture/Image$Format;

    invoke-static {v1, v12, v14, v9, v11}, Lcom/jme3/renderer/opengl/GLImageFormats;->formatSwiz([[Lcom/jme3/renderer/opengl/GLImageFormat;Lcom/jme3/texture/Image$Format;III)V

    sget-object v12, Lcom/jme3/texture/Image$Format;->ARGB8:Lcom/jme3/texture/Image$Format;

    invoke-static {v1, v12, v10, v7, v11}, Lcom/jme3/renderer/opengl/GLImageFormats;->formatSwiz([[Lcom/jme3/renderer/opengl/GLImageFormat;Lcom/jme3/texture/Image$Format;III)V

    sget-object v12, Lcom/jme3/texture/Image$Format;->BGRA8:Lcom/jme3/texture/Image$Format;

    invoke-static {v1, v12, v10, v7, v11}, Lcom/jme3/renderer/opengl/GLImageFormats;->formatSwiz([[Lcom/jme3/renderer/opengl/GLImageFormat;Lcom/jme3/texture/Image$Format;III)V

    sget-object v12, Lcom/jme3/texture/Image$Format;->ABGR8:Lcom/jme3/texture/Image$Format;

    invoke-static {v1, v12, v10, v7, v11}, Lcom/jme3/renderer/opengl/GLImageFormats;->formatSwiz([[Lcom/jme3/renderer/opengl/GLImageFormat;Lcom/jme3/texture/Image$Format;III)V

    goto/16 :goto_2

    :cond_4
    invoke-virtual {v0, v4}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_5

    sget-object v10, Lcom/jme3/texture/Image$Format;->Alpha8:Lcom/jme3/texture/Image$Format;

    const v12, 0x8056

    invoke-static {v1, v10, v12, v13, v11}, Lcom/jme3/renderer/opengl/GLImageFormats;->format([[Lcom/jme3/renderer/opengl/GLImageFormat;Lcom/jme3/texture/Image$Format;III)V

    sget-object v10, Lcom/jme3/texture/Image$Format;->Luminance8:Lcom/jme3/texture/Image$Format;

    const v12, 0x8d62

    invoke-static {v1, v10, v12, v8, v11}, Lcom/jme3/renderer/opengl/GLImageFormats;->format([[Lcom/jme3/renderer/opengl/GLImageFormat;Lcom/jme3/texture/Image$Format;III)V

    sget-object v10, Lcom/jme3/texture/Image$Format;->Luminance8Alpha8:Lcom/jme3/texture/Image$Format;

    const v12, 0x8056

    invoke-static {v1, v10, v12, v15, v11}, Lcom/jme3/renderer/opengl/GLImageFormats;->format([[Lcom/jme3/renderer/opengl/GLImageFormat;Lcom/jme3/texture/Image$Format;III)V

    :cond_5
    sget-object v10, Lcom/jme3/texture/Image$Format;->RGB8:Lcom/jme3/texture/Image$Format;

    const v12, 0x8d62

    invoke-static {v1, v10, v12, v9, v11}, Lcom/jme3/renderer/opengl/GLImageFormats;->format([[Lcom/jme3/renderer/opengl/GLImageFormat;Lcom/jme3/texture/Image$Format;III)V

    sget-object v10, Lcom/jme3/texture/Image$Format;->RGBA8:Lcom/jme3/texture/Image$Format;

    const v12, 0x8056

    invoke-static {v1, v10, v12, v7, v11}, Lcom/jme3/renderer/opengl/GLImageFormats;->format([[Lcom/jme3/renderer/opengl/GLImageFormat;Lcom/jme3/texture/Image$Format;III)V

    goto/16 :goto_2

    :cond_6
    :goto_1
    invoke-virtual {v0, v4}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_7

    sget-object v12, Lcom/jme3/texture/Image$Format;->Alpha8:Lcom/jme3/texture/Image$Format;

    const v6, 0x803c

    invoke-static {v1, v12, v6, v13, v11}, Lcom/jme3/renderer/opengl/GLImageFormats;->format([[Lcom/jme3/renderer/opengl/GLImageFormat;Lcom/jme3/texture/Image$Format;III)V

    sget-object v6, Lcom/jme3/texture/Image$Format;->Luminance8:Lcom/jme3/texture/Image$Format;

    const v12, 0x8040

    invoke-static {v1, v6, v12, v8, v11}, Lcom/jme3/renderer/opengl/GLImageFormats;->format([[Lcom/jme3/renderer/opengl/GLImageFormat;Lcom/jme3/texture/Image$Format;III)V

    sget-object v6, Lcom/jme3/texture/Image$Format;->Luminance8Alpha8:Lcom/jme3/texture/Image$Format;

    const v12, 0x8045

    invoke-static {v1, v6, v12, v15, v11}, Lcom/jme3/renderer/opengl/GLImageFormats;->format([[Lcom/jme3/renderer/opengl/GLImageFormat;Lcom/jme3/texture/Image$Format;III)V

    :cond_7
    sget-object v6, Lcom/jme3/texture/Image$Format;->RGB8:Lcom/jme3/texture/Image$Format;

    invoke-static {v1, v6, v14, v9, v11}, Lcom/jme3/renderer/opengl/GLImageFormats;->format([[Lcom/jme3/renderer/opengl/GLImageFormat;Lcom/jme3/texture/Image$Format;III)V

    sget-object v12, Lcom/jme3/texture/Image$Format;->RGBA8:Lcom/jme3/texture/Image$Format;

    invoke-static {v1, v12, v10, v7, v11}, Lcom/jme3/renderer/opengl/GLImageFormats;->format([[Lcom/jme3/renderer/opengl/GLImageFormat;Lcom/jme3/texture/Image$Format;III)V

    sget-object v13, Lcom/jme3/texture/Image$Format;->RGB565:Lcom/jme3/texture/Image$Format;

    const v15, 0x8363

    invoke-static {v1, v13, v14, v9, v15}, Lcom/jme3/renderer/opengl/GLImageFormats;->format([[Lcom/jme3/renderer/opengl/GLImageFormat;Lcom/jme3/texture/Image$Format;III)V

    sget-object v15, Lcom/jme3/texture/Image$Format;->BGR8:Lcom/jme3/texture/Image$Format;

    const v8, 0x80e0

    invoke-static {v1, v15, v14, v8, v11}, Lcom/jme3/renderer/opengl/GLImageFormats;->format([[Lcom/jme3/renderer/opengl/GLImageFormat;Lcom/jme3/texture/Image$Format;III)V

    sget-object v8, Lcom/jme3/texture/Image$Format;->ARGB8:Lcom/jme3/texture/Image$Format;

    const v14, 0x8035

    const v9, 0x80e1

    invoke-static {v1, v8, v10, v9, v14}, Lcom/jme3/renderer/opengl/GLImageFormats;->format([[Lcom/jme3/renderer/opengl/GLImageFormat;Lcom/jme3/texture/Image$Format;III)V

    sget-object v14, Lcom/jme3/texture/Image$Format;->BGRA8:Lcom/jme3/texture/Image$Format;

    invoke-static {v1, v14, v10, v9, v11}, Lcom/jme3/renderer/opengl/GLImageFormats;->format([[Lcom/jme3/renderer/opengl/GLImageFormat;Lcom/jme3/texture/Image$Format;III)V

    sget-object v9, Lcom/jme3/texture/Image$Format;->ABGR8:Lcom/jme3/texture/Image$Format;

    const v11, 0x8035

    invoke-static {v1, v9, v10, v7, v11}, Lcom/jme3/renderer/opengl/GLImageFormats;->format([[Lcom/jme3/renderer/opengl/GLImageFormat;Lcom/jme3/texture/Image$Format;III)V

    sget-object v10, Lcom/jme3/renderer/Caps;->Srgb:Lcom/jme3/renderer/Caps;

    invoke-virtual {v0, v10}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_9

    const/16 v7, 0x1907

    const v10, 0x8c41

    const/16 v11, 0x1401

    invoke-static {v1, v6, v10, v7, v11}, Lcom/jme3/renderer/opengl/GLImageFormats;->formatSrgb([[Lcom/jme3/renderer/opengl/GLImageFormat;Lcom/jme3/texture/Image$Format;III)V

    const v6, 0x8363

    invoke-static {v1, v13, v10, v7, v6}, Lcom/jme3/renderer/opengl/GLImageFormats;->formatSrgb([[Lcom/jme3/renderer/opengl/GLImageFormat;Lcom/jme3/texture/Image$Format;III)V

    sget-object v6, Lcom/jme3/texture/Image$Format;->RGB5A1:Lcom/jme3/texture/Image$Format;

    const v7, 0x8034

    const v10, 0x8c43

    const/16 v13, 0x1908

    invoke-static {v1, v6, v10, v13, v7}, Lcom/jme3/renderer/opengl/GLImageFormats;->formatSrgb([[Lcom/jme3/renderer/opengl/GLImageFormat;Lcom/jme3/texture/Image$Format;III)V

    invoke-static {v1, v12, v10, v13, v11}, Lcom/jme3/renderer/opengl/GLImageFormats;->formatSrgb([[Lcom/jme3/renderer/opengl/GLImageFormat;Lcom/jme3/texture/Image$Format;III)V

    invoke-virtual {v0, v4}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_8

    sget-object v6, Lcom/jme3/texture/Image$Format;->Luminance8:Lcom/jme3/texture/Image$Format;

    const v7, 0x8c47

    const/16 v10, 0x1909

    invoke-static {v1, v6, v7, v10, v11}, Lcom/jme3/renderer/opengl/GLImageFormats;->formatSrgb([[Lcom/jme3/renderer/opengl/GLImageFormat;Lcom/jme3/texture/Image$Format;III)V

    sget-object v6, Lcom/jme3/texture/Image$Format;->Luminance8Alpha8:Lcom/jme3/texture/Image$Format;

    const v7, 0x8c45

    const/16 v10, 0x190a

    invoke-static {v1, v6, v7, v10, v11}, Lcom/jme3/renderer/opengl/GLImageFormats;->formatSrgb([[Lcom/jme3/renderer/opengl/GLImageFormat;Lcom/jme3/texture/Image$Format;III)V

    :cond_8
    const v6, 0x80e0

    const v7, 0x8c41

    invoke-static {v1, v15, v7, v6, v11}, Lcom/jme3/renderer/opengl/GLImageFormats;->formatSrgb([[Lcom/jme3/renderer/opengl/GLImageFormat;Lcom/jme3/texture/Image$Format;III)V

    const v6, 0x8035

    const v7, 0x8c43

    const/16 v10, 0x1908

    invoke-static {v1, v9, v7, v10, v6}, Lcom/jme3/renderer/opengl/GLImageFormats;->formatSrgb([[Lcom/jme3/renderer/opengl/GLImageFormat;Lcom/jme3/texture/Image$Format;III)V

    const v9, 0x80e1

    invoke-static {v1, v8, v7, v9, v6}, Lcom/jme3/renderer/opengl/GLImageFormats;->formatSrgb([[Lcom/jme3/renderer/opengl/GLImageFormat;Lcom/jme3/texture/Image$Format;III)V

    invoke-static {v1, v14, v7, v9, v11}, Lcom/jme3/renderer/opengl/GLImageFormats;->formatSrgb([[Lcom/jme3/renderer/opengl/GLImageFormat;Lcom/jme3/texture/Image$Format;III)V

    sget-object v6, Lcom/jme3/renderer/Caps;->TextureCompressionS3TC:Lcom/jme3/renderer/Caps;

    invoke-virtual {v0, v6}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    sget-object v6, Lcom/jme3/texture/Image$Format;->DXT1:Lcom/jme3/texture/Image$Format;

    const v7, 0x8c4c

    const/16 v8, 0x1907

    invoke-static {v1, v6, v7, v8, v11}, Lcom/jme3/renderer/opengl/GLImageFormats;->formatCompSrgb([[Lcom/jme3/renderer/opengl/GLImageFormat;Lcom/jme3/texture/Image$Format;III)V

    sget-object v6, Lcom/jme3/texture/Image$Format;->DXT1A:Lcom/jme3/texture/Image$Format;

    const v7, 0x8c4d

    const/16 v8, 0x1908

    invoke-static {v1, v6, v7, v8, v11}, Lcom/jme3/renderer/opengl/GLImageFormats;->formatCompSrgb([[Lcom/jme3/renderer/opengl/GLImageFormat;Lcom/jme3/texture/Image$Format;III)V

    sget-object v6, Lcom/jme3/texture/Image$Format;->DXT3:Lcom/jme3/texture/Image$Format;

    const v7, 0x8c4e

    invoke-static {v1, v6, v7, v8, v11}, Lcom/jme3/renderer/opengl/GLImageFormats;->formatCompSrgb([[Lcom/jme3/renderer/opengl/GLImageFormat;Lcom/jme3/texture/Image$Format;III)V

    sget-object v6, Lcom/jme3/texture/Image$Format;->DXT5:Lcom/jme3/texture/Image$Format;

    const v7, 0x8c4f

    invoke-static {v1, v6, v7, v8, v11}, Lcom/jme3/renderer/opengl/GLImageFormats;->formatCompSrgb([[Lcom/jme3/renderer/opengl/GLImageFormat;Lcom/jme3/texture/Image$Format;III)V

    :cond_9
    :goto_2
    invoke-virtual {v0, v2}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    sget-object v6, Lcom/jme3/texture/Image$Format;->RGB565:Lcom/jme3/texture/Image$Format;

    const v7, 0x8d62

    const v8, 0x8363

    const/16 v9, 0x1907

    invoke-static {v1, v6, v7, v9, v8}, Lcom/jme3/renderer/opengl/GLImageFormats;->format([[Lcom/jme3/renderer/opengl/GLImageFormat;Lcom/jme3/texture/Image$Format;III)V

    :cond_a
    sget-object v6, Lcom/jme3/texture/Image$Format;->RGB5A1:Lcom/jme3/texture/Image$Format;

    const v7, 0x8057

    const v8, 0x8034

    const/16 v9, 0x1908

    invoke-static {v1, v6, v7, v9, v8}, Lcom/jme3/renderer/opengl/GLImageFormats;->format([[Lcom/jme3/renderer/opengl/GLImageFormat;Lcom/jme3/texture/Image$Format;III)V

    sget-object v6, Lcom/jme3/renderer/Caps;->FloatTexture:Lcom/jme3/renderer/Caps;

    invoke-virtual {v0, v6}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_c

    invoke-virtual {v0, v4}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_b

    sget-object v4, Lcom/jme3/texture/Image$Format;->Luminance16F:Lcom/jme3/texture/Image$Format;

    const v7, 0x881e

    const/16 v8, 0x1909

    invoke-static {v1, v4, v7, v8, v3}, Lcom/jme3/renderer/opengl/GLImageFormats;->format([[Lcom/jme3/renderer/opengl/GLImageFormat;Lcom/jme3/texture/Image$Format;III)V

    sget-object v4, Lcom/jme3/texture/Image$Format;->Luminance32F:Lcom/jme3/texture/Image$Format;

    const v7, 0x8818

    const/16 v9, 0x1406

    invoke-static {v1, v4, v7, v8, v9}, Lcom/jme3/renderer/opengl/GLImageFormats;->format([[Lcom/jme3/renderer/opengl/GLImageFormat;Lcom/jme3/texture/Image$Format;III)V

    sget-object v4, Lcom/jme3/texture/Image$Format;->Luminance16FAlpha16F:Lcom/jme3/texture/Image$Format;

    const v7, 0x881f

    const/16 v8, 0x190a

    invoke-static {v1, v4, v7, v8, v3}, Lcom/jme3/renderer/opengl/GLImageFormats;->format([[Lcom/jme3/renderer/opengl/GLImageFormat;Lcom/jme3/texture/Image$Format;III)V

    goto :goto_3

    :cond_b
    const/16 v9, 0x1406

    :goto_3
    sget-object v4, Lcom/jme3/texture/Image$Format;->R16F:Lcom/jme3/texture/Image$Format;

    const v7, 0x822d

    const/16 v8, 0x1903

    invoke-static {v1, v4, v7, v8, v3}, Lcom/jme3/renderer/opengl/GLImageFormats;->format([[Lcom/jme3/renderer/opengl/GLImageFormat;Lcom/jme3/texture/Image$Format;III)V

    sget-object v4, Lcom/jme3/texture/Image$Format;->R32F:Lcom/jme3/texture/Image$Format;

    const v7, 0x822e

    invoke-static {v1, v4, v7, v8, v9}, Lcom/jme3/renderer/opengl/GLImageFormats;->format([[Lcom/jme3/renderer/opengl/GLImageFormat;Lcom/jme3/texture/Image$Format;III)V

    sget-object v4, Lcom/jme3/texture/Image$Format;->RG16F:Lcom/jme3/texture/Image$Format;

    const v7, 0x822f

    const v8, 0x8227

    invoke-static {v1, v4, v7, v8, v3}, Lcom/jme3/renderer/opengl/GLImageFormats;->format([[Lcom/jme3/renderer/opengl/GLImageFormat;Lcom/jme3/texture/Image$Format;III)V

    sget-object v4, Lcom/jme3/texture/Image$Format;->RG32F:Lcom/jme3/texture/Image$Format;

    const v7, 0x8230

    invoke-static {v1, v4, v7, v8, v9}, Lcom/jme3/renderer/opengl/GLImageFormats;->format([[Lcom/jme3/renderer/opengl/GLImageFormat;Lcom/jme3/texture/Image$Format;III)V

    sget-object v4, Lcom/jme3/texture/Image$Format;->RGB16F:Lcom/jme3/texture/Image$Format;

    const v7, 0x881b

    const/16 v8, 0x1907

    invoke-static {v1, v4, v7, v8, v3}, Lcom/jme3/renderer/opengl/GLImageFormats;->format([[Lcom/jme3/renderer/opengl/GLImageFormat;Lcom/jme3/texture/Image$Format;III)V

    sget-object v4, Lcom/jme3/texture/Image$Format;->RGB32F:Lcom/jme3/texture/Image$Format;

    const v7, 0x8815

    invoke-static {v1, v4, v7, v8, v9}, Lcom/jme3/renderer/opengl/GLImageFormats;->format([[Lcom/jme3/renderer/opengl/GLImageFormat;Lcom/jme3/texture/Image$Format;III)V

    sget-object v4, Lcom/jme3/texture/Image$Format;->RGBA16F:Lcom/jme3/texture/Image$Format;

    const v7, 0x881a

    const/16 v8, 0x1908

    invoke-static {v1, v4, v7, v8, v3}, Lcom/jme3/renderer/opengl/GLImageFormats;->format([[Lcom/jme3/renderer/opengl/GLImageFormat;Lcom/jme3/texture/Image$Format;III)V

    sget-object v4, Lcom/jme3/texture/Image$Format;->RGBA32F:Lcom/jme3/texture/Image$Format;

    const v7, 0x8814

    invoke-static {v1, v4, v7, v8, v9}, Lcom/jme3/renderer/opengl/GLImageFormats;->format([[Lcom/jme3/renderer/opengl/GLImageFormat;Lcom/jme3/texture/Image$Format;III)V

    :cond_c
    sget-object v4, Lcom/jme3/renderer/Caps;->PackedFloatTexture:Lcom/jme3/renderer/Caps;

    invoke-virtual {v0, v4}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d

    sget-object v4, Lcom/jme3/texture/Image$Format;->RGB111110F:Lcom/jme3/texture/Image$Format;

    const v7, 0x8c3a

    const v8, 0x8c3b

    const/16 v9, 0x1907

    invoke-static {v1, v4, v7, v9, v8}, Lcom/jme3/renderer/opengl/GLImageFormats;->format([[Lcom/jme3/renderer/opengl/GLImageFormat;Lcom/jme3/texture/Image$Format;III)V

    invoke-virtual {v0, v6}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e

    sget-object v4, Lcom/jme3/texture/Image$Format;->RGB16F_to_RGB111110F:Lcom/jme3/texture/Image$Format;

    const v7, 0x8c3a

    invoke-static {v1, v4, v7, v9, v3}, Lcom/jme3/renderer/opengl/GLImageFormats;->format([[Lcom/jme3/renderer/opengl/GLImageFormat;Lcom/jme3/texture/Image$Format;III)V

    goto :goto_4

    :cond_d
    const/16 v9, 0x1907

    :cond_e
    :goto_4
    sget-object v4, Lcom/jme3/renderer/Caps;->SharedExponentTexture:Lcom/jme3/renderer/Caps;

    invoke-virtual {v0, v4}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_f

    sget-object v4, Lcom/jme3/texture/Image$Format;->RGB9E5:Lcom/jme3/texture/Image$Format;

    const v7, 0x8c3d

    const v8, 0x8c3e

    invoke-static {v1, v4, v7, v9, v8}, Lcom/jme3/renderer/opengl/GLImageFormats;->format([[Lcom/jme3/renderer/opengl/GLImageFormat;Lcom/jme3/texture/Image$Format;III)V

    invoke-virtual {v0, v6}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_f

    sget-object v4, Lcom/jme3/texture/Image$Format;->RGB16F_to_RGB9E5:Lcom/jme3/texture/Image$Format;

    const v6, 0x8c3d

    invoke-static {v1, v4, v6, v9, v3}, Lcom/jme3/renderer/opengl/GLImageFormats;->format([[Lcom/jme3/renderer/opengl/GLImageFormat;Lcom/jme3/texture/Image$Format;III)V

    :cond_f
    sget-object v3, Lcom/jme3/renderer/Caps;->OpenGLES30:Lcom/jme3/renderer/Caps;

    invoke-virtual {v0, v3}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_10

    sget-object v4, Lcom/jme3/texture/Image$Format;->RGB10A2:Lcom/jme3/texture/Image$Format;

    const v6, 0x8059

    const v7, 0x8368

    const/16 v8, 0x1908

    invoke-static {v1, v4, v6, v8, v7}, Lcom/jme3/renderer/opengl/GLImageFormats;->format([[Lcom/jme3/renderer/opengl/GLImageFormat;Lcom/jme3/texture/Image$Format;III)V

    sget-object v4, Lcom/jme3/texture/Image$Format;->Alpha8:Lcom/jme3/texture/Image$Format;

    const v6, 0x803c

    const/16 v7, 0x1401

    const/16 v9, 0x1906

    invoke-static {v1, v4, v6, v9, v7}, Lcom/jme3/renderer/opengl/GLImageFormats;->format([[Lcom/jme3/renderer/opengl/GLImageFormat;Lcom/jme3/texture/Image$Format;III)V

    sget-object v4, Lcom/jme3/texture/Image$Format;->Luminance8:Lcom/jme3/texture/Image$Format;

    const/16 v6, 0x1909

    invoke-static {v1, v4, v6, v6, v7}, Lcom/jme3/renderer/opengl/GLImageFormats;->format([[Lcom/jme3/renderer/opengl/GLImageFormat;Lcom/jme3/texture/Image$Format;III)V

    sget-object v4, Lcom/jme3/texture/Image$Format;->Luminance8Alpha8:Lcom/jme3/texture/Image$Format;

    const/16 v6, 0x190a

    invoke-static {v1, v4, v6, v6, v7}, Lcom/jme3/renderer/opengl/GLImageFormats;->format([[Lcom/jme3/renderer/opengl/GLImageFormat;Lcom/jme3/texture/Image$Format;III)V

    sget-object v4, Lcom/jme3/texture/Image$Format;->RGB8:Lcom/jme3/texture/Image$Format;

    const v6, 0x8c41

    const/16 v9, 0x1907

    invoke-static {v1, v4, v6, v9, v7}, Lcom/jme3/renderer/opengl/GLImageFormats;->formatSrgb([[Lcom/jme3/renderer/opengl/GLImageFormat;Lcom/jme3/texture/Image$Format;III)V

    sget-object v4, Lcom/jme3/texture/Image$Format;->RGBA8:Lcom/jme3/texture/Image$Format;

    const v6, 0x8c43

    invoke-static {v1, v4, v6, v8, v7}, Lcom/jme3/renderer/opengl/GLImageFormats;->formatSrgb([[Lcom/jme3/renderer/opengl/GLImageFormat;Lcom/jme3/texture/Image$Format;III)V

    sget-object v4, Lcom/jme3/texture/Image$Format;->RGB16F:Lcom/jme3/texture/Image$Format;

    const v6, 0x881b

    const/16 v7, 0x140b

    invoke-static {v1, v4, v6, v9, v7}, Lcom/jme3/renderer/opengl/GLImageFormats;->format([[Lcom/jme3/renderer/opengl/GLImageFormat;Lcom/jme3/texture/Image$Format;III)V

    sget-object v4, Lcom/jme3/texture/Image$Format;->RGB32F:Lcom/jme3/texture/Image$Format;

    const v6, 0x8815

    const/16 v7, 0x1406

    invoke-static {v1, v4, v6, v9, v7}, Lcom/jme3/renderer/opengl/GLImageFormats;->format([[Lcom/jme3/renderer/opengl/GLImageFormat;Lcom/jme3/texture/Image$Format;III)V

    sget-object v4, Lcom/jme3/texture/Image$Format;->RGBA16F:Lcom/jme3/texture/Image$Format;

    const v6, 0x881a

    const/16 v10, 0x140b

    invoke-static {v1, v4, v6, v8, v10}, Lcom/jme3/renderer/opengl/GLImageFormats;->format([[Lcom/jme3/renderer/opengl/GLImageFormat;Lcom/jme3/texture/Image$Format;III)V

    sget-object v4, Lcom/jme3/texture/Image$Format;->RGBA32F:Lcom/jme3/texture/Image$Format;

    const v6, 0x8814

    invoke-static {v1, v4, v6, v8, v7}, Lcom/jme3/renderer/opengl/GLImageFormats;->format([[Lcom/jme3/renderer/opengl/GLImageFormat;Lcom/jme3/texture/Image$Format;III)V

    sget-object v4, Lcom/jme3/texture/Image$Format;->RGB111110F:Lcom/jme3/texture/Image$Format;

    const v6, 0x8c3a

    const v7, 0x8c3b

    invoke-static {v1, v4, v6, v9, v7}, Lcom/jme3/renderer/opengl/GLImageFormats;->format([[Lcom/jme3/renderer/opengl/GLImageFormat;Lcom/jme3/texture/Image$Format;III)V

    :cond_10
    sget-object v4, Lcom/jme3/texture/Image$Format;->Depth16:Lcom/jme3/texture/Image$Format;

    const v6, 0x81a5

    const/16 v7, 0x1902

    const/16 v8, 0x1403

    invoke-static {v1, v4, v6, v7, v8}, Lcom/jme3/renderer/opengl/GLImageFormats;->format([[Lcom/jme3/renderer/opengl/GLImageFormat;Lcom/jme3/texture/Image$Format;III)V

    sget-object v4, Lcom/jme3/renderer/Caps;->WebGL:Lcom/jme3/renderer/Caps;

    invoke-virtual {v0, v4}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v4

    const/16 v6, 0x1405

    if-eqz v4, :cond_11

    sget-object v2, Lcom/jme3/texture/Image$Format;->Depth:Lcom/jme3/texture/Image$Format;

    const v4, 0x81a6

    invoke-static {v1, v2, v4, v7, v6}, Lcom/jme3/renderer/opengl/GLImageFormats;->format([[Lcom/jme3/renderer/opengl/GLImageFormat;Lcom/jme3/texture/Image$Format;III)V

    goto :goto_5

    :cond_11
    invoke-virtual {v0, v2}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    sget-object v2, Lcom/jme3/texture/Image$Format;->Depth:Lcom/jme3/texture/Image$Format;

    const v4, 0x81a5

    invoke-static {v1, v2, v4, v7, v8}, Lcom/jme3/renderer/opengl/GLImageFormats;->format([[Lcom/jme3/renderer/opengl/GLImageFormat;Lcom/jme3/texture/Image$Format;III)V

    goto :goto_5

    :cond_12
    sget-object v2, Lcom/jme3/texture/Image$Format;->Depth:Lcom/jme3/texture/Image$Format;

    const/16 v4, 0x1401

    invoke-static {v1, v2, v7, v7, v4}, Lcom/jme3/renderer/opengl/GLImageFormats;->format([[Lcom/jme3/renderer/opengl/GLImageFormat;Lcom/jme3/texture/Image$Format;III)V

    :goto_5
    invoke-virtual {v0, v3}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_13

    invoke-virtual {v0, v5}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_13

    sget-object v2, Lcom/jme3/renderer/Caps;->Depth24:Lcom/jme3/renderer/Caps;

    invoke-virtual {v0, v2}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    :cond_13
    sget-object v2, Lcom/jme3/texture/Image$Format;->Depth24:Lcom/jme3/texture/Image$Format;

    const v3, 0x81a6

    invoke-static {v1, v2, v3, v7, v6}, Lcom/jme3/renderer/opengl/GLImageFormats;->format([[Lcom/jme3/renderer/opengl/GLImageFormat;Lcom/jme3/texture/Image$Format;III)V

    :cond_14
    sget-object v2, Lcom/jme3/renderer/Caps;->FloatDepthBuffer:Lcom/jme3/renderer/Caps;

    invoke-virtual {v0, v2}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    sget-object v2, Lcom/jme3/texture/Image$Format;->Depth32F:Lcom/jme3/texture/Image$Format;

    const v3, 0x8cac

    const/16 v4, 0x1406

    invoke-static {v1, v2, v3, v7, v4}, Lcom/jme3/renderer/opengl/GLImageFormats;->format([[Lcom/jme3/renderer/opengl/GLImageFormat;Lcom/jme3/texture/Image$Format;III)V

    :cond_15
    sget-object v2, Lcom/jme3/renderer/Caps;->PackedDepthStencilBuffer:Lcom/jme3/renderer/Caps;

    invoke-virtual {v0, v2}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    sget-object v2, Lcom/jme3/texture/Image$Format;->Depth24Stencil8:Lcom/jme3/texture/Image$Format;

    const v3, 0x84f9

    const v4, 0x84fa

    const v5, 0x88f0

    invoke-static {v1, v2, v5, v3, v4}, Lcom/jme3/renderer/opengl/GLImageFormats;->format([[Lcom/jme3/renderer/opengl/GLImageFormat;Lcom/jme3/texture/Image$Format;III)V

    :cond_16
    sget-object v2, Lcom/jme3/renderer/Caps;->TextureCompressionS3TC:Lcom/jme3/renderer/Caps;

    invoke-virtual {v0, v2}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    sget-object v2, Lcom/jme3/texture/Image$Format;->DXT1:Lcom/jme3/texture/Image$Format;

    const v3, 0x83f0

    const/16 v4, 0x1401

    const/16 v5, 0x1907

    invoke-static {v1, v2, v3, v5, v4}, Lcom/jme3/renderer/opengl/GLImageFormats;->formatComp([[Lcom/jme3/renderer/opengl/GLImageFormat;Lcom/jme3/texture/Image$Format;III)V

    sget-object v2, Lcom/jme3/texture/Image$Format;->DXT1A:Lcom/jme3/texture/Image$Format;

    const v3, 0x83f1

    const/16 v5, 0x1908

    invoke-static {v1, v2, v3, v5, v4}, Lcom/jme3/renderer/opengl/GLImageFormats;->formatComp([[Lcom/jme3/renderer/opengl/GLImageFormat;Lcom/jme3/texture/Image$Format;III)V

    sget-object v2, Lcom/jme3/texture/Image$Format;->DXT3:Lcom/jme3/texture/Image$Format;

    const v3, 0x83f2

    invoke-static {v1, v2, v3, v5, v4}, Lcom/jme3/renderer/opengl/GLImageFormats;->formatComp([[Lcom/jme3/renderer/opengl/GLImageFormat;Lcom/jme3/texture/Image$Format;III)V

    sget-object v2, Lcom/jme3/texture/Image$Format;->DXT5:Lcom/jme3/texture/Image$Format;

    const v3, 0x83f3

    invoke-static {v1, v2, v3, v5, v4}, Lcom/jme3/renderer/opengl/GLImageFormats;->formatComp([[Lcom/jme3/renderer/opengl/GLImageFormat;Lcom/jme3/texture/Image$Format;III)V

    :cond_17
    sget-object v2, Lcom/jme3/renderer/Caps;->OpenGL30:Lcom/jme3/renderer/Caps;

    invoke-virtual {v0, v2}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v2

    const/16 v3, 0x1400

    if-nez v2, :cond_19

    sget-object v2, Lcom/jme3/renderer/Caps;->TextureCompressionRGTC:Lcom/jme3/renderer/Caps;

    invoke-virtual {v0, v2}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    goto :goto_6

    :cond_18
    const/16 v7, 0x1401

    goto :goto_7

    :cond_19
    :goto_6
    sget-object v2, Lcom/jme3/texture/Image$Format;->RGTC2:Lcom/jme3/texture/Image$Format;

    const v4, 0x8dbd

    const v5, 0x8227

    const/16 v7, 0x1401

    invoke-static {v1, v2, v4, v5, v7}, Lcom/jme3/renderer/opengl/GLImageFormats;->formatComp([[Lcom/jme3/renderer/opengl/GLImageFormat;Lcom/jme3/texture/Image$Format;III)V

    sget-object v2, Lcom/jme3/texture/Image$Format;->SIGNED_RGTC2:Lcom/jme3/texture/Image$Format;

    const v4, 0x8dbe

    invoke-static {v1, v2, v4, v5, v3}, Lcom/jme3/renderer/opengl/GLImageFormats;->formatComp([[Lcom/jme3/renderer/opengl/GLImageFormat;Lcom/jme3/texture/Image$Format;III)V

    sget-object v2, Lcom/jme3/texture/Image$Format;->RGTC1:Lcom/jme3/texture/Image$Format;

    const v4, 0x8dbb

    const/16 v5, 0x1903

    invoke-static {v1, v2, v4, v5, v7}, Lcom/jme3/renderer/opengl/GLImageFormats;->formatComp([[Lcom/jme3/renderer/opengl/GLImageFormat;Lcom/jme3/texture/Image$Format;III)V

    sget-object v2, Lcom/jme3/texture/Image$Format;->SIGNED_RGTC1:Lcom/jme3/texture/Image$Format;

    const v4, 0x8dbc

    invoke-static {v1, v2, v4, v5, v3}, Lcom/jme3/renderer/opengl/GLImageFormats;->formatComp([[Lcom/jme3/renderer/opengl/GLImageFormat;Lcom/jme3/texture/Image$Format;III)V

    :goto_7
    sget-object v2, Lcom/jme3/renderer/Caps;->TextureCompressionETC2:Lcom/jme3/renderer/Caps;

    invoke-virtual {v0, v2}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1a

    sget-object v2, Lcom/jme3/texture/Image$Format;->ETC2:Lcom/jme3/texture/Image$Format;

    const v4, 0x9278

    const/16 v5, 0x1908

    invoke-static {v1, v2, v4, v5, v7}, Lcom/jme3/renderer/opengl/GLImageFormats;->formatComp([[Lcom/jme3/renderer/opengl/GLImageFormat;Lcom/jme3/texture/Image$Format;III)V

    sget-object v4, Lcom/jme3/texture/Image$Format;->ETC2_ALPHA1:Lcom/jme3/texture/Image$Format;

    const v9, 0x9276

    invoke-static {v1, v4, v9, v5, v7}, Lcom/jme3/renderer/opengl/GLImageFormats;->formatComp([[Lcom/jme3/renderer/opengl/GLImageFormat;Lcom/jme3/texture/Image$Format;III)V

    sget-object v9, Lcom/jme3/texture/Image$Format;->ETC1:Lcom/jme3/texture/Image$Format;

    const v10, 0x9274

    const/16 v11, 0x1907

    invoke-static {v1, v9, v10, v11, v7}, Lcom/jme3/renderer/opengl/GLImageFormats;->formatComp([[Lcom/jme3/renderer/opengl/GLImageFormat;Lcom/jme3/texture/Image$Format;III)V

    sget-object v10, Lcom/jme3/renderer/Caps;->Srgb:Lcom/jme3/renderer/Caps;

    invoke-virtual {v0, v10}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1b

    const v10, 0x9279

    invoke-static {v1, v2, v10, v5, v7}, Lcom/jme3/renderer/opengl/GLImageFormats;->formatCompSrgb([[Lcom/jme3/renderer/opengl/GLImageFormat;Lcom/jme3/texture/Image$Format;III)V

    const v2, 0x9277

    invoke-static {v1, v4, v2, v5, v7}, Lcom/jme3/renderer/opengl/GLImageFormats;->formatCompSrgb([[Lcom/jme3/renderer/opengl/GLImageFormat;Lcom/jme3/texture/Image$Format;III)V

    const v2, 0x9275

    invoke-static {v1, v9, v2, v11, v7}, Lcom/jme3/renderer/opengl/GLImageFormats;->formatCompSrgb([[Lcom/jme3/renderer/opengl/GLImageFormat;Lcom/jme3/texture/Image$Format;III)V

    goto :goto_8

    :cond_1a
    const/16 v11, 0x1907

    sget-object v2, Lcom/jme3/renderer/Caps;->TextureCompressionETC1:Lcom/jme3/renderer/Caps;

    invoke-virtual {v0, v2}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1b

    sget-object v2, Lcom/jme3/texture/Image$Format;->ETC1:Lcom/jme3/texture/Image$Format;

    const v4, 0x8d64

    invoke-static {v1, v2, v4, v11, v7}, Lcom/jme3/renderer/opengl/GLImageFormats;->formatComp([[Lcom/jme3/renderer/opengl/GLImageFormat;Lcom/jme3/texture/Image$Format;III)V

    :cond_1b
    :goto_8
    sget-object v2, Lcom/jme3/renderer/Caps;->OpenGL42:Lcom/jme3/renderer/Caps;

    invoke-virtual {v0, v2}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1c

    sget-object v2, Lcom/jme3/renderer/Caps;->TextureCompressionBPTC:Lcom/jme3/renderer/Caps;

    invoke-virtual {v0, v2}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1d

    :cond_1c
    sget-object v2, Lcom/jme3/texture/Image$Format;->BC6H_SF16:Lcom/jme3/texture/Image$Format;

    const v4, 0x8e8e

    const/16 v5, 0x1401

    const/16 v7, 0x1907

    invoke-static {v1, v2, v4, v7, v5}, Lcom/jme3/renderer/opengl/GLImageFormats;->formatComp([[Lcom/jme3/renderer/opengl/GLImageFormat;Lcom/jme3/texture/Image$Format;III)V

    sget-object v2, Lcom/jme3/texture/Image$Format;->BC6H_UF16:Lcom/jme3/texture/Image$Format;

    const v4, 0x8e8f

    invoke-static {v1, v2, v4, v7, v5}, Lcom/jme3/renderer/opengl/GLImageFormats;->formatComp([[Lcom/jme3/renderer/opengl/GLImageFormat;Lcom/jme3/texture/Image$Format;III)V

    sget-object v2, Lcom/jme3/texture/Image$Format;->BC7_UNORM:Lcom/jme3/texture/Image$Format;

    const v4, 0x8e8c

    const/16 v5, 0x1908

    invoke-static {v1, v2, v4, v5, v6}, Lcom/jme3/renderer/opengl/GLImageFormats;->formatComp([[Lcom/jme3/renderer/opengl/GLImageFormat;Lcom/jme3/texture/Image$Format;III)V

    sget-object v2, Lcom/jme3/texture/Image$Format;->BC7_UNORM_SRGB:Lcom/jme3/texture/Image$Format;

    const v4, 0x8e8d

    invoke-static {v1, v2, v4, v5, v6}, Lcom/jme3/renderer/opengl/GLImageFormats;->formatComp([[Lcom/jme3/renderer/opengl/GLImageFormat;Lcom/jme3/texture/Image$Format;III)V

    :cond_1d
    sget-object v2, Lcom/jme3/renderer/Caps;->IntegerTexture:Lcom/jme3/renderer/Caps;

    invoke-virtual {v0, v2}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    sget-object v0, Lcom/jme3/texture/Image$Format;->R8I:Lcom/jme3/texture/Image$Format;

    const v2, 0x8231

    const v4, 0x8d94

    invoke-static {v1, v0, v2, v4, v3}, Lcom/jme3/renderer/opengl/GLImageFormats;->format([[Lcom/jme3/renderer/opengl/GLImageFormat;Lcom/jme3/texture/Image$Format;III)V

    sget-object v0, Lcom/jme3/texture/Image$Format;->R8UI:Lcom/jme3/texture/Image$Format;

    const v2, 0x8232

    const/16 v5, 0x1401

    invoke-static {v1, v0, v2, v4, v5}, Lcom/jme3/renderer/opengl/GLImageFormats;->format([[Lcom/jme3/renderer/opengl/GLImageFormat;Lcom/jme3/texture/Image$Format;III)V

    sget-object v0, Lcom/jme3/texture/Image$Format;->R16I:Lcom/jme3/texture/Image$Format;

    const v2, 0x8233

    const/16 v5, 0x1402

    invoke-static {v1, v0, v2, v4, v5}, Lcom/jme3/renderer/opengl/GLImageFormats;->format([[Lcom/jme3/renderer/opengl/GLImageFormat;Lcom/jme3/texture/Image$Format;III)V

    sget-object v0, Lcom/jme3/texture/Image$Format;->R16UI:Lcom/jme3/texture/Image$Format;

    const v2, 0x8234

    invoke-static {v1, v0, v2, v4, v8}, Lcom/jme3/renderer/opengl/GLImageFormats;->format([[Lcom/jme3/renderer/opengl/GLImageFormat;Lcom/jme3/texture/Image$Format;III)V

    sget-object v0, Lcom/jme3/texture/Image$Format;->R32I:Lcom/jme3/texture/Image$Format;

    const v2, 0x8235

    const/16 v5, 0x1404

    invoke-static {v1, v0, v2, v4, v5}, Lcom/jme3/renderer/opengl/GLImageFormats;->format([[Lcom/jme3/renderer/opengl/GLImageFormat;Lcom/jme3/texture/Image$Format;III)V

    sget-object v0, Lcom/jme3/texture/Image$Format;->R32UI:Lcom/jme3/texture/Image$Format;

    const v2, 0x8236

    invoke-static {v1, v0, v2, v4, v6}, Lcom/jme3/renderer/opengl/GLImageFormats;->format([[Lcom/jme3/renderer/opengl/GLImageFormat;Lcom/jme3/texture/Image$Format;III)V

    sget-object v0, Lcom/jme3/texture/Image$Format;->RG8I:Lcom/jme3/texture/Image$Format;

    const v2, 0x8237

    const v4, 0x8228

    invoke-static {v1, v0, v2, v4, v3}, Lcom/jme3/renderer/opengl/GLImageFormats;->format([[Lcom/jme3/renderer/opengl/GLImageFormat;Lcom/jme3/texture/Image$Format;III)V

    sget-object v0, Lcom/jme3/texture/Image$Format;->RG8UI:Lcom/jme3/texture/Image$Format;

    const v2, 0x8238

    const/16 v5, 0x1401

    invoke-static {v1, v0, v2, v4, v5}, Lcom/jme3/renderer/opengl/GLImageFormats;->format([[Lcom/jme3/renderer/opengl/GLImageFormat;Lcom/jme3/texture/Image$Format;III)V

    sget-object v0, Lcom/jme3/texture/Image$Format;->RG16I:Lcom/jme3/texture/Image$Format;

    const v2, 0x8239

    const/16 v5, 0x1402

    invoke-static {v1, v0, v2, v4, v5}, Lcom/jme3/renderer/opengl/GLImageFormats;->format([[Lcom/jme3/renderer/opengl/GLImageFormat;Lcom/jme3/texture/Image$Format;III)V

    sget-object v0, Lcom/jme3/texture/Image$Format;->RG16UI:Lcom/jme3/texture/Image$Format;

    const v2, 0x823a

    invoke-static {v1, v0, v2, v4, v8}, Lcom/jme3/renderer/opengl/GLImageFormats;->format([[Lcom/jme3/renderer/opengl/GLImageFormat;Lcom/jme3/texture/Image$Format;III)V

    sget-object v0, Lcom/jme3/texture/Image$Format;->RG32I:Lcom/jme3/texture/Image$Format;

    const v2, 0x823b

    const/16 v5, 0x1404

    invoke-static {v1, v0, v2, v4, v5}, Lcom/jme3/renderer/opengl/GLImageFormats;->format([[Lcom/jme3/renderer/opengl/GLImageFormat;Lcom/jme3/texture/Image$Format;III)V

    sget-object v0, Lcom/jme3/texture/Image$Format;->RG32UI:Lcom/jme3/texture/Image$Format;

    const v2, 0x823c

    invoke-static {v1, v0, v2, v4, v6}, Lcom/jme3/renderer/opengl/GLImageFormats;->format([[Lcom/jme3/renderer/opengl/GLImageFormat;Lcom/jme3/texture/Image$Format;III)V

    sget-object v0, Lcom/jme3/texture/Image$Format;->RGB8I:Lcom/jme3/texture/Image$Format;

    const v2, 0x8d8f

    const v4, 0x8d98

    invoke-static {v1, v0, v2, v4, v3}, Lcom/jme3/renderer/opengl/GLImageFormats;->format([[Lcom/jme3/renderer/opengl/GLImageFormat;Lcom/jme3/texture/Image$Format;III)V

    sget-object v0, Lcom/jme3/texture/Image$Format;->RGB8UI:Lcom/jme3/texture/Image$Format;

    const v2, 0x8d7d

    const/16 v5, 0x1401

    invoke-static {v1, v0, v2, v4, v5}, Lcom/jme3/renderer/opengl/GLImageFormats;->format([[Lcom/jme3/renderer/opengl/GLImageFormat;Lcom/jme3/texture/Image$Format;III)V

    sget-object v0, Lcom/jme3/texture/Image$Format;->RGB16I:Lcom/jme3/texture/Image$Format;

    const v2, 0x8d89

    const/16 v5, 0x1402

    invoke-static {v1, v0, v2, v4, v5}, Lcom/jme3/renderer/opengl/GLImageFormats;->format([[Lcom/jme3/renderer/opengl/GLImageFormat;Lcom/jme3/texture/Image$Format;III)V

    sget-object v0, Lcom/jme3/texture/Image$Format;->RGB16UI:Lcom/jme3/texture/Image$Format;

    const v2, 0x8d77

    invoke-static {v1, v0, v2, v4, v8}, Lcom/jme3/renderer/opengl/GLImageFormats;->format([[Lcom/jme3/renderer/opengl/GLImageFormat;Lcom/jme3/texture/Image$Format;III)V

    sget-object v0, Lcom/jme3/texture/Image$Format;->RGB32I:Lcom/jme3/texture/Image$Format;

    const v2, 0x8d83

    const/16 v5, 0x1404

    invoke-static {v1, v0, v2, v4, v5}, Lcom/jme3/renderer/opengl/GLImageFormats;->format([[Lcom/jme3/renderer/opengl/GLImageFormat;Lcom/jme3/texture/Image$Format;III)V

    sget-object v0, Lcom/jme3/texture/Image$Format;->RGB32UI:Lcom/jme3/texture/Image$Format;

    const v2, 0x8d71

    invoke-static {v1, v0, v2, v4, v6}, Lcom/jme3/renderer/opengl/GLImageFormats;->format([[Lcom/jme3/renderer/opengl/GLImageFormat;Lcom/jme3/texture/Image$Format;III)V

    sget-object v0, Lcom/jme3/texture/Image$Format;->RGBA8I:Lcom/jme3/texture/Image$Format;

    const v2, 0x8d8e

    const v4, 0x8d99

    invoke-static {v1, v0, v2, v4, v3}, Lcom/jme3/renderer/opengl/GLImageFormats;->format([[Lcom/jme3/renderer/opengl/GLImageFormat;Lcom/jme3/texture/Image$Format;III)V

    sget-object v0, Lcom/jme3/texture/Image$Format;->RGBA8UI:Lcom/jme3/texture/Image$Format;

    const v2, 0x8d7c

    const/16 v3, 0x1401

    invoke-static {v1, v0, v2, v4, v3}, Lcom/jme3/renderer/opengl/GLImageFormats;->format([[Lcom/jme3/renderer/opengl/GLImageFormat;Lcom/jme3/texture/Image$Format;III)V

    sget-object v0, Lcom/jme3/texture/Image$Format;->RGBA16I:Lcom/jme3/texture/Image$Format;

    const v2, 0x8d88

    const/16 v3, 0x1402

    invoke-static {v1, v0, v2, v4, v3}, Lcom/jme3/renderer/opengl/GLImageFormats;->format([[Lcom/jme3/renderer/opengl/GLImageFormat;Lcom/jme3/texture/Image$Format;III)V

    sget-object v0, Lcom/jme3/texture/Image$Format;->RGBA16UI:Lcom/jme3/texture/Image$Format;

    const v2, 0x8d76

    invoke-static {v1, v0, v2, v4, v8}, Lcom/jme3/renderer/opengl/GLImageFormats;->format([[Lcom/jme3/renderer/opengl/GLImageFormat;Lcom/jme3/texture/Image$Format;III)V

    sget-object v0, Lcom/jme3/texture/Image$Format;->RGBA32I:Lcom/jme3/texture/Image$Format;

    const v2, 0x8d82

    const/16 v3, 0x1404

    invoke-static {v1, v0, v2, v4, v3}, Lcom/jme3/renderer/opengl/GLImageFormats;->format([[Lcom/jme3/renderer/opengl/GLImageFormat;Lcom/jme3/texture/Image$Format;III)V

    sget-object v0, Lcom/jme3/texture/Image$Format;->RGBA32UI:Lcom/jme3/texture/Image$Format;

    const v2, 0x8d70

    invoke-static {v1, v0, v2, v4, v6}, Lcom/jme3/renderer/opengl/GLImageFormats;->format([[Lcom/jme3/renderer/opengl/GLImageFormat;Lcom/jme3/texture/Image$Format;III)V

    :cond_1e
    return-object v1
.end method
