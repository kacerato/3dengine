.class public final Lef/b;
.super LTe/s;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lef/b$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "LTe/s<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final b:[LTe/y;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "LTe/y<",
            "+TT;>;"
        }
    .end annotation
.end field

.field public final c:Ljava/lang/Iterable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Iterable<",
            "+",
            "LTe/y<",
            "+TT;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>([LTe/y;Ljava/lang/Iterable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "LTe/y<",
            "+TT;>;",
            "Ljava/lang/Iterable<",
            "+",
            "LTe/y<",
            "+TT;>;>;)V"
        }
    .end annotation

    invoke-direct {p0}, LTe/s;-><init>()V

    iput-object p1, p0, Lef/b;->b:[LTe/y;

    iput-object p2, p0, Lef/b;->c:Ljava/lang/Iterable;

    return-void
.end method


# virtual methods
.method public t1(LTe/v;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LTe/v<",
            "-TT;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lef/b;->b:[LTe/y;

    const/4 v1, 0x0

    if-nez v0, :cond_2

    const/16 v0, 0x8

    new-array v0, v0, [LTe/y;

    :try_start_0
    iget-object v2, p0, Lef/b;->c:Ljava/lang/Iterable;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v3, v1

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, LTe/y;

    if-nez v4, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "One of the sources is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    invoke-static {v0, p1}, LYe/e;->g(Ljava/lang/Throwable;LTe/v;)V

    return-void

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    array-length v5, v0

    if-ne v3, v5, :cond_1

    shr-int/lit8 v5, v3, 0x2

    add-int/2addr v5, v3

    new-array v5, v5, [LTe/y;

    invoke-static {v0, v1, v5, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v0, v5

    :cond_1
    add-int/lit8 v5, v3, 0x1

    aput-object v4, v0, v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v3, v5

    goto :goto_0

    :goto_1
    invoke-static {v0}, Lio/reactivex/exceptions/a;->b(Ljava/lang/Throwable;)V

    invoke-static {v0, p1}, LYe/e;->g(Ljava/lang/Throwable;LTe/v;)V

    return-void

    :cond_2
    array-length v3, v0

    :cond_3
    new-instance v2, LVe/b;

    invoke-direct {v2}, LVe/b;-><init>()V

    invoke-interface {p1, v2}, LTe/v;->e(LVe/c;)V

    new-instance v4, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v4}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    move v5, v1

    :goto_2
    if-ge v5, v3, :cond_7

    aget-object v6, v0, v5

    invoke-virtual {v2}, LVe/b;->d()Z

    move-result v7

    if-eqz v7, :cond_4

    return-void

    :cond_4
    if-nez v6, :cond_6

    invoke-virtual {v2}, LVe/b;->dispose()V

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v2, "One of the MaybeSources is null"

    invoke-direct {v0, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x1

    invoke-virtual {v4, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {p1, v0}, LTe/v;->onError(Ljava/lang/Throwable;)V

    goto :goto_3

    :cond_5
    invoke-static {v0}, Lqf/a;->Y(Ljava/lang/Throwable;)V

    :goto_3
    return-void

    :cond_6
    new-instance v7, Lef/b$a;

    invoke-direct {v7, p1, v2, v4}, Lef/b$a;-><init>(LTe/v;LVe/b;Ljava/util/concurrent/atomic/AtomicBoolean;)V

    invoke-interface {v6, v7}, LTe/y;->d(LTe/v;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_7
    if-nez v3, :cond_8

    invoke-interface {p1}, LTe/v;->a()V

    :cond_8
    return-void
.end method
