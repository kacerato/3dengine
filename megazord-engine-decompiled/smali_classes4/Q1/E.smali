.class public final LQ1/E;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:LQ1/k;

.field public final synthetic c:LQ1/F;


# direct methods
.method public constructor <init>(LQ1/F;LQ1/k;)V
    .locals 0

    iput-object p1, p0, LQ1/E;->c:LQ1/F;

    iput-object p2, p0, LQ1/E;->b:LQ1/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, LQ1/E;->c:LQ1/F;

    invoke-static {v0}, LQ1/F;->b(LQ1/F;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LQ1/E;->c:LQ1/F;

    invoke-static {v1}, LQ1/F;->a(LQ1/F;)LQ1/f;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-static {v1}, LQ1/F;->a(LQ1/F;)LQ1/f;

    move-result-object v1

    iget-object v2, p0, LQ1/E;->b:LQ1/k;

    invoke-virtual {v2}, LQ1/k;->q()Ljava/lang/Exception;

    move-result-object v2

    invoke-static {v2}, LX0/A;->r(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Exception;

    invoke-interface {v1, v2}, LQ1/f;->d(Ljava/lang/Exception;)V

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
