.class public final Lrf/d;
.super Lrf/c;
.source "SourceFile"


# annotations
.annotation runtime LUe/b;
    value = .enum LUe/a;->FULL:LUe/a;
.end annotation

.annotation runtime LUe/h;
    value = "none"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrf/d$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lrf/c<",
        "TT;>;"
    }
.end annotation


# static fields
.field public static final o:[Lrf/d$a;

.field public static final p:[Lrf/d$a;


# instance fields
.field public final c:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final d:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "LCi/d;",
            ">;"
        }
    .end annotation
.end field

.field public final e:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "[",
            "Lrf/d$a<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field public final f:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final g:I

.field public final h:I

.field public final i:Z

.field public volatile j:Laf/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Laf/o<",
            "TT;>;"
        }
    .end annotation
.end field

.field public volatile k:Z

.field public volatile l:Ljava/lang/Throwable;

.field public m:I

.field public n:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    new-array v1, v0, [Lrf/d$a;

    sput-object v1, Lrf/d;->o:[Lrf/d$a;

    new-array v0, v0, [Lrf/d$a;

    sput-object v0, Lrf/d;->p:[Lrf/d$a;

    return-void
.end method

.method public constructor <init>(IZ)V
    .locals 1

    invoke-direct {p0}, Lrf/c;-><init>()V

    const-string v0, "bufferSize"

    invoke-static {p1, v0}, LZe/b;->h(ILjava/lang/String;)I

    iput p1, p0, Lrf/d;->g:I

    shr-int/lit8 v0, p1, 0x2

    sub-int/2addr p1, v0

    iput p1, p0, Lrf/d;->h:I

    new-instance p1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object p1, p0, Lrf/d;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v0, Lrf/d;->o:[Lrf/d$a;

    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lrf/d;->e:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object p1, p0, Lrf/d;->d:Ljava/util/concurrent/atomic/AtomicReference;

    iput-boolean p2, p0, Lrf/d;->i:Z

    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object p1, p0, Lrf/d;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method public static U8()Lrf/d;
    .locals 3
    .annotation runtime LUe/d;
    .end annotation

    .annotation build LUe/f;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lrf/d<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lrf/d;

    invoke-static {}, LTe/l;->a0()I

    move-result v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lrf/d;-><init>(IZ)V

    return-object v0
.end method

.method public static V8(I)Lrf/d;
    .locals 2
    .annotation runtime LUe/d;
    .end annotation

    .annotation build LUe/f;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I)",
            "Lrf/d<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lrf/d;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lrf/d;-><init>(IZ)V

    return-object v0
.end method

.method public static W8(IZ)Lrf/d;
    .locals 1
    .annotation runtime LUe/d;
    .end annotation

    .annotation build LUe/f;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(IZ)",
            "Lrf/d<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lrf/d;

    invoke-direct {v0, p0, p1}, Lrf/d;-><init>(IZ)V

    return-object v0
.end method

.method public static X8(Z)Lrf/d;
    .locals 2
    .annotation runtime LUe/d;
    .end annotation

    .annotation build LUe/f;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(Z)",
            "Lrf/d<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lrf/d;

    invoke-static {}, LTe/l;->a0()I

    move-result v1

    invoke-direct {v0, v1, p0}, Lrf/d;-><init>(IZ)V

    return-object v0
.end method


# virtual methods
.method public O8()Ljava/lang/Throwable;
    .locals 1

    iget-object v0, p0, Lrf/d;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lrf/d;->l:Ljava/lang/Throwable;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public P8()Z
    .locals 1

    iget-object v0, p0, Lrf/d;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lrf/d;->l:Ljava/lang/Throwable;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public Q8()Z
    .locals 1

    iget-object v0, p0, Lrf/d;->e:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lrf/d$a;

    array-length v0, v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public R8()Z
    .locals 1

    iget-object v0, p0, Lrf/d;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lrf/d;->l:Ljava/lang/Throwable;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public T8(Lrf/d$a;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrf/d$a<",
            "TT;>;)Z"
        }
    .end annotation

    :cond_0
    iget-object v0, p0, Lrf/d;->e:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lrf/d$a;

    sget-object v1, Lrf/d;->p:[Lrf/d$a;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    return v2

    :cond_1
    array-length v1, v0

    add-int/lit8 v3, v1, 0x1

    new-array v3, v3, [Lrf/d$a;

    invoke-static {v0, v2, v3, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aput-object p1, v3, v1

    iget-object v1, p0, Lrf/d;->e:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v1, v0, v3}, Landroidx/lifecycle/c;->a(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1
.end method

.method public Y8()V
    .locals 20

    move-object/from16 v1, p0

    iget-object v0, v1, Lrf/d;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v2, v1, Lrf/d;->e:Ljava/util/concurrent/atomic/AtomicReference;

    iget v0, v1, Lrf/d;->m:I

    iget v3, v1, Lrf/d;->h:I

    iget v4, v1, Lrf/d;->n:I

    const/4 v5, 0x1

    move v6, v5

    :cond_1
    :goto_0
    iget-object v7, v1, Lrf/d;->j:Laf/o;

    if-eqz v7, :cond_14

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Lrf/d$a;

    array-length v9, v8

    if-eqz v9, :cond_14

    array-length v9, v8

    const-wide/16 v10, -0x1

    move-wide v14, v10

    const/4 v13, 0x0

    :goto_1
    const-wide/16 v16, 0x0

    if-ge v13, v9, :cond_4

    aget-object v12, v8, v13

    invoke-virtual {v12}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v18

    cmp-long v16, v18, v16

    if-ltz v16, :cond_3

    cmp-long v16, v14, v10

    if-nez v16, :cond_2

    iget-wide v14, v12, Lrf/d$a;->d:J

    sub-long v14, v18, v14

    goto :goto_2

    :cond_2
    iget-wide v10, v12, Lrf/d$a;->d:J

    sub-long v10, v18, v10

    invoke-static {v14, v15, v10, v11}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v14

    :cond_3
    :goto_2
    add-int/lit8 v13, v13, 0x1

    const-wide/16 v10, -0x1

    goto :goto_1

    :cond_4
    move v9, v0

    :cond_5
    :goto_3
    cmp-long v10, v14, v16

    if-lez v10, :cond_e

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lrf/d$a;

    sget-object v11, Lrf/d;->p:[Lrf/d$a;

    if-ne v0, v11, :cond_6

    invoke-interface {v7}, Laf/o;->clear()V

    return-void

    :cond_6
    if-eq v8, v0, :cond_7

    goto/16 :goto_a

    :cond_7
    iget-boolean v0, v1, Lrf/d;->k:Z

    :try_start_0
    invoke-interface {v7}, Laf/o;->poll()Ljava/lang/Object;

    move-result-object v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_4

    :catchall_0
    move-exception v0

    move-object v11, v0

    invoke-static {v11}, Lio/reactivex/exceptions/a;->b(Ljava/lang/Throwable;)V

    iget-object v0, v1, Lrf/d;->d:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v0}, Lmf/j;->a(Ljava/util/concurrent/atomic/AtomicReference;)Z

    iput-object v11, v1, Lrf/d;->l:Ljava/lang/Throwable;

    iput-boolean v5, v1, Lrf/d;->k:Z

    const/4 v11, 0x0

    move v0, v5

    :goto_4
    if-nez v11, :cond_8

    move v12, v5

    goto :goto_5

    :cond_8
    const/4 v12, 0x0

    :goto_5
    if-eqz v0, :cond_b

    if-eqz v12, :cond_b

    iget-object v0, v1, Lrf/d;->l:Ljava/lang/Throwable;

    if-eqz v0, :cond_9

    sget-object v3, Lrf/d;->p:[Lrf/d$a;

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lrf/d$a;

    array-length v3, v2

    const/4 v12, 0x0

    :goto_6
    if-ge v12, v3, :cond_a

    aget-object v4, v2, v12

    invoke-virtual {v4, v0}, Lrf/d$a;->b(Ljava/lang/Throwable;)V

    add-int/lit8 v12, v12, 0x1

    goto :goto_6

    :cond_9
    sget-object v0, Lrf/d;->p:[Lrf/d$a;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lrf/d$a;

    array-length v2, v0

    const/4 v12, 0x0

    :goto_7
    if-ge v12, v2, :cond_a

    aget-object v3, v0, v12

    invoke-virtual {v3}, Lrf/d$a;->a()V

    add-int/lit8 v12, v12, 0x1

    goto :goto_7

    :cond_a
    return-void

    :cond_b
    if-eqz v12, :cond_c

    goto :goto_9

    :cond_c
    array-length v0, v8

    const/4 v10, 0x0

    :goto_8
    if-ge v10, v0, :cond_d

    aget-object v12, v8, v10

    invoke-virtual {v12, v11}, Lrf/d$a;->c(Ljava/lang/Object;)V

    add-int/lit8 v10, v10, 0x1

    goto :goto_8

    :cond_d
    const-wide/16 v10, 0x1

    sub-long/2addr v14, v10

    if-eq v4, v5, :cond_5

    add-int/lit8 v9, v9, 0x1

    if-ne v9, v3, :cond_5

    iget-object v0, v1, Lrf/d;->d:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LCi/d;

    int-to-long v9, v3

    invoke-interface {v0, v9, v10}, LCi/d;->i(J)V

    const/4 v9, 0x0

    goto/16 :goto_3

    :cond_e
    :goto_9
    if-nez v10, :cond_13

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lrf/d$a;

    sget-object v10, Lrf/d;->p:[Lrf/d$a;

    if-ne v0, v10, :cond_f

    invoke-interface {v7}, Laf/o;->clear()V

    return-void

    :cond_f
    if-eq v8, v0, :cond_10

    :goto_a
    move v0, v9

    goto/16 :goto_0

    :cond_10
    iget-boolean v0, v1, Lrf/d;->k:Z

    if-eqz v0, :cond_13

    invoke-interface {v7}, Laf/o;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object v0, v1, Lrf/d;->l:Ljava/lang/Throwable;

    if-eqz v0, :cond_11

    invoke-virtual {v2, v10}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lrf/d$a;

    array-length v3, v2

    const/4 v12, 0x0

    :goto_b
    if-ge v12, v3, :cond_12

    aget-object v4, v2, v12

    invoke-virtual {v4, v0}, Lrf/d$a;->b(Ljava/lang/Throwable;)V

    add-int/lit8 v12, v12, 0x1

    goto :goto_b

    :cond_11
    invoke-virtual {v2, v10}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lrf/d$a;

    array-length v2, v0

    const/4 v12, 0x0

    :goto_c
    if-ge v12, v2, :cond_12

    aget-object v3, v0, v12

    invoke-virtual {v3}, Lrf/d$a;->a()V

    add-int/lit8 v12, v12, 0x1

    goto :goto_c

    :cond_12
    return-void

    :cond_13
    move v0, v9

    :cond_14
    iget-object v7, v1, Lrf/d;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    neg-int v6, v6

    invoke-virtual {v7, v6}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    move-result v6

    if-nez v6, :cond_1

    return-void
.end method

.method public Z8(Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    iget-object v0, p0, Lrf/d;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const-string v0, "offer called with null. Null values are generally not allowed in 2.x operators and sources."

    invoke-static {p1, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget v0, p0, Lrf/d;->n:I

    if-nez v0, :cond_1

    iget-object v0, p0, Lrf/d;->j:Laf/o;

    invoke-interface {v0, p1}, Laf/o;->offer(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lrf/d;->Y8()V

    const/4 p1, 0x1

    return p1

    :cond_1
    return v1
.end method

.method public a()V
    .locals 3

    iget-object v0, p0, Lrf/d;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-boolean v2, p0, Lrf/d;->k:Z

    invoke-virtual {p0}, Lrf/d;->Y8()V

    :cond_0
    return-void
.end method

.method public a9(Lrf/d$a;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrf/d$a<",
            "TT;>;)V"
        }
    .end annotation

    :cond_0
    iget-object v0, p0, Lrf/d;->e:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lrf/d$a;

    array-length v1, v0

    if-nez v1, :cond_1

    return-void

    :cond_1
    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_3

    aget-object v4, v0, v3

    if-ne v4, p1, :cond_2

    goto :goto_1

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    const/4 v3, -0x1

    :goto_1
    if-gez v3, :cond_4

    goto :goto_2

    :cond_4
    const/4 v4, 0x1

    if-ne v1, v4, :cond_6

    iget-boolean v1, p0, Lrf/d;->i:Z

    if-eqz v1, :cond_5

    iget-object v1, p0, Lrf/d;->e:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v2, Lrf/d;->p:[Lrf/d$a;

    invoke-static {v1, v0, v2}, Landroidx/lifecycle/c;->a(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lrf/d;->d:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {p1}, Lmf/j;->a(Ljava/util/concurrent/atomic/AtomicReference;)Z

    iget-object p1, p0, Lrf/d;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_2

    :cond_5
    iget-object v1, p0, Lrf/d;->e:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v2, Lrf/d;->o:[Lrf/d$a;

    invoke-static {v1, v0, v2}, Landroidx/lifecycle/c;->a(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    :cond_6
    add-int/lit8 v5, v1, -0x1

    new-array v5, v5, [Lrf/d$a;

    invoke-static {v0, v2, v5, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v2, v3, 0x1

    sub-int/2addr v1, v3

    sub-int/2addr v1, v4

    invoke-static {v0, v2, v5, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p0, Lrf/d;->e:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v1, v0, v5}, Landroidx/lifecycle/c;->a(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_2
    return-void
.end method

.method public b9()V
    .locals 2

    iget-object v0, p0, Lrf/d;->d:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lmf/g;->INSTANCE:Lmf/g;

    invoke-static {v0, v1}, Lmf/j;->j(Ljava/util/concurrent/atomic/AtomicReference;LCi/d;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljf/b;

    iget v1, p0, Lrf/d;->g:I

    invoke-direct {v0, v1}, Ljf/b;-><init>(I)V

    iput-object v0, p0, Lrf/d;->j:Laf/o;

    :cond_0
    return-void
.end method

.method public c9()V
    .locals 2

    iget-object v0, p0, Lrf/d;->d:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lmf/g;->INSTANCE:Lmf/g;

    invoke-static {v0, v1}, Lmf/j;->j(Ljava/util/concurrent/atomic/AtomicReference;LCi/d;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljf/c;

    iget v1, p0, Lrf/d;->g:I

    invoke-direct {v0, v1}, Ljf/c;-><init>(I)V

    iput-object v0, p0, Lrf/d;->j:Laf/o;

    :cond_0
    return-void
.end method

.method public g(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget-object v0, p0, Lrf/d;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lrf/d;->n:I

    if-nez v0, :cond_1

    const-string v0, "onNext called with null. Null values are generally not allowed in 2.x operators and sources."

    invoke-static {p1, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v0, p0, Lrf/d;->j:Laf/o;

    invoke-interface {v0, p1}, Laf/o;->offer(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lrf/d;->d:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {p1}, Lmf/j;->a(Ljava/util/concurrent/atomic/AtomicReference;)Z

    new-instance p1, Lio/reactivex/exceptions/MissingBackpressureException;

    invoke-direct {p1}, Lio/reactivex/exceptions/MissingBackpressureException;-><init>()V

    invoke-virtual {p0, p1}, Lrf/d;->onError(Ljava/lang/Throwable;)V

    return-void

    :cond_1
    invoke-virtual {p0}, Lrf/d;->Y8()V

    return-void
.end method

.method public h(LCi/d;)V
    .locals 3

    iget-object v0, p0, Lrf/d;->d:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v0, p1}, Lmf/j;->j(Ljava/util/concurrent/atomic/AtomicReference;LCi/d;)Z

    move-result v0

    if-eqz v0, :cond_2

    instance-of v0, p1, Laf/l;

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Laf/l;

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Laf/k;->m(I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    iput v1, p0, Lrf/d;->n:I

    iput-object v0, p0, Lrf/d;->j:Laf/o;

    iput-boolean v2, p0, Lrf/d;->k:Z

    invoke-virtual {p0}, Lrf/d;->Y8()V

    return-void

    :cond_0
    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    iput v1, p0, Lrf/d;->n:I

    iput-object v0, p0, Lrf/d;->j:Laf/o;

    iget v0, p0, Lrf/d;->g:I

    int-to-long v0, v0

    invoke-interface {p1, v0, v1}, LCi/d;->i(J)V

    return-void

    :cond_1
    new-instance v0, Ljf/b;

    iget v1, p0, Lrf/d;->g:I

    invoke-direct {v0, v1}, Ljf/b;-><init>(I)V

    iput-object v0, p0, Lrf/d;->j:Laf/o;

    iget v0, p0, Lrf/d;->g:I

    int-to-long v0, v0

    invoke-interface {p1, v0, v1}, LCi/d;->i(J)V

    :cond_2
    return-void
.end method

.method public m6(LCi/c;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LCi/c<",
            "-TT;>;)V"
        }
    .end annotation

    new-instance v0, Lrf/d$a;

    invoke-direct {v0, p1, p0}, Lrf/d$a;-><init>(LCi/c;Lrf/d;)V

    invoke-interface {p1, v0}, LCi/c;->h(LCi/d;)V

    invoke-virtual {p0, v0}, Lrf/d;->T8(Lrf/d$a;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v1

    const-wide/high16 v3, -0x8000000000000000L

    cmp-long p1, v1, v3

    if-nez p1, :cond_0

    invoke-virtual {p0, v0}, Lrf/d;->a9(Lrf/d$a;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lrf/d;->Y8()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lrf/d;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lrf/d;->i:Z

    if-nez v0, :cond_3

    :cond_2
    iget-object v0, p0, Lrf/d;->l:Ljava/lang/Throwable;

    if-eqz v0, :cond_3

    invoke-interface {p1, v0}, LCi/c;->onError(Ljava/lang/Throwable;)V

    return-void

    :cond_3
    invoke-interface {p1}, LCi/c;->a()V

    :goto_0
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 3

    const-string v0, "onError called with null. Null values are generally not allowed in 2.x operators and sources."

    invoke-static {p1, v0}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v0, p0, Lrf/d;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p1, p0, Lrf/d;->l:Ljava/lang/Throwable;

    iput-boolean v2, p0, Lrf/d;->k:Z

    invoke-virtual {p0}, Lrf/d;->Y8()V

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lqf/a;->Y(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
