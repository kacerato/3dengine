.class public final Lcf/u;
.super LTe/c;
.source "SourceFile"


# instance fields
.field public final b:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0}, LTe/c;-><init>()V

    iput-object p1, p0, Lcf/u;->b:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public K0(LTe/f;)V
    .locals 2

    invoke-static {}, LVe/d;->b()LVe/c;

    move-result-object v0

    invoke-interface {p1, v0}, LTe/f;->e(LVe/c;)V

    :try_start_0
    iget-object v1, p0, Lcf/u;->b:Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {v0}, LVe/c;->d()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p1}, LTe/f;->a()V

    :cond_0
    return-void

    :catchall_0
    move-exception v1

    invoke-static {v1}, Lio/reactivex/exceptions/a;->b(Ljava/lang/Throwable;)V

    invoke-interface {v0}, LVe/c;->d()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {p1, v1}, LTe/f;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_1
    invoke-static {v1}, Lqf/a;->Y(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
