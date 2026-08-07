.class public final LTf/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LQf/f;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "LQf/f<",
        "LFf/P0;",
        ">;"
    }
.end annotation


# instance fields
.field public b:LFf/i0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LFf/i0<",
            "LFf/P0;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    monitor-enter p0

    :goto_0
    :try_start_0
    iget-object v0, p0, LTf/m;->b:LFf/i0;

    if-nez v0, :cond_0

    const-string v0, "null cannot be cast to non-null type java.lang.Object"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/M;->n(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->wait()V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    invoke-virtual {v0}, LFf/i0;->l()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, LFf/j0;->n(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0

    throw v0
.end method

.method public final b()LFf/i0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LFf/i0<",
            "LFf/P0;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, LTf/m;->b:LFf/i0;

    return-object v0
.end method

.method public final e(LFf/i0;)V
    .locals 0
    .param p1    # LFf/i0;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LFf/i0<",
            "LFf/P0;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, LTf/m;->b:LFf/i0;

    return-void
.end method

.method public getContext()LQf/j;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, LQf/l;->b:LQf/l;

    return-object v0
.end method

.method public resumeWith(Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    monitor-enter p0

    :try_start_0
    invoke-static {p1}, LFf/i0;->a(Ljava/lang/Object;)LFf/i0;

    move-result-object p1

    iput-object p1, p0, LTf/m;->b:LFf/i0;

    const-string p1, "null cannot be cast to non-null type java.lang.Object"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/M;->n(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    sget-object p1, LFf/P0;->a:LFf/P0;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
