.class public final Lgf/i1$a;
.super Ljava/util/concurrent/atomic/AtomicInteger;
.source "SourceFile"

# interfaces
.implements LTe/I;
.implements LVe/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgf/i1;
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
        "LTe/I<",
        "TT;>;",
        "LVe/c;"
    }
.end annotation


# static fields
.field public static final l:J = -0x4eca0434695949bbL


# instance fields
.field public final b:LTe/I;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LTe/I<",
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

.field public h:LVe/c;

.field public volatile i:Z

.field public volatile j:Z

.field public k:Ljava/lang/Throwable;


# direct methods
.method public constructor <init>(LTe/I;JLjava/util/concurrent/TimeUnit;LTe/J;IZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LTe/I<",
            "-TT;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            "LTe/J;",
            "IZ)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object p1, p0, Lgf/i1$a;->b:LTe/I;

    iput-wide p2, p0, Lgf/i1$a;->c:J

    iput-object p4, p0, Lgf/i1$a;->d:Ljava/util/concurrent/TimeUnit;

    iput-object p5, p0, Lgf/i1$a;->e:LTe/J;

    new-instance p1, Ljf/c;

    invoke-direct {p1, p6}, Ljf/c;-><init>(I)V

    iput-object p1, p0, Lgf/i1$a;->f:Ljf/c;

    iput-boolean p7, p0, Lgf/i1$a;->g:Z

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lgf/i1$a;->j:Z

    invoke-virtual {p0}, Lgf/i1$a;->b()V

    return-void
.end method

.method public b()V
    .locals 17

    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    iget-object v1, v0, Lgf/i1$a;->b:LTe/I;

    iget-object v2, v0, Lgf/i1$a;->f:Ljf/c;

    iget-boolean v3, v0, Lgf/i1$a;->g:Z

    iget-object v4, v0, Lgf/i1$a;->d:Ljava/util/concurrent/TimeUnit;

    iget-object v5, v0, Lgf/i1$a;->e:LTe/J;

    iget-wide v6, v0, Lgf/i1$a;->c:J

    const/4 v8, 0x1

    move v9, v8

    :cond_1
    :goto_0
    iget-boolean v10, v0, Lgf/i1$a;->i:Z

    if-eqz v10, :cond_2

    iget-object v1, v0, Lgf/i1$a;->f:Ljf/c;

    invoke-virtual {v1}, Ljf/c;->clear()V

    return-void

    :cond_2
    iget-boolean v10, v0, Lgf/i1$a;->j:Z

    invoke-virtual {v2}, Ljf/c;->peek()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Long;

    if-nez v11, :cond_3

    move v12, v8

    goto :goto_1

    :cond_3
    const/4 v12, 0x0

    :goto_1
    invoke-virtual {v5, v4}, LTe/J;->e(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v13

    if-nez v12, :cond_4

    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v15

    sub-long/2addr v13, v6

    cmp-long v11, v15, v13

    if-lez v11, :cond_4

    move v12, v8

    :cond_4
    if-eqz v10, :cond_8

    if-eqz v3, :cond_6

    if-eqz v12, :cond_8

    iget-object v2, v0, Lgf/i1$a;->k:Ljava/lang/Throwable;

    if-eqz v2, :cond_5

    invoke-interface {v1, v2}, LTe/I;->onError(Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_5
    invoke-interface {v1}, LTe/I;->a()V

    :goto_2
    return-void

    :cond_6
    iget-object v10, v0, Lgf/i1$a;->k:Ljava/lang/Throwable;

    if-eqz v10, :cond_7

    iget-object v2, v0, Lgf/i1$a;->f:Ljf/c;

    invoke-virtual {v2}, Ljf/c;->clear()V

    invoke-interface {v1, v10}, LTe/I;->onError(Ljava/lang/Throwable;)V

    return-void

    :cond_7
    if-eqz v12, :cond_8

    invoke-interface {v1}, LTe/I;->a()V

    return-void

    :cond_8
    if-eqz v12, :cond_9

    neg-int v9, v9

    invoke-virtual {v0, v9}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    move-result v9

    if-nez v9, :cond_1

    return-void

    :cond_9
    invoke-virtual {v2}, Ljf/c;->poll()Ljava/lang/Object;

    invoke-virtual {v2}, Ljf/c;->poll()Ljava/lang/Object;

    move-result-object v10

    invoke-interface {v1, v10}, LTe/I;->g(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public d()Z
    .locals 1

    iget-boolean v0, p0, Lgf/i1$a;->i:Z

    return v0
.end method

.method public dispose()V
    .locals 1

    iget-boolean v0, p0, Lgf/i1$a;->i:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lgf/i1$a;->i:Z

    iget-object v0, p0, Lgf/i1$a;->h:LVe/c;

    invoke-interface {v0}, LVe/c;->dispose()V

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lgf/i1$a;->f:Ljf/c;

    invoke-virtual {v0}, Ljf/c;->clear()V

    :cond_0
    return-void
.end method

.method public e(LVe/c;)V
    .locals 1

    iget-object v0, p0, Lgf/i1$a;->h:LVe/c;

    invoke-static {v0, p1}, LYe/d;->j(LVe/c;LVe/c;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p1, p0, Lgf/i1$a;->h:LVe/c;

    iget-object p1, p0, Lgf/i1$a;->b:LTe/I;

    invoke-interface {p1, p0}, LTe/I;->e(LVe/c;)V

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

    iget-object v0, p0, Lgf/i1$a;->f:Ljf/c;

    iget-object v1, p0, Lgf/i1$a;->e:LTe/J;

    iget-object v2, p0, Lgf/i1$a;->d:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2}, LTe/J;->e(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljf/c;->r(Ljava/lang/Object;Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lgf/i1$a;->b()V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 0

    iput-object p1, p0, Lgf/i1$a;->k:Ljava/lang/Throwable;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lgf/i1$a;->j:Z

    invoke-virtual {p0}, Lgf/i1$a;->b()V

    return-void
.end method
