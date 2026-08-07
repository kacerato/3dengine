.class public final Lwg/N$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwg/N;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method public static a(Lwg/N;Ljava/lang/Object;Leg/p;)Ljava/lang/Object;
    .locals 0
    .param p0    # Lwg/N;
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
            "Lwg/N;",
            "TR;",
            "Leg/p<",
            "-TR;-",
            "LQf/j$b;",
            "+TR;>;)TR;"
        }
    .end annotation

    invoke-static {p0, p1, p2}, LQf/j$b$a;->a(LQf/j$b;Ljava/lang/Object;Leg/p;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static b(Lwg/N;LQf/j$c;)LQf/j$b;
    .locals 0
    .param p0    # Lwg/N;
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
            "Lwg/N;",
            "LQf/j$c<",
            "TE;>;)TE;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    invoke-static {p0, p1}, LQf/j$b$a;->b(LQf/j$b;LQf/j$c;)LQf/j$b;

    move-result-object p0

    return-object p0
.end method

.method public static c(Lwg/N;LQf/j$c;)LQf/j;
    .locals 0
    .param p0    # Lwg/N;
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
            "Lwg/N;",
            "LQf/j$c<",
            "*>;)",
            "LQf/j;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-static {p0, p1}, LQf/j$b$a;->c(LQf/j$b;LQf/j$c;)LQf/j;

    move-result-object p0

    return-object p0
.end method

.method public static d(Lwg/N;LQf/j;)LQf/j;
    .locals 0
    .param p0    # Lwg/N;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # LQf/j;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-static {p0, p1}, LQf/j$b$a;->d(LQf/j$b;LQf/j;)LQf/j;

    move-result-object p0

    return-object p0
.end method
