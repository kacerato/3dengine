.class public final Lbf/f;
.super Lbf/e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lbf/e<",
        "TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lbf/e;-><init>()V

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

    iget-object v0, p0, Lbf/e;->b:Ljava/lang/Object;

    if-nez v0, :cond_0

    iput-object p1, p0, Lbf/e;->b:Ljava/lang/Object;

    iget-object p1, p0, Lbf/e;->d:LVe/c;

    invoke-interface {p1}, LVe/c;->dispose()V

    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    :cond_0
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    iget-object v0, p0, Lbf/e;->b:Ljava/lang/Object;

    if-nez v0, :cond_0

    iput-object p1, p0, Lbf/e;->c:Ljava/lang/Throwable;

    :cond_0
    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method
