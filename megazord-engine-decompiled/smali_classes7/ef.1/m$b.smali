.class public final Lef/m$b;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "SourceFile"

# interfaces
.implements LTe/q;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lef/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicReference<",
        "LCi/d;",
        ">;",
        "LTe/q<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field public static final e:J = -0x10dcc33017a04816L


# instance fields
.field public final b:LTe/v;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LTe/v<",
            "-TT;>;"
        }
    .end annotation
.end field

.field public c:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field public d:Ljava/lang/Throwable;


# direct methods
.method public constructor <init>(LTe/v;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LTe/v<",
            "-TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object p1, p0, Lef/m$b;->b:LTe/v;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Lef/m$b;->d:Ljava/lang/Throwable;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lef/m$b;->b:LTe/v;

    invoke-interface {v1, v0}, LTe/v;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lef/m$b;->c:Ljava/lang/Object;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lef/m$b;->b:LTe/v;

    invoke-interface {v1, v0}, LTe/v;->b(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lef/m$b;->b:LTe/v;

    invoke-interface {v0}, LTe/v;->a()V

    :goto_0
    return-void
.end method

.method public g(Ljava/lang/Object;)V
    .locals 1

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LCi/d;

    sget-object v0, Lmf/j;->CANCELLED:Lmf/j;

    if-eq p1, v0, :cond_0

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicReference;->lazySet(Ljava/lang/Object;)V

    invoke-interface {p1}, LCi/d;->cancel()V

    invoke-virtual {p0}, Lef/m$b;->a()V

    :cond_0
    return-void
.end method

.method public h(LCi/d;)V
    .locals 2

    const-wide v0, 0x7fffffffffffffffL

    invoke-static {p0, p1, v0, v1}, Lmf/j;->k(Ljava/util/concurrent/atomic/AtomicReference;LCi/d;J)Z

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 3

    iget-object v0, p0, Lef/m$b;->d:Ljava/lang/Throwable;

    if-nez v0, :cond_0

    iget-object v0, p0, Lef/m$b;->b:LTe/v;

    invoke-interface {v0, p1}, LTe/v;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lef/m$b;->b:LTe/v;

    new-instance v2, Lio/reactivex/exceptions/CompositeException;

    filled-new-array {v0, p1}, [Ljava/lang/Throwable;

    move-result-object p1

    invoke-direct {v2, p1}, Lio/reactivex/exceptions/CompositeException;-><init>([Ljava/lang/Throwable;)V

    invoke-interface {v1, v2}, LTe/v;->onError(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
