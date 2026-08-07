.class public Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Unlit/UnlitSimpleBinder;
.super Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;
.source "SourceFile"


# annotations
.annotation runtime Lh9/o;
.end annotation


# instance fields
.field public albedo:LJAVARuntime/Texture;

.field private final albedoListener:LTb/h;

.field private albedoSpriteIndex:I

.field public blendingMode:Lxc/a;

.field public final blendingMode_OFCBRL:Lxc/d;
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end field

.field public diffuse:LJAVARuntime/Color;
    .annotation runtime Lwb/f;
    .end annotation
.end field

.field public final diffuse_OFCBRL:Lxc/d;
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end field

.field private doubleSided:Z

.field public final doubleSided_OFCBRL:Lxc/d;
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end field

.field private drawInFront:Z

.field public final drawInFront_OFCBRL:Lxc/d;
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end field

.field private localWindIntensity:F
    .annotation runtime Lwb/f;
    .end annotation
.end field

.field public final localWindIntensity_OFCBRL:Lxc/d;
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end field

.field private windVerticality:F
    .annotation runtime Lwb/f;
    .end annotation
.end field

.field public final windVerticality_OFCBRL:Lxc/d;
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Unlit/UnlitSimpleBinder;->albedoSpriteIndex:I

    new-instance v1, Ltc/b;

    invoke-direct {v1, p0}, Ltc/b;-><init>(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Unlit/UnlitSimpleBinder;)V

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Unlit/UnlitSimpleBinder;->albedoListener:LTb/h;

    new-instance v1, LJAVARuntime/Color;

    const/16 v2, 0xe0

    invoke-direct {v1, v2, v2, v2}, LJAVARuntime/Color;-><init>(III)V

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Unlit/UnlitSimpleBinder;->diffuse:LJAVARuntime/Color;

    new-instance v1, Ltc/c;

    invoke-direct {v1, p0}, Ltc/c;-><init>(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Unlit/UnlitSimpleBinder;)V

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Unlit/UnlitSimpleBinder;->diffuse_OFCBRL:Lxc/d;

    sget-object v1, Lxc/a;->OPAQUE:Lxc/a;

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Unlit/UnlitSimpleBinder;->blendingMode:Lxc/a;

    new-instance v1, Ltc/d;

    invoke-direct {v1, p0}, Ltc/d;-><init>(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Unlit/UnlitSimpleBinder;)V

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Unlit/UnlitSimpleBinder;->blendingMode_OFCBRL:Lxc/d;

    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Unlit/UnlitSimpleBinder;->doubleSided:Z

    new-instance v1, Ltc/d;

    invoke-direct {v1, p0}, Ltc/d;-><init>(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Unlit/UnlitSimpleBinder;)V

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Unlit/UnlitSimpleBinder;->doubleSided_OFCBRL:Lxc/d;

    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Unlit/UnlitSimpleBinder;->drawInFront:Z

    new-instance v0, Ltc/d;

    invoke-direct {v0, p0}, Ltc/d;-><init>(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Unlit/UnlitSimpleBinder;)V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Unlit/UnlitSimpleBinder;->drawInFront_OFCBRL:Lxc/d;

    const/4 v0, 0x0

    iput v0, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Unlit/UnlitSimpleBinder;->localWindIntensity:F

    new-instance v0, Ltc/e;

    invoke-direct {v0, p0}, Ltc/e;-><init>(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Unlit/UnlitSimpleBinder;)V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Unlit/UnlitSimpleBinder;->localWindIntensity_OFCBRL:Lxc/d;

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Unlit/UnlitSimpleBinder;->windVerticality:F

    new-instance v0, Ltc/f;

    invoke-direct {v0, p0}, Ltc/f;-><init>(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Unlit/UnlitSimpleBinder;)V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Unlit/UnlitSimpleBinder;->windVerticality_OFCBRL:Lxc/d;

    return-void
.end method

.method public static synthetic A0(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Unlit/UnlitSimpleBinder;)V
    .locals 0

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Unlit/UnlitSimpleBinder;->H0()V

    return-void
.end method

.method public static synthetic B0(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Unlit/UnlitSimpleBinder;)V
    .locals 0

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Unlit/UnlitSimpleBinder;->I0()V

    return-void
.end method

.method public static synthetic C0(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Unlit/UnlitSimpleBinder;)I
    .locals 0

    iget p0, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Unlit/UnlitSimpleBinder;->albedoSpriteIndex:I

    return p0
.end method

.method public static synthetic D0(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Unlit/UnlitSimpleBinder;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Unlit/UnlitSimpleBinder;->doubleSided:Z

    return p0
.end method

.method public static synthetic E0(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Unlit/UnlitSimpleBinder;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Unlit/UnlitSimpleBinder;->drawInFront:Z

    return p0
.end method

.method public static synthetic F0(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Unlit/UnlitSimpleBinder;)F
    .locals 0

    iget p0, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Unlit/UnlitSimpleBinder;->localWindIntensity:F

    return p0
.end method

.method public static synthetic G0(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Unlit/UnlitSimpleBinder;)F
    .locals 0

    iget p0, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Unlit/UnlitSimpleBinder;->windVerticality:F

    return p0
.end method

.method private H0()V
    .locals 2

    invoke-super {p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;->F()LGc/h;

    move-result-object v0

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Unlit/UnlitSimpleBinder;->localWindIntensity:F

    invoke-virtual {v0, v1}, LGc/h;->v(F)V

    :cond_0
    return-void
.end method

.method private I0()V
    .locals 2

    invoke-super {p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;->F()LGc/h;

    move-result-object v0

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Unlit/UnlitSimpleBinder;->windVerticality:F

    invoke-virtual {v0, v1}, LGc/h;->w(F)V

    :cond_0
    return-void
.end method

.method private M0(Lcom/itsmagic/engine/Engines/Engine/Material/Material;Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/NoiseData;Ljava/lang/String;)LJAVARuntime/Texture;
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "material",
            "noiseData",
            "fileName"
        }
    .end annotation

    iget-object p1, p1, Lcom/itsmagic/engine/Engines/Engine/Material/Material;->e:Ljava/lang/String;

    invoke-static {p1}, Lmd/b;->z(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    new-instance v0, LMb/j;

    invoke-direct {v0, p2}, LMb/j;-><init>(Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/NoiseData;)V

    invoke-virtual {v0}, LMb/j;->d1()V

    invoke-virtual {v0}, LMb/p;->getWidth()I

    move-result v1

    invoke-virtual {v0}, LMb/p;->getHeight()I

    move-result v2

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0}, LMb/p;->getWidth()I

    move-result v2

    invoke-virtual {v0}, LMb/p;->getHeight()I

    move-result v3

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v2, :cond_1

    move v6, v4

    :goto_1
    if-ge v6, v3, :cond_0

    invoke-virtual {v0, v5, v6}, LMb/n;->v(II)Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    move-result-object v7

    iget v7, v7, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->intColor:I

    invoke-virtual {v1, v5, v6, v7}, Landroid/graphics/Bitmap;->setPixel(III)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    iget-object p2, p2, Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/NoiseData;->textureConfig:Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;

    new-instance v0, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".png"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, p1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->r()I

    move-result v4

    invoke-virtual {v1, v3, v4, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_4

    :catch_0
    move-exception v1

    goto :goto_3

    :catchall_0
    move-exception v1

    :try_start_3
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v2

    :try_start_4
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2
    throw v1
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    :goto_3
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_4
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".texture"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    :cond_2
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ".png.config"

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {v1, p1, p3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    :cond_3
    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->H0()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v1}, Lbd/o;->e(Ljava/lang/String;Ljava/io/File;)V

    invoke-static {}, Lod/e;->f()V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/itsmagic/engine/Core/Components/ProjectController/a;->P()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "/"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, ""

    invoke-virtual {p1, p2, p3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, LQb/b;->u(Ljava/lang/String;)LMb/g;

    move-result-object p1

    if-eqz p1, :cond_4

    invoke-virtual {p1}, LMb/g;->P0()V

    invoke-virtual {p1}, LMb/p;->B0()LJAVARuntime/Texture;

    move-result-object p1

    return-object p1

    :cond_4
    const/4 p1, 0x0

    return-object p1
.end method

.method private V0()V
    .locals 7

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;->D()Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Unlit/UnlitSimpleBinder;->albedo:LJAVARuntime/Texture;

    sget-object v3, LQb/b;->g:LMb/p;

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;->D()Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;

    move-result-object v5

    iget v6, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Unlit/UnlitSimpleBinder;->albedoSpriteIndex:I

    const-string v4, "albedo"

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;->j(LJAVARuntime/Texture;LMb/p;Ljava/lang/String;Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;I)Z

    return-void
.end method

.method private W0()V
    .locals 7

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;->D()Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;->D()Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;

    move-result-object v1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Unlit/UnlitSimpleBinder;->diffuse:LJAVARuntime/Color;

    iget-object v0, v0, LJAVARuntime/Color;->instance:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->I()F

    move-result v3

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Unlit/UnlitSimpleBinder;->diffuse:LJAVARuntime/Color;

    iget-object v0, v0, LJAVARuntime/Color;->instance:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->G()F

    move-result v4

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Unlit/UnlitSimpleBinder;->diffuse:LJAVARuntime/Color;

    iget-object v0, v0, LJAVARuntime/Color;->instance:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->F()F

    move-result v5

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Unlit/UnlitSimpleBinder;->diffuse:LJAVARuntime/Color;

    iget-object v0, v0, LJAVARuntime/Color;->instance:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->E()F

    move-result v6

    const-string v2, "baseColor"

    invoke-virtual/range {v1 .. v6}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;->Q(Ljava/lang/String;FFFF)V

    return-void
.end method

.method public static synthetic y0(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Unlit/UnlitSimpleBinder;)V
    .locals 0

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Unlit/UnlitSimpleBinder;->V0()V

    return-void
.end method

.method public static synthetic z0(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Unlit/UnlitSimpleBinder;)V
    .locals 0

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Unlit/UnlitSimpleBinder;->W0()V

    return-void
.end method


# virtual methods
.method public A(Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "entry"
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public H(Landroid/content/Context;Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder$b;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "listener"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder$b;",
            ")",
            "Ljava/util/List<",
            "LW5/b;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    invoke-interface {p2}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder$b;->c()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    if-eqz p2, :cond_1

    invoke-interface {p2}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder$b;->d()Ljava/lang/String;

    move-result-object v1

    :cond_1
    iget-object v3, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Unlit/UnlitSimpleBinder;->blendingMode:Lxc/a;

    new-instance v4, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Unlit/UnlitSimpleBinder$a;

    invoke-direct {v4, p0, p2}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Unlit/UnlitSimpleBinder$a;-><init>(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Unlit/UnlitSimpleBinder;Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder$b;)V

    const-string v5, "blend"

    const-class v6, Lxc/a;

    invoke-static {v5, v6, v3, v4}, LZ5/c;->i(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;LZ5/c$r0;)LW5/b;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, LW5/b;

    new-instance v4, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Unlit/UnlitSimpleBinder$b;

    invoke-direct {v4, p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Unlit/UnlitSimpleBinder$b;-><init>(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Unlit/UnlitSimpleBinder;)V

    sget-object v5, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->COLOR:LUc/b;

    invoke-static {v5}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LUc/b;)Ljava/lang/String;

    move-result-object v5

    sget-object v6, LW5/b$a;->Color:LW5/b$a;

    invoke-direct {v3, v4, v5, v6}, LW5/b;-><init>(LX5/h;Ljava/lang/String;LW5/b$a;)V

    if-eqz v1, :cond_2

    if-eqz v2, :cond_2

    invoke-interface {p2}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder$b;->b()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    move-result-object p2

    const-string v2, "diffuse"

    sget-object v4, Lcom/itsmagic/engine/Engines/Engine/Animation/c;->COLOR:Lcom/itsmagic/engine/Engines/Engine/Animation/c;

    invoke-virtual {v3, v1, p2, v2, v4}, LW5/b;->f(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Animation/c;)LW5/b;

    :cond_2
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p2, LW5/b;

    new-instance v1, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Unlit/UnlitSimpleBinder$c;

    invoke-direct {v1, p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Unlit/UnlitSimpleBinder$c;-><init>(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Unlit/UnlitSimpleBinder;)V

    const-string v2, "Albedo"

    sget-object v3, LW5/b$a;->Texture:LW5/b$a;

    invoke-direct {p2, v1, v2, v3, p1}, LW5/b;-><init>(LX5/h;Ljava/lang/String;LW5/b$a;Landroid/content/Context;)V

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Unlit/UnlitSimpleBinder;->albedo:LJAVARuntime/Texture;

    if-eqz p1, :cond_3

    iget-object p1, p1, LJAVARuntime/Texture;->instance:LMb/p;

    invoke-static {p1}, LMb/g;->J0(LMb/p;)Z

    move-result p1

    if-eqz p1, :cond_3

    new-instance p1, LW5/b;

    new-instance p2, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Unlit/UnlitSimpleBinder$d;

    invoke-direct {p2, p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Unlit/UnlitSimpleBinder$d;-><init>(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Unlit/UnlitSimpleBinder;)V

    const-string v1, "Sprite index"

    sget-object v2, LW5/b$a;->SLInt:LW5/b$a;

    invoke-direct {p1, p2, v1, v2}, LW5/b;-><init>(LX5/h;Ljava/lang/String;LW5/b$a;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    new-instance p1, LW5/b;

    new-instance p2, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Unlit/UnlitSimpleBinder$e;

    invoke-direct {p2, p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Unlit/UnlitSimpleBinder$e;-><init>(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Unlit/UnlitSimpleBinder;)V

    sget-object v1, LW5/b$a;->SLBoolean:LW5/b$a;

    const-string v2, "Double sided"

    invoke-direct {p1, p2, v2, v1}, LW5/b;-><init>(LX5/h;Ljava/lang/String;LW5/b$a;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p1, LW5/b;

    new-instance p2, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Unlit/UnlitSimpleBinder$f;

    invoke-direct {p2, p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Unlit/UnlitSimpleBinder$f;-><init>(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Unlit/UnlitSimpleBinder;)V

    const-string v2, "Draw in front"

    invoke-direct {p1, p2, v2, v1}, LW5/b;-><init>(LX5/h;Ljava/lang/String;LW5/b$a;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p1, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Unlit/UnlitSimpleBinder$g;

    invoke-direct {p1, p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Unlit/UnlitSimpleBinder$g;-><init>(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Unlit/UnlitSimpleBinder;)V

    const-string p2, "Wind effect"

    invoke-static {p2, p1}, LZ5/c;->e(Ljava/lang/String;LZ5/c$o0;)LW5/b;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p1, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Unlit/UnlitSimpleBinder$h;

    invoke-direct {p1, p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Unlit/UnlitSimpleBinder$h;-><init>(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Unlit/UnlitSimpleBinder;)V

    const-string p2, "Others"

    invoke-static {p2, p1}, LZ5/c;->e(Ljava/lang/String;LZ5/c$o0;)LW5/b;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public J0()I
    .locals 1

    iget v0, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Unlit/UnlitSimpleBinder;->albedoSpriteIndex:I

    return v0
.end method

.method public K0()F
    .locals 1

    iget v0, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Unlit/UnlitSimpleBinder;->localWindIntensity:F

    return v0
.end method

.method public L0()F
    .locals 1

    iget v0, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Unlit/UnlitSimpleBinder;->windVerticality:F

    return v0
.end method

.method public N0(LJAVARuntime/Texture;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "albedo"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Unlit/UnlitSimpleBinder;->albedo:LJAVARuntime/Texture;

    if-eq v0, p1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    iget-object v0, v0, LJAVARuntime/Texture;->instance:LMb/p;

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Unlit/UnlitSimpleBinder;->albedoListener:LTb/h;

    invoke-virtual {v0, v2}, LMb/p;->f0(LTb/h;)V

    :cond_1
    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Unlit/UnlitSimpleBinder;->albedo:LJAVARuntime/Texture;

    if-eqz p1, :cond_2

    if-eqz v1, :cond_2

    iget-object p1, p1, LJAVARuntime/Texture;->instance:LMb/p;

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Unlit/UnlitSimpleBinder;->albedoListener:LTb/h;

    invoke-virtual {p1, v0}, LMb/p;->r(LTb/h;)V

    :cond_2
    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;->Y()V

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Unlit/UnlitSimpleBinder;->V0()V

    :cond_3
    return-void
.end method

.method public O0(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "albedoSpriteIndex"
        }
    .end annotation

    iget v0, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Unlit/UnlitSimpleBinder;->albedoSpriteIndex:I

    if-eq v0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput p1, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Unlit/UnlitSimpleBinder;->albedoSpriteIndex:I

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;->Y()V

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Unlit/UnlitSimpleBinder;->V0()V

    :cond_1
    return-void
.end method

.method public P()Z
    .locals 1

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Unlit/UnlitSimpleBinder;->drawInFront:Z

    return v0
.end method

.method public P0(Lxc/a;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "blendingMode"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Unlit/UnlitSimpleBinder;->blendingMode:Lxc/a;

    if-eq v0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Unlit/UnlitSimpleBinder;->blendingMode:Lxc/a;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;->Y()V

    invoke-super {p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;->O()V

    :cond_1
    return-void
.end method

.method public Q0(LJAVARuntime/Color;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "diffuse"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Unlit/UnlitSimpleBinder;->diffuse:LJAVARuntime/Color;

    iget-object v0, v0, LJAVARuntime/Color;->instance:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    iget v0, v0, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->intColor:I

    iget-object v1, p1, LJAVARuntime/Color;->instance:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    iget v1, v1, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->intColor:I

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Unlit/UnlitSimpleBinder;->diffuse:LJAVARuntime/Color;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;->Y()V

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Unlit/UnlitSimpleBinder;->W0()V

    :cond_1
    return-void
.end method

.method public R0(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "doubleSided"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Unlit/UnlitSimpleBinder;->doubleSided:Z

    if-eq v0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Unlit/UnlitSimpleBinder;->doubleSided:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;->Y()V

    invoke-super {p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;->O()V

    :cond_1
    return-void
.end method

.method public S0(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "drawInFront"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Unlit/UnlitSimpleBinder;->drawInFront:Z

    if-eq v0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Unlit/UnlitSimpleBinder;->drawInFront:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;->Y()V

    invoke-super {p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;->O()V

    :cond_1
    return-void
.end method

.method public T0(F)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "localWindIntensity"
        }
    .end annotation

    iget v0, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Unlit/UnlitSimpleBinder;->localWindIntensity:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput p1, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Unlit/UnlitSimpleBinder;->localWindIntensity:F

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;->Y()V

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Unlit/UnlitSimpleBinder;->H0()V

    :cond_1
    return-void
.end method

.method public U0(F)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "windVerticality"
        }
    .end annotation

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v0, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    const/4 v0, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    iget v0, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Unlit/UnlitSimpleBinder;->windVerticality:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput p1, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Unlit/UnlitSimpleBinder;->windVerticality:F

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;->Y()V

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Unlit/UnlitSimpleBinder;->I0()V

    :cond_1
    return-void
.end method

.method public W()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Unlit/UnlitSimpleBinder;->N0(LJAVARuntime/Texture;)V

    return-void
.end method

.method public Z()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public a0(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dataList"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;",
            ">;)V"
        }
    .end annotation

    const-string v0, "doubleSided"

    const-string v1, "Boolean"

    invoke-static {v0, v1, p1}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;->d(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;->a(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Unlit/UnlitSimpleBinder;->R0(Z)V

    :cond_0
    const-string v0, "diffuse"

    const-string v2, "Color"

    invoke-static {v0, v2, p1}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;->d(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;->c(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;)Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->q0()LJAVARuntime/Color;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Unlit/UnlitSimpleBinder;->Q0(LJAVARuntime/Color;)V

    goto :goto_0

    :cond_1
    const-string v0, "color"

    invoke-static {v0, v2, p1}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;->d(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;->c(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;)Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->q0()LJAVARuntime/Color;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Unlit/UnlitSimpleBinder;->Q0(LJAVARuntime/Color;)V

    :cond_2
    :goto_0
    const-string v0, "albedo"

    const-string v2, "Texture"

    invoke-static {v0, v2, p1}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;->d(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;->u(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;)LMb/g;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, LMb/p;->B0()LJAVARuntime/Texture;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Unlit/UnlitSimpleBinder;->N0(LJAVARuntime/Texture;)V

    goto :goto_1

    :cond_3
    const-string v0, "texture"

    invoke-static {v0, v2, p1}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;->d(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;->u(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;)LMb/g;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, LMb/p;->B0()LJAVARuntime/Texture;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Unlit/UnlitSimpleBinder;->N0(LJAVARuntime/Texture;)V

    :cond_4
    :goto_1
    const-string v0, "albedoSpriteIndex"

    const-string v2, "Int"

    invoke-static {v0, v2, p1}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;->d(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;->h(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Unlit/UnlitSimpleBinder;->O0(I)V

    :cond_5
    const-string v0, "blendingMode"

    const-string v3, "String"

    invoke-static {v0, v3, p1}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;->d(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;->s(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lxc/a;->valueOf(Ljava/lang/String;)Lxc/a;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Unlit/UnlitSimpleBinder;->P0(Lxc/a;)V

    :cond_6
    const-string v0, "drawInFront"

    invoke-static {v0, v1, p1}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;->d(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;->a(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Unlit/UnlitSimpleBinder;->S0(Z)V

    :cond_7
    const-string v0, "localWindIntensity"

    const-string v1, "Float"

    invoke-static {v0, v1, p1}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;->d(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;->g(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;)F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Unlit/UnlitSimpleBinder;->T0(F)V

    :cond_8
    const-string v0, "windVerticality"

    invoke-static {v0, v1, p1}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;->d(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;->g(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;)F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Unlit/UnlitSimpleBinder;->U0(F)V

    :cond_9
    const-string v0, "materialID"

    invoke-static {v0, v2, p1}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;->d(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;

    move-result-object p1

    if-eqz p1, :cond_a

    invoke-static {p1}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;->h(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;->m0(I)V

    :cond_a
    return-void
.end method

.method public b0(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dataList"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "doubleSided"

    const-string v2, "Boolean"

    invoke-static {v1, v2, p1}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;->e(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-boolean v3, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Unlit/UnlitSimpleBinder;->doubleSided:Z

    invoke-static {v1, v3}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;->q(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;Z)V

    const-string v1, "albedo"

    const-string v3, "Texture"

    invoke-static {v1, v3, p1}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;->e(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Unlit/UnlitSimpleBinder;->albedo:LJAVARuntime/Texture;

    invoke-static {v1, v3}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;->k(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;LJAVARuntime/Texture;)V

    const-string v1, "albedoSpriteIndex"

    const-string v3, "Int"

    invoke-static {v1, v3, p1}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;->e(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget v4, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Unlit/UnlitSimpleBinder;->albedoSpriteIndex:I

    invoke-static {v1, v4}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;->j(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;I)V

    const-string v1, "diffuse"

    const-string v4, "Color"

    invoke-static {v1, v4, p1}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;->e(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v4, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Unlit/UnlitSimpleBinder;->diffuse:LJAVARuntime/Color;

    iget-object v4, v4, LJAVARuntime/Color;->instance:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    invoke-static {v1, v4}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;->m(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;)V

    const-string v1, "blendingMode"

    const-string v4, "String"

    invoke-static {v1, v4, p1}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;->e(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v4, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Unlit/UnlitSimpleBinder;->blendingMode:Lxc/a;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;->p(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;Ljava/lang/String;)V

    const-string v1, "drawInFront"

    invoke-static {v1, v2, p1}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;->e(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-boolean v2, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Unlit/UnlitSimpleBinder;->drawInFront:Z

    invoke-static {v1, v2}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;->q(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;Z)V

    const-string v1, "localWindIntensity"

    const-string v2, "Float"

    invoke-static {v1, v2, p1}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;->e(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget v4, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Unlit/UnlitSimpleBinder;->localWindIntensity:F

    invoke-static {v1, v4}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;->i(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;F)V

    const-string v1, "windVerticality"

    invoke-static {v1, v2, p1}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;->e(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget v2, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Unlit/UnlitSimpleBinder;->windVerticality:F

    invoke-static {v1, v2}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;->i(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;F)V

    const-string v1, "materialID"

    invoke-static {v1, v3, p1}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;->e(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;->K()I

    move-result v2

    invoke-static {v1, v2}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;->j(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;I)V

    invoke-interface {p1}, Ljava/util/List;->clear()V

    invoke-interface {p1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public d()Z
    .locals 2

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Unlit/UnlitSimpleBinder;->diffuse:LJAVARuntime/Color;

    invoke-virtual {v0}, LJAVARuntime/Color;->getFloatAlpha()F

    move-result v0

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-super {p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;->d()Z

    move-result v0

    return v0
.end method

.method public g0(Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;Lcom/itsmagic/engine/Engines/Engine/Material/Material;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "filamentMaterial",
            "material"
        }
    .end annotation

    invoke-super {p0, p1, p2}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;->g0(Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;Lcom/itsmagic/engine/Engines/Engine/Material/Material;)V

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Unlit/UnlitSimpleBinder;->W0()V

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Unlit/UnlitSimpleBinder;->V0()V

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Unlit/UnlitSimpleBinder;->H0()V

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Unlit/UnlitSimpleBinder;->I0()V

    return-void
.end method

.method public h0(Ljava/lang/String;F)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "entry",
            "value"
        }
    .end annotation

    const-string v0, "windeffect"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p2}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Unlit/UnlitSimpleBinder;->T0(F)V

    return-void

    :cond_0
    const-string v0, "windVerticality"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, p2}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Unlit/UnlitSimpleBinder;->U0(F)V

    return-void

    :cond_1
    invoke-super {p0, p1, p2}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;->h0(Ljava/lang/String;F)V

    return-void
.end method

.method public j0(LGc/h;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "globalShaderEntity"
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;->j0(LGc/h;)V

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Unlit/UnlitSimpleBinder;->H0()V

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Unlit/UnlitSimpleBinder;->I0()V

    return-void
.end method

.method public k(Lvc/b;)Ljava/util/List;
    .locals 20
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "renderPass"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lvc/b;",
            ")",
            "Ljava/util/List<",
            "Lxc/i;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x2

    new-array v3, v2, [Z

    fill-array-data v3, :array_0

    invoke-static {}, Lxc/a;->values()[Lxc/a;

    move-result-object v4

    array-length v5, v4

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v5, :cond_2

    aget-object v7, v4, v6

    const/4 v8, 0x0

    :goto_1
    if-ge v8, v2, :cond_1

    aget-boolean v17, v3, v8

    const/4 v15, 0x0

    :goto_2
    if-ge v15, v2, :cond_0

    aget-boolean v9, v3, v15

    new-instance v14, Lxc/i;

    invoke-virtual {v7}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/google/android/filament/filamat/MaterialBuilder$a;->valueOf(Ljava/lang/String;)Lcom/google/android/filament/filamat/MaterialBuilder$a;

    move-result-object v10

    sget-object v12, Lcom/google/android/filament/filamat/MaterialBuilder$c;->BACK:Lcom/google/android/filament/filamat/MaterialBuilder$c;

    xor-int/lit8 v16, v9, 0x1

    xor-int/lit8 v18, v9, 0x1

    const/high16 v11, 0x3f000000    # 0.5f

    const/16 v19, 0x0

    move-object v9, v14

    move/from16 v13, v17

    move-object v1, v14

    move-object/from16 v14, v19

    move/from16 v19, v15

    move/from16 v15, v16

    move/from16 v16, v18

    invoke-direct/range {v9 .. v16}, Lxc/i;-><init>(Lcom/google/android/filament/filamat/MaterialBuilder$a;FLcom/google/android/filament/filamat/MaterialBuilder$c;ZLcom/google/android/filament/filamat/MaterialBuilder$k;ZZ)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v15, v19, 0x1

    goto :goto_2

    :cond_0
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_2
    return-object v0

    nop

    :array_0
    .array-data 1
        0x0t
        0x1t
    .end array-data
.end method

.method public l()Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;
    .locals 2

    new-instance v0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Unlit/UnlitSimpleBinder;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Unlit/UnlitSimpleBinder;-><init>()V

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Unlit/UnlitSimpleBinder;->diffuse:LJAVARuntime/Color;

    invoke-virtual {v1}, LJAVARuntime/Color;->copy()LJAVARuntime/Color;

    move-result-object v1

    iput-object v1, v0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Unlit/UnlitSimpleBinder;->diffuse:LJAVARuntime/Color;

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Unlit/UnlitSimpleBinder;->albedo:LJAVARuntime/Texture;

    iput-object v1, v0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Unlit/UnlitSimpleBinder;->albedo:LJAVARuntime/Texture;

    iget v1, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Unlit/UnlitSimpleBinder;->albedoSpriteIndex:I

    iput v1, v0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Unlit/UnlitSimpleBinder;->albedoSpriteIndex:I

    iget-boolean v1, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Unlit/UnlitSimpleBinder;->doubleSided:Z

    iput-boolean v1, v0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Unlit/UnlitSimpleBinder;->doubleSided:Z

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Unlit/UnlitSimpleBinder;->blendingMode:Lxc/a;

    iput-object v1, v0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Unlit/UnlitSimpleBinder;->blendingMode:Lxc/a;

    iget-boolean v1, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Unlit/UnlitSimpleBinder;->drawInFront:Z

    iput-boolean v1, v0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Unlit/UnlitSimpleBinder;->drawInFront:Z

    iget v1, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Unlit/UnlitSimpleBinder;->localWindIntensity:F

    iput v1, v0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Unlit/UnlitSimpleBinder;->localWindIntensity:F

    iget v1, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Unlit/UnlitSimpleBinder;->windVerticality:F

    iput v1, v0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Unlit/UnlitSimpleBinder;->windVerticality:F

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;->K()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;->m0(I)V

    return-object v0
.end method

.method public q0(Ljava/lang/String;LMb/p;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "entry",
            "texture"
        }
    .end annotation

    const-string v0, "albedo"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "texture"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;->q0(Ljava/lang/String;LMb/p;)V

    return-void

    :cond_1
    :goto_0
    if-eqz p2, :cond_2

    invoke-virtual {p2}, LMb/p;->B0()LJAVARuntime/Texture;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Unlit/UnlitSimpleBinder;->N0(LJAVARuntime/Texture;)V

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Unlit/UnlitSimpleBinder;->N0(LJAVARuntime/Texture;)V

    :goto_1
    return-void
.end method

.method public r0(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "entry",
            "file"
        }
    .end annotation

    const-string v0, "albedo"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "texture"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;->r0(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Unlit/UnlitSimpleBinder;->albedo:LJAVARuntime/Texture;

    if-eqz p1, :cond_2

    iget-object p1, p1, LJAVARuntime/Texture;->instance:LMb/p;

    instance-of v0, p1, LMb/g;

    if-eqz v0, :cond_2

    check-cast p1, LMb/g;

    invoke-virtual {p1}, LMb/g;->getFile()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    return-void

    :cond_2
    const/4 p1, 0x0

    if-eqz p2, :cond_4

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-static {p2}, LQb/b;->u(Ljava/lang/String;)LMb/g;

    move-result-object p2

    if-eqz p2, :cond_3

    invoke-virtual {p2}, LMb/p;->B0()LJAVARuntime/Texture;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Unlit/UnlitSimpleBinder;->N0(LJAVARuntime/Texture;)V

    goto :goto_1

    :cond_3
    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Unlit/UnlitSimpleBinder;->N0(LJAVARuntime/Texture;)V

    goto :goto_1

    :cond_4
    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Unlit/UnlitSimpleBinder;->N0(LJAVARuntime/Texture;)V

    :goto_1
    return-void
.end method

.method public u(Ljava/lang/String;)F
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "entry"
        }
    .end annotation

    const-string v0, "windeffect"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget p1, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Unlit/UnlitSimpleBinder;->localWindIntensity:F

    return p1

    :cond_0
    const-string v0, "windVerticality"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget p1, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Unlit/UnlitSimpleBinder;->windVerticality:F

    return p1

    :cond_1
    invoke-super {p0, p1}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;->u(Ljava/lang/String;)F

    move-result p1

    return p1
.end method

.method public v0(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "entry",
            "vector2"
        }
    .end annotation

    return-void
.end method

.method public x0(Lxc/i;Lvc/b;)Lxc/i;
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "variance",
            "renderPass"
        }
    .end annotation

    invoke-virtual {p1}, Lxc/i;->a()Lcom/google/android/filament/filamat/MaterialBuilder$a;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Unlit/UnlitSimpleBinder;->blendingMode:Lxc/a;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    const/4 v0, 0x1

    xor-int/2addr p2, v0

    invoke-virtual {p1}, Lxc/i;->i()Z

    move-result v1

    iget-boolean v2, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Unlit/UnlitSimpleBinder;->doubleSided:Z

    if-eq v1, v2, :cond_0

    move p2, v0

    :cond_0
    invoke-virtual {p1}, Lxc/i;->g()Z

    move-result v1

    iget-boolean v2, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Unlit/UnlitSimpleBinder;->drawInFront:Z

    if-ne v1, v2, :cond_1

    move p2, v0

    :cond_1
    if-eqz p2, :cond_2

    new-instance p1, Lxc/i;

    iget-object p2, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Unlit/UnlitSimpleBinder;->blendingMode:Lxc/a;

    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/google/android/filament/filamat/MaterialBuilder$a;->valueOf(Ljava/lang/String;)Lcom/google/android/filament/filamat/MaterialBuilder$a;

    move-result-object v2

    sget-object v4, Lcom/google/android/filament/filamat/MaterialBuilder$c;->BACK:Lcom/google/android/filament/filamat/MaterialBuilder$c;

    iget-boolean v5, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Unlit/UnlitSimpleBinder;->doubleSided:Z

    iget-boolean p2, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Unlit/UnlitSimpleBinder;->drawInFront:Z

    xor-int/lit8 v7, p2, 0x1

    xor-int/lit8 v8, p2, 0x1

    const/high16 v3, 0x3f000000    # 0.5f

    const/4 v6, 0x0

    move-object v1, p1

    invoke-direct/range {v1 .. v8}, Lxc/i;-><init>(Lcom/google/android/filament/filamat/MaterialBuilder$a;FLcom/google/android/filament/filamat/MaterialBuilder$c;ZLcom/google/android/filament/filamat/MaterialBuilder$k;ZZ)V

    :cond_2
    return-object p1
.end method
