.class public final Lef/V;
.super Lef/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Lef/a<",
        "TT;TR;>;"
    }
.end annotation


# instance fields
.field public final c:LTe/x;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LTe/x<",
            "+TR;-TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(LTe/y;LTe/x;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LTe/y<",
            "TT;>;",
            "LTe/x<",
            "+TR;-TT;>;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lef/a;-><init>(LTe/y;)V

    iput-object p2, p0, Lef/V;->c:LTe/x;

    return-void
.end method


# virtual methods
.method public t1(LTe/v;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LTe/v<",
            "-TR;>;)V"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lef/V;->c:LTe/x;

    invoke-interface {v0, p1}, LTe/x;->a(LTe/v;)LTe/v;

    move-result-object v0

    const-string v1, "The operator returned a null MaybeObserver"

    invoke-static {v0, v1}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LTe/v;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lef/a;->b:LTe/y;

    invoke-interface {p1, v0}, LTe/y;->d(LTe/v;)V

    return-void

    :catchall_0
    move-exception v0

    invoke-static {v0}, Lio/reactivex/exceptions/a;->b(Ljava/lang/Throwable;)V

    invoke-static {v0, p1}, LYe/e;->g(Ljava/lang/Throwable;LTe/v;)V

    return-void
.end method
