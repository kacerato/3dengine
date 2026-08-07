.class public final Lwg/Z$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwg/Z;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method public static synthetic a(Lwg/Z;)V
    .locals 0
    .annotation runtime LFf/o;
        level = .enum LFf/q;->HIDDEN:LFf/q;
        message = "Since 1.2.0, binary compatibility with versions <= 1.1.x"
    .end annotation

    invoke-static {p0}, Lwg/K0$a;->a(Lwg/K0;)V

    return-void
.end method

.method public static b(Lwg/Z;Ljava/lang/Object;Leg/p;)Ljava/lang/Object;
    .locals 0
    .param p0    # Lwg/Z;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Leg/p;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lwg/Z<",
            "+TT;>;TR;",
            "Leg/p<",
            "-TR;-",
            "LQf/j$b;",
            "+TR;>;)TR;"
        }
    .end annotation

    invoke-static {p0, p1, p2}, Lwg/K0$a;->d(Lwg/K0;Ljava/lang/Object;Leg/p;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static c(Lwg/Z;LQf/j$c;)LQf/j$b;
    .locals 0
    .param p0    # Lwg/Z;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # LQf/j$c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "E::",
            "LQf/j$b;",
            ">(",
            "Lwg/Z<",
            "+TT;>;",
            "LQf/j$c<",
            "TE;>;)TE;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    invoke-static {p0, p1}, Lwg/K0$a;->e(Lwg/K0;LQf/j$c;)LQf/j$b;

    move-result-object p0

    return-object p0
.end method

.method public static d(Lwg/Z;LQf/j$c;)LQf/j;
    .locals 0
    .param p0    # Lwg/Z;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # LQf/j$c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lwg/Z<",
            "+TT;>;",
            "LQf/j$c<",
            "*>;)",
            "LQf/j;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-static {p0, p1}, Lwg/K0$a;->h(Lwg/K0;LQf/j$c;)LQf/j;

    move-result-object p0

    return-object p0
.end method

.method public static e(Lwg/Z;LQf/j;)LQf/j;
    .locals 0
    .param p0    # Lwg/Z;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # LQf/j;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lwg/Z<",
            "+TT;>;",
            "LQf/j;",
            ")",
            "LQf/j;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-static {p0, p1}, Lwg/K0$a;->i(Lwg/K0;LQf/j;)LQf/j;

    move-result-object p0

    return-object p0
.end method

.method public static f(Lwg/Z;Lwg/K0;)Lwg/K0;
    .locals 0
    .param p0    # Lwg/Z;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lwg/K0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime LFf/o;
        level = .enum LFf/q;->ERROR:LFf/q;
        message = "Operator \'+\' on two Job objects is meaningless. Job is a coroutine context element and `+` is a set-sum operator for coroutine contexts. The job to the right of `+` just replaces the job the left of `+`."
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lwg/Z<",
            "+TT;>;",
            "Lwg/K0;",
            ")",
            "Lwg/K0;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-static {p0, p1}, Lwg/K0$a;->j(Lwg/K0;Lwg/K0;)Lwg/K0;

    move-result-object p0

    return-object p0
.end method
