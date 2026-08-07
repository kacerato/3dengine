.class public final Ldf/u;
.super LTe/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ldf/u$c;,
        Ldf/u$b;,
        Ldf/u$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "LTe/l<",
        "TR;>;"
    }
.end annotation


# instance fields
.field public final c:[LCi/b;
    .annotation build LUe/g;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "LCi/b<",
            "+TT;>;"
        }
    .end annotation
.end field

.field public final d:Ljava/lang/Iterable;
    .annotation build LUe/g;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Iterable<",
            "+",
            "LCi/b<",
            "+TT;>;>;"
        }
    .end annotation
.end field

.field public final e:LXe/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LXe/o<",
            "-[",
            "Ljava/lang/Object;",
            "+TR;>;"
        }
    .end annotation
.end field

.field public final f:I

.field public final g:Z


# direct methods
.method public constructor <init>(Ljava/lang/Iterable;LXe/o;IZ)V
    .locals 1
    .param p1    # Ljava/lang/Iterable;
        .annotation build LUe/f;
        .end annotation
    .end param
    .param p2    # LXe/o;
        .annotation build LUe/f;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "LCi/b<",
            "+TT;>;>;",
            "LXe/o<",
            "-[",
            "Ljava/lang/Object;",
            "+TR;>;IZ)V"
        }
    .end annotation

    .line 7
    invoke-direct {p0}, LTe/l;-><init>()V

    const/4 v0, 0x0

    .line 8
    iput-object v0, p0, Ldf/u;->c:[LCi/b;

    .line 9
    iput-object p1, p0, Ldf/u;->d:Ljava/lang/Iterable;

    .line 10
    iput-object p2, p0, Ldf/u;->e:LXe/o;

    .line 11
    iput p3, p0, Ldf/u;->f:I

    .line 12
    iput-boolean p4, p0, Ldf/u;->g:Z

    return-void
.end method

.method public constructor <init>([LCi/b;LXe/o;IZ)V
    .locals 0
    .param p1    # [LCi/b;
        .annotation build LUe/f;
        .end annotation
    .end param
    .param p2    # LXe/o;
        .annotation build LUe/f;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "LCi/b<",
            "+TT;>;",
            "LXe/o<",
            "-[",
            "Ljava/lang/Object;",
            "+TR;>;IZ)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, LTe/l;-><init>()V

    .line 2
    iput-object p1, p0, Ldf/u;->c:[LCi/b;

    const/4 p1, 0x0

    .line 3
    iput-object p1, p0, Ldf/u;->d:Ljava/lang/Iterable;

    .line 4
    iput-object p2, p0, Ldf/u;->e:LXe/o;

    .line 5
    iput p3, p0, Ldf/u;->f:I

    .line 6
    iput-boolean p4, p0, Ldf/u;->g:Z

    return-void
.end method


# virtual methods
.method public m6(LCi/c;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LCi/c<",
            "-TR;>;)V"
        }
    .end annotation

    iget-object v0, p0, Ldf/u;->c:[LCi/b;

    const/4 v1, 0x0

    if-nez v0, :cond_2

    const/16 v0, 0x8

    new-array v0, v0, [LCi/b;

    :try_start_0
    iget-object v2, p0, Ldf/u;->d:Ljava/lang/Iterable;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const-string v3, "The iterator returned is null"

    invoke-static {v2, v3}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Iterator;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    move v3, v1

    :goto_0
    :try_start_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-nez v4, :cond_0

    :goto_1
    move v8, v3

    goto :goto_2

    :cond_0
    :try_start_2
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    const-string v5, "The publisher returned by the iterator is null"

    invoke-static {v4, v5}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, LCi/b;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    array-length v5, v0

    if-ne v3, v5, :cond_1

    shr-int/lit8 v5, v3, 0x2

    add-int/2addr v5, v3

    new-array v5, v5, [LCi/b;

    invoke-static {v0, v1, v5, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v0, v5

    :cond_1
    add-int/lit8 v5, v3, 0x1

    aput-object v4, v0, v3

    move v3, v5

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {v0}, Lio/reactivex/exceptions/a;->b(Ljava/lang/Throwable;)V

    invoke-static {v0, p1}, Lmf/g;->b(Ljava/lang/Throwable;LCi/c;)V

    return-void

    :catchall_1
    move-exception v0

    invoke-static {v0}, Lio/reactivex/exceptions/a;->b(Ljava/lang/Throwable;)V

    invoke-static {v0, p1}, Lmf/g;->b(Ljava/lang/Throwable;LCi/c;)V

    return-void

    :catchall_2
    move-exception v0

    invoke-static {v0}, Lio/reactivex/exceptions/a;->b(Ljava/lang/Throwable;)V

    invoke-static {v0, p1}, Lmf/g;->b(Ljava/lang/Throwable;LCi/c;)V

    return-void

    :cond_2
    array-length v3, v0

    goto :goto_1

    :goto_2
    if-nez v8, :cond_3

    invoke-static {p1}, Lmf/g;->a(LCi/c;)V

    return-void

    :cond_3
    const/4 v2, 0x1

    if-ne v8, v2, :cond_4

    aget-object v0, v0, v1

    new-instance v1, Ldf/C0$b;

    new-instance v2, Ldf/u$c;

    invoke-direct {v2, p0}, Ldf/u$c;-><init>(Ldf/u;)V

    invoke-direct {v1, p1, v2}, Ldf/C0$b;-><init>(LCi/c;LXe/o;)V

    invoke-interface {v0, v1}, LCi/b;->l(LCi/c;)V

    return-void

    :cond_4
    new-instance v1, Ldf/u$a;

    iget-object v4, p0, Ldf/u;->e:LXe/o;

    iget v6, p0, Ldf/u;->f:I

    iget-boolean v7, p0, Ldf/u;->g:Z

    move-object v2, v1

    move-object v3, p1

    move v5, v8

    invoke-direct/range {v2 .. v7}, Ldf/u$a;-><init>(LCi/c;LXe/o;IIZ)V

    invoke-interface {p1, v1}, LCi/c;->h(LCi/d;)V

    invoke-virtual {v1, v0, v8}, Ldf/u$a;->y([LCi/b;I)V

    return-void
.end method
