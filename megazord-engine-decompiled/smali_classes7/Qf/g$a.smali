.class public final LQf/g$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LQf/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method public static a(LQf/g;Ljava/lang/Object;Leg/p;)Ljava/lang/Object;
    .locals 1
    .param p0    # LQf/g;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Leg/p;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "LQf/g;",
            "TR;",
            "Leg/p<",
            "-TR;-",
            "LQf/j$b;",
            "+TR;>;)TR;"
        }
    .end annotation

    const-string v0, "operation"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, p1, p2}, LQf/j$b$a;->a(LQf/j$b;Ljava/lang/Object;Leg/p;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static b(LQf/g;LQf/j$c;)LQf/j$b;
    .locals 2
    .param p0    # LQf/g;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # LQf/j$c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "LQf/j$b;",
            ">(",
            "LQf/g;",
            "LQf/j$c<",
            "TE;>;)TE;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v0, p1, LQf/b;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    check-cast p1, LQf/b;

    invoke-interface {p0}, LQf/j$b;->getKey()LQf/j$c;

    move-result-object v0

    invoke-virtual {p1, v0}, LQf/b;->a(LQf/j$c;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1, p0}, LQf/b;->b(LQf/j$b;)LQf/j$b;

    move-result-object p0

    if-eqz p0, :cond_0

    move-object v1, p0

    :cond_0
    return-object v1

    :cond_1
    sget-object v0, LQf/g;->m0:LQf/g$b;

    if-ne v0, p1, :cond_2

    const-string p1, "null cannot be cast to non-null type E of kotlin.coroutines.ContinuationInterceptor.get"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/M;->n(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    move-object p0, v1

    :goto_0
    return-object p0
.end method

.method public static c(LQf/g;LQf/j$c;)LQf/j;
    .locals 1
    .param p0    # LQf/g;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # LQf/j$c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LQf/g;",
            "LQf/j$c<",
            "*>;)",
            "LQf/j;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v0, p1, LQf/b;

    if-eqz v0, :cond_1

    check-cast p1, LQf/b;

    invoke-interface {p0}, LQf/j$b;->getKey()LQf/j$c;

    move-result-object v0

    invoke-virtual {p1, v0}, LQf/b;->a(LQf/j$c;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1, p0}, LQf/b;->b(LQf/j$b;)LQf/j$b;

    move-result-object p1

    if-eqz p1, :cond_0

    sget-object p0, LQf/l;->b:LQf/l;

    :cond_0
    return-object p0

    :cond_1
    sget-object v0, LQf/g;->m0:LQf/g$b;

    if-ne v0, p1, :cond_2

    sget-object p0, LQf/l;->b:LQf/l;

    :cond_2
    return-object p0
.end method

.method public static d(LQf/g;LQf/j;)LQf/j;
    .locals 1
    .param p0    # LQf/g;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # LQf/j;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, p1}, LQf/j$b$a;->d(LQf/j$b;LQf/j;)LQf/j;

    move-result-object p0

    return-object p0
.end method

.method public static e(LQf/g;LQf/f;)V
    .locals 0
    .param p0    # LQf/g;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # LQf/f;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LQf/g;",
            "LQf/f<",
            "*>;)V"
        }
    .end annotation

    const-string p0, "continuation"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
