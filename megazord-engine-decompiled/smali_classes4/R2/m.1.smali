.class public abstract LR2/m;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build LQ2/b;
.end annotation

.annotation runtime LR2/k;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LR2/m$d;,
        LR2/m$b;,
        LR2/m$c;,
        LR2/m$e;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static c()LR2/m;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LR2/m<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    sget-object v0, LR2/m$b;->b:LR2/m$b;

    return-object v0
.end method

.method public static g()LR2/m;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LR2/m<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    sget-object v0, LR2/m$d;->b:LR2/m$d;

    return-object v0
.end method


# virtual methods
.method public abstract a(Ljava/lang/Object;Ljava/lang/Object;)Z
    .annotation build Ld3/g;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)Z"
        }
    .end annotation
.end method

.method public abstract b(Ljava/lang/Object;)I
    .annotation build Ld3/g;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation
.end method

.method public final d(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)Z"
        }
    .end annotation

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    if-eqz p1, :cond_2

    if-nez p2, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1, p2}, LR2/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public final e(Ljava/lang/Object;)LR2/I;
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "LR2/I<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, LR2/m$c;

    invoke-direct {v0, p0, p1}, LR2/m$c;-><init>(LR2/m;Ljava/lang/Object;)V

    return-object v0
.end method

.method public final f(Ljava/lang/Object;)I
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-virtual {p0, p1}, LR2/m;->b(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public final h(LR2/t;)LR2/m;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<F:",
            "Ljava/lang/Object;",
            ">(",
            "LR2/t<",
            "-TF;+TT;>;)",
            "LR2/m<",
            "TF;>;"
        }
    .end annotation

    new-instance v0, LR2/u;

    invoke-direct {v0, p1, p0}, LR2/u;-><init>(LR2/t;LR2/m;)V

    return-object v0
.end method

.method public final i()LR2/m;
    .locals 1
    .annotation build LQ2/b;
        serializable = true
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:TT;>()",
            "LR2/m<",
            "Ljava/lang/Iterable<",
            "TS;>;>;"
        }
    .end annotation

    new-instance v0, LR2/D;

    invoke-direct {v0, p0}, LR2/D;-><init>(LR2/m;)V

    return-object v0
.end method

.method public final j(Ljava/lang/Object;)LR2/m$e;
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation runtime LR2/E;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:TT;>(TS;)",
            "LR2/m$e<",
            "TS;>;"
        }
    .end annotation

    new-instance v0, LR2/m$e;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, LR2/m$e;-><init>(LR2/m;Ljava/lang/Object;LR2/m$a;)V

    return-object v0
.end method
