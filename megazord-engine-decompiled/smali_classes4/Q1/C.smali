.class public final LQ1/C;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:LQ1/k;

.field public final synthetic c:LQ1/D;


# direct methods
.method public constructor <init>(LQ1/D;LQ1/k;)V
    .locals 0

    iput-object p1, p0, LQ1/C;->c:LQ1/D;

    iput-object p2, p0, LQ1/C;->b:LQ1/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, LQ1/C;->c:LQ1/D;

    invoke-static {v0}, LQ1/D;->b(LQ1/D;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LQ1/C;->c:LQ1/D;

    invoke-static {v1}, LQ1/D;->a(LQ1/D;)LQ1/e;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-static {v1}, LQ1/D;->a(LQ1/D;)LQ1/e;

    move-result-object v1

    iget-object v2, p0, LQ1/C;->b:LQ1/k;

    invoke-interface {v1, v2}, LQ1/e;->a(LQ1/k;)V

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
