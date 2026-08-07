.class public final Lif/d;
.super LTe/K;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lif/d$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "LTe/K<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final b:LTe/O;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LTe/O<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(LTe/O;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LTe/O<",
            "TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, LTe/K;-><init>()V

    iput-object p1, p0, Lif/d;->b:LTe/O;

    return-void
.end method


# virtual methods
.method public d1(LTe/N;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LTe/N<",
            "-TT;>;)V"
        }
    .end annotation

    new-instance v0, Lif/d$a;

    invoke-direct {v0, p1}, Lif/d$a;-><init>(LTe/N;)V

    invoke-interface {p1, v0}, LTe/N;->e(LVe/c;)V

    :try_start_0
    iget-object p1, p0, Lif/d;->b:LTe/O;

    invoke-interface {p1, v0}, LTe/O;->subscribe(LTe/M;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-static {p1}, Lio/reactivex/exceptions/a;->b(Ljava/lang/Throwable;)V

    invoke-virtual {v0, p1}, Lif/d$a;->onError(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
