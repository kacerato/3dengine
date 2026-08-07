.class public Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGB8;
.super Lcom/itsmagic/engine/Engines/Engine/Texture/Data/a;
.source "SourceFile"


# static fields
.field public static final t:Lea/b;

.field public static final u:I = 0x3


# instance fields
.field private extractingRT:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderTarget;
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end field

.field private keepAliveExtractionTexture:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end field

.field public m:I

.field public n:I

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

    new-instance v0, LPb/c;

    invoke-direct {v0}, LPb/c;-><init>()V

    sput-object v0, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGB8;->t:Lea/b;

    const-string v0, "native-texture-rgb8"

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
    invoke-direct {p0, p1, p2, v0}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGB8;-><init>(IILcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;)V

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

    if-eqz p3, :cond_0

    .line 3
    iget-boolean v0, p3, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->allowModifications:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, p1, p2, v0, p3}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGB8;-><init>(IIZLcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;)V

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
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGB8;-><init>(IIZLcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;)V

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
    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGB8;->m:I

    .line 6
    iput p2, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGB8;->n:I

    .line 7
    iput-boolean p3, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGB8;->p:Z

    if-nez p4, :cond_0

    .line 8
    new-instance p4, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;

    invoke-direct {p4}, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;-><init>()V

    iput-object p4, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGB8;->r:Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;

    .line 9
    iput-boolean p3, p4, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->allowModifications:Z

    goto :goto_0

    .line 10
    :cond_0
    iput-object p4, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGB8;->r:Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;

    .line 11
    :goto_0
    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGB8;->S0()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGB8;->o:J

    move-object v0, p0

    move v3, p1

    move v4, p2

    move v5, p3

    .line 12
    invoke-direct/range {v0 .. v5}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGB8;->F0(JIIZ)J

    .line 13
    iget-wide p1, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGB8;->o:J

    sget-object p3, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGB8;->t:Lea/b;

    const/4 p4, 0x1

    invoke-static {p0, p1, p2, p3, p4}, Lcom/itsmagic/engine/Engines/Engine/GC/SGC;->put(Ljava/lang/Object;JLea/b;Z)V

    return-void

    .line 14
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Width and height can\'t be <= 0"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Landroid/content/Context;LTb/b$a;Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "state",
            "textureConfig"
        }
    .end annotation

    .line 15
    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/a;-><init>()V

    if-nez p3, :cond_0

    .line 16
    new-instance p1, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;

    invoke-direct {p1}, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;-><init>()V

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGB8;->r:Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;

    goto :goto_0

    .line 17
    :cond_0
    iput-object p3, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGB8;->r:Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;

    .line 18
    :goto_0
    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGB8;->r:Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;

    iget-boolean p1, p1, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->allowModifications:Z

    iput-boolean p1, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGB8;->p:Z

    .line 19
    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGB8;->S0()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGB8;->o:J

    .line 20
    iget-boolean p3, p2, LTb/b$a;->b:Z

    if-eqz p3, :cond_1

    .line 21
    invoke-static {p2}, LTb/a;->a(LTb/b$a;)V

    .line 22
    :cond_1
    iget-boolean p3, p2, LTb/b$a;->b:Z

    if-nez p3, :cond_3

    .line 23
    iget-wide v0, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGB8;->o:J

    iget-object p3, p2, LTb/b$a;->a:Ljava/lang/String;

    invoke-direct {p0, v0, v1, p1, p3}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGB8;->M0(JZLjava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 24
    iget-wide p1, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGB8;->o:J

    invoke-direct {p0, p1, p2}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGB8;->L0(J)I

    move-result p1

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGB8;->m:I

    .line 25
    iget-wide p1, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGB8;->o:J

    invoke-direct {p0, p1, p2}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGB8;->H0(J)I

    move-result p1

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGB8;->n:I

    .line 26
    iget-wide p1, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGB8;->o:J

    sget-object p3, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGB8;->t:Lea/b;

    const/4 v0, 0x1

    invoke-static {p0, p1, p2, p3, v0}, Lcom/itsmagic/engine/Engines/Engine/GC/SGC;->put(Ljava/lang/Object;JLea/b;Z)V

    return-void

    .line 27
    :cond_2
    new-instance p1, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/Exceptions/FailedToLoadTexture;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Failed to load texture on c++ ("

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p2, LTb/b$a;->a:Ljava/lang/String;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ")"

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/Exceptions/FailedToLoadTexture;-><init>(Ljava/lang/String;)V

    throw p1

    .line 28
    :cond_3
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "loading assets is not implemented yet!"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "textureConfig"
        }
    .end annotation

    .line 29
    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/a;-><init>()V

    if-nez p1, :cond_0

    .line 30
    new-instance p1, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;

    invoke-direct {p1}, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;-><init>()V

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGB8;->r:Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;

    goto :goto_0

    .line 31
    :cond_0
    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGB8;->r:Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;

    .line 32
    :goto_0
    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGB8;->r:Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;

    iget-boolean p1, p1, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->allowModifications:Z

    iput-boolean p1, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGB8;->p:Z

    .line 33
    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGB8;->S0()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGB8;->o:J

    .line 34
    sget-object p1, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGB8;->t:Lea/b;

    const/4 v2, 0x1

    invoke-static {p0, v0, v1, p1, v2}, Lcom/itsmagic/engine/Engines/Engine/GC/SGC;->put(Ljava/lang/Object;JLea/b;Z)V

    return-void
.end method

.method public static synthetic A0(Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGB8;)Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;
    .locals 0

    iget-object p0, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGB8;->s:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;

    return-object p0
.end method

.method public static synthetic B0(Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGB8;Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;)Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;
    .locals 0

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGB8;->s:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;

    return-object p1
.end method

.method public static synthetic C0(Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGB8;)Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;
    .locals 0

    iget-object p0, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGB8;->r:Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;

    return-object p0
.end method

.method public static synthetic D0(Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGB8;)Ljava/nio/ByteBuffer;
    .locals 0

    iget-object p0, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGB8;->rgba:Ljava/nio/ByteBuffer;

    return-object p0
.end method

.method public static synthetic E0(Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGB8;Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;
    .locals 0

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGB8;->rgba:Ljava/nio/ByteBuffer;

    return-object p1
.end method

.method private F0(JIIZ)J
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

    invoke-static {p1, p2, p3, p4, p5}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGB8;->nativeAllocBuffer(JIIZ)J

    move-result-wide p1

    return-wide p1
.end method

.method private G0(JLjava/nio/ByteBuffer;)Z
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

    invoke-static {p1, p2, p3}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGB8;->nativeApply(JLjava/nio/ByteBuffer;)Z

    move-result p1

    return p1
.end method

.method private H0(J)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pointer"
        }
    .end annotation

    invoke-static {p1, p2}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGB8;->nativeGetHeight(J)I

    move-result p1

    return p1
.end method

.method private K0(JII)C
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

    invoke-static {p1, p2, p3, p4}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGB8;->nativeGetPixelR(JII)C

    move-result p1

    return p1
.end method

.method private L0(J)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pointer"
        }
    .end annotation

    invoke-static {p1, p2}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGB8;->nativeGetWidth(J)I

    move-result p1

    return p1
.end method

.method private M0(JZLjava/lang/String;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "pointer",
            "allowModifications",
            "path"
        }
    .end annotation

    invoke-static {p1, p2, p3, p4}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGB8;->nativeLoadExternalFile(JZLjava/lang/String;)Z

    move-result p1

    return p1
.end method

.method private N0(J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pointer"
        }
    .end annotation

    invoke-static {p1, p2}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGB8;->nativeLostOGLContext(J)F

    return-void
.end method

.method private R0(JIIC)V
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

    invoke-static {p1, p2, p3, p4, p5}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGB8;->nativeSetPixelR(JIIC)V

    return-void
.end method

.method private S0()J
    .locals 2

    invoke-static {}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGB8;->nativeTryCreate()J

    move-result-wide v0

    return-wide v0
.end method

.method private static synthetic T0(J)V
    .locals 0

    invoke-static {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGB8;->nativeDeleteBuffer(J)V

    return-void
.end method

.method public static U0(Landroid/content/Context;Ljava/lang/String;ZLcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;Ljava/lang/Runnable;)Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGB8;
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "path",
            "applyOGL",
            "config",
            "post"
        }
    .end annotation

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    if-nez p3, :cond_0

    new-instance p3, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;

    invoke-direct {p3}, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;-><init>()V

    :cond_0
    new-instance v3, LTb/b$a;

    invoke-direct {v3}, LTb/b$a;-><init>()V

    :try_start_0
    invoke-static {p0, p1, v3}, LTb/b;->k(Landroid/content/Context;Ljava/lang/String;LTb/b$a;)Z

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGB8;

    invoke-direct {v0, p0, v3, p3}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGB8;-><init>(Landroid/content/Context;LTb/b$a;Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;)V

    if-eqz p2, :cond_1

    invoke-virtual {v0, p4}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGB8;->B(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/Exceptions/TextureNeedsImport; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-object v0

    :catch_0
    new-instance v7, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGB8;

    invoke-direct {v7, p3}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGB8;-><init>(Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;)V

    new-instance p3, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGB8$a;

    move-object v0, p3

    move-object v1, p1

    move-object v2, p0

    move-object v4, v7

    move v5, p2

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGB8$a;-><init>(Ljava/lang/String;Landroid/content/Context;LTb/b$a;Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGB8;ZLjava/lang/Runnable;)V

    invoke-static {p3}, Lga/b;->d(Ljava/lang/Runnable;)V

    return-object v7

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Path can\'t be null or empty"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static V0(Landroid/content/Context;Ljava/lang/String;ZLjava/lang/Runnable;)Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGB8;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "path",
            "applyOGL",
            "post"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, LTb/b$a;

    invoke-direct {v0}, LTb/b$a;-><init>()V

    invoke-static {p0, p1, v0}, LTb/b;->k(Landroid/content/Context;Ljava/lang/String;LTb/b$a;)Z

    const/4 v1, 0x0

    invoke-static {p1, p0, v1}, LTb/b;->n(Ljava/lang/String;Landroid/content/Context;Z)Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;

    move-result-object p1

    if-nez p1, :cond_0

    new-instance p1, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;

    invoke-direct {p1}, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;-><init>()V

    :cond_0
    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGB8;

    invoke-direct {v1, p0, v0, p1}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGB8;-><init>(Landroid/content/Context;LTb/b$a;Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;)V

    if-eqz p2, :cond_1

    invoke-virtual {v1, p3}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGB8;->B(Ljava/lang/Runnable;)Z

    :cond_1
    return-object v1

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Path can\'t be null or empty"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static W0(Landroid/content/Context;Ljava/lang/String;ZLcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;Ljava/lang/Runnable;)Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGB8;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "path",
            "applyOGL",
            "config",
            "post"
        }
    .end annotation

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, LTb/b$a;

    invoke-direct {v0}, LTb/b$a;-><init>()V

    const/4 v1, 0x1

    :try_start_0
    invoke-static {p0, p1, v0, v1}, LTb/b;->l(Landroid/content/Context;Ljava/lang/String;LTb/b$a;Z)Z
    :try_end_0
    .catch Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/Exceptions/TextureNeedsImport; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p3, :cond_0

    new-instance p3, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;

    invoke-direct {p3}, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;-><init>()V

    :cond_0
    new-instance p1, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGB8;

    invoke-direct {p1, p0, v0, p3}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGB8;-><init>(Landroid/content/Context;LTb/b$a;Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;)V

    if-eqz p2, :cond_1

    invoke-virtual {p1, p4}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGB8;->B(Ljava/lang/Runnable;)Z

    :cond_1
    return-object p1

    :catch_0
    const/4 p0, 0x0

    return-object p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Path can\'t be null or empty"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private X0(LTb/b$a;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation

    iget-boolean v0, p1, LTb/b$a;->b:Z

    if-eqz v0, :cond_0

    invoke-static {p1}, LTb/a;->a(LTb/b$a;)V

    :cond_0
    iget-boolean v0, p1, LTb/b$a;->b:Z

    if-nez v0, :cond_2

    iget-wide v0, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGB8;->o:J

    iget-boolean v2, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGB8;->p:Z

    iget-object v3, p1, LTb/b$a;->a:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGB8;->M0(JZLjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-wide v0, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGB8;->o:J

    invoke-direct {p0, v0, v1}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGB8;->L0(J)I

    move-result p1

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGB8;->m:I

    iget-wide v0, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGB8;->o:J

    invoke-direct {p0, v0, v1}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGB8;->H0(J)I

    move-result p1

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGB8;->n:I

    return-void

    :cond_1
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/Exceptions/FailedToLoadTexture;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to load texture on c++ ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, LTb/b$a;->a:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/Exceptions/FailedToLoadTexture;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "loading assets is not implemented yet!"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private Y0()V
    .locals 2

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGB8;->p:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Immutable texture, if you want to modify the pixels in real time, go to the texture settings and activate the \"modifiable\" option (if texture was loaded from a file)"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private a1()Z
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

.method private b1(II)V
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

    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGB8;->m:I

    if-ge p1, v1, :cond_1

    if-ltz p2, :cond_0

    iget p1, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGB8;->n:I

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

    iget p2, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGB8;->n:I

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

    iget p1, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGB8;->m:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public static synthetic n0(J)V
    .locals 0

    invoke-static {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGB8;->T0(J)V

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

.method private static native nativeGetPixelB(JII)C
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

.method private static native nativeGetPixelG(JII)C
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

.method private static native nativeGetPixelR(JII)C
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

.method public static native nativeLoadExternalFile(JZLjava/lang/String;)Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "pointer",
            "allowModifications",
            "path"
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

.method private static native nativeSetPixelB(JIIC)V
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

.method private static native nativeSetPixelG(JIIC)V
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

.method private static native nativeSetPixelR(JIIC)V
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

.method private static native nativeSetPixelRGB(JIICCC)V
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
            "x",
            "y",
            "r",
            "g",
            "b"
        }
    .end annotation
.end method

.method public static native nativeTryCreate()J
.end method

.method public static synthetic o0(Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGB8;LTb/b$a;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGB8;->X0(LTb/b$a;)V

    return-void
.end method

.method public static synthetic p0(Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGB8;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGB8;->q:Z

    return p0
.end method

.method public static synthetic q0(Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGB8;)Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderTarget;
    .locals 0

    iget-object p0, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGB8;->extractingRT:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderTarget;

    return-object p0
.end method

.method public static synthetic r0(Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGB8;Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderTarget;)Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderTarget;
    .locals 0

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGB8;->extractingRT:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderTarget;

    return-object p1
.end method

.method public static synthetic s0(Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGB8;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGB8;->q:Z

    return p1
.end method

.method public static synthetic t0(Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGB8;Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;)Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;
    .locals 0

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGB8;->keepAliveExtractionTexture:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;

    return-object p1
.end method

.method public static synthetic u0(Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGB8;Lcom/google/android/filament/Texture$g;)Lcom/google/android/filament/Texture$g;
    .locals 0

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGB8;->pbd:Lcom/google/android/filament/Texture$g;

    return-object p1
.end method

.method public static synthetic v0(Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGB8;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGB8;->p:Z

    return p0
.end method

.method public static synthetic w0(Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGB8;)I
    .locals 0

    iget p0, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGB8;->m:I

    return p0
.end method

.method public static synthetic x0(Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGB8;)I
    .locals 0

    iget p0, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGB8;->n:I

    return p0
.end method

.method public static synthetic y0(Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGB8;)J
    .locals 2

    iget-wide v0, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGB8;->o:J

    return-wide v0
.end method

.method public static synthetic z0(Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGB8;JLjava/nio/ByteBuffer;)Z
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGB8;->G0(JLjava/nio/ByteBuffer;)Z

    move-result p0

    return p0
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

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGB8$c;

    invoke-direct {v1, p0, p1}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGB8$c;-><init>(Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGB8;Ljava/lang/Runnable;)V

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

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGB8;->s:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;

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
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGB8;->W()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGB8;->q:Z

    if-eqz v0, :cond_8

    move v0, v2

    :goto_0
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGB8;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGB8;->getHeight()I

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

    invoke-virtual {p0, v0, v7, v5}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGB8;->F(IILcom/itsmagic/engine/Engines/Engine/Color/ColorINT;)Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

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

    sget-object p1, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGB8$e;->a:[I

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

.method public E(II)Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;
    .locals 1
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

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGB8;->Y0()V

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;-><init>()V

    invoke-virtual {p0, p1, p2, v0}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGB8;->F(IILcom/itsmagic/engine/Engines/Engine/Color/ColorINT;)Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    move-result-object p1

    return-object p1
.end method

.method public F(IILcom/itsmagic/engine/Engines/Engine/Color/ColorINT;)Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "x",
            "y",
            "out"
        }
    .end annotation

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGB8;->Y0()V

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGB8;->a1()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGB8;->b1(II)V

    :try_start_0
    iget-wide v0, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGB8;->o:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGB8;->K0(JII)C

    move-result v0

    iget-wide v1, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGB8;->o:J

    invoke-virtual {p0, v1, v2, p1, p2}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGB8;->J0(JII)C

    move-result v1

    iget-wide v2, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGB8;->o:J

    invoke-virtual {p0, v2, v3, p1, p2}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGB8;->I0(JII)C

    move-result p1

    const/16 p2, 0xff

    invoke-virtual {p3, p2, v0, v1, p1}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->k0(IIII)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_0
    return-object p3
.end method

.method public G()Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGB8;->s:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;

    return-object v0
.end method

.method public I(II)F
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

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGB8;->Y0()V

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGB8;->a1()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGB8;->b1(II)V

    :try_start_0
    iget-wide v0, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGB8;->o:J

    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGB8;->I0(JII)C

    move-result p1
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    int-to-float p1, p1

    const/high16 p2, 0x437f0000    # 255.0f

    div-float/2addr p1, p2

    return p1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final I0(JII)C
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

    invoke-static {p1, p2, p3, p4}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGB8;->nativeGetPixelB(JII)C

    move-result p1

    return p1
.end method

.method public J(II)F
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

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGB8;->Y0()V

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGB8;->a1()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGB8;->b1(II)V

    :try_start_0
    iget-wide v0, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGB8;->o:J

    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGB8;->J0(JII)C

    move-result p1
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    int-to-float p1, p1

    const/high16 p2, 0x437f0000    # 255.0f

    div-float/2addr p1, p2

    return p1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final J0(JII)C
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

    invoke-static {p1, p2, p3, p4}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGB8;->nativeGetPixelG(JII)C

    move-result p1

    return p1
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

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGB8;->Y0()V

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGB8;->a1()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGB8;->b1(II)V

    :try_start_0
    iget-wide v0, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGB8;->o:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGB8;->K0(JII)C

    move-result p1
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    int-to-float p1, p1

    const/high16 p2, 0x437f0000    # 255.0f

    div-float/2addr p1, p2

    return p1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public L()J
    .locals 2

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGB8;->s:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;->B()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGB8;->s:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;->y()J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public N(II)I
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

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGB8;->Y0()V

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGB8;->a1()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGB8;->b1(II)V

    :try_start_0
    iget-wide v0, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGB8;->o:J

    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGB8;->I0(JII)C

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

.method public O(II)I
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

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGB8;->Y0()V

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGB8;->a1()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGB8;->b1(II)V

    :try_start_0
    iget-wide v0, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGB8;->o:J

    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGB8;->J0(JII)C

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

.method public final O0(JIICCC)V
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
            "pointer",
            "x",
            "y",
            "r",
            "g",
            "b"
        }
    .end annotation

    invoke-static/range {p1 .. p7}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGB8;->nativeSetPixelRGB(JIICCC)V

    return-void
.end method

.method public P(II)I
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

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGB8;->Y0()V

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGB8;->a1()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGB8;->b1(II)V

    :try_start_0
    iget-wide v0, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGB8;->o:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGB8;->K0(JII)C

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

.method public final P0(JIIC)V
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

    invoke-static {p1, p2, p3, p4, p5}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGB8;->nativeSetPixelB(JIIC)V

    return-void
.end method

.method public Q()Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$b;
    .locals 1

    sget-object v0, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$b;->RGBA8:Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$b;

    return-object v0
.end method

.method public final Q0(JIIC)V
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

    invoke-static {p1, p2, p3, p4, p5}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGB8;->nativeSetPixelG(JIIC)V

    return-void
.end method

.method public R()J
    .locals 2

    iget-wide v0, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGB8;->o:J

    return-wide v0
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

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGB8;->r:Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;

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
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGB8;->s:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;

    if-nez v0, :cond_1

    return v1

    :cond_1
    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGB8;->q:Z

    return v0
.end method

.method public W()Z
    .locals 1

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGB8;->p:Z

    return v0
.end method

.method public Y(IIFFF)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "x",
            "y",
            "r",
            "g",
            "b"
        }
    .end annotation

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGB8;->Y0()V

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGB8;->a1()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGB8;->b1(II)V

    :try_start_0
    invoke-static {p3}, Lgd/b;->I(F)F

    move-result p3

    invoke-static {p4}, Lgd/b;->I(F)F

    move-result p4

    invoke-static {p5}, Lgd/b;->I(F)F

    move-result p5

    iget-wide v1, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGB8;->o:J

    const/high16 v0, 0x437f0000    # 255.0f

    mul-float/2addr p3, v0

    float-to-int p3, p3

    int-to-char v5, p3

    mul-float/2addr p4, v0

    float-to-int p3, p4

    int-to-char v6, p3

    mul-float/2addr p5, v0

    float-to-int p3, p5

    int-to-char v7, p3

    move-object v0, p0

    move v3, p1

    move v4, p2

    invoke-virtual/range {v0 .. v7}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGB8;->O0(JIICCC)V
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

.method public Z(IIFFFF)V
    .locals 8
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
            "r",
            "g",
            "b",
            "a"
        }
    .end annotation

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGB8;->Y0()V

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGB8;->a1()Z

    move-result p6

    if-eqz p6, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGB8;->b1(II)V

    :try_start_0
    invoke-static {p3}, Lgd/b;->I(F)F

    move-result p3

    invoke-static {p4}, Lgd/b;->I(F)F

    move-result p4

    invoke-static {p5}, Lgd/b;->I(F)F

    move-result p5

    iget-wide v1, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGB8;->o:J

    const/high16 p6, 0x437f0000    # 255.0f

    mul-float/2addr p3, p6

    float-to-int p3, p3

    int-to-char v5, p3

    mul-float/2addr p4, p6

    float-to-int p3, p4

    int-to-char v6, p3

    mul-float/2addr p5, p6

    float-to-int p3, p5

    int-to-char v7, p3

    move-object v0, p0

    move v3, p1

    move v4, p2

    invoke-virtual/range {v0 .. v7}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGB8;->O0(JIICCC)V
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

.method public Z0(Ljava/nio/ByteBuffer;Ljava/lang/Runnable;)V
    .locals 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "buf",
            "post"
        }
    .end annotation

    invoke-static {}, Ljc/a;->d()V

    invoke-static {}, Lc9/a;->F()V

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGB8;->q:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGB8;->p:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/Exceptions/UnsupportedTextureOperation;

    const-string p2, "Can not reapply a texture without allow modifications flag"

    invoke-direct {p1, p2}, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/Exceptions/UnsupportedTextureOperation;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGB8;->s:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGB8;->r:Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;

    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;->s(Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;)Lcom/google/android/filament/TextureSampler;

    move-result-object v7

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGB8;->r:Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->i()I

    move-result v8

    new-instance v0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;

    iget v2, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGB8;->m:I

    iget v3, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGB8;->n:I

    sget-object v4, Lcom/google/android/filament/Texture$e;->RGB:Lcom/google/android/filament/Texture$e;

    sget-object v5, Lcom/google/android/filament/Texture$k;->UBYTE:Lcom/google/android/filament/Texture$k;

    new-instance v1, Lcom/google/android/filament/Texture$b;

    invoke-direct {v1}, Lcom/google/android/filament/Texture$b;-><init>()V

    iget-object v6, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGB8;->r:Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;

    iget-boolean v6, v6, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->gammaCorrection:Z

    if-eqz v6, :cond_2

    sget-object v6, Lcom/google/android/filament/Texture$f;->SRGB8:Lcom/google/android/filament/Texture$f;

    goto :goto_1

    :cond_2
    sget-object v6, Lcom/google/android/filament/Texture$f;->RGB8:Lcom/google/android/filament/Texture$f;

    :goto_1
    invoke-virtual {v1, v6}, Lcom/google/android/filament/Texture$b;->d(Lcom/google/android/filament/Texture$f;)Lcom/google/android/filament/Texture$b;

    move-result-object v6

    const/16 v9, 0x8

    move-object v1, v0

    invoke-direct/range {v1 .. v9}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;-><init>(IILcom/google/android/filament/Texture$e;Lcom/google/android/filament/Texture$k;Lcom/google/android/filament/Texture$b;Lcom/google/android/filament/TextureSampler;II)V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGB8;->s:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;

    goto :goto_2

    :cond_3
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGB8;->r:Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;

    invoke-static {v1}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;->s(Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;)Lcom/google/android/filament/TextureSampler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;->E(Lcom/google/android/filament/TextureSampler;)V

    :goto_2
    if-eqz p2, :cond_4

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGB8;->s:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGB8$b;

    invoke-direct {v1, p0, p2}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGB8$b;-><init>(Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGB8;Ljava/lang/Runnable;)V

    invoke-virtual {v0, p1, v1}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;->v(Ljava/nio/ByteBuffer;Ljava/lang/Runnable;)V

    goto :goto_3

    :cond_4
    iget-object p2, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGB8;->s:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;

    invoke-virtual {p2, p1}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;->u(Ljava/nio/ByteBuffer;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGB8;->q:Z

    :goto_3
    return-void
.end method

.method public a0(IIIII)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "x",
            "y",
            "r",
            "g",
            "b"
        }
    .end annotation

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGB8;->Y0()V

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGB8;->a1()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGB8;->b1(II)V

    const/16 v0, 0xff

    const/4 v1, 0x0

    :try_start_0
    invoke-static {v1, p3, v0}, Lgd/b;->F(III)I

    move-result p3

    invoke-static {v1, p4, v0}, Lgd/b;->F(III)I

    move-result p4

    invoke-static {v1, p5, v0}, Lgd/b;->F(III)I

    move-result p5

    iget-wide v1, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGB8;->o:J

    int-to-char v5, p3

    int-to-char v6, p4

    int-to-char v7, p5

    move-object v0, p0

    move v3, p1

    move v4, p2

    invoke-virtual/range {v0 .. v7}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGB8;->O0(JIICCC)V
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

.method public b0(IIIIII)V
    .locals 8
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
            "r",
            "g",
            "b",
            "a"
        }
    .end annotation

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGB8;->Y0()V

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGB8;->a1()Z

    move-result p6

    if-eqz p6, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGB8;->b1(II)V

    const/16 p6, 0xff

    const/4 v0, 0x0

    :try_start_0
    invoke-static {v0, p3, p6}, Lgd/b;->F(III)I

    move-result p3

    invoke-static {v0, p4, p6}, Lgd/b;->F(III)I

    move-result p4

    invoke-static {v0, p5, p6}, Lgd/b;->F(III)I

    move-result p5

    iget-wide v1, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGB8;->o:J

    int-to-char v5, p3

    int-to-char v6, p4

    int-to-char v7, p5

    move-object v0, p0

    move v3, p1

    move v4, p2

    invoke-virtual/range {v0 .. v7}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGB8;->O0(JIICCC)V
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

.method public c0(IILcom/itsmagic/engine/Engines/Engine/Color/ColorINT;)V
    .locals 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "x",
            "y",
            "color"
        }
    .end annotation

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGB8;->Y0()V

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGB8;->a1()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGB8;->b1(II)V

    :try_start_0
    invoke-virtual {p3}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->I()F

    move-result v0

    invoke-virtual {p3}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->G()F

    move-result v1

    invoke-virtual {p3}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->F()F

    move-result p3

    iget-wide v3, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGB8;->o:J

    const/high16 v2, 0x437f0000    # 255.0f

    mul-float/2addr v0, v2

    float-to-int v0, v0

    int-to-char v7, v0

    mul-float/2addr v1, v2

    float-to-int v0, v1

    int-to-char v8, v0

    mul-float/2addr p3, v2

    float-to-int p3, p3

    int-to-char v9, p3

    move-object v2, p0

    move v5, p1

    move v6, p2

    invoke-virtual/range {v2 .. v9}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGB8;->O0(JIICCC)V
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

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGB8;->s:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;

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

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGB8;->s:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;

    :cond_0
    return-void

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Double destroy"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public f0(IIF)V
    .locals 6
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

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGB8;->Y0()V

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGB8;->a1()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGB8;->b1(II)V

    :try_start_0
    invoke-static {p3}, Lgd/b;->I(F)F

    move-result p3

    iget-wide v1, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGB8;->o:J

    const/high16 v0, 0x437f0000    # 255.0f

    mul-float/2addr p3, v0

    float-to-int p3, p3

    int-to-char v5, p3

    move-object v0, p0

    move v3, p1

    move v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGB8;->P0(JIIC)V
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

.method public g0(III)V
    .locals 6
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

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGB8;->Y0()V

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGB8;->a1()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGB8;->b1(II)V

    const/4 v0, 0x0

    const/16 v1, 0xff

    :try_start_0
    invoke-static {v0, p3, v1}, Lgd/b;->F(III)I

    move-result p3

    iget-wide v1, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGB8;->o:J

    int-to-char v5, p3

    move-object v0, p0

    move v3, p1

    move v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGB8;->P0(JIIC)V
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

.method public getHeight()I
    .locals 1

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGB8;->n:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGB8;->m:I

    return v0
.end method

.method public h0(IIF)V
    .locals 6
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

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGB8;->Y0()V

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGB8;->a1()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGB8;->b1(II)V

    :try_start_0
    invoke-static {p3}, Lgd/b;->I(F)F

    move-result p3

    iget-wide v1, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGB8;->o:J

    const/high16 v0, 0x437f0000    # 255.0f

    mul-float/2addr p3, v0

    float-to-int p3, p3

    int-to-char v5, p3

    move-object v0, p0

    move v3, p1

    move v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGB8;->Q0(JIIC)V
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

.method public i0(III)V
    .locals 6
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

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGB8;->Y0()V

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGB8;->a1()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGB8;->b1(II)V

    const/4 v0, 0x0

    const/16 v1, 0xff

    :try_start_0
    invoke-static {v0, p3, v1}, Lgd/b;->F(III)I

    move-result p3

    iget-wide v1, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGB8;->o:J

    int-to-char v5, p3

    move-object v0, p0

    move v3, p1

    move v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGB8;->Q0(JIIC)V
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

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGB8;->r:Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;

    iget-boolean v1, v0, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->genMipmaps:Z

    if-eq v1, p1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean p1, v0, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->genMipmaps:Z

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGB8;->s:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;

    if-eqz p1, :cond_1

    if-eqz v1, :cond_1

    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;->s(Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;)Lcom/google/android/filament/TextureSampler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;->E(Lcom/google/android/filament/TextureSampler;)V

    :cond_1
    return-void
.end method

.method public k0(IIF)V
    .locals 6
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

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGB8;->Y0()V

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGB8;->a1()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGB8;->b1(II)V

    :try_start_0
    invoke-static {p3}, Lgd/b;->I(F)F

    move-result p3

    iget-wide v1, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGB8;->o:J

    const/high16 v0, 0x437f0000    # 255.0f

    mul-float/2addr p3, v0

    float-to-int p3, p3

    int-to-char v5, p3

    move-object v0, p0

    move v3, p1

    move v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGB8;->R0(JIIC)V
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

.method public l0(III)V
    .locals 6
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

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGB8;->Y0()V

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGB8;->a1()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGB8;->b1(II)V

    const/4 v0, 0x0

    const/16 v1, 0xff

    :try_start_0
    invoke-static {v0, p3, v1}, Lgd/b;->F(III)I

    move-result p3

    iget-wide v1, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGB8;->o:J

    int-to-char v5, p3

    move-object v0, p0

    move v3, p1

    move v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGB8;->R0(JIIC)V
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

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGB8;->V()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderTarget;

    new-instance v1, Lcom/google/android/filament/RenderTarget$b;

    invoke-direct {v1}, Lcom/google/android/filament/RenderTarget$b;-><init>()V

    sget-object v2, Lcom/google/android/filament/RenderTarget$a;->COLOR:Lcom/google/android/filament/RenderTarget$a;

    iget-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGB8;->s:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;

    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;->A()Lcom/google/android/filament/Texture;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/google/android/filament/RenderTarget$b;->f(Lcom/google/android/filament/RenderTarget$a;Lcom/google/android/filament/Texture;)Lcom/google/android/filament/RenderTarget$b;

    move-result-object v1

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGB8;->s:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderTarget;-><init>(Lcom/google/android/filament/RenderTarget$b;Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;)V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGB8;->extractingRT:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderTarget;

    mul-int v0, p3, p4

    mul-int/lit8 v0, v0, 0x4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGB8;->rgba:Ljava/nio/ByteBuffer;

    new-instance v1, Lcom/google/android/filament/Texture$g;

    sget-object v2, Lcom/google/android/filament/Texture$e;->RGBA:Lcom/google/android/filament/Texture$e;

    sget-object v3, Lcom/google/android/filament/Texture$k;->UBYTE:Lcom/google/android/filament/Texture$k;

    const/4 v4, 0x1

    invoke-direct {v1, v0, v2, v3, v4}, Lcom/google/android/filament/Texture$g;-><init>(Ljava/nio/Buffer;Lcom/google/android/filament/Texture$e;Lcom/google/android/filament/Texture$k;I)V

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGB8;->pbd:Lcom/google/android/filament/Texture$g;

    invoke-static {}, Ljc/d;->a()Landroid/os/Handler;

    move-result-object v0

    new-instance v2, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGB8$d;

    invoke-direct {v2, p0, p3, p4, p5}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGB8$d;-><init>(Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGB8;IILcom/itsmagic/engine/Engines/Engine/Texture/Data/a$b;)V

    invoke-virtual {v1, v0, v2}, Lcom/google/android/filament/Texture$g;->b(Ljava/lang/Object;Ljava/lang/Runnable;)V

    invoke-static {}, Ljc/a;->g()Lcom/google/android/filament/Renderer;

    move-result-object v3

    iget-object p5, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGB8;->extractingRT:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderTarget;

    invoke-virtual {p5}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderTarget;->s()Lcom/google/android/filament/RenderTarget;

    move-result-object v4

    iget-object v9, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGB8;->pbd:Lcom/google/android/filament/Texture$g;

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

    iget-wide v0, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGB8;->o:J

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
    iget-wide v0, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGB8;->o:J

    invoke-direct {p0, v0, v1}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGB8;->N0(J)V
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

    iput-wide v0, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGB8;->o:J

    invoke-super {p0}, LPc/a;->z()V

    return-void
.end method
