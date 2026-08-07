.class public Lorg/ITsMagic/ModelImporter/NativeModelImporter$p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/ITsMagic/ModelImporter/NativeModelImporter;->onFinish()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/function/Consumer<",
        "Ljava/io/File;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Ljava/io/File;

.field public final synthetic c:Lnh/b;

.field public final synthetic d:Landroid/content/Context;

.field public final synthetic e:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final synthetic f:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final synthetic g:Lnh/a;

.field public final synthetic h:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final synthetic i:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method public constructor <init>(Ljava/io/File;Lnh/b;Landroid/content/Context;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/atomic/AtomicInteger;Lnh/a;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/atomic/AtomicInteger;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "val$meta",
            "val$queue",
            "val$context",
            "val$executed",
            "val$totalExecuted",
            "val$listener",
            "val$total",
            "val$importTotal"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lorg/ITsMagic/ModelImporter/NativeModelImporter$p;->b:Ljava/io/File;

    iput-object p2, p0, Lorg/ITsMagic/ModelImporter/NativeModelImporter$p;->c:Lnh/b;

    iput-object p3, p0, Lorg/ITsMagic/ModelImporter/NativeModelImporter$p;->d:Landroid/content/Context;

    iput-object p4, p0, Lorg/ITsMagic/ModelImporter/NativeModelImporter$p;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    iput-object p5, p0, Lorg/ITsMagic/ModelImporter/NativeModelImporter$p;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    iput-object p6, p0, Lorg/ITsMagic/ModelImporter/NativeModelImporter$p;->g:Lnh/a;

    iput-object p7, p0, Lorg/ITsMagic/ModelImporter/NativeModelImporter$p;->h:Ljava/util/concurrent/atomic/AtomicInteger;

    iput-object p8, p0, Lorg/ITsMagic/ModelImporter/NativeModelImporter$p;->i:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/io/File;)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listFile"
        }
    .end annotation

    const-string v0, "/"

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    const-string v2, ".png|.jpg|.jpeg|.bmp|.webp|.heif|.ppm|.tif|.tga|.ivo|.nse|.rte|.nm"

    invoke-static {v1, v2}, Lbd/l;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".config"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Lorg/ITsMagic/ModelImporter/NativeModelImporter$p;->b:Ljava/io/File;

    invoke-direct {v3, v4, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "roughness"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v4, 0x0

    if-nez v2, :cond_1

    const-string v2, "normal"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "specular"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "metallic"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "metalness"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "reflectivity"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "glossy"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "ao"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "alpha"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    :goto_0
    move v1, v4

    :goto_1
    new-instance v2, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;

    invoke-direct {v2}, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;-><init>()V

    iget-object v5, p0, Lorg/ITsMagic/ModelImporter/NativeModelImporter$p;->c:Lnh/b;

    iget-object v5, v5, Lnh/b;->c:Lcom/itsmagic/engine/Activities/Editor/Panels/Files/Utils/ImportFilePopup$ImportOptions;

    iget v6, v5, Lcom/itsmagic/engine/Activities/Editor/Panels/Files/Utils/ImportFilePopup$ImportOptions;->maxResolutionID:I

    iput v6, v2, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->maxResolutionID:I

    iput-boolean v1, v2, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->gammaCorrection:Z

    iget-object v1, v5, Lcom/itsmagic/engine/Activities/Editor/Panels/Files/Utils/ImportFilePopup$ImportOptions;->filter:Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$a;

    invoke-virtual {v2, v1}, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->h0(Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$a;)Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;

    iget-object v1, p0, Lorg/ITsMagic/ModelImporter/NativeModelImporter$p;->c:Lnh/b;

    iget-object v1, v1, Lnh/b;->c:Lcom/itsmagic/engine/Activities/Editor/Panels/Files/Utils/ImportFilePopup$ImportOptions;

    iget-boolean v5, v1, Lcom/itsmagic/engine/Activities/Editor/Panels/Files/Utils/ImportFilePopup$ImportOptions;->generateNormalMaps:Z

    iput-boolean v5, v2, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->autoGenNormalMap:Z

    iget v1, v1, Lcom/itsmagic/engine/Activities/Editor/Panels/Files/Utils/ImportFilePopup$ImportOptions;->normalMapBias:I

    iput v1, v2, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->autoGenNormalMapBias:I

    invoke-static {}, Lp8/a;->m()Lcom/google/gson/Gson;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v3}, Lbd/o;->e(Ljava/lang/String;Ljava/io/File;)V

    invoke-static {p1}, Lcom/itsmagic/engine/Core/Components/ProjectController/a;->N(Ljava/io/File;)Ljava/lang/String;

    move-result-object p1

    new-instance v1, LTb/b$a;

    invoke-direct {v1}, LTb/b$a;-><init>()V

    :try_start_0
    iget-object v3, p0, Lorg/ITsMagic/ModelImporter/NativeModelImporter$p;->d:Landroid/content/Context;

    invoke-static {v3, p1, v1}, LTb/b;->k(Landroid/content/Context;Ljava/lang/String;LTb/b$a;)Z
    :try_end_0
    .catch Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/Exceptions/TextureNeedsImport; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    const-string v3, ".ivo"

    invoke-static {p1, v3}, Lbd/l;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, p0, Lorg/ITsMagic/ModelImporter/NativeModelImporter$p;->d:Landroid/content/Context;

    invoke-static {v3, v1}, LTb/b;->f(Landroid/content/Context;LTb/b$a;)Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v3

    if-nez v3, :cond_3

    iget-boolean v3, v2, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->autoGenNormalMap:Z

    if-eqz v3, :cond_2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Lmd/b;->O(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".nm"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v3, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lf8/c;->t()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/itsmagic/engine/Core/Components/ProjectController/a;->Q(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p1

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v3}, Lorg/ITsMagic/ModelImporter/NativeModelImporter;->access$100(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    invoke-static {p1}, Lorg/ITsMagic/ModelImporter/NativeModelImporter;->access$200(Ljava/io/File;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->b()I

    move-result v2

    int-to-float v2, v2

    invoke-static {v1, p1, v2}, Lsb/c;->l(Landroid/graphics/Bitmap;Ljava/lang/String;F)Z

    :cond_2
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    invoke-static {}, Ljava/lang/System;->gc()V

    :cond_3
    :goto_2
    iget-object p1, p0, Lorg/ITsMagic/ModelImporter/NativeModelImporter$p;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    iget-object p1, p0, Lorg/ITsMagic/ModelImporter/NativeModelImporter$p;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    iget-object p1, p0, Lorg/ITsMagic/ModelImporter/NativeModelImporter$p;->g:Lnh/a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Textures:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/ITsMagic/ModelImporter/NativeModelImporter$p;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lorg/ITsMagic/ModelImporter/NativeModelImporter$p;->h:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/ITsMagic/ModelImporter/NativeModelImporter$p;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    iget-object v2, p0, Lorg/ITsMagic/ModelImporter/NativeModelImporter$p;->i:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    invoke-interface {p1, v4, v0, v1, v2}, Lnh/a;->c(ILjava/lang/String;II)V

    :cond_4
    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "listFile"
        }
    .end annotation

    check-cast p1, Ljava/io/File;

    invoke-virtual {p0, p1}, Lorg/ITsMagic/ModelImporter/NativeModelImporter$p;->a(Ljava/io/File;)V

    return-void
.end method
