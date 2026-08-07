.class public final LQ1/A;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:LQ1/B;


# direct methods
.method public constructor <init>(LQ1/B;)V
    .locals 0

    iput-object p1, p0, LQ1/A;->b:LQ1/B;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, LQ1/A;->b:LQ1/B;

    invoke-static {v0}, LQ1/B;->b(LQ1/B;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LQ1/A;->b:LQ1/B;

    invoke-static {v1}, LQ1/B;->a(LQ1/B;)LQ1/d;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-static {v1}, LQ1/B;->a(LQ1/B;)LQ1/d;

    move-result-object v1

    invoke-interface {v1}, LQ1/d;->a()V

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
