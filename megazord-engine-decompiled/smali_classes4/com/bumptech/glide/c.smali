.class public final Lcom/bumptech/glide/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/bumptech/glide/l<",
            "**>;>;"
        }
    .end annotation
.end field

.field public b:Lcom/bumptech/glide/load/engine/j;

.field public c:LE/e;

.field public d:LE/b;

.field public e:LF/j;

.field public f:LG/a;

.field public g:LG/a;

.field public h:LF/a$a;

.field public i:LF/l;

.field public j:LQ/d;

.field public k:I

.field public l:Lcom/bumptech/glide/b$a;

.field public m:LQ/l$b;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public n:LG/a;

.field public o:Z

.field public p:Ljava/util/List;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "LT/g<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field public q:Z

.field public r:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroidx/collection/ArrayMap;

    invoke-direct {v0}, Landroidx/collection/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/c;->a:Ljava/util/Map;

    const/4 v0, 0x4

    iput v0, p0, Lcom/bumptech/glide/c;->k:I

    new-instance v0, Lcom/bumptech/glide/c$a;

    invoke-direct {v0, p0}, Lcom/bumptech/glide/c$a;-><init>(Lcom/bumptech/glide/c;)V

    iput-object v0, p0, Lcom/bumptech/glide/c;->l:Lcom/bumptech/glide/b$a;

    return-void
.end method


# virtual methods
.method public a(LT/g;)Lcom/bumptech/glide/c;
    .locals 1
    .param p1    # LT/g;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LT/g<",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/bumptech/glide/c;"
        }
    .end annotation

    iget-object v0, p0, Lcom/bumptech/glide/c;->p:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/c;->p:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lcom/bumptech/glide/c;->p:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public b(Landroid/content/Context;)Lcom/bumptech/glide/b;
    .locals 16
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    iget-object v1, v0, Lcom/bumptech/glide/c;->f:LG/a;

    if-nez v1, :cond_0

    invoke-static {}, LG/a;->n()LG/a;

    move-result-object v1

    iput-object v1, v0, Lcom/bumptech/glide/c;->f:LG/a;

    :cond_0
    iget-object v1, v0, Lcom/bumptech/glide/c;->g:LG/a;

    if-nez v1, :cond_1

    invoke-static {}, LG/a;->h()LG/a;

    move-result-object v1

    iput-object v1, v0, Lcom/bumptech/glide/c;->g:LG/a;

    :cond_1
    iget-object v1, v0, Lcom/bumptech/glide/c;->n:LG/a;

    if-nez v1, :cond_2

    invoke-static {}, LG/a;->e()LG/a;

    move-result-object v1

    iput-object v1, v0, Lcom/bumptech/glide/c;->n:LG/a;

    :cond_2
    iget-object v1, v0, Lcom/bumptech/glide/c;->i:LF/l;

    if-nez v1, :cond_3

    new-instance v1, LF/l$a;

    invoke-direct {v1, v2}, LF/l$a;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, LF/l$a;->a()LF/l;

    move-result-object v1

    iput-object v1, v0, Lcom/bumptech/glide/c;->i:LF/l;

    :cond_3
    iget-object v1, v0, Lcom/bumptech/glide/c;->j:LQ/d;

    if-nez v1, :cond_4

    new-instance v1, LQ/f;

    invoke-direct {v1}, LQ/f;-><init>()V

    iput-object v1, v0, Lcom/bumptech/glide/c;->j:LQ/d;

    :cond_4
    iget-object v1, v0, Lcom/bumptech/glide/c;->c:LE/e;

    if-nez v1, :cond_6

    iget-object v1, v0, Lcom/bumptech/glide/c;->i:LF/l;

    invoke-virtual {v1}, LF/l;->b()I

    move-result v1

    if-lez v1, :cond_5

    new-instance v3, LE/k;

    int-to-long v4, v1

    invoke-direct {v3, v4, v5}, LE/k;-><init>(J)V

    iput-object v3, v0, Lcom/bumptech/glide/c;->c:LE/e;

    goto :goto_0

    :cond_5
    new-instance v1, LE/f;

    invoke-direct {v1}, LE/f;-><init>()V

    iput-object v1, v0, Lcom/bumptech/glide/c;->c:LE/e;

    :cond_6
    :goto_0
    iget-object v1, v0, Lcom/bumptech/glide/c;->d:LE/b;

    if-nez v1, :cond_7

    new-instance v1, LE/j;

    iget-object v3, v0, Lcom/bumptech/glide/c;->i:LF/l;

    invoke-virtual {v3}, LF/l;->a()I

    move-result v3

    invoke-direct {v1, v3}, LE/j;-><init>(I)V

    iput-object v1, v0, Lcom/bumptech/glide/c;->d:LE/b;

    :cond_7
    iget-object v1, v0, Lcom/bumptech/glide/c;->e:LF/j;

    if-nez v1, :cond_8

    new-instance v1, LF/i;

    iget-object v3, v0, Lcom/bumptech/glide/c;->i:LF/l;

    invoke-virtual {v3}, LF/l;->d()I

    move-result v3

    int-to-long v3, v3

    invoke-direct {v1, v3, v4}, LF/i;-><init>(J)V

    iput-object v1, v0, Lcom/bumptech/glide/c;->e:LF/j;

    :cond_8
    iget-object v1, v0, Lcom/bumptech/glide/c;->h:LF/a$a;

    if-nez v1, :cond_9

    new-instance v1, LF/h;

    invoke-direct {v1, v2}, LF/h;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lcom/bumptech/glide/c;->h:LF/a$a;

    :cond_9
    iget-object v1, v0, Lcom/bumptech/glide/c;->b:Lcom/bumptech/glide/load/engine/j;

    if-nez v1, :cond_a

    new-instance v1, Lcom/bumptech/glide/load/engine/j;

    iget-object v4, v0, Lcom/bumptech/glide/c;->e:LF/j;

    iget-object v5, v0, Lcom/bumptech/glide/c;->h:LF/a$a;

    iget-object v6, v0, Lcom/bumptech/glide/c;->g:LG/a;

    iget-object v7, v0, Lcom/bumptech/glide/c;->f:LG/a;

    invoke-static {}, LG/a;->q()LG/a;

    move-result-object v8

    iget-object v9, v0, Lcom/bumptech/glide/c;->n:LG/a;

    iget-boolean v10, v0, Lcom/bumptech/glide/c;->o:Z

    move-object v3, v1

    invoke-direct/range {v3 .. v10}, Lcom/bumptech/glide/load/engine/j;-><init>(LF/j;LF/a$a;LG/a;LG/a;LG/a;LG/a;Z)V

    iput-object v1, v0, Lcom/bumptech/glide/c;->b:Lcom/bumptech/glide/load/engine/j;

    :cond_a
    iget-object v1, v0, Lcom/bumptech/glide/c;->p:Ljava/util/List;

    if-nez v1, :cond_b

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/bumptech/glide/c;->p:Ljava/util/List;

    goto :goto_1

    :cond_b
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/bumptech/glide/c;->p:Ljava/util/List;

    :goto_1
    new-instance v7, LQ/l;

    iget-object v1, v0, Lcom/bumptech/glide/c;->m:LQ/l$b;

    invoke-direct {v7, v1}, LQ/l;-><init>(LQ/l$b;)V

    new-instance v15, Lcom/bumptech/glide/b;

    iget-object v3, v0, Lcom/bumptech/glide/c;->b:Lcom/bumptech/glide/load/engine/j;

    iget-object v4, v0, Lcom/bumptech/glide/c;->e:LF/j;

    iget-object v5, v0, Lcom/bumptech/glide/c;->c:LE/e;

    iget-object v6, v0, Lcom/bumptech/glide/c;->d:LE/b;

    iget-object v8, v0, Lcom/bumptech/glide/c;->j:LQ/d;

    iget v9, v0, Lcom/bumptech/glide/c;->k:I

    iget-object v10, v0, Lcom/bumptech/glide/c;->l:Lcom/bumptech/glide/b$a;

    iget-object v11, v0, Lcom/bumptech/glide/c;->a:Ljava/util/Map;

    iget-object v12, v0, Lcom/bumptech/glide/c;->p:Ljava/util/List;

    iget-boolean v13, v0, Lcom/bumptech/glide/c;->q:Z

    iget-boolean v14, v0, Lcom/bumptech/glide/c;->r:Z

    move-object v1, v15

    move-object/from16 v2, p1

    invoke-direct/range {v1 .. v14}, Lcom/bumptech/glide/b;-><init>(Landroid/content/Context;Lcom/bumptech/glide/load/engine/j;LF/j;LE/e;LE/b;LQ/l;LQ/d;ILcom/bumptech/glide/b$a;Ljava/util/Map;Ljava/util/List;ZZ)V

    return-object v15
.end method

.method public c(LG/a;)Lcom/bumptech/glide/c;
    .locals 0
    .param p1    # LG/a;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iput-object p1, p0, Lcom/bumptech/glide/c;->n:LG/a;

    return-object p0
.end method

.method public d(LE/b;)Lcom/bumptech/glide/c;
    .locals 0
    .param p1    # LE/b;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iput-object p1, p0, Lcom/bumptech/glide/c;->d:LE/b;

    return-object p0
.end method

.method public e(LE/e;)Lcom/bumptech/glide/c;
    .locals 0
    .param p1    # LE/e;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iput-object p1, p0, Lcom/bumptech/glide/c;->c:LE/e;

    return-object p0
.end method

.method public f(LQ/d;)Lcom/bumptech/glide/c;
    .locals 0
    .param p1    # LQ/d;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iput-object p1, p0, Lcom/bumptech/glide/c;->j:LQ/d;

    return-object p0
.end method

.method public g(LT/h;)Lcom/bumptech/glide/c;
    .locals 1
    .param p1    # LT/h;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Lcom/bumptech/glide/c$b;

    invoke-direct {v0, p0, p1}, Lcom/bumptech/glide/c$b;-><init>(Lcom/bumptech/glide/c;LT/h;)V

    invoke-virtual {p0, v0}, Lcom/bumptech/glide/c;->h(Lcom/bumptech/glide/b$a;)Lcom/bumptech/glide/c;

    move-result-object p1

    return-object p1
.end method

.method public h(Lcom/bumptech/glide/b$a;)Lcom/bumptech/glide/c;
    .locals 0
    .param p1    # Lcom/bumptech/glide/b$a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-static {p1}, LX/k;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/bumptech/glide/b$a;

    iput-object p1, p0, Lcom/bumptech/glide/c;->l:Lcom/bumptech/glide/b$a;

    return-object p0
.end method

.method public i(Ljava/lang/Class;Lcom/bumptech/glide/l;)Lcom/bumptech/glide/c;
    .locals 1
    .param p1    # Ljava/lang/Class;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/bumptech/glide/l;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lcom/bumptech/glide/l<",
            "*TT;>;)",
            "Lcom/bumptech/glide/c;"
        }
    .end annotation

    iget-object v0, p0, Lcom/bumptech/glide/c;->a:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public j(LF/a$a;)Lcom/bumptech/glide/c;
    .locals 0
    .param p1    # LF/a$a;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iput-object p1, p0, Lcom/bumptech/glide/c;->h:LF/a$a;

    return-object p0
.end method

.method public k(LG/a;)Lcom/bumptech/glide/c;
    .locals 0
    .param p1    # LG/a;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iput-object p1, p0, Lcom/bumptech/glide/c;->g:LG/a;

    return-object p0
.end method

.method public l(Lcom/bumptech/glide/load/engine/j;)Lcom/bumptech/glide/c;
    .locals 0

    iput-object p1, p0, Lcom/bumptech/glide/c;->b:Lcom/bumptech/glide/load/engine/j;

    return-object p0
.end method

.method public m(Z)Lcom/bumptech/glide/c;
    .locals 1

    invoke-static {}, Landroidx/core/os/BuildCompat;->isAtLeastQ()Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    iput-boolean p1, p0, Lcom/bumptech/glide/c;->r:Z

    return-object p0
.end method

.method public n(Z)Lcom/bumptech/glide/c;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iput-boolean p1, p0, Lcom/bumptech/glide/c;->o:Z

    return-object p0
.end method

.method public o(I)Lcom/bumptech/glide/c;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const/4 v0, 0x2

    if-lt p1, v0, :cond_0

    const/4 v0, 0x6

    if-gt p1, v0, :cond_0

    iput p1, p0, Lcom/bumptech/glide/c;->k:I

    return-object p0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Log level must be one of Log.VERBOSE, Log.DEBUG, Log.INFO, Log.WARN, or Log.ERROR"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public p(Z)Lcom/bumptech/glide/c;
    .locals 0

    iput-boolean p1, p0, Lcom/bumptech/glide/c;->q:Z

    return-object p0
.end method

.method public q(LF/j;)Lcom/bumptech/glide/c;
    .locals 0
    .param p1    # LF/j;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iput-object p1, p0, Lcom/bumptech/glide/c;->e:LF/j;

    return-object p0
.end method

.method public r(LF/l$a;)Lcom/bumptech/glide/c;
    .locals 0
    .param p1    # LF/l$a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p1}, LF/l$a;->a()LF/l;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/bumptech/glide/c;->s(LF/l;)Lcom/bumptech/glide/c;

    move-result-object p1

    return-object p1
.end method

.method public s(LF/l;)Lcom/bumptech/glide/c;
    .locals 0
    .param p1    # LF/l;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iput-object p1, p0, Lcom/bumptech/glide/c;->i:LF/l;

    return-object p0
.end method

.method public t(LQ/l$b;)V
    .locals 0
    .param p1    # LQ/l$b;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/bumptech/glide/c;->m:LQ/l$b;

    return-void
.end method

.method public u(LG/a;)Lcom/bumptech/glide/c;
    .locals 0
    .param p1    # LG/a;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0, p1}, Lcom/bumptech/glide/c;->v(LG/a;)Lcom/bumptech/glide/c;

    move-result-object p1

    return-object p1
.end method

.method public v(LG/a;)Lcom/bumptech/glide/c;
    .locals 0
    .param p1    # LG/a;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iput-object p1, p0, Lcom/bumptech/glide/c;->f:LG/a;

    return-object p0
.end method
