.class public Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;
.super Lcom/itsmagic/engine/Engines/Engine/GC/SGCListenerObject;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static final d:Lea/b;


# instance fields
.field private final autoGenMipmaps:Z
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end field

.field public b:Z

.field public c:Ljava/lang/Runnable;

.field private final format:Lcom/google/android/filament/Texture$e;
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end field

.field private final height:I
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end field

.field private final mipMapLevels:I
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end field

.field private sampler:Lcom/google/android/filament/TextureSampler;
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end field

.field private final texture:Lcom/google/android/filament/Texture;
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end field

.field private final type:Lcom/google/android/filament/Texture$k;
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end field

.field private final width:I
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lkc/e;

    invoke-direct {v0}, Lkc/e;-><init>()V

    sput-object v0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;->d:Lea/b;

    return-void
.end method

.method public constructor <init>(IILcom/google/android/filament/Texture$e;Lcom/google/android/filament/Texture$k;Lcom/google/android/filament/Texture$b;Lcom/google/android/filament/TextureSampler;II)V
    .locals 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
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
            "width",
            "height",
            "format",
            "type",
            "builder",
            "sampler",
            "mipMapLevels",
            "usages"
        }
    .end annotation

    .line 1
    sget-object v9, Lcom/google/android/filament/Texture$i;->SAMPLER_2D:Lcom/google/android/filament/Texture$i;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    invoke-direct/range {v0 .. v9}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;-><init>(IILcom/google/android/filament/Texture$e;Lcom/google/android/filament/Texture$k;Lcom/google/android/filament/Texture$b;Lcom/google/android/filament/TextureSampler;IILcom/google/android/filament/Texture$i;)V

    return-void
.end method

.method public constructor <init>(IILcom/google/android/filament/Texture$e;Lcom/google/android/filament/Texture$k;Lcom/google/android/filament/Texture$b;Lcom/google/android/filament/TextureSampler;IILcom/google/android/filament/Texture$i;)V
    .locals 1
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
            "width",
            "height",
            "format",
            "type",
            "builder",
            "sampler",
            "mipMapLevels",
            "usages",
            "usageSampler"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/GC/SGCListenerObject;-><init>()V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;->c:Ljava/lang/Runnable;

    .line 4
    iput p1, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;->width:I

    .line 5
    iput p2, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;->height:I

    .line 6
    iput-object p3, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;->format:Lcom/google/android/filament/Texture$e;

    .line 7
    iput-object p4, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;->type:Lcom/google/android/filament/Texture$k;

    .line 8
    iput-object p6, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;->sampler:Lcom/google/android/filament/TextureSampler;

    const/4 p3, 0x0

    if-gez p7, :cond_0

    const/16 p4, 0xff

    .line 9
    iput p4, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;->mipMapLevels:I

    .line 10
    invoke-virtual {p5, p4}, Lcom/google/android/filament/Texture$b;->g(I)Lcom/google/android/filament/Texture$b;

    .line 11
    iput-boolean p3, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;->autoGenMipmaps:Z

    goto :goto_1

    .line 12
    :cond_0
    iput p7, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;->mipMapLevels:I

    add-int/lit8 p4, p7, 0x1

    .line 13
    invoke-virtual {p5, p4}, Lcom/google/android/filament/Texture$b;->g(I)Lcom/google/android/filament/Texture$b;

    if-lez p7, :cond_1

    const/4 p4, 0x1

    goto :goto_0

    :cond_1
    move p4, p3

    .line 14
    :goto_0
    iput-boolean p4, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;->autoGenMipmaps:Z

    :goto_1
    or-int/lit8 p4, p8, 0x10

    .line 15
    iget-boolean p6, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;->autoGenMipmaps:Z

    if-eqz p6, :cond_2

    or-int/lit16 p4, p8, 0x210

    .line 16
    :cond_2
    invoke-virtual {p5, p4}, Lcom/google/android/filament/Texture$b;->k(I)Lcom/google/android/filament/Texture$b;

    .line 17
    invoke-virtual {p5, p9}, Lcom/google/android/filament/Texture$b;->h(Lcom/google/android/filament/Texture$i;)Lcom/google/android/filament/Texture$b;

    .line 18
    invoke-virtual {p5, p1}, Lcom/google/android/filament/Texture$b;->l(I)Lcom/google/android/filament/Texture$b;

    .line 19
    invoke-virtual {p5, p2}, Lcom/google/android/filament/Texture$b;->e(I)Lcom/google/android/filament/Texture$b;

    .line 20
    invoke-static {}, Ljc/a;->f()Lcom/google/android/filament/Engine;

    move-result-object p1

    invoke-virtual {p5, p1}, Lcom/google/android/filament/Texture$b;->a(Lcom/google/android/filament/Engine;)Lcom/google/android/filament/Texture;

    move-result-object p1

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;->texture:Lcom/google/android/filament/Texture;

    .line 21
    invoke-virtual {p1}, Lcom/google/android/filament/Texture;->getNativeObject()J

    move-result-wide p1

    sget-object p4, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;->d:Lea/b;

    invoke-static {p0, p1, p2, p4, p3}, Lcom/itsmagic/engine/Engines/Engine/GC/SGC;->put(Ljava/lang/Object;JLea/b;Z)V

    .line 22
    invoke-static {p0}, LQb/a;->a(Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;)V

    return-void
.end method

.method private static synthetic C(J)V
    .locals 0

    invoke-static {p0, p1}, LQb/a;->c(J)V

    invoke-static {p0, p1}, Ljc/b;->n(J)V

    return-void
.end method

.method public static synthetic r(J)V
    .locals 0

    invoke-static {p0, p1}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;->C(J)V

    return-void
.end method

.method public static s(Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;)Lcom/google/android/filament/TextureSampler;
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "config"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->i()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-lez v0, :cond_2

    sget-object v0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture$a;->a:[I

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->j()Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$a;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aget v0, v0, v4

    if-eq v0, v2, :cond_1

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/google/android/filament/TextureSampler$f;->LINEAR_MIPMAP_LINEAR:Lcom/google/android/filament/TextureSampler$f;

    sget-object v4, Lcom/google/android/filament/TextureSampler$e;->LINEAR:Lcom/google/android/filament/TextureSampler$e;

    goto :goto_1

    :cond_1
    sget-object v0, Lcom/google/android/filament/TextureSampler$f;->NEAREST_MIPMAP_NEAREST:Lcom/google/android/filament/TextureSampler$f;

    sget-object v4, Lcom/google/android/filament/TextureSampler$e;->NEAREST:Lcom/google/android/filament/TextureSampler$e;

    goto :goto_1

    :cond_2
    sget-object v0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture$a;->a:[I

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->j()Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$a;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aget v0, v0, v4

    if-eq v0, v2, :cond_4

    if-eq v0, v1, :cond_3

    :goto_0
    move-object v0, v3

    move-object v4, v0

    goto :goto_1

    :cond_3
    sget-object v0, Lcom/google/android/filament/TextureSampler$f;->LINEAR:Lcom/google/android/filament/TextureSampler$f;

    sget-object v4, Lcom/google/android/filament/TextureSampler$e;->LINEAR:Lcom/google/android/filament/TextureSampler$e;

    goto :goto_1

    :cond_4
    sget-object v0, Lcom/google/android/filament/TextureSampler$f;->NEAREST:Lcom/google/android/filament/TextureSampler$f;

    sget-object v4, Lcom/google/android/filament/TextureSampler$e;->NEAREST:Lcom/google/android/filament/TextureSampler$e;

    :goto_1
    sget-object v5, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture$a;->b:[I

    iget-object p0, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->wrap:Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$f;

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v5, p0

    if-eq p0, v2, :cond_7

    if-eq p0, v1, :cond_6

    const/4 v1, 0x3

    if-eq p0, v1, :cond_5

    goto :goto_2

    :cond_5
    sget-object v3, Lcom/google/android/filament/TextureSampler$g;->MIRRORED_REPEAT:Lcom/google/android/filament/TextureSampler$g;

    goto :goto_2

    :cond_6
    sget-object v3, Lcom/google/android/filament/TextureSampler$g;->REPEAT:Lcom/google/android/filament/TextureSampler$g;

    goto :goto_2

    :cond_7
    sget-object v3, Lcom/google/android/filament/TextureSampler$g;->CLAMP_TO_EDGE:Lcom/google/android/filament/TextureSampler$g;

    :goto_2
    new-instance p0, Lcom/google/android/filament/TextureSampler;

    invoke-direct {p0, v0, v4, v3}, Lcom/google/android/filament/TextureSampler;-><init>(Lcom/google/android/filament/TextureSampler$f;Lcom/google/android/filament/TextureSampler$e;Lcom/google/android/filament/TextureSampler$g;)V

    return-object p0
.end method


# virtual methods
.method public A()Lcom/google/android/filament/Texture;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;->texture:Lcom/google/android/filament/Texture;

    return-object v0
.end method

.method public B()Z
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;->texture:Lcom/google/android/filament/Texture;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public D(IIIIIIILcom/google/android/filament/Texture$g;)V
    .locals 11
    .param p1    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param
    .param p3    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param
    .param p4    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param
    .param p5    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param
    .param p6    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param
    .param p7    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param
    .param p8    # Lcom/google/android/filament/Texture$g;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
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
            "level",
            "xoffset",
            "yoffset",
            "zoffset",
            "width",
            "height",
            "depth",
            "buffer"
        }
    .end annotation

    move-object v0, p0

    iget-object v1, v0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;->texture:Lcom/google/android/filament/Texture;

    invoke-static {}, Ljc/a;->f()Lcom/google/android/filament/Engine;

    move-result-object v2

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move-object/from16 v10, p8

    invoke-virtual/range {v1 .. v10}, Lcom/google/android/filament/Texture;->F(Lcom/google/android/filament/Engine;IIIIIIILcom/google/android/filament/Texture$g;)V

    iget-boolean v1, v0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;->autoGenMipmaps:Z

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;->texture:Lcom/google/android/filament/Texture;

    invoke-static {}, Ljc/a;->f()Lcom/google/android/filament/Engine;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/filament/Texture;->p(Lcom/google/android/filament/Engine;)V

    :cond_0
    return-void
.end method

.method public E(Lcom/google/android/filament/TextureSampler;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "sampler"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;->sampler:Lcom/google/android/filament/TextureSampler;

    return-void
.end method

.method public destroyImmediate()V
    .locals 5

    invoke-static {}, Ljc/a;->d()V

    invoke-static {}, Lc9/a;->F()V

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;->b:Z

    if-nez v0, :cond_5

    invoke-static {p0}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;->B(Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;)Z

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "Material|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_0
    invoke-static {p0}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderTarget;->u(Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "RenderTarget|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_1
    invoke-static {p0}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentIndirectLight;->u(Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "IndirectLight|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_2
    invoke-static {p0}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentSkybox;->u(Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;)Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "Skybox|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_3
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_4

    iput-boolean v2, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;->b:Z

    invoke-static {p0}, Lcom/itsmagic/engine/Engines/Engine/GC/SGC;->destroyImmediate(Ljava/lang/Object;)V

    return-void

    :cond_4
    new-instance v0, Lcom/itsmagic/engine/Engines/Graphics/Filament/Utils/StillsInUseException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "by: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    sub-int/2addr v4, v2

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/itsmagic/engine/Engines/Graphics/Filament/Utils/StillsInUseException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public getHeight()I
    .locals 1

    iget v0, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;->height:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    iget v0, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;->width:I

    return v0
.end method

.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;->c:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;->c:Ljava/lang/Runnable;

    :cond_0
    return-void
.end method

.method public u(Ljava/nio/ByteBuffer;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "buf"
        }
    .end annotation

    invoke-static {}, Ljc/a;->d()V

    invoke-static {}, Lc9/a;->F()V

    new-instance v0, Lcom/google/android/filament/Texture$g;

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;->format:Lcom/google/android/filament/Texture$e;

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;->type:Lcom/google/android/filament/Texture$k;

    invoke-direct {v0, p1, v1, v2}, Lcom/google/android/filament/Texture$g;-><init>(Ljava/nio/Buffer;Lcom/google/android/filament/Texture$e;Lcom/google/android/filament/Texture$k;)V

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;->texture:Lcom/google/android/filament/Texture;

    invoke-static {}, Ljc/a;->f()Lcom/google/android/filament/Engine;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2, v0}, Lcom/google/android/filament/Texture;->H(Lcom/google/android/filament/Engine;ILcom/google/android/filament/Texture$g;)V

    iget-boolean p1, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;->autoGenMipmaps:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;->texture:Lcom/google/android/filament/Texture;

    invoke-static {}, Ljc/a;->f()Lcom/google/android/filament/Engine;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/filament/Texture;->p(Lcom/google/android/filament/Engine;)V

    :cond_0
    return-void
.end method

.method public v(Ljava/nio/ByteBuffer;Ljava/lang/Runnable;)V
    .locals 2
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

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;->c:Ljava/lang/Runnable;

    if-nez v0, :cond_1

    iput-object p2, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;->c:Ljava/lang/Runnable;

    new-instance p2, Lcom/google/android/filament/Texture$g;

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;->format:Lcom/google/android/filament/Texture$e;

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;->type:Lcom/google/android/filament/Texture$k;

    invoke-direct {p2, p1, v0, v1}, Lcom/google/android/filament/Texture$g;-><init>(Ljava/nio/Buffer;Lcom/google/android/filament/Texture$e;Lcom/google/android/filament/Texture$k;)V

    invoke-static {}, Ljc/d;->a()Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p2, p1, p0}, Lcom/google/android/filament/Texture$g;->b(Ljava/lang/Object;Ljava/lang/Runnable;)V

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;->texture:Lcom/google/android/filament/Texture;

    invoke-static {}, Ljc/a;->f()Lcom/google/android/filament/Engine;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, p2}, Lcom/google/android/filament/Texture;->H(Lcom/google/android/filament/Engine;ILcom/google/android/filament/Texture$g;)V

    iget-boolean p1, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;->autoGenMipmaps:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;->texture:Lcom/google/android/filament/Texture;

    invoke-static {}, Ljc/a;->f()Lcom/google/android/filament/Engine;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/android/filament/Texture;->p(Lcom/google/android/filament/Engine;)V

    :cond_0
    return-void

    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Double fill pixels call, await callback"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public w()V
    .locals 2

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;->texture:Lcom/google/android/filament/Texture;

    invoke-static {}, Ljc/a;->f()Lcom/google/android/filament/Engine;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/filament/Texture;->p(Lcom/google/android/filament/Engine;)V

    return-void
.end method

.method public x()Lcom/google/android/filament/Texture$e;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;->format:Lcom/google/android/filament/Texture$e;

    return-object v0
.end method

.method public y()J
    .locals 2

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;->texture:Lcom/google/android/filament/Texture;

    invoke-virtual {v0}, Lcom/google/android/filament/Texture;->getNativeObject()J

    move-result-wide v0

    return-wide v0
.end method

.method public z()Lcom/google/android/filament/TextureSampler;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;->sampler:Lcom/google/android/filament/TextureSampler;

    return-object v0
.end method
