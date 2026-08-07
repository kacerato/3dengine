.class public final Llf/d;
.super Llf/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Llf/c<",
        "TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Llf/c;-><init>()V

    return-void
.end method


# virtual methods
.method public g(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget-object v0, p0, Llf/c;->b:Ljava/lang/Object;

    if-nez v0, :cond_0

    iput-object p1, p0, Llf/c;->b:Ljava/lang/Object;

    iget-object p1, p0, Llf/c;->d:LCi/d;

    invoke-interface {p1}, LCi/d;->cancel()V

    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    :cond_0
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    iget-object v0, p0, Llf/c;->b:Ljava/lang/Object;

    if-nez v0, :cond_0

    iput-object p1, p0, Llf/c;->c:Ljava/lang/Throwable;

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lqf/a;->Y(Ljava/lang/Throwable;)V

    :goto_0
    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method
