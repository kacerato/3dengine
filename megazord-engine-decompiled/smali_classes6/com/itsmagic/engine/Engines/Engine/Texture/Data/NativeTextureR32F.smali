.class public Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureR32F;
.super Lcom/itsmagic/engine/Engines/Engine/Texture/Data/a;
.source "SourceFile"


# static fields
.field public static final t:Lea/b;

.field public static final u:I = 0x1


# instance fields
.field private extractingRT:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderTarget;
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end field

.field private keepAliveExtractionTexture:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end field

.field public final m:I

.field public final n:I

.field public o:J

.field public final p:Z

.field private pbd:Lcom/google/android/filament/Texture$g;
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end field

.field public q:Z

.field public final r:Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;

.field private rgba:Ljava/nio/ByteBuffer;
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end field

.field public s:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, LPb/a;

    invoke-direct {v0}, LPb/a;-><init>()V

    sput-object v0, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureR32F;->t:Lea/b;

    const-string v0, "native-texture-r32f"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "width",
            "height"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v0}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureR32F;-><init>(IILcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;)V

    return-void
.end method

.method public constructor <init>(IILcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "width",
            "height",
            "config"
        }
    .end annotation

    const/4 v0, 0x0

    .line 3
    invoke-direct {p0, p1, p2, v0, p3}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureR32F;-><init>(IIZLcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;)V

    return-void
.end method

.method public constructor <init>(IIZ)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "width",
            "height",
            "allowModifications"
        }
    .end annotation

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureR32F;-><init>(IIZLcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;)V

    return-void
.end method

.method public constructor <init>(IIZLcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "width",
            "height",
            "allowModifications",
            "textureConfig"
        }
    .end annotation

    .line 4
    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/a;-><init>()V

    if-lez p1, :cond_1

    if-lez p2, :cond_1

    .line 5
    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureR32F;->m:I

    .line 6
    iput p2, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureR32F;->n:I

    .line 7
    iput-boolean p3, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureR32F;->p:Z

    if-nez p4, :cond_0

    .line 8
    new-instance p4, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;

    invoke-direct {p4}, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;-><init>()V

    iput-object p4, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureR32F;->r:Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;

    goto :goto_0

    .line 9
    :cond_0
    iput-object p4, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureR32F;->r:Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;

    .line 10
    :goto_0
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureR32F;->M0()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureR32F;->o:J

    move-object v0, p0

    move v3, p1

    move v4, p2

    move v5, p3

    .line 11
    invoke-virtual/range {v0 .. v5}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureR32F;->E0(JIIZ)J

    .line 12
    iget-wide p1, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureR32F;->o:J

    sget-object p3, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureR32F;->t:Lea/b;

    const/4 p4, 0x1

    invoke-static {p0, p1, p2, p3, p4}, Lcom/itsmagic/engine/Engines/Engine/GC/SGC;->put(Ljava/lang/Object;JLea/b;Z)V

    return-void

    .line 13
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Width and height can\'t be <= 0"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static synthetic A0(Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureR32F;)Ljava/nio/ByteBuffer;
    .locals 0

    iget-object p0, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureR32F;->rgba:Ljava/nio/ByteBuffer;

    return-object p0
.end method

.method public static synthetic B0(Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureR32F;Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;
    .locals 0

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureR32F;->rgba:Ljava/nio/ByteBuffer;

    return-object p1
.end method

.method public static synthetic C0(Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureR32F;)Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderTarget;
    .locals 0

    iget-object p0, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureR32F;->extractingRT:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderTarget;

    return-object p0
.end method

.method public static synthetic D0(Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureR32F;Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderTarget;)Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderTarget;
    .locals 0

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureR32F;->extractingRT:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderTarget;

    return-object p1
.end method

.method private static synthetic N0(J)V
    .locals 0

    invoke-static {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureR32F;->nativeDeleteBuffer(J)V

    return-void
.end method

.method public static synthetic n0(J)V
    .locals 0

    invoke-static {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureR32F;->N0(J)V

    return-void
.end method

.method public static native nativeAllocBuffer(JIIZ)J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "pointer",
            "widht",
            "height",
            "allowModifications"
        }
    .end annotation
.end method

.method private static native nativeApply(JLjava/nio/ByteBuffer;)Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "pointer",
            "buf"
        }
    .end annotation
.end method

.method private static native nativeDeleteBuffer(J)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pointer"
        }
    .end annotation
.end method

.method private static native nativeGetHeight(J)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pointer"
        }
    .end annotation
.end method

.method private static native nativeGetPixelR(JII)F
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "pointer",
            "x",
            "y"
        }
    .end annotation
.end method

.method private static native nativeGetWidth(J)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pointer"
        }
    .end annotation
.end method

.method private static native nativeLostOGLContext(J)F
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pointer"
        }
    .end annotation
.end method

.method private static native nativePaint(JJIIII)Z
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
            "pointer",
            "otherPointer",
            "startX",
            "startY",
            "width",
            "height"
        }
    .end annotation
.end method

.method private static native nativeSetPixelR(JIIF)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "pointer",
            "x",
            "y",
            "value"
        }
    .end annotation
.end method

.method public static native nativeTryCreate()J
.end method

.method public static synthetic o0(Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureR32F;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureR32F;->q:Z

    return p0
.end method

.method public static synthetic p0(Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureR32F;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureR32F;->q:Z

    return p1
.end method

.method public static synthetic q0(Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureR32F;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureR32F;->p:Z

    return p0
.end method

.method public static synthetic r0(Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureR32F;Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;)Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;
    .locals 0

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureR32F;->keepAliveExtractionTexture:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;

    return-object p1
.end method

.method public static synthetic s0(Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureR32F;Lcom/google/android/filament/Texture$g;)Lcom/google/android/filament/Texture$g;
    .locals 0

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureR32F;->pbd:Lcom/google/android/filament/Texture$g;

    return-object p1
.end method

.method public static synthetic t0(Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureR32F;)I
    .locals 0

    iget p0, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureR32F;->m:I

    return p0
.end method

.method public static synthetic u0(Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureR32F;)I
    .locals 0

    iget p0, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureR32F;->n:I

    return p0
.end method

.method public static synthetic v0(Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureR32F;)J
    .locals 2

    iget-wide v0, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureR32F;->o:J

    return-wide v0
.end method

.method public static synthetic w0(Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureR32F;JLjava/nio/ByteBuffer;)Z
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureR32F;->F0(JLjava/nio/ByteBuffer;)Z

    move-result p0

    return p0
.end method

.method public static synthetic x0(Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureR32F;)Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;
    .locals 0

    iget-object p0, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureR32F;->s:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;

    return-object p0
.end method

.method public static synthetic y0(Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureR32F;Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;)Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;
    .locals 0

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureR32F;->s:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;

    return-object p1
.end method

.method public static synthetic z0(Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureR32F;)Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;
    .locals 0

    iget-object p0, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureR32F;->r:Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;

    return-object p0
.end method


# virtual methods
.method public B(Ljava/lang/Runnable;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "post"
        }
    .end annotation

    new-instance v0, LTb/f$d;

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureR32F$a;

    invoke-direct {v1, p0, p1}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureR32F$a;-><init>(Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureR32F;Ljava/lang/Runnable;)V

    invoke-direct {v0, v1}, LTb/f$d;-><init>(LTb/f$c;)V

    invoke-static {v0}, LTb/f;->q(LTb/f$d;)V

    const/4 p1, 0x1

    return p1
.end method

.method public C(Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "m",
            "attributeName"
        }
    .end annotation

    invoke-virtual {p0}, LPc/a;->v()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureR32F;->s:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;->z()Lcom/google/android/filament/TextureSampler;

    move-result-object v1

    invoke-virtual {p1, p2, v0, v1}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;->D(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;Lcom/google/android/filament/TextureSampler;)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Texture was deleted from memory"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public D(Ljava/io/File;ILcom/itsmagic/engine/Engines/Engine/Texture/Data/a$a;)V
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "file",
            "quality",
            "exportFormat"
        }
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestOpenglEngineThread()V

    :try_start_0
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureR32F;->W()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureR32F;->q:Z

    if-eqz v0, :cond_8

    move v0, v2

    :goto_0
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureR32F;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureR32F;->getHeight()I

    move-result v4

    new-instance v5, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    invoke-direct {v5}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;-><init>()V

    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v4, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v6

    if-nez v0, :cond_2

    move v0, v1

    :goto_1
    if-ge v0, v3, :cond_3

    move v7, v1

    :goto_2
    if-ge v7, v4, :cond_1

    invoke-virtual {p0, v0, v7, v5}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/a;->F(IILcom/itsmagic/engine/Engines/Engine/Color/ColorINT;)Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    iget v8, v5, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->intColor:I

    invoke-virtual {v6, v0, v7, v8}, Landroid/graphics/Bitmap;->setPixel(III)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :catch_0
    move-exception p1

    goto :goto_3

    :catch_1
    move-exception p1

    goto :goto_4

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    if-eq v0, v2, :cond_7

    :cond_3
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    :cond_4
    invoke-virtual {p1}, Ljava/io/File;->createNewFile()Z

    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    sget-object p1, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureR32F$c;->a:[I

    invoke-virtual {p3}, Ljava/lang/Enum;->ordinal()I

    move-result p3

    aget p1, p1, p3

    if-eq p1, v2, :cond_6

    const/4 p3, 0x2

    if-eq p1, p3, :cond_5

    return-void

    :cond_5
    sget-object p1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {v6, p1, p2, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->recycle()V

    return-void

    :cond_6
    sget-object p1, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {v6, p1, p2, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->recycle()V

    return-void

    :cond_7
    new-instance p1, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/Exceptions/UnsupportedTextureOperation;

    const-string p2, "GPU data extraction is not available yet, its a comming update, now, you will need to use writable textures"

    invoke-direct {p1, p2}, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/Exceptions/UnsupportedTextureOperation;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_8
    new-instance p1, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/Exceptions/UnsupportedTextureOperation;

    const-string p2, "Texture is not writable and and theres no GPU data to be exported"

    invoke-direct {p1, p2}, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/Exceptions/UnsupportedTextureOperation;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_3
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :goto_4
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public final E0(JIIZ)J
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "pointer",
            "width",
            "height",
            "allowModifications"
        }
    .end annotation

    invoke-static {p1, p2, p3, p4, p5}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureR32F;->nativeAllocBuffer(JIIZ)J

    move-result-wide p1

    return-wide p1
.end method

.method public final F0(JLjava/nio/ByteBuffer;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "pointer",
            "buf"
        }
    .end annotation

    invoke-static {p1, p2, p3}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureR32F;->nativeApply(JLjava/nio/ByteBuffer;)Z

    move-result p1

    return p1
.end method

.method public G()Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureR32F;->s:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;

    return-object v0
.end method

.method public final G0(J)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pointer"
        }
    .end annotation

    invoke-static {p1, p2}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureR32F;->nativeGetHeight(J)I

    move-result p1

    return p1
.end method

.method public final H0(JII)F
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "pointer",
            "x",
            "y"
        }
    .end annotation

    invoke-static {p1, p2, p3, p4}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureR32F;->nativeGetPixelR(JII)F

    move-result p1

    return p1
.end method

.method public final I0(J)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pointer"
        }
    .end annotation

    invoke-static {p1, p2}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureR32F;->nativeGetWidth(J)I

    move-result p1

    return p1
.end method

.method public final J0(J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pointer"
        }
    .end annotation

    invoke-static {p1, p2}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureR32F;->nativeLostOGLContext(J)F

    return-void
.end method

.method public K(II)F
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "x",
            "y"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureR32F;->O0()V

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureR32F;->Q0()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureR32F;->R0(II)V

    :try_start_0
    iget-wide v0, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureR32F;->o:J

    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureR32F;->H0(JII)F

    move-result p1
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final K0(Lcom/itsmagic/engine/Engines/Engine/Texture/Data/a;IIII)V
    .locals 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "other",
            "startX",
            "startY",
            "width",
            "height"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureR32F;->w()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/a;->w()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/a;->T()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/a;->R()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_1

    iget-wide v1, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureR32F;->o:J

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/a;->R()J

    move-result-wide v3

    move v5, p2

    move v6, p3

    move v7, p4

    move v8, p5

    invoke-static/range {v1 .. v8}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureR32F;->nativePaint(JJIIII)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_2

    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Native paint failed!"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/a;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/a;->getHeight()I

    move-result v1

    add-int v2, p4, p2

    add-int v3, p5, p3

    new-instance v4, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    invoke-direct {v4}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;-><init>()V

    move v5, p2

    :goto_0
    if-ge v5, v2, :cond_3

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v3, :cond_2

    int-to-float v7, v5

    int-to-float v8, p2

    sub-float/2addr v7, v8

    add-int/lit8 v8, p4, -0x1

    int-to-float v8, v8

    div-float/2addr v7, v8

    int-to-float v8, v6

    int-to-float v9, p3

    sub-float/2addr v8, v9

    add-int/lit8 v9, p5, -0x1

    int-to-float v9, v9

    div-float/2addr v8, v9

    add-int/lit8 v9, v0, -0x1

    int-to-float v9, v9

    mul-float/2addr v7, v9

    float-to-int v7, v7

    add-int/lit8 v9, v1, -0x1

    int-to-float v9, v9

    mul-float/2addr v8, v9

    float-to-int v8, v8

    invoke-virtual {p1, v7, v8, v4}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/a;->F(IILcom/itsmagic/engine/Engines/Engine/Color/ColorINT;)Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    invoke-virtual {p0, v5, v6, v4}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/a;->c0(IILcom/itsmagic/engine/Engines/Engine/Color/ColorINT;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_3
    :goto_2
    return-void
.end method

.method public L()J
    .locals 2

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureR32F;->s:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;->B()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureR32F;->s:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;->y()J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public final L0(JIIF)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "pointer",
            "x",
            "y",
            "value"
        }
    .end annotation

    invoke-static {p1, p2, p3, p4, p5}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureR32F;->nativeSetPixelR(JIIF)V

    return-void
.end method

.method public final M0()J
    .locals 2

    invoke-static {}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureR32F;->nativeTryCreate()J

    move-result-wide v0

    return-wide v0
.end method

.method public final O0()V
    .locals 2

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureR32F;->p:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureR32F;->q:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Immutable texture, if you want to modify the pixels in real time, go to the texture settings and activate the \"modifiable\" option (if texture was loaded from a file)"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    return-void
.end method

.method public P0(IIF)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "x",
            "y",
            "r"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureR32F;->O0()V

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureR32F;->Q0()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureR32F;->R0(II)V

    :try_start_0
    iget-wide v2, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureR32F;->o:J

    move-object v1, p0

    move v4, p1

    move v5, p2

    move v6, p3

    invoke-virtual/range {v1 .. v6}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureR32F;->L0(JIIF)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public Q()Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$b;
    .locals 1

    sget-object v0, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$b;->R32F:Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$b;

    return-object v0
.end method

.method public final Q0()Z
    .locals 2

    invoke-virtual {p0}, LPc/a;->v()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Buffer is garbage!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public R()J
    .locals 2

    iget-wide v0, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureR32F;->o:J

    return-wide v0
.end method

.method public final R0(II)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "x",
            "y"
        }
    .end annotation

    const-string v0, ")"

    if-ltz p1, :cond_1

    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureR32F;->m:I

    if-ge p1, v1, :cond_1

    if-ltz p2, :cond_0

    iget p1, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureR32F;->n:I

    if-ge p2, p1, :cond_0

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "y("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ") needs to be >= 0 and < height("

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureR32F;->n:I

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p2, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "x("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ") needs to be >= 0 and < width("

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureR32F;->m:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public S()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public T()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public U()Z
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureR32F;->r:Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;

    iget-boolean v0, v0, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->genMipmaps:Z

    return v0
.end method

.method public V()Z
    .locals 2

    invoke-virtual {p0}, LPc/a;->v()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureR32F;->s:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;

    if-nez v0, :cond_1

    return v1

    :cond_1
    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureR32F;->q:Z

    return v0
.end method

.method public W()Z
    .locals 1

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureR32F;->p:Z

    return v0
.end method

.method public X(Lcom/itsmagic/engine/Engines/Engine/Texture/Data/a;IIII)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "nativeTexture",
            "startX",
            "startY",
            "width",
            "height"
        }
    .end annotation

    add-int v0, p4, p2

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureR32F;->getWidth()I

    move-result v1

    const-string v2, ")"

    if-gt v0, v1, :cond_4

    add-int v0, p5, p3

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureR32F;->getHeight()I

    move-result v1

    if-gt v0, v1, :cond_3

    const-string v0, "startX can\'t be < 0"

    if-ltz p2, :cond_2

    if-ltz p3, :cond_1

    if-eqz p1, :cond_0

    invoke-virtual/range {p0 .. p5}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureR32F;->K0(Lcom/itsmagic/engine/Engines/Engine/Texture/Data/a;IIII)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "nativeTexture can\'t be null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/Exceptions/TextureOutOfBoundingException;

    invoke-direct {p1, v0}, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/Exceptions/TextureOutOfBoundingException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/Exceptions/TextureOutOfBoundingException;

    invoke-direct {p1, v0}, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/Exceptions/TextureOutOfBoundingException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    new-instance p1, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/Exceptions/TextureOutOfBoundingException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "height + startY ("

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ") can\'t be > this.height ("

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureR32F;->getHeight()I

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/Exceptions/TextureOutOfBoundingException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    new-instance p1, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/Exceptions/TextureOutOfBoundingException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "width + startX ("

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ") can\'t be > this.width ("

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureR32F;->getWidth()I

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/Exceptions/TextureOutOfBoundingException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public destroy()V
    .locals 0

    invoke-virtual {p0}, LPc/a;->A()V

    return-void
.end method

.method public destroyImmediate()V
    .locals 2

    invoke-virtual {p0}, LPc/a;->v()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, LPc/a;->A()V

    invoke-virtual {p0}, LPc/a;->A()V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureR32F;->s:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;->destroyImmediate()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureR32F;->s:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;

    :cond_0
    return-void

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Double destroy"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getHeight()I
    .locals 1

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureR32F;->n:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureR32F;->m:I

    return v0
.end method

.method public j0(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enabled"
        }
    .end annotation

    invoke-static {}, Lc9/a;->F()V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureR32F;->r:Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;

    iget-boolean v1, v0, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->genMipmaps:Z

    if-eq v1, p1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean p1, v0, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->genMipmaps:Z

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureR32F;->s:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;

    if-eqz p1, :cond_1

    if-eqz v1, :cond_1

    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;->s(Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;)Lcom/google/android/filament/TextureSampler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;->E(Lcom/google/android/filament/TextureSampler;)V

    :cond_1
    return-void
.end method

.method public k0(IIF)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "x",
            "y",
            "v"
        }
    .end annotation

    invoke-virtual {p0, p1, p2, p3}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureR32F;->P0(IIF)V

    return-void
.end method

.method public m0(IIIILcom/itsmagic/engine/Engines/Engine/Texture/Data/a$b;)V
    .locals 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "ofx",
            "ofy",
            "w",
            "h",
            "extractCallback"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureR32F;->V()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderTarget;

    new-instance v1, Lcom/google/android/filament/RenderTarget$b;

    invoke-direct {v1}, Lcom/google/android/filament/RenderTarget$b;-><init>()V

    sget-object v2, Lcom/google/android/filament/RenderTarget$a;->COLOR:Lcom/google/android/filament/RenderTarget$a;

    iget-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureR32F;->s:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;

    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;->A()Lcom/google/android/filament/Texture;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/google/android/filament/RenderTarget$b;->f(Lcom/google/android/filament/RenderTarget$a;Lcom/google/android/filament/Texture;)Lcom/google/android/filament/RenderTarget$b;

    move-result-object v1

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureR32F;->s:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderTarget;-><init>(Lcom/google/android/filament/RenderTarget$b;Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;)V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureR32F;->extractingRT:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderTarget;

    mul-int v0, p3, p4

    mul-int/lit8 v0, v0, 0x4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureR32F;->rgba:Ljava/nio/ByteBuffer;

    new-instance v1, Lcom/google/android/filament/Texture$g;

    sget-object v2, Lcom/google/android/filament/Texture$e;->RGBA:Lcom/google/android/filament/Texture$e;

    sget-object v3, Lcom/google/android/filament/Texture$k;->UBYTE:Lcom/google/android/filament/Texture$k;

    const/4 v4, 0x1

    invoke-direct {v1, v0, v2, v3, v4}, Lcom/google/android/filament/Texture$g;-><init>(Ljava/nio/Buffer;Lcom/google/android/filament/Texture$e;Lcom/google/android/filament/Texture$k;I)V

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureR32F;->pbd:Lcom/google/android/filament/Texture$g;

    invoke-static {}, Ljc/d;->a()Landroid/os/Handler;

    move-result-object v0

    new-instance v2, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureR32F$b;

    invoke-direct {v2, p0, p3, p4, p5}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureR32F$b;-><init>(Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureR32F;IILcom/itsmagic/engine/Engines/Engine/Texture/Data/a$b;)V

    invoke-virtual {v1, v0, v2}, Lcom/google/android/filament/Texture$g;->b(Ljava/lang/Object;Ljava/lang/Runnable;)V

    invoke-static {}, Ljc/a;->g()Lcom/google/android/filament/Renderer;

    move-result-object v3

    iget-object p5, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureR32F;->extractingRT:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderTarget;

    invoke-virtual {p5}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderTarget;->s()Lcom/google/android/filament/RenderTarget;

    move-result-object v4

    iget-object v9, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureR32F;->pbd:Lcom/google/android/filament/Texture$g;

    move v5, p1

    move v6, p2

    move v7, p3

    move v8, p4

    invoke-virtual/range {v3 .. v9}, Lcom/google/android/filament/Renderer;->n(Lcom/google/android/filament/RenderTarget;IIIILcom/google/android/filament/Texture$g;)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Texture is not renderable yet."

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public u()J
    .locals 2

    iget-wide v0, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureR32F;->o:J

    return-wide v0
.end method

.method public w()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public x()V
    .locals 2

    :try_start_0
    iget-wide v0, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureR32F;->o:J

    invoke-virtual {p0, v0, v1}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureR32F;->J0(J)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public z()V
    .locals 2

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureR32F;->o:J

    invoke-super {p0}, LPc/a;->z()V

    return-void
.end method
