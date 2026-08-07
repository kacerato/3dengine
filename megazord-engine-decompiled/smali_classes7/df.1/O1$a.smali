.class public final Ldf/O1$a;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "SourceFile"

# interfaces
.implements LCi/d;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldf/O1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/concurrent/atomic/AtomicReference<",
        "LVe/c;",
        ">;",
        "LCi/d;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# static fields
.field public static final d:J = -0x26fd42ce5a1686a7L


# instance fields
.field public final b:LCi/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LCi/c<",
            "-",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public volatile c:Z


# direct methods
.method public constructor <init>(LCi/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LCi/c<",
            "-",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object p1, p0, Ldf/O1$a;->b:LCi/c;

    return-void
.end method


# virtual methods
.method public a(LVe/c;)V
    .locals 0

    invoke-static {p0, p1}, LYe/d;->i(Ljava/util/concurrent/atomic/AtomicReference;LVe/c;)Z

    return-void
.end method

.method public cancel()V
    .locals 0

    invoke-static {p0}, LYe/d;->a(Ljava/util/concurrent/atomic/AtomicReference;)Z

    return-void
.end method

.method public i(J)V
    .locals 0

    invoke-static {p1, p2}, Lmf/j;->m(J)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    iput-boolean p1, p0, Ldf/O1$a;->c:Z

    :cond_0
    return-void
.end method

.method public run()V
    .locals 3

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, LYe/d;->DISPOSED:LYe/d;

    if-eq v0, v1, :cond_1

    iget-boolean v0, p0, Ldf/O1$a;->c:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Ldf/O1$a;->b:LCi/c;

    const-wide/16 v1, 0x0

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, LCi/c;->g(Ljava/lang/Object;)V

    sget-object v0, LYe/e;->INSTANCE:LYe/e;

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicReference;->lazySet(Ljava/lang/Object;)V

    iget-object v0, p0, Ldf/O1$a;->b:LCi/c;

    invoke-interface {v0}, LCi/c;->a()V

    goto :goto_0

    :cond_0
    sget-object v0, LYe/e;->INSTANCE:LYe/e;

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicReference;->lazySet(Ljava/lang/Object;)V

    iget-object v0, p0, Ldf/O1$a;->b:LCi/c;

    new-instance v1, Lio/reactivex/exceptions/MissingBackpressureException;

    const-string v2, "Can\'t deliver value due to lack of requests"

    invoke-direct {v1, v2}, Lio/reactivex/exceptions/MissingBackpressureException;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, LCi/c;->onError(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    return-void
.end method
