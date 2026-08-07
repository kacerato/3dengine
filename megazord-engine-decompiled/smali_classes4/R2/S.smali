.class public final LR2/S;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build LQ2/b;
.end annotation

.annotation runtime LR2/k;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LR2/S$f;,
        LR2/S$e;,
        LR2/S$h;,
        LR2/S$g;,
        LR2/S$a;,
        LR2/S$c;,
        LR2/S$b;,
        LR2/S$d;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(LR2/t;LR2/Q;)LR2/Q;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<F:",
            "Ljava/lang/Object;",
            "T:",
            "Ljava/lang/Object;",
            ">(",
            "LR2/t<",
            "-TF;TT;>;",
            "LR2/Q<",
            "TF;>;)",
            "LR2/Q<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, LR2/S$d;

    invoke-direct {v0, p0, p1}, LR2/S$d;-><init>(LR2/t;LR2/Q;)V

    return-object v0
.end method

.method public static b(LR2/Q;)LR2/Q;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "LR2/Q<",
            "TT;>;)",
            "LR2/Q<",
            "TT;>;"
        }
    .end annotation

    instance-of v0, p0, LR2/S$c;

    if-nez v0, :cond_2

    instance-of v0, p0, LR2/S$b;

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    instance-of v0, p0, Ljava/io/Serializable;

    if-eqz v0, :cond_1

    new-instance v0, LR2/S$b;

    invoke-direct {v0, p0}, LR2/S$b;-><init>(LR2/Q;)V

    goto :goto_0

    :cond_1
    new-instance v0, LR2/S$c;

    invoke-direct {v0, p0}, LR2/S$c;-><init>(LR2/Q;)V

    :goto_0
    return-object v0

    :cond_2
    :goto_1
    return-object p0
.end method

.method public static c(LR2/Q;JLjava/util/concurrent/TimeUnit;)LR2/Q;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "LR2/Q<",
            "TT;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "LR2/Q<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, LR2/S$a;

    invoke-direct {v0, p0, p1, p2, p3}, LR2/S$a;-><init>(LR2/Q;JLjava/util/concurrent/TimeUnit;)V

    return-object v0
.end method

.method public static d(Ljava/lang/Object;)LR2/Q;
    .locals 1
    .param p0    # Ljava/lang/Object;
        .annotation runtime LR2/E;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "LR2/Q<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, LR2/S$g;

    invoke-direct {v0, p0}, LR2/S$g;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public static e()LR2/t;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "LR2/t<",
            "LR2/Q<",
            "TT;>;TT;>;"
        }
    .end annotation

    sget-object v0, LR2/S$f;->INSTANCE:LR2/S$f;

    return-object v0
.end method

.method public static f(LR2/Q;)LR2/Q;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "LR2/Q<",
            "TT;>;)",
            "LR2/Q<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, LR2/S$h;

    invoke-direct {v0, p0}, LR2/S$h;-><init>(LR2/Q;)V

    return-object v0
.end method
