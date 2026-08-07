.class public final LVe/d;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No instances!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static a()LVe/c;
    .locals 1
    .annotation build LUe/f;
    .end annotation

    sget-object v0, LYe/e;->INSTANCE:LYe/e;

    return-object v0
.end method

.method public static b()LVe/c;
    .locals 1
    .annotation build LUe/f;
    .end annotation

    sget-object v0, LZe/a;->b:Ljava/lang/Runnable;

    invoke-static {v0}, LVe/d;->f(Ljava/lang/Runnable;)LVe/c;

    move-result-object v0

    return-object v0
.end method

.method public static c(LXe/a;)LVe/c;
    .locals 1
    .param p0    # LXe/a;
        .annotation build LUe/f;
        .end annotation
    .end param
    .annotation build LUe/f;
    .end annotation

    const-string v0, "run is null"

    invoke-static {p0, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, LVe/a;

    invoke-direct {v0, p0}, LVe/a;-><init>(LXe/a;)V

    return-object v0
.end method

.method public static d(Ljava/util/concurrent/Future;)LVe/c;
    .locals 1
    .param p0    # Ljava/util/concurrent/Future;
        .annotation build LUe/f;
        .end annotation
    .end param
    .annotation build LUe/f;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Future<",
            "*>;)",
            "LVe/c;"
        }
    .end annotation

    const-string v0, "future is null"

    invoke-static {p0, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v0, 0x1

    invoke-static {p0, v0}, LVe/d;->e(Ljava/util/concurrent/Future;Z)LVe/c;

    move-result-object p0

    return-object p0
.end method

.method public static e(Ljava/util/concurrent/Future;Z)LVe/c;
    .locals 1
    .param p0    # Ljava/util/concurrent/Future;
        .annotation build LUe/f;
        .end annotation
    .end param
    .annotation build LUe/f;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Future<",
            "*>;Z)",
            "LVe/c;"
        }
    .end annotation

    const-string v0, "future is null"

    invoke-static {p0, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, LVe/e;

    invoke-direct {v0, p0, p1}, LVe/e;-><init>(Ljava/util/concurrent/Future;Z)V

    return-object v0
.end method

.method public static f(Ljava/lang/Runnable;)LVe/c;
    .locals 1
    .param p0    # Ljava/lang/Runnable;
        .annotation build LUe/f;
        .end annotation
    .end param
    .annotation build LUe/f;
    .end annotation

    const-string v0, "run is null"

    invoke-static {p0, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, LVe/g;

    invoke-direct {v0, p0}, LVe/g;-><init>(Ljava/lang/Runnable;)V

    return-object v0
.end method

.method public static g(LCi/d;)LVe/c;
    .locals 1
    .param p0    # LCi/d;
        .annotation build LUe/f;
        .end annotation
    .end param
    .annotation build LUe/f;
    .end annotation

    const-string v0, "subscription is null"

    invoke-static {p0, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, LVe/i;

    invoke-direct {v0, p0}, LVe/i;-><init>(LCi/d;)V

    return-object v0
.end method
