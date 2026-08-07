.class public final Ldf/c1$a;
.super Ljava/util/concurrent/atomic/AtomicInteger;
.source "SourceFile"

# interfaces
.implements LTe/q;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldf/c1;
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
        "TT;>;"
    }
.end annotation


# static fields
.field public static final g:J = -0x628271a96862fff0L


# instance fields
.field public final b:LCi/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LCi/c<",
            "-TT;>;"
        }
    .end annotation
.end field

.field public final c:Lmf/i;

.field public final d:LCi/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LCi/b<",
            "+TT;>;"
        }
    .end annotation
.end field

.field public final e:LXe/e;

.field public f:J


# direct methods
.method public constructor <init>(LCi/c;LXe/e;Lmf/i;LCi/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LCi/c<",
            "-TT;>;",
            "LXe/e;",
            "Lmf/i;",
            "LCi/b<",
            "+TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object p1, p0, Ldf/c1$a;->b:LCi/c;

    iput-object p3, p0, Ldf/c1$a;->c:Lmf/i;

    iput-object p4, p0, Ldf/c1$a;->d:LCi/b;

    iput-object p2, p0, Ldf/c1$a;->e:LXe/e;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Ldf/c1$a;->e:LXe/e;

    invoke-interface {v0}, LXe/e;->getAsBoolean()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ldf/c1$a;->b:LCi/c;

    invoke-interface {v0}, LCi/c;->a()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ldf/c1$a;->b()V

    :goto_0
    return-void

    :catchall_0
    move-exception v0

    invoke-static {v0}, Lio/reactivex/exceptions/a;->b(Ljava/lang/Throwable;)V

    iget-object v1, p0, Ldf/c1$a;->b:LCi/c;

    invoke-interface {v1, v0}, LCi/c;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public b()V
    .locals 6

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x1

    :cond_0
    iget-object v1, p0, Ldf/c1$a;->c:Lmf/i;

    invoke-virtual {v1}, Lmf/i;->f()Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    :cond_1
    iget-wide v1, p0, Ldf/c1$a;->f:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-eqz v5, :cond_2

    iput-wide v3, p0, Ldf/c1$a;->f:J

    iget-object v3, p0, Ldf/c1$a;->c:Lmf/i;

    invoke-virtual {v3, v1, v2}, Lmf/i;->k(J)V

    :cond_2
    iget-object v1, p0, Ldf/c1$a;->d:LCi/b;

    invoke-interface {v1, p0}, LCi/b;->l(LCi/c;)V

    neg-int v0, v0

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    move-result v0

    if-nez v0, :cond_0

    :cond_3
    return-void
.end method

.method public g(Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget-wide v0, p0, Ldf/c1$a;->f:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Ldf/c1$a;->f:J

    iget-object v0, p0, Ldf/c1$a;->b:LCi/c;

    invoke-interface {v0, p1}, LCi/c;->g(Ljava/lang/Object;)V

    return-void
.end method

.method public h(LCi/d;)V
    .locals 1

    iget-object v0, p0, Ldf/c1$a;->c:Lmf/i;

    invoke-virtual {v0, p1}, Lmf/i;->l(LCi/d;)V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    iget-object v0, p0, Ldf/c1$a;->b:LCi/c;

    invoke-interface {v0, p1}, LCi/c;->onError(Ljava/lang/Throwable;)V

    return-void
.end method
