.class public final Lcf/a;
.super LTe/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcf/a$a;
    }
.end annotation


# instance fields
.field public final b:[LTe/i;

.field public final c:Ljava/lang/Iterable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Iterable<",
            "+",
            "LTe/i;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>([LTe/i;Ljava/lang/Iterable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "LTe/i;",
            "Ljava/lang/Iterable<",
            "+",
            "LTe/i;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, LTe/c;-><init>()V

    iput-object p1, p0, Lcf/a;->b:[LTe/i;

    iput-object p2, p0, Lcf/a;->c:Ljava/lang/Iterable;

    return-void
.end method


# virtual methods
.method public K0(LTe/f;)V
    .locals 9

    iget-object v0, p0, Lcf/a;->b:[LTe/i;

    const-string v1, "One of the sources is null"

    const/4 v2, 0x0

    if-nez v0, :cond_2

    const/16 v0, 0x8

    new-array v0, v0, [LTe/i;

    :try_start_0
    iget-object v3, p0, Lcf/a;->c:Ljava/lang/Iterable;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v4, v2

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, LTe/i;

    if-nez v5, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    invoke-static {v0, p1}, LYe/e;->e(Ljava/lang/Throwable;LTe/f;)V

    return-void

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    array-length v6, v0

    if-ne v4, v6, :cond_1

    shr-int/lit8 v6, v4, 0x2

    add-int/2addr v6, v4

    new-array v6, v6, [LTe/i;

    invoke-static {v0, v2, v6, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v0, v6

    :cond_1
    add-int/lit8 v6, v4, 0x1

    aput-object v5, v0, v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v4, v6

    goto :goto_0

    :goto_1
    invoke-static {v0}, Lio/reactivex/exceptions/a;->b(Ljava/lang/Throwable;)V

    invoke-static {v0, p1}, LYe/e;->e(Ljava/lang/Throwable;LTe/f;)V

    return-void

    :cond_2
    array-length v4, v0

    :cond_3
    new-instance v3, LVe/b;

    invoke-direct {v3}, LVe/b;-><init>()V

    invoke-interface {p1, v3}, LTe/f;->e(LVe/c;)V

    new-instance v5, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v5}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    move v6, v2

    :goto_2
    if-ge v6, v4, :cond_7

    aget-object v7, v0, v6

    invoke-virtual {v3}, LVe/b;->d()Z

    move-result v8

    if-eqz v8, :cond_4

    return-void

    :cond_4
    if-nez v7, :cond_6

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-virtual {v5, v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {v3}, LVe/b;->dispose()V

    invoke-interface {p1, v0}, LTe/f;->onError(Ljava/lang/Throwable;)V

    goto :goto_3

    :cond_5
    invoke-static {v0}, Lqf/a;->Y(Ljava/lang/Throwable;)V

    :goto_3
    return-void

    :cond_6
    new-instance v8, Lcf/a$a;

    invoke-direct {v8, v5, v3, p1}, Lcf/a$a;-><init>(Ljava/util/concurrent/atomic/AtomicBoolean;LVe/b;LTe/f;)V

    invoke-interface {v7, v8}, LTe/i;->b(LTe/f;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_7
    if-nez v4, :cond_8

    invoke-interface {p1}, LTe/f;->a()V

    :cond_8
    return-void
.end method
