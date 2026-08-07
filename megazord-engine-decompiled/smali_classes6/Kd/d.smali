.class public LKd/d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final a:LKd/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LKd/c<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final b:LKd/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LKd/b<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final c:[LId/z;


# direct methods
.method public constructor <init>(LKd/c;LKd/b;[LId/z;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LKd/c<",
            "TT;>;",
            "LKd/b<",
            "TT;>;[",
            "LId/z;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LKd/d;->a:LKd/c;

    iput-object p2, p0, LKd/d;->b:LKd/b;

    iput-object p3, p0, LKd/d;->c:[LId/z;

    return-void
.end method


# virtual methods
.method public a(LKd/d;)LKd/d;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LKd/d<",
            "TT;>;)",
            "LKd/d<",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p0, LKd/d;->c:[LId/z;

    array-length v1, v0

    iget-object v2, p1, LKd/d;->c:[LId/z;

    array-length v2, v2

    add-int/2addr v1, v2

    new-array v1, v1, [LId/z;

    array-length v2, v0

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object p1, p1, LKd/d;->c:[LId/z;

    iget-object v0, p0, LKd/d;->c:[LId/z;

    array-length v0, v0

    array-length v2, p1

    invoke-static {p1, v3, v1, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance p1, LKd/d;

    iget-object v0, p0, LKd/d;->a:LKd/c;

    iget-object v2, p0, LKd/d;->b:LKd/b;

    invoke-direct {p1, v0, v2, v1}, LKd/d;-><init>(LKd/c;LKd/b;[LId/z;)V

    return-object p1
.end method

.method public varargs b([LId/j;)LKd/d;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "LId/j;",
            ")",
            "LKd/d<",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p0, LKd/d;->c:[LId/z;

    array-length v0, v0

    array-length v1, p1

    add-int/2addr v0, v1

    new-array v0, v0, [LId/z;

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    array-length v3, p1

    if-ge v2, v3, :cond_0

    iget-object v3, p0, LKd/d;->b:LKd/b;

    aget-object v4, p1, v2

    invoke-virtual {v3, v4}, LKd/b;->a(LId/j;)V

    aget-object v3, p1, v2

    invoke-interface {v3}, LId/j;->t()LId/z;

    move-result-object v3

    aput-object v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget-object v2, p0, LKd/d;->c:[LId/z;

    array-length p1, p1

    array-length v3, v2

    invoke-static {v2, v1, v0, p1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance p1, LKd/d;

    iget-object v1, p0, LKd/d;->a:LKd/c;

    iget-object v2, p0, LKd/d;->b:LKd/b;

    invoke-direct {p1, v1, v2, v0}, LKd/d;-><init>(LKd/c;LKd/b;[LId/z;)V

    return-object p1
.end method

.method public c()LId/A;
    .locals 2

    iget-object v0, p0, LKd/d;->a:LKd/c;

    invoke-virtual {v0}, LKd/c;->k()LId/y;

    move-result-object v0

    iget-object v1, p0, LKd/d;->c:[LId/z;

    invoke-virtual {v0, v1}, LId/y;->b([LId/z;)LId/A;

    move-result-object v0

    return-object v0
.end method

.method public varargs d([LId/i;)LKd/d;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "LId/i<",
            "TT;>;)",
            "LKd/d<",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p0, LKd/d;->a:LKd/c;

    iget-object v1, p0, LKd/d;->c:[LId/z;

    invoke-virtual {v0, v1, p1}, LKd/c;->e([LId/z;[LId/i;)LKd/d;

    move-result-object p1

    return-object p1
.end method

.method public varargs e([LId/K;)LKd/d;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "LId/K<",
            "TT;>;)",
            "LKd/d<",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p0, LKd/d;->a:LKd/c;

    iget-object v1, p0, LKd/d;->c:[LId/z;

    invoke-virtual {v0, v1, p1}, LKd/c;->f([LId/z;[LId/K;)LKd/d;

    move-result-object p1

    return-object p1
.end method

.method public varargs f([LId/i;)LKd/d;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "LId/i<",
            "TT;>;)",
            "LKd/d<",
            "TT;>;"
        }
    .end annotation

    invoke-virtual {p0, p1}, LKd/d;->d([LId/i;)LKd/d;

    move-result-object p1

    return-object p1
.end method

.method public varargs g([LId/K;)LKd/d;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "LId/K<",
            "TT;>;)",
            "LKd/d<",
            "TT;>;"
        }
    .end annotation

    invoke-virtual {p0, p1}, LKd/d;->e([LId/K;)LKd/d;

    move-result-object p1

    return-object p1
.end method
