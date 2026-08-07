.class public final Lgf/C;
.super LTe/B;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgf/C$b;,
        Lgf/C$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "LTe/B<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final b:LTe/E;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LTe/E<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(LTe/E;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LTe/E<",
            "TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, LTe/B;-><init>()V

    iput-object p1, p0, Lgf/C;->b:LTe/E;

    return-void
.end method


# virtual methods
.method public J5(LTe/I;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LTe/I<",
            "-TT;>;)V"
        }
    .end annotation

    new-instance v0, Lgf/C$a;

    invoke-direct {v0, p1}, Lgf/C$a;-><init>(LTe/I;)V

    invoke-interface {p1, v0}, LTe/I;->e(LVe/c;)V

    :try_start_0
    iget-object p1, p0, Lgf/C;->b:LTe/E;

    invoke-interface {p1, v0}, LTe/E;->subscribe(LTe/D;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-static {p1}, Lio/reactivex/exceptions/a;->b(Ljava/lang/Throwable;)V

    invoke-virtual {v0, p1}, Lgf/C$a;->onError(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
