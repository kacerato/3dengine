.class public Lcom/bumptech/glide/load/engine/j$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bumptech/glide/load/engine/g$e;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/engine/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# instance fields
.field public final a:LF/a$a;

.field public volatile b:LF/a;


# direct methods
.method public constructor <init>(LF/a$a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/bumptech/glide/load/engine/j$c;->a:LF/a$a;

    return-void
.end method


# virtual methods
.method public a()LF/a;
    .locals 1

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/j$c;->b:LF/a;

    if-nez v0, :cond_2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/j$c;->b:LF/a;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/j$c;->a:LF/a$a;

    invoke-interface {v0}, LF/a$a;->build()LF/a;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/load/engine/j$c;->b:LF/a;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/j$c;->b:LF/a;

    if-nez v0, :cond_1

    new-instance v0, LF/b;

    invoke-direct {v0}, LF/b;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/load/engine/j$c;->b:LF/a;

    :cond_1
    monitor-exit p0

    goto :goto_2

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_2
    :goto_2
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/j$c;->b:LF/a;

    return-object v0
.end method

.method public declared-synchronized b()V
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/j$c;->b:LF/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/j$c;->b:LF/a;

    invoke-interface {v0}, LF/a;->clear()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method
