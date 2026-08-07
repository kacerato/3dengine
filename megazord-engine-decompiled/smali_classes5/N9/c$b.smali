.class public LN9/c$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LN9/c;->x(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;LR9/n;LR9/e;[FLN9/e;ILjava/util/List;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:I

.field public final synthetic c:I

.field public final synthetic d:LN9/c;


# direct methods
.method public constructor <init>(LN9/c;II)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$th",
            "val$tw"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, LN9/c$b;->d:LN9/c;

    iput p2, p0, LN9/c$b;->b:I

    iput p3, p0, LN9/c$b;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, LN9/c$b;->d:LN9/c;

    invoke-static {v2}, LN9/c;->d(LN9/c;)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    move v2, v1

    move v3, v2

    :goto_0
    :try_start_1
    iget v4, p0, LN9/c$b;->b:I

    if-ge v2, v4, :cond_5

    move v4, v1

    :goto_1
    iget v5, p0, LN9/c$b;->c:I

    if-ge v4, v5, :cond_4

    iget v5, p0, LN9/c$b;->b:I

    sub-int/2addr v5, v2

    sub-int/2addr v5, v0

    iget-object v6, p0, LN9/c$b;->d:LN9/c;

    invoke-static {v6}, LN9/c;->e(LN9/c;)I

    move-result v6

    add-int/2addr v6, v4

    iget-object v7, p0, LN9/c$b;->d:LN9/c;

    invoke-static {v7}, LN9/c;->f(LN9/c;)I

    move-result v7

    add-int/2addr v7, v5

    iget-object v5, p0, LN9/c$b;->d:LN9/c;

    invoke-static {v5}, LN9/c;->g(LN9/c;)LP9/a;

    move-result-object v5

    if-eqz v5, :cond_0

    iget-object v5, p0, LN9/c$b;->d:LN9/c;

    invoke-static {v5}, LN9/c;->g(LN9/c;)LP9/a;

    move-result-object v5

    invoke-virtual {v5, v6, v7}, LP9/a;->e(II)F

    move-result v5

    goto :goto_2

    :catchall_0
    move-exception v2

    goto :goto_4

    :cond_0
    const/4 v5, 0x0

    :goto_2
    const/high16 v6, 0x437f0000    # 255.0f

    mul-float/2addr v5, v6

    const/high16 v6, 0x3f000000    # 0.5f

    add-float/2addr v5, v6

    float-to-int v5, v5

    if-gez v5, :cond_1

    move v5, v1

    goto :goto_3

    :cond_1
    const/16 v6, 0xff

    if-le v5, v6, :cond_2

    move v5, v6

    :cond_2
    :goto_3
    iget-object v6, p0, LN9/c$b;->d:LN9/c;

    invoke-static {v6}, LN9/c;->d(LN9/c;)Ljava/nio/ByteBuffer;

    move-result-object v6

    and-int/lit16 v7, v5, 0xff

    int-to-byte v7, v7

    invoke-virtual {v6, v7}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    if-eqz v5, :cond_3

    move v3, v0

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_5
    iget-object v2, p0, LN9/c$b;->d:LN9/c;

    invoke-static {v2}, LN9/c;->d(LN9/c;)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v2, p0, LN9/c$b;->d:LN9/c;

    invoke-static {v2}, LN9/c;->h(LN9/c;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v2, p0, LN9/c$b;->d:LN9/c;

    invoke-static {v2}, LN9/c;->i(LN9/c;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v1, p0, LN9/c$b;->d:LN9/c;

    invoke-static {v1, v3}, LN9/c;->j(LN9/c;Z)Z

    iget-object v1, p0, LN9/c$b;->d:LN9/c;

    invoke-static {v1, v0}, LN9/c;->k(LN9/c;Z)Z

    invoke-static {}, LN9/c;->b()Ljava/util/Set;

    move-result-object v2

    monitor-enter v2

    :try_start_2
    invoke-static {}, LN9/c;->b()Ljava/util/Set;

    move-result-object v0

    iget-object v1, p0, LN9/c$b;->d:LN9/c;

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    monitor-exit v2

    return-void

    :catchall_1
    move-exception v0

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    :catchall_2
    move-exception v2

    move v3, v1

    :goto_4
    iget-object v4, p0, LN9/c$b;->d:LN9/c;

    invoke-static {v4}, LN9/c;->h(LN9/c;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v4, p0, LN9/c$b;->d:LN9/c;

    invoke-static {v4}, LN9/c;->i(LN9/c;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v1, p0, LN9/c$b;->d:LN9/c;

    invoke-static {v1, v3}, LN9/c;->j(LN9/c;Z)Z

    iget-object v1, p0, LN9/c$b;->d:LN9/c;

    invoke-static {v1, v0}, LN9/c;->k(LN9/c;Z)Z

    invoke-static {}, LN9/c;->b()Ljava/util/Set;

    move-result-object v0

    monitor-enter v0

    :try_start_3
    invoke-static {}, LN9/c;->b()Ljava/util/Set;

    move-result-object v1

    iget-object v3, p0, LN9/c$b;->d:LN9/c;

    invoke-interface {v1, v3}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    throw v2

    :catchall_3
    move-exception v1

    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    throw v1
.end method
