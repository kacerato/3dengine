.class public final Lef/j;
.super LTe/s;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lef/j$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "LTe/s<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final b:LTe/w;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LTe/w<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(LTe/w;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LTe/w<",
            "TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, LTe/s;-><init>()V

    iput-object p1, p0, Lef/j;->b:LTe/w;

    return-void
.end method


# virtual methods
.method public t1(LTe/v;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LTe/v<",
            "-TT;>;)V"
        }
    .end annotation

    new-instance v0, Lef/j$a;

    invoke-direct {v0, p1}, Lef/j$a;-><init>(LTe/v;)V

    invoke-interface {p1, v0}, LTe/v;->e(LVe/c;)V

    :try_start_0
    iget-object p1, p0, Lef/j;->b:LTe/w;

    invoke-interface {p1, v0}, LTe/w;->a(LTe/u;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-static {p1}, Lio/reactivex/exceptions/a;->b(Ljava/lang/Throwable;)V

    invoke-virtual {v0, p1}, Lef/j$a;->onError(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
