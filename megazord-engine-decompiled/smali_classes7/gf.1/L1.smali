.class public final Lgf/L1;
.super Lgf/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgf/L1$a;,
        Lgf/L1$c;,
        Lgf/L1$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Lgf/a<",
        "TT;TR;>;"
    }
.end annotation


# instance fields
.field public final c:[LTe/G;
    .annotation build LUe/g;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "LTe/G<",
            "*>;"
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
            "LTe/G<",
            "*>;>;"
        }
    .end annotation
.end field

.field public final e:LXe/o;
    .annotation build LUe/f;
    .end annotation

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
.method public constructor <init>(LTe/G;Ljava/lang/Iterable;LXe/o;)V
    .locals 0
    .param p1    # LTe/G;
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
            "LTe/G<",
            "TT;>;",
            "Ljava/lang/Iterable<",
            "+",
            "LTe/G<",
            "*>;>;",
            "LXe/o<",
            "-[",
            "Ljava/lang/Object;",
            "TR;>;)V"
        }
    .end annotation

    .line 5
    invoke-direct {p0, p1}, Lgf/a;-><init>(LTe/G;)V

    const/4 p1, 0x0

    .line 6
    iput-object p1, p0, Lgf/L1;->c:[LTe/G;

    .line 7
    iput-object p2, p0, Lgf/L1;->d:Ljava/lang/Iterable;

    .line 8
    iput-object p3, p0, Lgf/L1;->e:LXe/o;

    return-void
.end method

.method public constructor <init>(LTe/G;[LTe/G;LXe/o;)V
    .locals 0
    .param p1    # LTe/G;
        .annotation build LUe/f;
        .end annotation
    .end param
    .param p2    # [LTe/G;
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
            "LTe/G<",
            "TT;>;[",
            "LTe/G<",
            "*>;",
            "LXe/o<",
            "-[",
            "Ljava/lang/Object;",
            "TR;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lgf/a;-><init>(LTe/G;)V

    .line 2
    iput-object p2, p0, Lgf/L1;->c:[LTe/G;

    const/4 p1, 0x0

    .line 3
    iput-object p1, p0, Lgf/L1;->d:Ljava/lang/Iterable;

    .line 4
    iput-object p3, p0, Lgf/L1;->e:LXe/o;

    return-void
.end method


# virtual methods
.method public J5(LTe/I;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LTe/I<",
            "-TR;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lgf/L1;->c:[LTe/G;

    if-nez v0, :cond_1

    const/16 v0, 0x8

    new-array v0, v0, [LTe/G;

    :try_start_0
    iget-object v1, p0, Lgf/L1;->d:Ljava/lang/Iterable;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LTe/G;

    array-length v4, v0

    if-ne v2, v4, :cond_0

    shr-int/lit8 v4, v2, 0x1

    add-int/2addr v4, v2

    invoke-static {v0, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LTe/G;

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

    invoke-static {v0, p1}, LYe/e;->h(Ljava/lang/Throwable;LTe/I;)V

    return-void

    :cond_1
    array-length v2, v0

    :cond_2
    if-nez v2, :cond_3

    new-instance v0, Lgf/x0;

    iget-object v1, p0, Lgf/a;->b:LTe/G;

    new-instance v2, Lgf/L1$a;

    invoke-direct {v2, p0}, Lgf/L1$a;-><init>(Lgf/L1;)V

    invoke-direct {v0, v1, v2}, Lgf/x0;-><init>(LTe/G;LXe/o;)V

    invoke-virtual {v0, p1}, Lgf/x0;->J5(LTe/I;)V

    return-void

    :cond_3
    new-instance v1, Lgf/L1$b;

    iget-object v3, p0, Lgf/L1;->e:LXe/o;

    invoke-direct {v1, p1, v3, v2}, Lgf/L1$b;-><init>(LTe/I;LXe/o;I)V

    invoke-interface {p1, v1}, LTe/I;->e(LVe/c;)V

    invoke-virtual {v1, v0, v2}, Lgf/L1$b;->i([LTe/G;I)V

    iget-object p1, p0, Lgf/a;->b:LTe/G;

    invoke-interface {p1, v1}, LTe/G;->b(LTe/I;)V

    return-void
.end method
