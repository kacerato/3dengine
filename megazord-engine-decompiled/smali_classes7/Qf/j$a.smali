.class public final LQf/j$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LQf/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method public static synthetic a(LQf/j;LQf/j$b;)LQf/j;
    .locals 0

    invoke-static {p0, p1}, LQf/j$a;->c(LQf/j;LQf/j$b;)LQf/j;

    move-result-object p0

    return-object p0
.end method

.method public static b(LQf/j;LQf/j;)LQf/j;
    .locals 1
    .param p0    # LQf/j;
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

    sget-object v0, LQf/l;->b:LQf/l;

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, LQf/i;

    invoke-direct {v0}, LQf/i;-><init>()V

    invoke-interface {p1, p0, v0}, LQf/j;->fold(Ljava/lang/Object;Leg/p;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, LQf/j;

    :goto_0
    return-object p0
.end method

.method public static c(LQf/j;LQf/j$b;)LQf/j;
    .locals 3

    const-string v0, "acc"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "element"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, LQf/j$b;->getKey()LQf/j$c;

    move-result-object v0

    invoke-interface {p0, v0}, LQf/j;->minusKey(LQf/j$c;)LQf/j;

    move-result-object p0

    sget-object v0, LQf/l;->b:LQf/l;

    if-ne p0, v0, :cond_0

    goto :goto_1

    :cond_0
    sget-object v1, LQf/g;->m0:LQf/g$b;

    invoke-interface {p0, v1}, LQf/j;->get(LQf/j$c;)LQf/j$b;

    move-result-object v2

    check-cast v2, LQf/g;

    if-nez v2, :cond_1

    new-instance v0, LQf/e;

    invoke-direct {v0, p0, p1}, LQf/e;-><init>(LQf/j;LQf/j$b;)V

    :goto_0
    move-object p1, v0

    goto :goto_1

    :cond_1
    invoke-interface {p0, v1}, LQf/j;->minusKey(LQf/j$c;)LQf/j;

    move-result-object p0

    if-ne p0, v0, :cond_2

    new-instance p0, LQf/e;

    invoke-direct {p0, p1, v2}, LQf/e;-><init>(LQf/j;LQf/j$b;)V

    move-object p1, p0

    goto :goto_1

    :cond_2
    new-instance v0, LQf/e;

    new-instance v1, LQf/e;

    invoke-direct {v1, p0, p1}, LQf/e;-><init>(LQf/j;LQf/j$b;)V

    invoke-direct {v0, v1, v2}, LQf/e;-><init>(LQf/j;LQf/j$b;)V

    goto :goto_0

    :goto_1
    return-object p1
.end method
