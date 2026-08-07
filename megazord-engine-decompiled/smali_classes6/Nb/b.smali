.class public LNb/b;
.super LNb/a;
.source "SourceFile"


# instance fields
.field public final a:I

.field public final b:I

.field public final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "LTb/h;",
            ">;"
        }
    .end annotation
.end field

.field public final e:Ljava/nio/ByteBuffer;

.field public final f:Ljava/lang/Object;

.field public volatile g:I

.field public final h:Ljava/lang/Runnable;

.field public i:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;

.field public volatile j:I

.field public volatile k:I

.field public volatile l:I

.field public volatile m:I

.field public volatile n:Z

.field public volatile o:Z


# direct methods
.method public constructor <init>(II)V
    .locals 2
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

    invoke-direct {p0}, LNb/a;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, LNb/b;->c:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, LNb/b;->d:Ljava/util/List;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, LNb/b;->f:Ljava/lang/Object;

    const/4 v0, 0x1

    iput v0, p0, LNb/b;->g:I

    new-instance v0, LNb/b$a;

    invoke-direct {v0, p0}, LNb/b$a;-><init>(LNb/b;)V

    iput-object v0, p0, LNb/b;->h:Ljava/lang/Runnable;

    const/4 v0, -0x1

    iput v0, p0, LNb/b;->j:I

    const/4 v1, 0x0

    iput v1, p0, LNb/b;->k:I

    iput v0, p0, LNb/b;->l:I

    iput v1, p0, LNb/b;->m:I

    iput-boolean v1, p0, LNb/b;->n:Z

    iput-boolean v1, p0, LNb/b;->o:Z

    if-lez p1, :cond_0

    if-lez p2, :cond_0

    iput p1, p0, LNb/b;->a:I

    iput p2, p0, LNb/b;->b:I

    mul-int/2addr p1, p2

    mul-int/lit8 p1, p1, 0x4

    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, p0, LNb/b;->e:Ljava/nio/ByteBuffer;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Width and height must be greater than zero"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static synthetic c(LNb/b;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, LNb/b;->f:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic d(LNb/b;Z)Z
    .locals 0

    iput-boolean p1, p0, LNb/b;->o:Z

    return p1
.end method

.method public static synthetic e(LNb/b;)I
    .locals 0

    iget p0, p0, LNb/b;->l:I

    return p0
.end method

.method public static synthetic f(LNb/b;I)I
    .locals 0

    iput p1, p0, LNb/b;->l:I

    return p1
.end method

.method public static synthetic g(LNb/b;)I
    .locals 0

    iget p0, p0, LNb/b;->m:I

    return p0
.end method

.method public static synthetic h(LNb/b;I)I
    .locals 0

    iput p1, p0, LNb/b;->m:I

    return p1
.end method

.method public static synthetic i(LNb/b;)Z
    .locals 0

    invoke-virtual {p0}, LNb/b;->G()Z

    move-result p0

    return p0
.end method


# virtual methods
.method public A()V
    .locals 3

    iget-object v0, p0, LNb/b;->d:Ljava/util/List;

    monitor-enter v0

    const/4 v1, 0x0

    :goto_0
    :try_start_0
    iget-object v2, p0, LNb/b;->d:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, LNb/b;->d:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LTb/h;

    if-eqz v2, :cond_0

    invoke-interface {v2}, LTb/h;->b()V

    goto :goto_1

    :catchall_0
    move-exception v1

    goto :goto_2

    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    monitor-exit v0

    return-void

    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public B(LTb/h;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    if-eqz p1, :cond_0

    iget-object v0, p0, LNb/b;->d:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LNb/b;->d:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "listener can\'t be null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public C(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "i"
        }
    .end annotation

    invoke-virtual {p0}, LNb/b;->p()V

    iget-object v0, p0, LNb/b;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    invoke-virtual {p0}, LNb/b;->z()V

    return-void
.end method

.method public final D(Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$a;)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "filter"
        }
    .end annotation

    sget-object v0, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$a;->Nearest:Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$a;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public final E(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "path"
        }
    .end annotation

    new-instance v0, LTb/b$a;

    invoke-direct {v0}, LTb/b$a;-><init>()V

    :try_start_0
    invoke-static {}, Lf8/c;->t()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p1, v0}, LTb/b;->k(Landroid/content/Context;Ljava/lang/String;LTb/b$a;)Z
    :try_end_0
    .catch Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/Exceptions/TextureNeedsImport; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    invoke-static {}, Lf8/c;->t()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, LTb/b;->e(Landroid/content/Context;LTb/b$a;)V

    :goto_0
    invoke-static {}, Lf8/c;->t()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {p1, v1, v2}, LTb/b;->n(Ljava/lang/String;Landroid/content/Context;Z)Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;

    move-result-object p1

    if-nez p1, :cond_0

    new-instance p1, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;

    invoke-direct {p1}, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;-><init>()V

    :cond_0
    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->j()Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$a;

    move-result-object p1

    invoke-virtual {p0, p1}, LNb/b;->D(Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$a;)I

    move-result p1

    iput p1, p0, LNb/b;->g:I

    iget-boolean p1, v0, LTb/b$a;->b:Z

    if-eqz p1, :cond_1

    invoke-static {v0}, LTb/a;->a(LTb/b$a;)V

    :cond_1
    iget-object p1, v0, LTb/b$a;->a:Ljava/lang/String;

    return-object p1
.end method

.method public F(ILjava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "i",
            "ipp"
        }
    .end annotation

    invoke-virtual {p0}, LNb/b;->p()V

    :goto_0
    iget-object v0, p0, LNb/b;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gt v0, p1, :cond_0

    iget-object v0, p0, LNb/b;->c:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, LNb/b;->c:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, LNb/b;->z()V

    return-void
.end method

.method public final G()Z
    .locals 13

    iget-boolean v0, p0, LNb/b;->n:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, LNb/b;->i:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;

    if-nez v0, :cond_1

    invoke-virtual {p0}, LNb/b;->q()V

    return v1

    :cond_1
    :try_start_0
    iget-object v0, p0, LNb/b;->f:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-boolean v2, p0, LNb/b;->o:Z

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    monitor-exit v0

    return v3

    :catchall_0
    move-exception v2

    goto :goto_1

    :cond_2
    iget-object v2, p0, LNb/b;->c:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    iget v4, p0, LNb/b;->k:I

    if-lt v4, v2, :cond_3

    iput-boolean v1, p0, LNb/b;->n:Z

    move v2, v3

    goto :goto_0

    :cond_3
    iget v8, p0, LNb/b;->k:I

    invoke-virtual {p0, v8}, LNb/b;->y(I)Z

    move-result v2

    if-nez v2, :cond_4

    invoke-virtual {p0}, LNb/b;->r()V

    :cond_4
    iget-object v2, p0, LNb/b;->e:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iget-object v2, p0, LNb/b;->e:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/Buffer;->capacity()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    new-instance v12, Lcom/google/android/filament/Texture$g;

    iget-object v2, p0, LNb/b;->e:Ljava/nio/ByteBuffer;

    sget-object v4, Lcom/google/android/filament/Texture$e;->RGBA:Lcom/google/android/filament/Texture$e;

    sget-object v5, Lcom/google/android/filament/Texture$k;->UBYTE:Lcom/google/android/filament/Texture$k;

    invoke-direct {v12, v2, v4, v5}, Lcom/google/android/filament/Texture$g;-><init>(Ljava/nio/Buffer;Lcom/google/android/filament/Texture$e;Lcom/google/android/filament/Texture$k;)V

    invoke-static {}, Ljc/d;->a()Landroid/os/Handler;

    move-result-object v2

    iget-object v4, p0, LNb/b;->h:Ljava/lang/Runnable;

    invoke-virtual {v12, v2, v4}, Lcom/google/android/filament/Texture$g;->b(Ljava/lang/Object;Ljava/lang/Runnable;)V

    iput v8, p0, LNb/b;->l:I

    add-int/lit8 v2, v8, 0x1

    iput v2, p0, LNb/b;->k:I

    iput-boolean v3, p0, LNb/b;->o:Z

    iget-object v4, p0, LNb/b;->i:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;

    iget v9, p0, LNb/b;->a:I

    iget v10, p0, LNb/b;->b:I

    const/4 v11, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v4 .. v12}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;->D(IIIIIIILcom/google/android/filament/Texture$g;)V

    move v2, v1

    :goto_0
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_5

    invoke-virtual {p0}, LNb/b;->s()V

    return v1

    :cond_5
    return v3

    :goto_1
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v2
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_0

    :catch_0
    invoke-virtual {p0}, LNb/b;->q()V

    return v1
.end method

.method public H(I)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "i"
        }
    .end annotation

    iget-object v0, p0, LNb/b;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public I()I
    .locals 1

    iget-object v0, p0, LNb/b;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public a(Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;Ljava/lang/String;)V
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

    invoke-virtual {p0}, LNb/b;->w()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, LNb/b;->i:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;->z()Lcom/google/android/filament/TextureSampler;

    move-result-object v1

    invoke-virtual {p1, p2, v0, v1}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;->D(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;Lcom/google/android/filament/TextureSampler;)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Texture is not renderable"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public b()Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;
    .locals 1

    iget-object v0, p0, LNb/b;->i:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;

    return-object v0
.end method

.method public j(LTb/h;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    if-eqz p1, :cond_1

    iget-object v0, p0, LNb/b;->d:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LNb/b;->d:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, LNb/b;->d:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "listener can\'t be null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public k(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ipp"
        }
    .end annotation

    invoke-virtual {p0}, LNb/b;->p()V

    iget-object v0, p0, LNb/b;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, LNb/b;->z()V

    return-void
.end method

.method public l()V
    .locals 13

    invoke-static {}, Ljc/a;->d()V

    invoke-static {}, Lc9/a;->F()V

    iget-boolean v0, p0, LNb/b;->n:Z

    if-nez v0, :cond_3

    iget-object v0, p0, LNb/b;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-gtz v0, :cond_0

    invoke-virtual {p0}, LNb/b;->o()V

    iput v2, p0, LNb/b;->j:I

    iput v2, p0, LNb/b;->k:I

    iput v1, p0, LNb/b;->l:I

    iput v2, p0, LNb/b;->m:I

    iput-boolean v2, p0, LNb/b;->o:Z

    invoke-virtual {p0}, LNb/b;->A()V

    return-void

    :cond_0
    const/4 v3, 0x1

    iput-boolean v3, p0, LNb/b;->n:Z

    iput v2, p0, LNb/b;->k:I

    iput v1, p0, LNb/b;->l:I

    iput v2, p0, LNb/b;->m:I

    iput-boolean v2, p0, LNb/b;->o:Z

    :try_start_0
    iget-object v1, p0, LNb/b;->i:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;

    if-eqz v1, :cond_1

    iget v1, p0, LNb/b;->j:I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    if-eq v1, v0, :cond_2

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_2

    :cond_1
    :goto_0
    :try_start_1
    invoke-virtual {p0}, LNb/b;->o()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v1

    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_1
    new-instance v9, Lcom/google/android/filament/TextureSampler;

    sget-object v1, Lcom/google/android/filament/TextureSampler$f;->LINEAR:Lcom/google/android/filament/TextureSampler$f;

    sget-object v3, Lcom/google/android/filament/TextureSampler$e;->LINEAR:Lcom/google/android/filament/TextureSampler$e;

    sget-object v4, Lcom/google/android/filament/TextureSampler$g;->CLAMP_TO_EDGE:Lcom/google/android/filament/TextureSampler$g;

    invoke-direct {v9, v1, v3, v4}, Lcom/google/android/filament/TextureSampler;-><init>(Lcom/google/android/filament/TextureSampler$f;Lcom/google/android/filament/TextureSampler$e;Lcom/google/android/filament/TextureSampler$g;)V

    new-instance v1, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;

    iget v4, p0, LNb/b;->a:I

    iget v5, p0, LNb/b;->b:I

    sget-object v6, Lcom/google/android/filament/Texture$e;->RGBA:Lcom/google/android/filament/Texture$e;

    sget-object v7, Lcom/google/android/filament/Texture$k;->UBYTE:Lcom/google/android/filament/Texture$k;

    new-instance v3, Lcom/google/android/filament/Texture$b;

    invoke-direct {v3}, Lcom/google/android/filament/Texture$b;-><init>()V

    sget-object v8, Lcom/google/android/filament/Texture$f;->RGBA8:Lcom/google/android/filament/Texture$f;

    invoke-virtual {v3, v8}, Lcom/google/android/filament/Texture$b;->d(Lcom/google/android/filament/Texture$f;)Lcom/google/android/filament/Texture$b;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/google/android/filament/Texture$b;->b(I)Lcom/google/android/filament/Texture$b;

    move-result-object v8

    invoke-virtual {p0}, LNb/b;->m()Lcom/google/android/filament/Texture$i;

    move-result-object v12

    const/4 v10, 0x0

    const/16 v11, 0x18

    move-object v3, v1

    invoke-direct/range {v3 .. v12}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;-><init>(IILcom/google/android/filament/Texture$e;Lcom/google/android/filament/Texture$k;Lcom/google/android/filament/Texture$b;Lcom/google/android/filament/TextureSampler;IILcom/google/android/filament/Texture$i;)V

    iput-object v1, p0, LNb/b;->i:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;

    iput v0, p0, LNb/b;->j:I
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_2
    new-instance v0, LGb/b;

    new-instance v1, LNb/b$b;

    invoke-direct {v1, p0}, LNb/b$b;-><init>(LNb/b;)V

    invoke-direct {v0, v1, v2}, LGb/b;-><init>(LGb/b$a;I)V

    invoke-static {v0}, Lc9/a;->H(LGb/b;)V

    return-void

    :goto_2
    invoke-virtual {p0}, LNb/b;->q()V

    throw v0

    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ArrayTexture is already uploading"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final m()Lcom/google/android/filament/Texture$i;
    .locals 3

    :try_start_0
    const-string v0, "SAMPLER_2D_ARRAY"

    invoke-static {v0}, Lcom/google/android/filament/Texture$i;->valueOf(Ljava/lang/String;)Lcom/google/android/filament/Texture$i;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Filament does not support 2D array textures in this runtime"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public n()V
    .locals 2

    invoke-static {}, Ljc/a;->d()V

    invoke-static {}, Lc9/a;->F()V

    iget-boolean v0, p0, LNb/b;->n:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, LNb/b;->o()V

    const/4 v0, -0x1

    iput v0, p0, LNb/b;->j:I

    const/4 v1, 0x0

    iput v1, p0, LNb/b;->k:I

    iput v0, p0, LNb/b;->l:I

    iput v1, p0, LNb/b;->m:I

    iput-boolean v1, p0, LNb/b;->o:Z

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ArrayTexture is uploading"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final o()V
    .locals 1

    iget-object v0, p0, LNb/b;->i:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;->destroyImmediate()V

    const/4 v0, 0x0

    iput-object v0, p0, LNb/b;->i:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;

    :cond_0
    return-void
.end method

.method public final p()V
    .locals 2

    iget-boolean v0, p0, LNb/b;->n:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ArrayTexture is uploading"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final q()V
    .locals 2

    const/4 v0, 0x0

    iput v0, p0, LNb/b;->m:I

    iput v0, p0, LNb/b;->k:I

    const/4 v1, -0x1

    iput v1, p0, LNb/b;->l:I

    iput-boolean v0, p0, LNb/b;->o:Z

    iput-boolean v0, p0, LNb/b;->n:Z

    iput v1, p0, LNb/b;->j:I

    :try_start_0
    invoke-virtual {p0}, LNb/b;->o()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public final r()V
    .locals 2

    iget-object v0, p0, LNb/b;->e:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    :goto_0
    iget-object v0, p0, LNb/b;->e:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->hasRemaining()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, LNb/b;->e:Ljava/nio/ByteBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final s()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, LNb/b;->n:Z

    iput-boolean v0, p0, LNb/b;->o:Z

    iput v0, p0, LNb/b;->k:I

    const/4 v0, -0x1

    iput v0, p0, LNb/b;->l:I

    iget-object v0, p0, LNb/b;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, LNb/b;->m:I

    invoke-virtual {p0}, LNb/b;->A()V

    return-void
.end method

.method public t()I
    .locals 1

    iget v0, p0, LNb/b;->b:I

    return v0
.end method

.method public u()Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;
    .locals 1

    iget-object v0, p0, LNb/b;->i:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;

    return-object v0
.end method

.method public v()I
    .locals 1

    iget v0, p0, LNb/b;->a:I

    return v0
.end method

.method public w()Z
    .locals 2

    iget-object v0, p0, LNb/b;->i:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;->B()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, LNb/b;->n:Z

    if-nez v0, :cond_0

    iget-object v0, p0, LNb/b;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, LNb/b;->m:I

    iget-object v1, p0, LNb/b;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public x()Z
    .locals 1

    iget-boolean v0, p0, LNb/b;->n:Z

    return v0
.end method

.method public final y(I)Z
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "layer"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, LNb/b;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, LNb/b;->E(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget v0, p0, LNb/b;->g:I

    iget-object v1, p0, LNb/b;->e:Ljava/nio/ByteBuffer;

    iget v2, p0, LNb/b;->a:I

    iget v3, p0, LNb/b;->b:I

    invoke-static {p1, v1, v2, v3, v0}, Lcom/itsmagic/engine/Engines/Engine/Texture/Array/NativeArrayTextureRGBA8;->a(Ljava/lang/String;Ljava/nio/ByteBuffer;III)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 p1, 0x0

    return p1
.end method

.method public final z()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, LNb/b;->m:I

    return-void
.end method
