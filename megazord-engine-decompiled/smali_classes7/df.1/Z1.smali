.class public final Ldf/Z1;
.super Ldf/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ldf/Z1$a;,
        Ldf/Z1$c;,
        Ldf/Z1$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ldf/a<",
        "TT;TR;>;"
    }
.end annotation


# instance fields
.field public final d:[LCi/b;
    .annotation build LUe/g;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "LCi/b<",
            "*>;"
        }
    .end annotation
.end field

.field public final e:Ljava/lang/Iterable;
    .annotation build LUe/g;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Iterable<",
            "+",
            "LCi/b<",
            "*>;>;"
        }
    .end annotation
.end field

.field public final f:LXe/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LXe/o<",
            "-[",
            "Ljava/lang/Object;",
            "TR;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(LTe/l;Ljava/lang/Iterable;LXe/o;)V
    .locals 0
    .param p1    # LTe/l;
        .annotation build LUe/f;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Iterable;
        .annotation build LUe/f;
        .end annotation
    .end param
    .param p3    # LXe/o;
        .annotation build LUe/f;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LTe/l<",
            "TT;>;",
            "Ljava/lang/Iterable<",
            "+",
            "LCi/b<",
            "*>;>;",
            "LXe/o<",
            "-[",
            "Ljava/lang/Object;",
            "TR;>;)V"
        }
    .end annotation

    .line 5
    invoke-direct {p0, p1}, Ldf/a;-><init>(LTe/l;)V

    const/4 p1, 0x0

    .line 6
    iput-object p1, p0, Ldf/Z1;->d:[LCi/b;

    .line 7
    iput-object p2, p0, Ldf/Z1;->e:Ljava/lang/Iterable;

    .line 8
    iput-object p3, p0, Ldf/Z1;->f:LXe/o;

    return-void
.end method

.method public constructor <init>(LTe/l;[LCi/b;LXe/o;)V
    .locals 0
    .param p1    # LTe/l;
        .annotation build LUe/f;
        .end annotation
    .end param
    .param p2    # [LCi/b;
        .annotation build LUe/f;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LTe/l<",
            "TT;>;[",
            "LCi/b<",
            "*>;",
            "LXe/o<",
            "-[",
            "Ljava/lang/Object;",
            "TR;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Ldf/a;-><init>(LTe/l;)V

    .line 2
    iput-object p2, p0, Ldf/Z1;->d:[LCi/b;

    const/4 p1, 0x0

    .line 3
    iput-object p1, p0, Ldf/Z1;->e:Ljava/lang/Iterable;

    .line 4
    iput-object p3, p0, Ldf/Z1;->f:LXe/o;

    return-void
.end method


# virtual methods
.method public m6(LCi/c;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LCi/c<",
            "-TR;>;)V"
        }
    .end annotation

    iget-object v0, p0, Ldf/Z1;->d:[LCi/b;

    if-nez v0, :cond_1

    const/16 v0, 0x8

    new-array v0, v0, [LCi/b;

    :try_start_0
    iget-object v1, p0, Ldf/Z1;->e:Ljava/lang/Iterable;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LCi/b;

    array-length v4, v0

    if-ne v2, v4, :cond_0

    shr-int/lit8 v4, v2, 0x1

    add-int/2addr v4, v2

    invoke-static {v0, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LCi/b;

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    :cond_0
    :goto_1
    add-int/lit8 v4, v2, 0x1

    aput-object v3, v0, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v4

    goto :goto_0

    :goto_2
    invoke-static {v0}, Lio/reactivex/exceptions/a;->b(Ljava/lang/Throwable;)V

    invoke-static {v0, p1}, Lmf/g;->b(Ljava/lang/Throwable;LCi/c;)V

    return-void

    :cond_1
    array-length v2, v0

    :cond_2
    if-nez v2, :cond_3

    new-instance v0, Ldf/C0;

    iget-object v1, p0, Ldf/a;->c:LTe/l;

    new-instance v2, Ldf/Z1$a;

    invoke-direct {v2, p0}, Ldf/Z1$a;-><init>(Ldf/Z1;)V

    invoke-direct {v0, v1, v2}, Ldf/C0;-><init>(LTe/l;LXe/o;)V

    invoke-virtual {v0, p1}, Ldf/C0;->m6(LCi/c;)V

    return-void

    :cond_3
    new-instance v1, Ldf/Z1$b;

    iget-object v3, p0, Ldf/Z1;->f:LXe/o;

    invoke-direct {v1, p1, v3, v2}, Ldf/Z1$b;-><init>(LCi/c;LXe/o;I)V

    invoke-interface {p1, v1}, LCi/c;->h(LCi/d;)V

    invoke-virtual {v1, v0, v2}, Ldf/Z1$b;->f([LCi/b;I)V

    iget-object p1, p0, Ldf/a;->c:LTe/l;

    invoke-virtual {p1, v1}, LTe/l;->l6(LTe/q;)V

    return-void
.end method
