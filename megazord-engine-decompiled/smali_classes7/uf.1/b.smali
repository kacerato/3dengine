.class public abstract Luf/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LTe/q;
.implements LVe/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "LTe/q<",
        "TT;>;",
        "LVe/c;"
    }
.end annotation


# instance fields
.field public final b:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "LCi/d;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Luf/b;->b:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method


# virtual methods
.method public final b()V
    .locals 0

    invoke-virtual {p0}, Luf/b;->dispose()V

    return-void
.end method

.method public final d()Z
    .locals 2

    iget-object v0, p0, Luf/b;->b:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lmf/j;->CANCELLED:Lmf/j;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final dispose()V
    .locals 1

    iget-object v0, p0, Luf/b;->b:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v0}, Lmf/j;->a(Ljava/util/concurrent/atomic/AtomicReference;)Z

    return-void
.end method

.method public e()V
    .locals 3

    iget-object v0, p0, Luf/b;->b:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LCi/d;

    const-wide v1, 0x7fffffffffffffffL

    invoke-interface {v0, v1, v2}, LCi/d;->i(J)V

    return-void
.end method

.method public final f(J)V
    .locals 1

    iget-object v0, p0, Luf/b;->b:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LCi/d;

    invoke-interface {v0, p1, p2}, LCi/d;->i(J)V

    return-void
.end method

.method public final h(LCi/d;)V
    .locals 2

    iget-object v0, p0, Luf/b;->b:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v0, p1, v1}, Lio/reactivex/internal/util/i;->c(Ljava/util/concurrent/atomic/AtomicReference;LCi/d;Ljava/lang/Class;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Luf/b;->e()V

    :cond_0
    return-void
.end method
