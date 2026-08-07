.class public LLb/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final b:Ljava/lang/String; = "@@ASSET@@/Engine/Fonts/ComicRelief_Regular.ttf"

.field public static final c:Ljava/lang/Object;

.field public static final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "LLb/c;",
            ">;"
        }
    .end annotation
.end field

.field public static final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "LLb/a;",
            ">;"
        }
    .end annotation
.end field

.field public static final f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "LLb/a;",
            ">;"
        }
    .end annotation
.end field

.field public static final g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "LLb/c;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, LLb/b;->c:Ljava/lang/Object;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, LLb/b;->d:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, LLb/b;->e:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, LLb/b;->f:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, LLb/b;->g:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static d()V
    .locals 2

    sget-object v0, LLb/b;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, LLb/b;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    sget-object v1, LLb/b;->e:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    sget-object v1, LLb/b;->g:Ljava/util/List;

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


# virtual methods
.method public a(I)LLb/a;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "resolution"
        }
    .end annotation

    const-string v0, "@@ASSET@@/Engine/Fonts/ComicRelief_Regular.ttf"

    invoke-virtual {p0, v0, p1}, LLb/b;->c(Ljava/lang/String;I)LLb/a;

    move-result-object p1

    return-object p1
.end method

.method public b(Ljava/io/File;I)LLb/a;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "file",
            "resolution"
        }
    .end annotation

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, LLb/b;->c:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    :try_start_0
    sget-object v3, LLb/b;->d:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_1

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LLb/c;

    if-eqz v3, :cond_0

    invoke-virtual {v3}, LLb/c;->c()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v3}, LLb/c;->a()LLb/a;

    move-result-object v3

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, p2}, LLb/a;->a(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_0

    monitor-exit v0

    return-object v3

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    sget-object v2, LLb/b;->e:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_3

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LLb/a;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, p2}, LLb/a;->a(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_2

    monitor-exit v0

    return-object v2

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    new-instance v1, LLb/a;

    invoke-direct {v1, p1, p2}, LLb/a;-><init>(Ljava/io/File;I)V

    const/4 p1, 0x1

    invoke-virtual {v1, p1}, LLb/a;->h(Z)V

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    monitor-exit v0

    return-object v1

    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_4
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "File not found!"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "File cant be null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public c(Ljava/lang/String;I)LLb/a;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "file",
            "resolution"
        }
    .end annotation

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_3

    :cond_0
    sget-object v0, LLb/b;->c:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    :try_start_0
    sget-object v3, LLb/b;->d:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_2

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LLb/c;

    if-eqz v3, :cond_1

    invoke-virtual {v3}, LLb/c;->c()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v3}, LLb/c;->a()LLb/a;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, LLb/a;->a(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_1

    monitor-exit v0

    return-object v3

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    sget-object v2, LLb/b;->e:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_4

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LLb/a;

    invoke-virtual {v2, p1, p2}, LLb/a;->a(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_3

    monitor-exit v0

    return-object v2

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    new-instance v1, LLb/a;

    invoke-direct {v1, p1, p2}, LLb/a;-><init>(Ljava/lang/String;I)V

    const/4 p1, 0x1

    invoke-virtual {v1, p1}, LLb/a;->h(Z)V

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    monitor-exit v0

    return-object v1

    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_5
    :goto_3
    const/4 p1, 0x0

    return-object p1
.end method

.method public e()V
    .locals 9

    sget-object v0, LLb/b;->c:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    :try_start_0
    sget-object v3, LLb/b;->e:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    const-wide/16 v5, 0x0

    if-ge v2, v4, :cond_1

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LLb/a;

    invoke-virtual {v3}, LLb/a;->j()V

    invoke-virtual {v3}, LLb/a;->d()J

    move-result-wide v7

    cmp-long v4, v7, v5

    if-eqz v4, :cond_0

    sget-object v4, LLb/b;->d:Ljava/util/List;

    new-instance v5, LLb/c;

    invoke-direct {v5, v3}, LLb/c;-><init>(LLb/a;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v4, LLb/b;->f:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :catchall_0
    move-exception v1

    goto :goto_4

    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    sget-object v2, LLb/b;->f:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    invoke-interface {v2}, Ljava/util/List;->clear()V

    :goto_2
    sget-object v2, LLb/b;->d:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_4

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LLb/c;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, LLb/c;->b()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v2}, LLb/c;->a()LLb/a;

    move-result-object v2

    invoke-virtual {v2}, LLb/a;->j()V

    goto :goto_3

    :cond_2
    sget-object v3, LLb/b;->g:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-wide v3, v2, LLb/c;->b:J

    cmp-long v7, v3, v5

    if-eqz v7, :cond_3

    invoke-static {v3, v4}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/ImGui;->e(J)V

    iput-wide v5, v2, LLb/c;->b:J

    :cond_3
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_4
    sget-object v1, LLb/b;->g:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_5

    invoke-interface {v2, v1}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    invoke-interface {v1}, Ljava/util/List;->clear()V

    :cond_5
    monitor-exit v0

    return-void

    :goto_4
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
