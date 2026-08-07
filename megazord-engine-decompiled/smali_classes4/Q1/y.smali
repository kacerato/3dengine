.class public final LQ1/y;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:LQ1/k;

.field public final synthetic c:LQ1/z;


# direct methods
.method public constructor <init>(LQ1/z;LQ1/k;)V
    .locals 0

    iput-object p1, p0, LQ1/y;->c:LQ1/z;

    iput-object p2, p0, LQ1/y;->b:LQ1/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    :try_start_0
    iget-object v0, p0, LQ1/y;->c:LQ1/z;

    invoke-static {v0}, LQ1/z;->e(LQ1/z;)LQ1/c;

    move-result-object v0

    iget-object v1, p0, LQ1/y;->b:LQ1/k;

    invoke-interface {v0, v1}, LQ1/c;->a(LQ1/k;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LQ1/k;
    :try_end_0
    .catch Lcom/google/android/gms/tasks/RuntimeExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v0, :cond_0

    iget-object v0, p0, LQ1/y;->c:LQ1/z;

    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Continuation returned null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, LQ1/z;->d(Ljava/lang/Exception;)V

    return-void

    :cond_0
    iget-object v1, p0, LQ1/y;->c:LQ1/z;

    sget-object v2, LQ1/m;->b:Ljava/util/concurrent/Executor;

    invoke-virtual {v0, v2, v1}, LQ1/k;->l(Ljava/util/concurrent/Executor;LQ1/g;)LQ1/k;

    iget-object v1, p0, LQ1/y;->c:LQ1/z;

    invoke-virtual {v0, v2, v1}, LQ1/k;->i(Ljava/util/concurrent/Executor;LQ1/f;)LQ1/k;

    iget-object v1, p0, LQ1/y;->c:LQ1/z;

    invoke-virtual {v0, v2, v1}, LQ1/k;->c(Ljava/util/concurrent/Executor;LQ1/d;)LQ1/k;

    return-void

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_1

    :goto_0
    iget-object v1, p0, LQ1/y;->c:LQ1/z;

    invoke-static {v1}, LQ1/z;->f(LQ1/z;)LQ1/Q;

    move-result-object v1

    invoke-virtual {v1, v0}, LQ1/Q;->y(Ljava/lang/Exception;)V

    return-void

    :goto_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    instance-of v1, v1, Ljava/lang/Exception;

    if-eqz v1, :cond_1

    iget-object v1, p0, LQ1/y;->c:LQ1/z;

    invoke-static {v1}, LQ1/z;->f(LQ1/z;)LQ1/Q;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    check-cast v0, Ljava/lang/Exception;

    invoke-virtual {v1, v0}, LQ1/Q;->y(Ljava/lang/Exception;)V

    return-void

    :cond_1
    iget-object v1, p0, LQ1/y;->c:LQ1/z;

    invoke-static {v1}, LQ1/z;->f(LQ1/z;)LQ1/Q;

    move-result-object v1

    invoke-virtual {v1, v0}, LQ1/Q;->y(Ljava/lang/Exception;)V

    return-void
.end method
