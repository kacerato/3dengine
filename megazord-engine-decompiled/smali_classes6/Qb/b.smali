.class public LQb/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:I = 0x0

.field public static b:J = 0x0L

.field public static final c:J = 0x5a00000L

.field public static final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "LQb/c;",
            ">;"
        }
    .end annotation
.end field

.field public static final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "LQb/c;",
            ">;"
        }
    .end annotation
.end field

.field public static final f:Ljava/lang/Object;

.field public static g:LMb/p;

.field public static h:LMb/p;

.field public static i:LMb/p;

.field public static j:LNb/c;

.field public static k:LMb/p;

.field public static l:LMb/p;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, LQb/b;->d:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, LQb/b;->e:Ljava/util/List;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, LQb/b;->f:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()V
    .locals 8

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->u0(I)V

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->n0(Z)Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;

    sget-object v2, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$a;->Nearest:Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$a;

    invoke-virtual {v0, v2}, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->h0(Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$a;)Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->X(Z)Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;

    new-instance v3, LMb/n;

    invoke-direct {v3, v2, v2, v0}, LMb/n;-><init>(IILcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;)V

    move v4, v1

    :goto_0
    invoke-virtual {v3}, LMb/p;->getWidth()I

    move-result v5

    const/16 v6, 0xff

    if-ge v4, v5, :cond_1

    move v5, v1

    :goto_1
    invoke-virtual {v3}, LMb/p;->getHeight()I

    move-result v7

    if-ge v5, v7, :cond_0

    new-instance v7, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    invoke-direct {v7, v6, v6, v6}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;-><init>(III)V

    invoke-virtual {v3, v4, v5, v7}, LMb/n;->k0(IILcom/itsmagic/engine/Engines/Engine/Color/ColorINT;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v3}, LMb/n;->apply()V

    sput-object v3, LQb/b;->g:LMb/p;

    new-instance v3, LMb/n;

    invoke-direct {v3, v2, v2, v0}, LMb/n;-><init>(IILcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;)V

    move v4, v1

    :goto_2
    invoke-virtual {v3}, LMb/p;->getWidth()I

    move-result v5

    if-ge v4, v5, :cond_3

    move v5, v1

    :goto_3
    invoke-virtual {v3}, LMb/p;->getHeight()I

    move-result v7

    if-ge v5, v7, :cond_2

    new-instance v7, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    invoke-direct {v7, v1, v1, v1, v1}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;-><init>(IIII)V

    invoke-virtual {v3, v4, v5, v7}, LMb/n;->k0(IILcom/itsmagic/engine/Engines/Engine/Color/ColorINT;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_3
    invoke-virtual {v3}, LMb/n;->apply()V

    sput-object v3, LQb/b;->h:LMb/p;

    new-instance v3, LMb/n;

    invoke-direct {v3, v2, v2, v0}, LMb/n;-><init>(IILcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;)V

    move v4, v1

    :goto_4
    invoke-virtual {v3}, LMb/p;->getWidth()I

    move-result v5

    if-ge v4, v5, :cond_5

    move v5, v1

    :goto_5
    invoke-virtual {v3}, LMb/p;->getHeight()I

    move-result v7

    if-ge v5, v7, :cond_4

    new-instance v7, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    invoke-direct {v7, v1, v1, v1}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;-><init>(III)V

    invoke-virtual {v3, v4, v5, v7}, LMb/n;->k0(IILcom/itsmagic/engine/Engines/Engine/Color/ColorINT;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_5
    invoke-virtual {v3}, LMb/n;->apply()V

    sput-object v3, LQb/b;->i:LMb/p;

    new-instance v3, LNb/c;

    sget-object v4, LNb/d;->NATIVE:LNb/d;

    invoke-direct {v3, v2, v2, v2, v4}, LNb/c;-><init>(IIILNb/d;)V

    sput-object v3, LQb/b;->j:LNb/c;

    new-instance v3, LMb/n;

    invoke-direct {v3, v2, v2, v0}, LMb/n;-><init>(IILcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;)V

    move v4, v1

    :goto_6
    invoke-virtual {v3}, LMb/p;->getWidth()I

    move-result v5

    if-ge v4, v5, :cond_7

    move v5, v1

    :goto_7
    invoke-virtual {v3}, LMb/p;->getHeight()I

    move-result v7

    if-ge v5, v7, :cond_6

    new-instance v7, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    invoke-direct {v7, v6, v1, v6}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;-><init>(III)V

    invoke-virtual {v3, v4, v5, v7}, LMb/n;->k0(IILcom/itsmagic/engine/Engines/Engine/Color/ColorINT;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_7

    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    :cond_7
    invoke-virtual {v3}, LMb/n;->apply()V

    sput-object v3, LQb/b;->k:LMb/p;

    new-instance v3, LMb/n;

    invoke-direct {v3, v2, v2, v0}, LMb/n;-><init>(IILcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;)V

    move v0, v1

    :goto_8
    invoke-virtual {v3}, LMb/p;->getWidth()I

    move-result v2

    if-ge v0, v2, :cond_9

    move v2, v1

    :goto_9
    invoke-virtual {v3}, LMb/p;->getHeight()I

    move-result v4

    if-ge v2, v4, :cond_8

    new-instance v4, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    const/16 v5, 0x80

    invoke-direct {v4, v5, v5, v6}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;-><init>(III)V

    invoke-virtual {v3, v0, v2, v4}, LMb/n;->k0(IILcom/itsmagic/engine/Engines/Engine/Color/ColorINT;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    :cond_8
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_9
    invoke-virtual {v3}, LMb/n;->apply()V

    sput-object v3, LQb/b;->l:LMb/p;

    return-void
.end method

.method public static b(LMb/g;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "texture"
        }
    .end annotation

    if-eqz p0, :cond_0

    sget-object v0, LQb/b;->f:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, LQb/b;->d:Ljava/util/List;

    new-instance v2, LQb/c;

    invoke-static {}, Lcom/itsmagic/engine/Core/Components/ProjectController/a;->R()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, p0, v3}, LQb/c;-><init>(LMb/g;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_0
    :goto_0
    return-void
.end method

.method public static c(Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "file"
        }
    .end annotation

    invoke-static {p0}, Lmd/b;->o(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {p0}, LQb/b;->d(Ljava/lang/String;)LMb/g;

    move-result-object p0

    if-eqz p0, :cond_2

    sget-object v0, LQb/b;->f:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    :goto_0
    :try_start_0
    sget-object v2, LQb/b;->d:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LQb/c;

    if-eqz v3, :cond_0

    invoke-virtual {v3}, LQb/c;->a()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, v3, LQb/c;->b:Ljava/lang/String;

    invoke-static {}, Lcom/itsmagic/engine/Core/Components/ProjectController/a;->R()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, v3, LQb/c;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, LMb/g;

    if-ne v4, p0, :cond_0

    invoke-interface {v2, v3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    monitor-exit v0

    goto :goto_3

    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_2
    :goto_3
    return-void

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "File can\'t be empty or null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static d(Ljava/lang/String;)LMb/g;
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "file"
        }
    .end annotation

    invoke-static {p0}, Lmd/b;->o(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_7

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    sget-object v0, LQb/b;->f:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    :goto_0
    :try_start_0
    sget-object v2, LQb/b;->d:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_5

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LQb/c;

    if-eqz v3, :cond_4

    invoke-virtual {v3}, LQb/c;->a()Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, v3, LQb/c;->b:Ljava/lang/String;

    invoke-static {}, Lcom/itsmagic/engine/Core/Components/ProjectController/a;->R()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, v3, LQb/c;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, LMb/g;

    if-eqz v4, :cond_2

    invoke-virtual {v4}, LMb/g;->getFile()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-virtual {v4}, LMb/p;->T()Z

    move-result v5

    if-eqz v5, :cond_0

    sget-object v2, LQb/b;->e:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_0
    sget-object p0, LQb/b;->e:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-interface {v2, p0}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    invoke-interface {p0}, Ljava/util/List;->clear()V

    :cond_1
    monitor-exit v0

    return-object v4

    :cond_2
    sget-object v2, LQb/b;->e:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    sget-object v2, LQb/b;->e:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_5
    sget-object p0, LQb/b;->e:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_6

    invoke-interface {v2, p0}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    invoke-interface {p0}, Ljava/util/List;->clear()V

    :cond_6
    monitor-exit v0

    const/4 p0, 0x0

    return-object p0

    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_7
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "File can\'t be empty or null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static e(Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "file"
        }
    .end annotation

    const-string v0, "_PROJECT/Gallery/Textures/PBR/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/itsmagic/engine/Core/Components/ProjectController/a;->P()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_2

    const/16 v0, 0x1e

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lmd/b;->v(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    const-string v1, "Albedo.jpg"

    const-string v3, "color.jpg"

    const-string v4, "BaseColor.jpg"

    const-string v5, "Color.jpg"

    filled-new-array {v4, v5, v1, v3}, [Ljava/lang/String;

    move-result-object v1

    move v3, v2

    :goto_0
    const/4 v4, 0x4

    if-ge v3, v4, :cond_1

    aget-object v4, v1, v3

    invoke-virtual {v4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v2, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v2, v0}, Lg4/g;->F1(Ljava/lang/String;Z[Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public static f(Ljava/lang/String;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "file",
            "isGammaCorrectionEnabled"
        }
    .end annotation

    const-string v0, "_PROJECT/Gallery/Textures/PBR/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/itsmagic/engine/Core/Components/ProjectController/a;->P()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0x1e

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lmd/b;->v(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lg4/g;->F1(Ljava/lang/String;Z[Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static g(LUc/b;)LMb/g;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "file"
        }
    .end annotation

    invoke-virtual {p0}, LUc/b;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, LQb/b;->i(Ljava/lang/String;)LMb/g;

    move-result-object p0

    return-object p0
.end method

.method public static h(Ljava/io/File;)LMb/g;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "file"
        }
    .end annotation

    if-eqz p0, :cond_4

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, LQb/b;->d(Ljava/lang/String;)LMb/g;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, ".rte"

    invoke-static {p0, v0}, Lbd/l;->a(Ljava/io/File;Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    new-instance v0, LMb/e;

    invoke-direct {v0, p0, v2}, LMb/e;-><init>(Ljava/io/File;Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;)V

    sget-object v3, LQb/b;->f:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    sget-object p0, LQb/b;->d:Ljava/util/List;

    new-instance v2, LQb/c;

    invoke-static {}, Lcom/itsmagic/engine/Core/Components/ProjectController/a;->R()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v0, v4}, LQb/c;-><init>(LMb/g;Ljava/lang/String;)V

    invoke-interface {p0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0, v1}, LMb/p;->l0(Z)V

    return-object v0

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_1
    const-string v0, ".ivo"

    invoke-static {p0, v0}, Lbd/l;->a(Ljava/io/File;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, LMb/q;

    invoke-direct {v0, p0, v2}, LMb/q;-><init>(Ljava/io/File;Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;)V

    sget-object v3, LQb/b;->f:Ljava/lang/Object;

    monitor-enter v3

    :try_start_2
    sget-object p0, LQb/b;->d:Ljava/util/List;

    new-instance v2, LQb/c;

    invoke-static {}, Lcom/itsmagic/engine/Core/Components/ProjectController/a;->R()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v0, v4}, LQb/c;-><init>(LMb/g;Ljava/lang/String;)V

    invoke-interface {p0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-virtual {v0, v1}, LMb/p;->l0(Z)V

    return-object v0

    :catchall_1
    move-exception p0

    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p0

    :cond_2
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, LQb/b;->e(Ljava/lang/String;)V

    new-instance v0, LMb/g;

    invoke-direct {v0, p0, v2}, LMb/g;-><init>(Ljava/io/File;Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;)V

    sget-object p0, LQb/b;->f:Ljava/lang/Object;

    monitor-enter p0

    :try_start_4
    sget-object v2, LQb/b;->d:Ljava/util/List;

    new-instance v3, LQb/c;

    invoke-static {}, Lcom/itsmagic/engine/Core/Components/ProjectController/a;->R()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v0, v4}, LQb/c;-><init>(LMb/g;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    invoke-virtual {v0, v1}, LMb/p;->l0(Z)V

    return-object v0

    :catchall_2
    move-exception v0

    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v0

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "File not found"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "File can\'t be null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static i(Ljava/lang/String;)LMb/g;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "file"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, v0}, LQb/b;->j(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;)LMb/g;

    move-result-object p0

    return-object p0
.end method

.method public static j(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;)LMb/g;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "file",
            "config"
        }
    .end annotation

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, LQb/b;->k(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;Z)LMb/g;

    move-result-object p0

    return-object p0
.end method

.method public static k(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;Z)LMb/g;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "file",
            "config",
            "applyOGL"
        }
    .end annotation

    invoke-static {p0}, Lmd/b;->o(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {p0}, LQb/b;->d(Ljava/lang/String;)LMb/g;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, ".rte"

    invoke-static {p0, v0}, Lbd/l;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    new-instance v0, LMb/e;

    invoke-direct {v0, p0, p1, p2}, LMb/e;-><init>(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;Z)V

    sget-object v2, LQb/b;->f:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    sget-object p0, LQb/b;->d:Ljava/util/List;

    new-instance p1, LQb/c;

    invoke-static {}, Lcom/itsmagic/engine/Core/Components/ProjectController/a;->R()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, v0, p2}, LQb/c;-><init>(LMb/g;Ljava/lang/String;)V

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0, v1}, LMb/p;->l0(Z)V

    return-object v0

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_1
    const-string v0, ".ivo"

    invoke-static {p0, v0}, Lbd/l;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, LMb/q;

    invoke-direct {v0, p0, p1, p2}, LMb/q;-><init>(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;Z)V

    sget-object v2, LQb/b;->f:Ljava/lang/Object;

    monitor-enter v2

    :try_start_2
    sget-object p0, LQb/b;->d:Ljava/util/List;

    new-instance p1, LQb/c;

    invoke-static {}, Lcom/itsmagic/engine/Core/Components/ProjectController/a;->R()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, v0, p2}, LQb/c;-><init>(LMb/g;Ljava/lang/String;)V

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-virtual {v0, v1}, LMb/p;->l0(Z)V

    return-object v0

    :catchall_1
    move-exception p0

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p0

    :cond_2
    invoke-static {p0}, LQb/b;->e(Ljava/lang/String;)V

    new-instance v0, LMb/g;

    invoke-direct {v0, p0, p1, p2}, LMb/g;-><init>(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;Z)V

    sget-object p0, LQb/b;->f:Ljava/lang/Object;

    monitor-enter p0

    :try_start_4
    sget-object p1, LQb/b;->d:Ljava/util/List;

    new-instance p2, LQb/c;

    invoke-static {}, Lcom/itsmagic/engine/Core/Components/ProjectController/a;->R()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p2, v0, v2}, LQb/c;-><init>(LMb/g;Ljava/lang/String;)V

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    invoke-virtual {v0, v1}, LMb/p;->l0(Z)V

    return-object v0

    :catchall_2
    move-exception p1

    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw p1

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "File can\'t be empty or null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static l(Ljava/io/File;)LMb/g;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "file"
        }
    .end annotation

    if-eqz p0, :cond_4

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, LQb/b;->d(Ljava/lang/String;)LMb/g;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, ".rte"

    invoke-static {p0, v0}, Lbd/l;->a(Ljava/io/File;Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_1

    new-instance v0, LMb/e;

    invoke-direct {v0, p0, v2, v3, v3}, LMb/e;-><init>(Ljava/io/File;Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;ZZ)V

    sget-object v4, LQb/b;->f:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    sget-object p0, LQb/b;->d:Ljava/util/List;

    new-instance v2, LQb/c;

    invoke-static {}, Lcom/itsmagic/engine/Core/Components/ProjectController/a;->R()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v0, v3}, LQb/c;-><init>(LMb/g;Ljava/lang/String;)V

    invoke-interface {p0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0, v1}, LMb/p;->l0(Z)V

    return-object v0

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_1
    const-string v0, ".ivo"

    invoke-static {p0, v0}, Lbd/l;->a(Ljava/io/File;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, LMb/q;

    invoke-direct {v0, p0, v2, v3, v3}, LMb/q;-><init>(Ljava/io/File;Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;ZZ)V

    sget-object v4, LQb/b;->f:Ljava/lang/Object;

    monitor-enter v4

    :try_start_2
    sget-object p0, LQb/b;->d:Ljava/util/List;

    new-instance v2, LQb/c;

    invoke-static {}, Lcom/itsmagic/engine/Core/Components/ProjectController/a;->R()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v0, v3}, LQb/c;-><init>(LMb/g;Ljava/lang/String;)V

    invoke-interface {p0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-virtual {v0, v1}, LMb/p;->l0(Z)V

    return-object v0

    :catchall_1
    move-exception p0

    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p0

    :cond_2
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, LQb/b;->e(Ljava/lang/String;)V

    new-instance v0, LMb/g;

    invoke-direct {v0, p0, v2, v3, v3}, LMb/g;-><init>(Ljava/io/File;Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;ZZ)V

    sget-object p0, LQb/b;->f:Ljava/lang/Object;

    monitor-enter p0

    :try_start_4
    sget-object v2, LQb/b;->d:Ljava/util/List;

    new-instance v3, LQb/c;

    invoke-static {}, Lcom/itsmagic/engine/Core/Components/ProjectController/a;->R()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v0, v4}, LQb/c;-><init>(LMb/g;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    invoke-virtual {v0, v1}, LMb/p;->l0(Z)V

    return-object v0

    :catchall_2
    move-exception v0

    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v0

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "File not found"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "File can\'t be null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static m(Ljava/lang/String;)LMb/g;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "file"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, v0}, LQb/b;->n(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;)LMb/g;

    move-result-object p0

    return-object p0
.end method

.method public static n(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;)LMb/g;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "file",
            "config"
        }
    .end annotation

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, LQb/b;->o(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;Z)LMb/g;

    move-result-object p0

    return-object p0
.end method

.method public static o(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;Z)LMb/g;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "file",
            "config",
            "applyOGL"
        }
    .end annotation

    invoke-static {p0}, Lmd/b;->o(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {p0}, LQb/b;->d(Ljava/lang/String;)LMb/g;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, ".rte"

    invoke-static {p0, v0}, Lbd/l;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    new-instance v0, LMb/e;

    invoke-direct {v0, p0, p1, p2, v2}, LMb/e;-><init>(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;ZZ)V

    sget-object v3, LQb/b;->f:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    sget-object p0, LQb/b;->d:Ljava/util/List;

    new-instance p1, LQb/c;

    invoke-static {}, Lcom/itsmagic/engine/Core/Components/ProjectController/a;->R()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, v0, p2}, LQb/c;-><init>(LMb/g;Ljava/lang/String;)V

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0, v1}, LMb/p;->l0(Z)V

    return-object v0

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_1
    const-string v0, ".ivo"

    invoke-static {p0, v0}, Lbd/l;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, LMb/q;

    invoke-direct {v0, p0, p1, p2, v2}, LMb/q;-><init>(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;ZZ)V

    sget-object v3, LQb/b;->f:Ljava/lang/Object;

    monitor-enter v3

    :try_start_2
    sget-object p0, LQb/b;->d:Ljava/util/List;

    new-instance p1, LQb/c;

    invoke-static {}, Lcom/itsmagic/engine/Core/Components/ProjectController/a;->R()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, v0, p2}, LQb/c;-><init>(LMb/g;Ljava/lang/String;)V

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-virtual {v0, v1}, LMb/p;->l0(Z)V

    return-object v0

    :catchall_1
    move-exception p0

    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p0

    :cond_2
    invoke-static {p0}, LQb/b;->e(Ljava/lang/String;)V

    new-instance v0, LMb/g;

    invoke-direct {v0, p0, p1, p2, v2}, LMb/g;-><init>(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;ZZ)V

    sget-object p0, LQb/b;->f:Ljava/lang/Object;

    monitor-enter p0

    :try_start_4
    sget-object p1, LQb/b;->d:Ljava/util/List;

    new-instance p2, LQb/c;

    invoke-static {}, Lcom/itsmagic/engine/Core/Components/ProjectController/a;->R()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p2, v0, v2}, LQb/c;-><init>(LMb/g;Ljava/lang/String;)V

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    invoke-virtual {v0, v1}, LMb/p;->l0(Z)V

    return-object v0

    :catchall_2
    move-exception p1

    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw p1

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "File can\'t be empty or null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static p()V
    .locals 2

    sget-object v0, LQb/b;->f:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, LQb/b;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    sget-object v1, LQb/b;->e:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static q()V
    .locals 3

    const/16 v0, 0x1000

    sput v0, LQb/b;->a:I

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MAX_TEXTURE_SIZE "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, LQb/b;->a:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method

.method public static r()V
    .locals 5

    sget-object v0, LQb/b;->f:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    :goto_0
    :try_start_0
    sget-object v2, LQb/b;->d:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LQb/c;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, LQb/c;->a()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, v2, LQb/c;->b:Ljava/lang/String;

    invoke-static {}, Lcom/itsmagic/engine/Core/Components/ProjectController/a;->R()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, v2, LQb/c;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LMb/g;

    if-eqz v3, :cond_0

    invoke-virtual {v3}, LMb/g;->W()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v3}, LMb/g;->a0()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v3}, LMb/p;->R()Z

    move-result v3

    if-eqz v3, :cond_0

    sget-object v3, LQb/b;->e:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :catchall_0
    move-exception v1

    goto :goto_2

    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    sget-object v1, LQb/b;->e:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    invoke-interface {v1}, Ljava/util/List;->clear()V

    monitor-exit v0

    return-void

    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static s(LUc/b;)LMb/g;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "file"
        }
    .end annotation

    :try_start_0
    invoke-static {p0}, LQb/b;->g(LUc/b;)LMb/g;

    move-result-object p0
    :try_end_0
    .catch Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/Exceptions/TextureException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static t(Ljava/io/File;)LMb/g;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "file"
        }
    .end annotation

    :try_start_0
    invoke-static {p0}, LQb/b;->h(Ljava/io/File;)LMb/g;

    move-result-object p0
    :try_end_0
    .catch Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/Exceptions/TextureException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static u(Ljava/lang/String;)LMb/g;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "file"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    invoke-static {p0}, LQb/b;->i(Ljava/lang/String;)LMb/g;

    move-result-object p0
    :try_end_0
    .catch Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/Exceptions/TextureException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    :cond_1
    :goto_0
    return-object v0
.end method

.method public static v(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;)LMb/g;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "file",
            "config"
        }
    .end annotation

    :try_start_0
    invoke-static {p0, p1}, LQb/b;->j(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;)LMb/g;

    move-result-object p0
    :try_end_0
    .catch Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/Exceptions/TextureException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static w(Ljava/io/File;)LMb/g;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "file"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    invoke-static {p0}, LQb/b;->l(Ljava/io/File;)LMb/g;

    move-result-object p0
    :try_end_0
    .catch Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/Exceptions/TextureException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    :cond_1
    :goto_0
    return-object v0
.end method

.method public static x(Ljava/lang/String;)LMb/g;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "file"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    invoke-static {p0}, LQb/b;->m(Ljava/lang/String;)LMb/g;

    move-result-object p0
    :try_end_0
    .catch Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/Exceptions/TextureException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    :cond_1
    :goto_0
    return-object v0
.end method

.method public static y(Ljava/lang/String;)LMb/g;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "file"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :try_start_0
    invoke-static {p0, v0, v1}, LQb/b;->k(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;Z)LMb/g;

    move-result-object p0
    :try_end_0
    .catch Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/Exceptions/TextureException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    :cond_1
    :goto_0
    return-object v0
.end method
