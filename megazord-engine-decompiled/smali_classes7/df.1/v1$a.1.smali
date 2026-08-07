.class public final Ldf/v1$a;
.super Ljava/util/concurrent/atomic/AtomicInteger;
.source "SourceFile"

# interfaces
.implements LTe/q;
.implements LCi/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldf/v1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicInteger;",
        "LTe/q<",
        "TT;>;",
        "LCi/d;"
    }
.end annotation


# static fields
.field public static final m:J = -0x4eca0434695949bbL


# instance fields
.field public final b:LCi/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LCi/c<",
            "-TT;>;"
        }
    .end annotation
.end field

.field public final c:J

.field public final d:Ljava/util/concurrent/TimeUnit;

.field public final e:LTe/J;

.field public final f:Ljf/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljf/c<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public final g:Z

.field public h:LCi/d;

.field public final i:Ljava/util/concurrent/atomic/AtomicLong;

.field public volatile j:Z

.field public volatile k:Z

.field public l:Ljava/lang/Throwable;


# direct methods
.method public constructor <init>(LCi/c;JLjava/util/concurrent/TimeUnit;LTe/J;IZ)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LCi/c<",
            "-TT;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            "LTe/J;",
            "IZ)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Ldf/v1$a;->i:Ljava/util/concurrent/atomic/AtomicLong;

    iput-object p1, p0, Ldf/v1$a;->b:LCi/c;

    iput-wide p2, p0, Ldf/v1$a;->c:J

    iput-object p4, p0, Ldf/v1$a;->d:Ljava/util/concurrent/TimeUnit;

    iput-object p5, p0, Ldf/v1$a;->e:LTe/J;

    new-instance p1, Ljf/c;

    invoke-direct {p1, p6}, Ljf/c;-><init>(I)V

    iput-object p1, p0, Ldf/v1$a;->f:Ljf/c;

    iput-boolean p7, p0, Ldf/v1$a;->g:Z

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Ldf/v1$a;->k:Z

    invoke-virtual {p0}, Ldf/v1$a;->c()V

    return-void
.end method

.method public b(ZZLCi/c;Z)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ",
            "LCi/c<",
            "-TT;>;Z)Z"
        }
    .end annotation

    iget-boolean v0, p0, Ldf/v1$a;->j:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object p1, p0, Ldf/v1$a;->f:Ljf/c;

    invoke-virtual {p1}, Ljf/c;->clear()V

    return v1

    :cond_0
    if-eqz p1, :cond_4

    if-eqz p4, :cond_2

    if-eqz p2, :cond_4

    iget-object p1, p0, Ldf/v1$a;->l:Ljava/lang/Throwable;

    if-eqz p1, :cond_1

    invoke-interface {p3, p1}, LCi/c;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_1
    invoke-interface {p3}, LCi/c;->a()V

    :goto_0
    return v1

    :cond_2
    iget-object p1, p0, Ldf/v1$a;->l:Ljava/lang/Throwable;

    if-eqz p1, :cond_3

    iget-object p2, p0, Ldf/v1$a;->f:Ljf/c;

    invoke-virtual {p2}, Ljf/c;->clear()V

    invoke-interface {p3, p1}, LCi/c;->onError(Ljava/lang/Throwable;)V

    return v1

    :cond_3
    if-eqz p2, :cond_4

    invoke-interface {p3}, LCi/c;->a()V

    return v1

    :cond_4
    const/4 p1, 0x0

    return p1
.end method

.method public c()V
    .locals 23

    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    iget-object v1, v0, Ldf/v1$a;->b:LCi/c;

    iget-object v2, v0, Ldf/v1$a;->f:Ljf/c;

    iget-boolean v3, v0, Ldf/v1$a;->g:Z

    iget-object v4, v0, Ldf/v1$a;->d:Ljava/util/concurrent/TimeUnit;

    iget-object v5, v0, Ldf/v1$a;->e:LTe/J;

    iget-wide v6, v0, Ldf/v1$a;->c:J

    const/4 v9, 0x1

    :cond_1
    iget-object v10, v0, Ldf/v1$a;->i:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v10}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v10

    const-wide/16 v14, 0x0

    :goto_0
    cmp-long v16, v14, v10

    if-eqz v16, :cond_5

    iget-boolean v8, v0, Ldf/v1$a;->k:Z

    invoke-virtual {v2}, Ljf/c;->peek()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/Long;

    if-nez v17, :cond_2

    const/16 v18, 0x1

    goto :goto_1

    :cond_2
    const/16 v18, 0x0

    :goto_1
    invoke-virtual {v5, v4}, LTe/J;->e(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v19

    if-nez v18, :cond_3

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Long;->longValue()J

    move-result-wide v21

    sub-long v19, v19, v6

    cmp-long v17, v21, v19

    if-lez v17, :cond_3

    const/4 v12, 0x1

    goto :goto_2

    :cond_3
    move/from16 v12, v18

    :goto_2
    invoke-virtual {v0, v8, v12, v1, v3}, Ldf/v1$a;->b(ZZLCi/c;Z)Z

    move-result v8

    if-eqz v8, :cond_4

    return-void

    :cond_4
    if-eqz v12, :cond_6

    :cond_5
    const-wide/16 v10, 0x0

    goto :goto_3

    :cond_6
    invoke-virtual {v2}, Ljf/c;->poll()Ljava/lang/Object;

    invoke-virtual {v2}, Ljf/c;->poll()Ljava/lang/Object;

    move-result-object v8

    invoke-interface {v1, v8}, LCi/c;->g(Ljava/lang/Object;)V

    const-wide/16 v12, 0x1

    add-long/2addr v14, v12

    goto :goto_0

    :goto_3
    cmp-long v8, v14, v10

    if-eqz v8, :cond_7

    iget-object v8, v0, Ldf/v1$a;->i:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {v8, v14, v15}, Lio/reactivex/internal/util/d;->e(Ljava/util/concurrent/atomic/AtomicLong;J)J

    :cond_7
    neg-int v8, v9

    invoke-virtual {v0, v8}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    move-result v9

    if-nez v9, :cond_1

    return-void
.end method

.method public cancel()V
    .locals 1

    iget-boolean v0, p0, Ldf/v1$a;->j:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Ldf/v1$a;->j:Z

    iget-object v0, p0, Ldf/v1$a;->h:LCi/d;

    invoke-interface {v0}, LCi/d;->cancel()V

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Ldf/v1$a;->f:Ljf/c;

    invoke-virtual {v0}, Ljf/c;->clear()V

    :cond_0
    return-void
.end method

.method public g(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget-object v0, p0, Ldf/v1$a;->e:LTe/J;

    iget-object v1, p0, Ldf/v1$a;->d:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1}, LTe/J;->e(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    iget-object v2, p0, Ldf/v1$a;->f:Ljf/c;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v2, v0, p1}, Ljf/c;->r(Ljava/lang/Object;Ljava/lang/Object;)Z

    invoke-virtual {p0}, Ldf/v1$a;->c()V

    return-void
.end method

.method public h(LCi/d;)V
    .locals 2

    iget-object v0, p0, Ldf/v1$a;->h:LCi/d;

    invoke-static {v0, p1}, Lmf/j;->n(LCi/d;LCi/d;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p1, p0, Ldf/v1$a;->h:LCi/d;

    iget-object v0, p0, Ldf/v1$a;->b:LCi/c;

    invoke-interface {v0, p0}, LCi/c;->h(LCi/d;)V

    const-wide v0, 0x7fffffffffffffffL

    invoke-interface {p1, v0, v1}, LCi/d;->i(J)V

    :cond_0
    return-void
.end method

.method public i(J)V
    .locals 1

    invoke-static {p1, p2}, Lmf/j;->m(J)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ldf/v1$a;->i:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {v0, p1, p2}, Lio/reactivex/internal/util/d;->a(Ljava/util/concurrent/atomic/AtomicLong;J)J

    invoke-virtual {p0}, Ldf/v1$a;->c()V

    :cond_0
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 0

    iput-object p1, p0, Ldf/v1$a;->l:Ljava/lang/Throwable;

    const/4 p1, 0x1

    iput-boolean p1, p0, Ldf/v1$a;->k:Z

    invoke-virtual {p0}, Ldf/v1$a;->c()V

    return-void
.end method
