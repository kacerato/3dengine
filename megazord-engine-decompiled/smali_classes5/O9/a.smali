.class public LO9/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:LR9/f;

.field public b:LR9/f;

.field public final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "LP9/a;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "LP9/a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, LO9/a;->c:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, LO9/a;->d:Ljava/util/List;

    return-void
.end method

.method public static synthetic a(LO9/a;)LR9/f;
    .locals 0

    iget-object p0, p0, LO9/a;->a:LR9/f;

    return-object p0
.end method

.method public static synthetic b(LO9/a;LR9/f;)LR9/f;
    .locals 0

    iput-object p1, p0, LO9/a;->a:LR9/f;

    return-object p1
.end method

.method public static synthetic c(LO9/a;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, LO9/a;->c:Ljava/util/List;

    return-object p0
.end method

.method public static d()LO9/a;
    .locals 7

    new-instance v0, LO9/a;

    invoke-direct {v0}, LO9/a;-><init>()V

    new-instance v1, LR9/f;

    const/16 v2, 0x80

    invoke-direct {v1, v2}, LR9/f;-><init>(I)V

    iput-object v1, v0, LO9/a;->a:LR9/f;

    const/4 v1, 0x0

    move v3, v1

    :goto_0
    if-ge v3, v2, :cond_1

    move v4, v1

    :goto_1
    if-ge v4, v2, :cond_0

    iget-object v5, v0, LO9/a;->a:LR9/f;

    const v6, 0x3e19999a    # 0.15f

    invoke-virtual {v5, v3, v4, v6}, LR9/f;->i(IIF)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    new-instance v3, LP9/a;

    const-string v4, "GrassLayer"

    invoke-direct {v3, v4}, LP9/a;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, LP9/a;->h(I)Z

    move v4, v1

    :goto_2
    if-ge v4, v2, :cond_3

    move v5, v1

    :goto_3
    if-ge v5, v2, :cond_2

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-virtual {v3, v4, v5, v6}, LP9/a;->g(IIF)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_3
    iget-object v4, v0, LO9/a;->c:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, LP9/a;

    const-string v4, "RockLayer"

    invoke-direct {v3, v4}, LP9/a;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, LP9/a;->h(I)Z

    move v4, v1

    :goto_4
    if-ge v4, v2, :cond_5

    move v5, v1

    :goto_5
    if-ge v5, v2, :cond_4

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, LP9/a;->g(IIF)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_5
    iget-object v1, v0, LO9/a;->c:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public static e(Ljava/io/File;)LO9/a;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "file"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    new-instance v0, LO9/a;

    invoke-direct {v0}, LO9/a;-><init>()V

    new-instance v2, LKb/a;

    invoke-direct {v2}, LKb/a;-><init>()V

    invoke-static {v0}, LO9/a;->j(LO9/a;)LKb/a$b;

    move-result-object v3

    invoke-virtual {v2, p0, v3}, LKb/a;->a(Ljava/io/File;LKb/a$b;)Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-virtual {v2}, LKb/a;->d()Z

    return-object v0

    :cond_1
    return-object v1
.end method

.method public static f(Ljava/io/FileInputStream;)LO9/a;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "file"
        }
    .end annotation

    new-instance v0, LO9/a;

    invoke-direct {v0}, LO9/a;-><init>()V

    new-instance v1, LKb/a;

    invoke-direct {v1}, LKb/a;-><init>()V

    invoke-static {v0}, LO9/a;->j(LO9/a;)LKb/a$b;

    move-result-object v2

    invoke-virtual {v1, p0, v2}, LKb/a;->b(Ljava/io/FileInputStream;LKb/a$b;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {v1}, LKb/a;->d()Z

    return-object v0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static g(Ljava/io/InputStream;)LO9/a;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "file"
        }
    .end annotation

    new-instance v0, LO9/a;

    invoke-direct {v0}, LO9/a;-><init>()V

    new-instance v1, LKb/a;

    invoke-direct {v1}, LKb/a;-><init>()V

    invoke-static {v0}, LO9/a;->j(LO9/a;)LKb/a$b;

    move-result-object v2

    invoke-virtual {v1, p0, v2}, LKb/a;->c(Ljava/io/InputStream;LKb/a$b;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {v1}, LKb/a;->d()Z

    return-object v0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static j(LO9/a;)LKb/a$b;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
        }
    .end annotation

    new-instance v0, LO9/a$a;

    invoke-direct {v0, p0}, LO9/a$a;-><init>(LO9/a;)V

    return-object v0
.end method


# virtual methods
.method public h()LR9/f;
    .locals 1

    iget-object v0, p0, LO9/a;->a:LR9/f;

    return-object v0
.end method

.method public i()LR9/f;
    .locals 1

    iget-object v0, p0, LO9/a;->b:LR9/f;

    return-object v0
.end method

.method public k(I)LP9/a;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "i"
        }
    .end annotation

    iget-object v0, p0, LO9/a;->c:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LO9/a;->c:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LP9/a;

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public l(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Layer/TerrainLayer;)LP9/a;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "layer"
        }
    .end annotation

    iget-object v0, p0, LO9/a;->c:Ljava/util/List;

    monitor-enter v0

    const/4 v1, 0x0

    :goto_0
    :try_start_0
    iget-object v2, p0, LO9/a;->c:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, LO9/a;->c:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LP9/a;

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Layer/TerrainLayer;->h()LUc/b;

    move-result-object v3

    invoke-virtual {v2, v3}, LP9/a;->a(LUc/b;)Z

    move-result v3

    if-eqz v3, :cond_0

    monitor-exit v0

    return-object v2

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    monitor-exit v0

    const/4 p1, 0x0

    return-object p1

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public m(Ljava/io/File;)Z
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "file"
        }
    .end annotation

    new-instance v0, LKb/b;

    invoke-direct {v0}, LKb/b;-><init>()V

    invoke-virtual {v0, p1}, LKb/b;->d(Ljava/io/File;)Z

    move-result p1

    const/4 v1, 0x0

    if-eqz p1, :cond_3

    const-string p1, "ITsMagic terrain data file"

    invoke-virtual {v0, p1}, LKb/b;->c(Ljava/lang/String;)V

    const-string p1, "Version 1.0"

    invoke-virtual {v0, p1}, LKb/b;->c(Ljava/lang/String;)V

    iget-object p1, p0, LO9/a;->a:LR9/f;

    if-eqz p1, :cond_0

    const-string v2, "table"

    invoke-virtual {p1}, LR9/f;->c()Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    move-result-object p1

    invoke-virtual {v0, v2, p1}, LKb/b;->a(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;)V

    :cond_0
    :goto_0
    iget-object p1, p0, LO9/a;->c:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-ge v1, p1, :cond_2

    iget-object p1, p0, LO9/a;->c:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LP9/a;

    invoke-virtual {p1}, LP9/a;->c()Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    move-result-object v2

    if-eqz v2, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "layer:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, LP9/a;->d()LUc/b;

    move-result-object p1

    invoke-virtual {p1}, LUc/b;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1, v2}, LKb/b;->a(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, LKb/b;->f()Z

    const/4 p1, 0x1

    return p1

    :cond_3
    return v1
.end method

.method public n(I)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "resolution"
        }
    .end annotation

    iget-object v0, p0, LO9/a;->a:LR9/f;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, LR9/f;->g()I

    move-result v0

    if-eq v0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    iget-object v0, p0, LO9/a;->a:LR9/f;

    invoke-static {v0, p1}, LR9/f;->j(LR9/f;I)LR9/f;

    move-result-object p1

    iput-object p1, p0, LO9/a;->a:LR9/f;

    const/4 p1, 0x1

    return p1
.end method

.method public o(Ljava/util/List;I)Z
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "layers",
            "resolution"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Layer/TerrainLayer;",
            ">;I)Z"
        }
    .end annotation

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    if-ge v1, v3, :cond_2

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Layer/TerrainLayer;

    move v5, v0

    :goto_1
    iget-object v6, p0, LO9/a;->c:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_1

    iget-object v6, p0, LO9/a;->c:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, LP9/a;

    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Layer/TerrainLayer;->h()LUc/b;

    move-result-object v7

    invoke-virtual {v6, v7}, LP9/a;->a(LUc/b;)Z

    move-result v6

    if-eqz v6, :cond_0

    goto :goto_2

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_1
    new-instance v2, LP9/a;

    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Layer/TerrainLayer;->h()LUc/b;

    move-result-object v3

    invoke-direct {v2, v3}, LP9/a;-><init>(LUc/b;)V

    iget-object v3, p0, LO9/a;->c:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v2, v4

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    move v1, v0

    :goto_3
    iget-object v3, p0, LO9/a;->c:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_5

    iget-object v3, p0, LO9/a;->c:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LP9/a;

    move v5, v0

    :goto_4
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_4

    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Layer/TerrainLayer;

    invoke-virtual {v3}, LP9/a;->d()LUc/b;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Layer/TerrainLayer;->b(LUc/b;)Z

    move-result v6

    if-eqz v6, :cond_3

    goto :goto_5

    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    :cond_4
    iget-object v5, p0, LO9/a;->d:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_5
    move p1, v0

    :goto_6
    iget-object v1, p0, LO9/a;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_6

    iget-object v1, p0, LO9/a;->d:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LP9/a;

    invoke-virtual {v1}, LP9/a;->b()V

    add-int/lit8 p1, p1, 0x1

    move v2, v4

    goto :goto_6

    :cond_6
    iget-object p1, p0, LO9/a;->c:Ljava/util/List;

    iget-object v1, p0, LO9/a;->d:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    iget-object p1, p0, LO9/a;->d:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    :goto_7
    iget-object p1, p0, LO9/a;->c:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-ge v0, p1, :cond_8

    iget-object p1, p0, LO9/a;->c:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LP9/a;

    invoke-virtual {p1, p2}, LP9/a;->h(I)Z

    move-result p1

    if-eqz p1, :cond_7

    move v2, v4

    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_8
    return v2
.end method

.method public p(I)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "resolution"
        }
    .end annotation

    iget-object v0, p0, LO9/a;->b:LR9/f;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, LR9/f;->g()I

    move-result v0

    if-eq v0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    iget-object v0, p0, LO9/a;->b:LR9/f;

    invoke-static {v0, p1}, LR9/f;->j(LR9/f;I)LR9/f;

    move-result-object p1

    iput-object p1, p0, LO9/a;->b:LR9/f;

    const/4 p1, 0x1

    return p1
.end method
