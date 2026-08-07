.class public Lbh/b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Llh/y;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbh/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public final b:Llh/z;

.field public c:Lbh/a;

.field public d:J

.field public final synthetic e:Lbh/b;


# direct methods
.method public constructor <init>(Lbh/b;)V
    .locals 1

    iput-object p1, p0, Lbh/b$a;->e:Lbh/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Llh/z;

    invoke-direct {v0}, Llh/z;-><init>()V

    iput-object v0, p0, Lbh/b$a;->b:Llh/z;

    new-instance v0, Lbh/a;

    iget-object p1, p1, Lbh/b;->a:Ljava/io/RandomAccessFile;

    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object p1

    invoke-direct {v0, p1}, Lbh/a;-><init>(Ljava/nio/channels/FileChannel;)V

    iput-object v0, p0, Lbh/b$a;->c:Lbh/a;

    return-void
.end method


# virtual methods
.method public a0()Llh/z;
    .locals 1

    iget-object v0, p0, Lbh/b$a;->b:Llh/z;

    return-object v0
.end method

.method public close()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lbh/b$a;->c:Lbh/a;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lbh/b$a;->c:Lbh/a;

    iget-object v1, p0, Lbh/b$a;->e:Lbh/b;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lbh/b$a;->e:Lbh/b;

    iget v3, v2, Lbh/b;->j:I

    add-int/lit8 v3, v3, -0x1

    iput v3, v2, Lbh/b;->j:I

    if-nez v3, :cond_1

    iget-object v3, v2, Lbh/b;->a:Ljava/io/RandomAccessFile;

    iput-object v0, v2, Lbh/b;->a:Ljava/io/RandomAccessFile;

    move-object v0, v3

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_1
    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_2

    invoke-static {v0}, LYg/c;->g(Ljava/io/Closeable;)V

    :cond_2
    return-void

    :goto_1
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public x0(Llh/c;J)J
    .locals 21
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-wide/from16 v2, p2

    iget-object v0, v1, Lbh/b$a;->c:Lbh/a;

    if-eqz v0, :cond_6

    iget-object v4, v1, Lbh/b$a;->e:Lbh/b;

    monitor-enter v4

    :goto_0
    :try_start_0
    iget-wide v5, v1, Lbh/b$a;->d:J

    iget-object v0, v1, Lbh/b$a;->e:Lbh/b;

    iget-wide v7, v0, Lbh/b;->e:J

    cmp-long v5, v5, v7

    const-wide/16 v9, 0x20

    if-nez v5, :cond_4

    iget-boolean v5, v0, Lbh/b;->f:Z

    const-wide/16 v11, -0x1

    if-eqz v5, :cond_0

    monitor-exit v4

    return-wide v11

    :catchall_0
    move-exception v0

    goto/16 :goto_4

    :cond_0
    iget-object v5, v0, Lbh/b;->b:Ljava/lang/Thread;

    if-eqz v5, :cond_1

    iget-object v5, v1, Lbh/b$a;->b:Llh/z;

    invoke-virtual {v5, v0}, Llh/z;->j(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    iput-object v5, v0, Lbh/b;->b:Ljava/lang/Thread;

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v4, 0x0

    :try_start_1
    iget-object v0, v1, Lbh/b$a;->e:Lbh/b;

    iget-object v5, v0, Lbh/b;->c:Llh/y;

    iget-object v6, v0, Lbh/b;->d:Llh/c;

    iget-wide v13, v0, Lbh/b;->i:J

    invoke-interface {v5, v6, v13, v14}, Llh/y;->x0(Llh/c;J)J

    move-result-wide v5

    cmp-long v0, v5, v11

    if-nez v0, :cond_2

    iget-object v0, v1, Lbh/b$a;->e:Lbh/b;

    invoke-virtual {v0, v7, v8}, Lbh/b;->a(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    iget-object v2, v1, Lbh/b$a;->e:Lbh/b;

    monitor-enter v2

    :try_start_2
    iget-object v0, v1, Lbh/b$a;->e:Lbh/b;

    iput-object v4, v0, Lbh/b;->b:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v2

    return-wide v11

    :catchall_1
    move-exception v0

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    :catchall_2
    move-exception v0

    goto :goto_3

    :cond_2
    :try_start_3
    invoke-static {v5, v6, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    iget-object v0, v1, Lbh/b$a;->e:Lbh/b;

    iget-object v11, v0, Lbh/b;->d:Llh/c;

    const-wide/16 v13, 0x0

    move-object/from16 v12, p1

    move-wide v15, v2

    invoke-virtual/range {v11 .. v16}, Llh/c;->h(Llh/c;JJ)Llh/c;

    iget-wide v11, v1, Lbh/b$a;->d:J

    add-long/2addr v11, v2

    iput-wide v11, v1, Lbh/b$a;->d:J

    iget-object v15, v1, Lbh/b$a;->c:Lbh/a;

    add-long v16, v7, v9

    iget-object v0, v1, Lbh/b$a;->e:Lbh/b;

    iget-object v0, v0, Lbh/b;->d:Llh/c;

    invoke-virtual {v0}, Llh/c;->d()Llh/c;

    move-result-object v18

    move-wide/from16 v19, v5

    invoke-virtual/range {v15 .. v20}, Lbh/a;->b(JLlh/c;J)V

    iget-object v7, v1, Lbh/b$a;->e:Lbh/b;

    monitor-enter v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :try_start_4
    iget-object v0, v1, Lbh/b$a;->e:Lbh/b;

    iget-object v8, v0, Lbh/b;->h:Llh/c;

    iget-object v0, v0, Lbh/b;->d:Llh/c;

    invoke-virtual {v8, v0, v5, v6}, Llh/c;->d0(Llh/c;J)V

    iget-object v0, v1, Lbh/b$a;->e:Lbh/b;

    iget-object v0, v0, Lbh/b;->h:Llh/c;

    invoke-virtual {v0}, Llh/c;->U()J

    move-result-wide v8

    iget-object v0, v1, Lbh/b$a;->e:Lbh/b;

    iget-wide v10, v0, Lbh/b;->i:J

    cmp-long v8, v8, v10

    if-lez v8, :cond_3

    iget-object v0, v0, Lbh/b;->h:Llh/c;

    invoke-virtual {v0}, Llh/c;->U()J

    move-result-wide v8

    iget-object v10, v1, Lbh/b$a;->e:Lbh/b;

    iget-wide v10, v10, Lbh/b;->i:J

    sub-long/2addr v8, v10

    invoke-virtual {v0, v8, v9}, Llh/c;->skip(J)V

    goto :goto_1

    :catchall_3
    move-exception v0

    goto :goto_2

    :cond_3
    :goto_1
    iget-object v8, v1, Lbh/b$a;->e:Lbh/b;

    iget-wide v9, v8, Lbh/b;->e:J

    add-long/2addr v9, v5

    iput-wide v9, v8, Lbh/b;->e:J

    monitor-exit v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    monitor-enter v8

    :try_start_5
    iget-object v0, v1, Lbh/b$a;->e:Lbh/b;

    iput-object v4, v0, Lbh/b;->b:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v8

    return-wide v2

    :catchall_4
    move-exception v0

    monitor-exit v8
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    throw v0

    :goto_2
    :try_start_6
    monitor-exit v7
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    :try_start_7
    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :goto_3
    iget-object v2, v1, Lbh/b$a;->e:Lbh/b;

    monitor-enter v2

    :try_start_8
    iget-object v3, v1, Lbh/b$a;->e:Lbh/b;

    iput-object v4, v3, Lbh/b;->b:Ljava/lang/Thread;

    invoke-virtual {v3}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    throw v0

    :catchall_5
    move-exception v0

    :try_start_9
    monitor-exit v2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    throw v0

    :cond_4
    :try_start_a
    iget-object v0, v0, Lbh/b;->h:Llh/c;

    invoke-virtual {v0}, Llh/c;->U()J

    move-result-wide v5

    sub-long v5, v7, v5

    iget-wide v11, v1, Lbh/b$a;->d:J

    cmp-long v0, v11, v5

    if-gez v0, :cond_5

    monitor-exit v4
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    sub-long/2addr v7, v11

    invoke-static {v2, v3, v7, v8}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    iget-object v11, v1, Lbh/b$a;->c:Lbh/a;

    iget-wide v4, v1, Lbh/b$a;->d:J

    add-long v12, v4, v9

    move-object/from16 v14, p1

    move-wide v15, v2

    invoke-virtual/range {v11 .. v16}, Lbh/a;->a(JLlh/c;J)V

    iget-wide v4, v1, Lbh/b$a;->d:J

    add-long/2addr v4, v2

    iput-wide v4, v1, Lbh/b$a;->d:J

    return-wide v2

    :cond_5
    sub-long/2addr v7, v11

    :try_start_b
    invoke-static {v2, v3, v7, v8}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    iget-object v0, v1, Lbh/b$a;->e:Lbh/b;

    iget-object v9, v0, Lbh/b;->h:Llh/c;

    iget-wide v7, v1, Lbh/b$a;->d:J

    sub-long v11, v7, v5

    move-object/from16 v10, p1

    move-wide v13, v2

    invoke-virtual/range {v9 .. v14}, Llh/c;->h(Llh/c;JJ)Llh/c;

    iget-wide v5, v1, Lbh/b$a;->d:J

    add-long/2addr v5, v2

    iput-wide v5, v1, Lbh/b$a;->d:J

    monitor-exit v4

    return-wide v2

    :goto_4
    monitor-exit v4
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    throw v0

    :cond_6
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "closed"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
