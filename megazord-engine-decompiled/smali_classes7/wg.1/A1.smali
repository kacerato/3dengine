.class public final Lwg/A1;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(LQf/f;)Ljava/lang/Object;
    .locals 4
    .param p0    # LQf/f;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LQf/f<",
            "-",
            "LFf/P0;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    invoke-interface {p0}, LQf/f;->getContext()LQf/j;

    move-result-object v0

    invoke-static {v0}, Lwg/N0;->z(LQf/j;)V

    invoke-static {p0}, LSf/c;->e(LQf/f;)LQf/f;

    move-result-object v1

    instance-of v2, v1, LEg/l;

    if-eqz v2, :cond_0

    check-cast v1, LEg/l;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_1

    sget-object v0, LFf/P0;->a:LFf/P0;

    goto :goto_2

    :cond_1
    iget-object v2, v1, LEg/l;->e:Lwg/M;

    invoke-virtual {v2, v0}, Lwg/M;->isDispatchNeeded(LQf/j;)Z

    move-result v2

    if-eqz v2, :cond_2

    sget-object v2, LFf/P0;->a:LFf/P0;

    invoke-virtual {v1, v0, v2}, LEg/l;->r(LQf/j;Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    new-instance v2, Lwg/z1;

    invoke-direct {v2}, Lwg/z1;-><init>()V

    invoke-interface {v0, v2}, LQf/j;->plus(LQf/j;)LQf/j;

    move-result-object v0

    sget-object v3, LFf/P0;->a:LFf/P0;

    invoke-virtual {v1, v0, v3}, LEg/l;->r(LQf/j;Ljava/lang/Object;)V

    iget-boolean v0, v2, Lwg/z1;->b:Z

    if-eqz v0, :cond_4

    invoke-static {v1}, LEg/m;->f(LEg/l;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, LSf/d;->l()Ljava/lang/Object;

    move-result-object v0

    goto :goto_2

    :cond_3
    move-object v0, v3

    goto :goto_2

    :cond_4
    :goto_1
    invoke-static {}, LSf/d;->l()Ljava/lang/Object;

    move-result-object v0

    :goto_2
    invoke-static {}, LSf/d;->l()Ljava/lang/Object;

    move-result-object v1

    if-ne v0, v1, :cond_5

    invoke-static {p0}, LTf/h;->c(LQf/f;)V

    :cond_5
    invoke-static {}, LSf/d;->l()Ljava/lang/Object;

    move-result-object p0

    if-ne v0, p0, :cond_6

    return-object v0

    :cond_6
    sget-object p0, LFf/P0;->a:LFf/P0;

    return-object p0
.end method
