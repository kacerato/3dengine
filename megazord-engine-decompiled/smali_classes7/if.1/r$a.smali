.class public final Lif/r$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LTe/N;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lif/r;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "LTe/N<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final b:LTe/N;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LTe/N<",
            "-TT;>;"
        }
    .end annotation
.end field

.field public final synthetic c:Lif/r;


# direct methods
.method public constructor <init>(Lif/r;LTe/N;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LTe/N<",
            "-TT;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lif/r$a;->c:Lif/r;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lif/r$a;->b:LTe/N;

    return-void
.end method


# virtual methods
.method public b(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lif/r$a;->c:Lif/r;

    iget-object v0, v0, Lif/r;->c:LXe/b;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, LXe/b;->accept(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lif/r$a;->b:LTe/N;

    invoke-interface {v0, p1}, LTe/N;->b(Ljava/lang/Object;)V

    return-void

    :catchall_0
    move-exception p1

    invoke-static {p1}, Lio/reactivex/exceptions/a;->b(Ljava/lang/Throwable;)V

    iget-object v0, p0, Lif/r$a;->b:LTe/N;

    invoke-interface {v0, p1}, LTe/N;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public e(LVe/c;)V
    .locals 1

    iget-object v0, p0, Lif/r$a;->b:LTe/N;

    invoke-interface {v0, p1}, LTe/N;->e(LVe/c;)V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lif/r$a;->c:Lif/r;

    iget-object v0, v0, Lif/r;->c:LXe/b;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, LXe/b;->accept(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {v0}, Lio/reactivex/exceptions/a;->b(Ljava/lang/Throwable;)V

    new-instance v1, Lio/reactivex/exceptions/CompositeException;

    filled-new-array {p1, v0}, [Ljava/lang/Throwable;

    move-result-object p1

    invoke-direct {v1, p1}, Lio/reactivex/exceptions/CompositeException;-><init>([Ljava/lang/Throwable;)V

    move-object p1, v1

    :goto_0
    iget-object v0, p0, Lif/r$a;->b:LTe/N;

    invoke-interface {v0, p1}, LTe/N;->onError(Ljava/lang/Throwable;)V

    return-void
.end method
