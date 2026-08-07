.class public Lcom/bumptech/glide/load/engine/x;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bumptech/glide/load/engine/e;
.implements Lcom/bumptech/glide/load/engine/e$a;


# static fields
.field public static final i:Ljava/lang/String; = "SourceGenerator"


# instance fields
.field public final b:Lcom/bumptech/glide/load/engine/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/engine/f<",
            "*>;"
        }
    .end annotation
.end field

.field public final c:Lcom/bumptech/glide/load/engine/e$a;

.field public d:I

.field public e:Lcom/bumptech/glide/load/engine/b;

.field public f:Ljava/lang/Object;

.field public volatile g:LI/n$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LI/n$a<",
            "*>;"
        }
    .end annotation
.end field

.field public h:Lcom/bumptech/glide/load/engine/c;


# direct methods
.method public constructor <init>(Lcom/bumptech/glide/load/engine/f;Lcom/bumptech/glide/load/engine/e$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/engine/f<",
            "*>;",
            "Lcom/bumptech/glide/load/engine/e$a;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/bumptech/glide/load/engine/x;->b:Lcom/bumptech/glide/load/engine/f;

    iput-object p2, p0, Lcom/bumptech/glide/load/engine/x;->c:Lcom/bumptech/glide/load/engine/e$a;

    return-void
.end method


# virtual methods
.method public a(LB/e;Ljava/lang/Exception;LC/d;LB/a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LB/e;",
            "Ljava/lang/Exception;",
            "LC/d<",
            "*>;",
            "LB/a;",
            ")V"
        }
    .end annotation

    iget-object p4, p0, Lcom/bumptech/glide/load/engine/x;->c:Lcom/bumptech/glide/load/engine/e$a;

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/x;->g:LI/n$a;

    iget-object v0, v0, LI/n$a;->c:LC/d;

    invoke-interface {v0}, LC/d;->d()LB/a;

    move-result-object v0

    invoke-interface {p4, p1, p2, p3, v0}, Lcom/bumptech/glide/load/engine/e$a;->a(LB/e;Ljava/lang/Exception;LC/d;LB/a;)V

    return-void
.end method

.method public b()V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public c()Z
    .locals 5

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/x;->f:Ljava/lang/Object;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iput-object v1, p0, Lcom/bumptech/glide/load/engine/x;->f:Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lcom/bumptech/glide/load/engine/x;->d(Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/x;->e:Lcom/bumptech/glide/load/engine/b;

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/bumptech/glide/load/engine/b;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    return v2

    :cond_1
    iput-object v1, p0, Lcom/bumptech/glide/load/engine/x;->e:Lcom/bumptech/glide/load/engine/b;

    iput-object v1, p0, Lcom/bumptech/glide/load/engine/x;->g:LI/n$a;

    const/4 v0, 0x0

    :cond_2
    :goto_0
    if-nez v0, :cond_4

    invoke-virtual {p0}, Lcom/bumptech/glide/load/engine/x;->f()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/bumptech/glide/load/engine/x;->b:Lcom/bumptech/glide/load/engine/f;

    invoke-virtual {v1}, Lcom/bumptech/glide/load/engine/f;->g()Ljava/util/List;

    move-result-object v1

    iget v3, p0, Lcom/bumptech/glide/load/engine/x;->d:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/bumptech/glide/load/engine/x;->d:I

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LI/n$a;

    iput-object v1, p0, Lcom/bumptech/glide/load/engine/x;->g:LI/n$a;

    iget-object v1, p0, Lcom/bumptech/glide/load/engine/x;->g:LI/n$a;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/bumptech/glide/load/engine/x;->b:Lcom/bumptech/glide/load/engine/f;

    invoke-virtual {v1}, Lcom/bumptech/glide/load/engine/f;->e()Lcom/bumptech/glide/load/engine/i;

    move-result-object v1

    iget-object v3, p0, Lcom/bumptech/glide/load/engine/x;->g:LI/n$a;

    iget-object v3, v3, LI/n$a;->c:LC/d;

    invoke-interface {v3}, LC/d;->d()LB/a;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/bumptech/glide/load/engine/i;->c(LB/a;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/bumptech/glide/load/engine/x;->b:Lcom/bumptech/glide/load/engine/f;

    iget-object v3, p0, Lcom/bumptech/glide/load/engine/x;->g:LI/n$a;

    iget-object v3, v3, LI/n$a;->c:LC/d;

    invoke-interface {v3}, LC/d;->a()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/bumptech/glide/load/engine/f;->t(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_3
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/x;->g:LI/n$a;

    invoke-virtual {p0, v0}, Lcom/bumptech/glide/load/engine/x;->j(LI/n$a;)V

    move v0, v2

    goto :goto_0

    :cond_4
    return v0
.end method

.method public cancel()V
    .locals 1

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/x;->g:LI/n$a;

    if-eqz v0, :cond_0

    iget-object v0, v0, LI/n$a;->c:LC/d;

    invoke-interface {v0}, LC/d;->cancel()V

    :cond_0
    return-void
.end method

.method public final d(Ljava/lang/Object;)V
    .locals 8

    const-string v0, "SourceGenerator"

    invoke-static {}, LX/g;->b()J

    move-result-wide v1

    :try_start_0
    iget-object v3, p0, Lcom/bumptech/glide/load/engine/x;->b:Lcom/bumptech/glide/load/engine/f;

    invoke-virtual {v3, p1}, Lcom/bumptech/glide/load/engine/f;->p(Ljava/lang/Object;)LB/d;

    move-result-object v3

    new-instance v4, Lcom/bumptech/glide/load/engine/d;

    iget-object v5, p0, Lcom/bumptech/glide/load/engine/x;->b:Lcom/bumptech/glide/load/engine/f;

    invoke-virtual {v5}, Lcom/bumptech/glide/load/engine/f;->k()LB/h;

    move-result-object v5

    invoke-direct {v4, v3, p1, v5}, Lcom/bumptech/glide/load/engine/d;-><init>(LB/d;Ljava/lang/Object;LB/h;)V

    new-instance v5, Lcom/bumptech/glide/load/engine/c;

    iget-object v6, p0, Lcom/bumptech/glide/load/engine/x;->g:LI/n$a;

    iget-object v6, v6, LI/n$a;->a:LB/e;

    iget-object v7, p0, Lcom/bumptech/glide/load/engine/x;->b:Lcom/bumptech/glide/load/engine/f;

    invoke-virtual {v7}, Lcom/bumptech/glide/load/engine/f;->o()LB/e;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lcom/bumptech/glide/load/engine/c;-><init>(LB/e;LB/e;)V

    iput-object v5, p0, Lcom/bumptech/glide/load/engine/x;->h:Lcom/bumptech/glide/load/engine/c;

    iget-object v5, p0, Lcom/bumptech/glide/load/engine/x;->b:Lcom/bumptech/glide/load/engine/f;

    invoke-virtual {v5}, Lcom/bumptech/glide/load/engine/f;->d()LF/a;

    move-result-object v5

    iget-object v6, p0, Lcom/bumptech/glide/load/engine/x;->h:Lcom/bumptech/glide/load/engine/c;

    invoke-interface {v5, v6, v4}, LF/a;->b(LB/e;LF/a$b;)V

    const/4 v4, 0x2

    invoke-static {v0, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Finished encoding source to cache, key: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/bumptech/glide/load/engine/x;->h:Lcom/bumptech/glide/load/engine/c;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ", data: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", encoder: "

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", duration: "

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1, v2}, LX/g;->a(J)D

    move-result-wide v1

    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    iget-object p1, p0, Lcom/bumptech/glide/load/engine/x;->g:LI/n$a;

    iget-object p1, p1, LI/n$a;->c:LC/d;

    invoke-interface {p1}, LC/d;->cleanup()V

    new-instance p1, Lcom/bumptech/glide/load/engine/b;

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/x;->g:LI/n$a;

    iget-object v0, v0, LI/n$a;->a:LB/e;

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/bumptech/glide/load/engine/x;->b:Lcom/bumptech/glide/load/engine/f;

    invoke-direct {p1, v0, v1, p0}, Lcom/bumptech/glide/load/engine/b;-><init>(Ljava/util/List;Lcom/bumptech/glide/load/engine/f;Lcom/bumptech/glide/load/engine/e$a;)V

    iput-object p1, p0, Lcom/bumptech/glide/load/engine/x;->e:Lcom/bumptech/glide/load/engine/b;

    return-void

    :goto_1
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/x;->g:LI/n$a;

    iget-object v0, v0, LI/n$a;->c:LC/d;

    invoke-interface {v0}, LC/d;->cleanup()V

    throw p1
.end method

.method public e(LB/e;Ljava/lang/Object;LC/d;LB/a;LB/e;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LB/e;",
            "Ljava/lang/Object;",
            "LC/d<",
            "*>;",
            "LB/a;",
            "LB/e;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/x;->c:Lcom/bumptech/glide/load/engine/e$a;

    iget-object p4, p0, Lcom/bumptech/glide/load/engine/x;->g:LI/n$a;

    iget-object p4, p4, LI/n$a;->c:LC/d;

    invoke-interface {p4}, LC/d;->d()LB/a;

    move-result-object v4

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p1

    invoke-interface/range {v0 .. v5}, Lcom/bumptech/glide/load/engine/e$a;->e(LB/e;Ljava/lang/Object;LC/d;LB/a;LB/e;)V

    return-void
.end method

.method public final f()Z
    .locals 2

    iget v0, p0, Lcom/bumptech/glide/load/engine/x;->d:I

    iget-object v1, p0, Lcom/bumptech/glide/load/engine/x;->b:Lcom/bumptech/glide/load/engine/f;

    invoke-virtual {v1}, Lcom/bumptech/glide/load/engine/f;->g()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public g(LI/n$a;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LI/n$a<",
            "*>;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/x;->g:LI/n$a;

    if-eqz v0, :cond_0

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public h(LI/n$a;Ljava/lang/Object;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LI/n$a<",
            "*>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/x;->b:Lcom/bumptech/glide/load/engine/f;

    invoke-virtual {v0}, Lcom/bumptech/glide/load/engine/f;->e()Lcom/bumptech/glide/load/engine/i;

    move-result-object v0

    if-eqz p2, :cond_0

    iget-object v1, p1, LI/n$a;->c:LC/d;

    invoke-interface {v1}, LC/d;->d()LB/a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/load/engine/i;->c(LB/a;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p2, p0, Lcom/bumptech/glide/load/engine/x;->f:Ljava/lang/Object;

    iget-object p1, p0, Lcom/bumptech/glide/load/engine/x;->c:Lcom/bumptech/glide/load/engine/e$a;

    invoke-interface {p1}, Lcom/bumptech/glide/load/engine/e$a;->b()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/x;->c:Lcom/bumptech/glide/load/engine/e$a;

    iget-object v1, p1, LI/n$a;->a:LB/e;

    iget-object v3, p1, LI/n$a;->c:LC/d;

    invoke-interface {v3}, LC/d;->d()LB/a;

    move-result-object v4

    iget-object v5, p0, Lcom/bumptech/glide/load/engine/x;->h:Lcom/bumptech/glide/load/engine/c;

    move-object v2, p2

    invoke-interface/range {v0 .. v5}, Lcom/bumptech/glide/load/engine/e$a;->e(LB/e;Ljava/lang/Object;LC/d;LB/a;LB/e;)V

    :goto_0
    return-void
.end method

.method public i(LI/n$a;Ljava/lang/Exception;)V
    .locals 3
    .param p2    # Ljava/lang/Exception;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LI/n$a<",
            "*>;",
            "Ljava/lang/Exception;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/x;->c:Lcom/bumptech/glide/load/engine/e$a;

    iget-object v1, p0, Lcom/bumptech/glide/load/engine/x;->h:Lcom/bumptech/glide/load/engine/c;

    iget-object p1, p1, LI/n$a;->c:LC/d;

    invoke-interface {p1}, LC/d;->d()LB/a;

    move-result-object v2

    invoke-interface {v0, v1, p2, p1, v2}, Lcom/bumptech/glide/load/engine/e$a;->a(LB/e;Ljava/lang/Exception;LC/d;LB/a;)V

    return-void
.end method

.method public final j(LI/n$a;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LI/n$a<",
            "*>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/x;->g:LI/n$a;

    iget-object v0, v0, LI/n$a;->c:LC/d;

    iget-object v1, p0, Lcom/bumptech/glide/load/engine/x;->b:Lcom/bumptech/glide/load/engine/f;

    invoke-virtual {v1}, Lcom/bumptech/glide/load/engine/f;->l()Lcom/bumptech/glide/h;

    move-result-object v1

    new-instance v2, Lcom/bumptech/glide/load/engine/x$a;

    invoke-direct {v2, p0, p1}, Lcom/bumptech/glide/load/engine/x$a;-><init>(Lcom/bumptech/glide/load/engine/x;LI/n$a;)V

    invoke-interface {v0, v1, v2}, LC/d;->c(Lcom/bumptech/glide/h;LC/d$a;)V

    return-void
.end method
