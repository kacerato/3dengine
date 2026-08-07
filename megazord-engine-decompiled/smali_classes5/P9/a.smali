.class public LP9/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LP9/a$a;
    }
.end annotation


# instance fields
.field public a:LUc/b;

.field public b:LR9/f;

.field public final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "LP9/a$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(LUc/b;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "guid"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, LP9/a;->c:Ljava/util/List;

    .line 3
    invoke-virtual {p1}, LUc/b;->c0()LUc/b;

    move-result-object p1

    iput-object p1, p0, LP9/a;->a:LUc/b;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "guid"
        }
    .end annotation

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, LP9/a;->c:Ljava/util/List;

    .line 6
    new-instance v0, LUc/b;

    invoke-direct {v0, p1}, LUc/b;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, LP9/a;->a:LUc/b;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;LR9/f;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "guid",
            "map"
        }
    .end annotation

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, LP9/a;->c:Ljava/util/List;

    .line 9
    new-instance v0, LUc/b;

    invoke-direct {v0, p1}, LUc/b;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, LP9/a;->a:LUc/b;

    .line 10
    iput-object p2, p0, LP9/a;->b:LR9/f;

    return-void
.end method


# virtual methods
.method public a(LUc/b;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "guid"
        }
    .end annotation

    iget-object v0, p0, LP9/a;->a:LUc/b;

    invoke-virtual {v0, p1}, LUc/b;->q0(LUc/b;)Z

    move-result p1

    return p1
.end method

.method public b()V
    .locals 1

    iget-object v0, p0, LP9/a;->b:LR9/f;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, LR9/f;->a()V

    :cond_0
    return-void
.end method

.method public c()Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;
    .locals 1

    iget-object v0, p0, LP9/a;->b:LR9/f;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, LR9/f;->c()Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public d()LUc/b;
    .locals 1

    iget-object v0, p0, LP9/a;->a:LUc/b;

    return-object v0
.end method

.method public e(II)F
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

    iget-object v0, p0, LP9/a;->b:LR9/f;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, LR9/f;->g()I

    move-result v0

    if-le v0, p1, :cond_0

    iget-object v0, p0, LP9/a;->b:LR9/f;

    invoke-virtual {v0}, LR9/f;->g()I

    move-result v0

    if-le v0, p2, :cond_0

    iget-object v0, p0, LP9/a;->b:LR9/f;

    invoke-virtual {v0, p1, p2}, LR9/f;->f(II)F

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public f()Z
    .locals 1

    iget-object v0, p0, LP9/a;->b:LR9/f;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public g(IIF)V
    .locals 3
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

    iget-object v0, p0, LP9/a;->b:LR9/f;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2, p3}, LR9/f;->i(IIF)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, LP9/a;->c:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LP9/a;->c:Ljava/util/List;

    new-instance v2, LP9/a$a;

    invoke-direct {v2, p1, p2, p3}, LP9/a$a;-><init>(IIF)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    monitor-exit v0

    :goto_0
    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public h(I)Z
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "resolution"
        }
    .end annotation

    iget-object v0, p0, LP9/a;->b:LR9/f;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, LR9/f;->g()I

    move-result v0

    if-eq v0, p1, :cond_0

    goto :goto_0

    :cond_0
    move p1, v2

    goto :goto_1

    :cond_1
    :goto_0
    iget-object v0, p0, LP9/a;->b:LR9/f;

    invoke-static {v0, p1}, LR9/f;->j(LR9/f;I)LR9/f;

    move-result-object p1

    iput-object p1, p0, LP9/a;->b:LR9/f;

    move p1, v1

    :goto_1
    iget-object v0, p0, LP9/a;->c:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    iget-object v3, p0, LP9/a;->c:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_4

    iget-object v3, p0, LP9/a;->b:LR9/f;

    if-eqz v3, :cond_4

    :goto_2
    iget-object p1, p0, LP9/a;->c:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-ge v2, p1, :cond_3

    iget-object p1, p0, LP9/a;->c:Ljava/util/List;

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LP9/a$a;

    iget-object v3, p0, LP9/a;->b:LR9/f;

    invoke-virtual {v3}, LR9/f;->g()I

    move-result v3

    iget v4, p1, LP9/a$a;->a:I

    if-le v3, v4, :cond_2

    iget-object v3, p0, LP9/a;->b:LR9/f;

    invoke-virtual {v3}, LR9/f;->g()I

    move-result v3

    iget v4, p1, LP9/a$a;->b:I

    if-le v3, v4, :cond_2

    iget-object v3, p0, LP9/a;->b:LR9/f;

    iget v5, p1, LP9/a$a;->a:I

    iget p1, p1, LP9/a$a;->c:F

    invoke-virtual {v3, v5, v4, p1}, LR9/f;->h(IIF)V

    goto :goto_3

    :catchall_0
    move-exception p1

    goto :goto_5

    :cond_2
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_3
    iget-object p1, p0, LP9/a;->c:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    goto :goto_4

    :cond_4
    move v1, p1

    :goto_4
    monitor-exit v0

    return v1

    :goto_5
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
