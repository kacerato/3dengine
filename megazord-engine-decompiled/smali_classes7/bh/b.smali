.class public final Lbh/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbh/b$a;
    }
.end annotation


# static fields
.field public static final k:I = 0x1

.field public static final l:I = 0x2

.field public static final m:Llh/f;

.field public static final n:Llh/f;

.field public static final o:J = 0x20L


# instance fields
.field public a:Ljava/io/RandomAccessFile;

.field public b:Ljava/lang/Thread;

.field public c:Llh/y;

.field public final d:Llh/c;

.field public e:J

.field public f:Z

.field public final g:Llh/f;

.field public final h:Llh/c;

.field public final i:J

.field public j:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "OkHttp cache v1\n"

    invoke-static {v0}, Llh/f;->m(Ljava/lang/String;)Llh/f;

    move-result-object v0

    sput-object v0, Lbh/b;->m:Llh/f;

    const-string v0, "OkHttp DIRTY :(\n"

    invoke-static {v0}, Llh/f;->m(Ljava/lang/String;)Llh/f;

    move-result-object v0

    sput-object v0, Lbh/b;->n:Llh/f;

    return-void
.end method

.method public constructor <init>(Ljava/io/RandomAccessFile;Llh/y;JLlh/f;J)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Llh/c;

    invoke-direct {v0}, Llh/c;-><init>()V

    iput-object v0, p0, Lbh/b;->d:Llh/c;

    new-instance v0, Llh/c;

    invoke-direct {v0}, Llh/c;-><init>()V

    iput-object v0, p0, Lbh/b;->h:Llh/c;

    iput-object p1, p0, Lbh/b;->a:Ljava/io/RandomAccessFile;

    iput-object p2, p0, Lbh/b;->c:Llh/y;

    if-nez p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lbh/b;->f:Z

    iput-wide p3, p0, Lbh/b;->e:J

    iput-object p5, p0, Lbh/b;->g:Llh/f;

    iput-wide p6, p0, Lbh/b;->i:J

    return-void
.end method

.method public static b(Ljava/io/File;Llh/y;Llh/f;J)Lbh/b;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v8, Ljava/io/RandomAccessFile;

    const-string v0, "rw"

    invoke-direct {v8, p0, v0}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance p0, Lbh/b;

    const-wide/16 v3, 0x0

    move-object v0, p0

    move-object v1, v8

    move-object v2, p1

    move-object v5, p2

    move-wide v6, p3

    invoke-direct/range {v0 .. v7}, Lbh/b;-><init>(Ljava/io/RandomAccessFile;Llh/y;JLlh/f;J)V

    const-wide/16 p1, 0x0

    invoke-virtual {v8, p1, p2}, Ljava/io/RandomAccessFile;->setLength(J)V

    sget-object v2, Lbh/b;->n:Llh/f;

    const-wide/16 v3, -0x1

    const-wide/16 v5, -0x1

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lbh/b;->g(Llh/f;JJ)V

    return-object p0
.end method

.method public static f(Ljava/io/File;)Lbh/b;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v1, Ljava/io/RandomAccessFile;

    const-string v0, "rw"

    invoke-direct {v1, p0, v0}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance p0, Lbh/a;

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    invoke-direct {p0, v0}, Lbh/a;-><init>(Ljava/nio/channels/FileChannel;)V

    new-instance v0, Llh/c;

    invoke-direct {v0}, Llh/c;-><init>()V

    const-wide/16 v3, 0x0

    const-wide/16 v6, 0x20

    move-object v2, p0

    move-object v5, v0

    invoke-virtual/range {v2 .. v7}, Lbh/a;->a(JLlh/c;J)V

    sget-object v2, Lbh/b;->m:Llh/f;

    invoke-virtual {v2}, Llh/f;->R()I

    move-result v3

    int-to-long v3, v3

    invoke-virtual {v0, v3, v4}, Llh/c;->K1(J)Llh/f;

    move-result-object v3

    invoke-virtual {v3, v2}, Llh/f;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Llh/c;->readLong()J

    move-result-wide v8

    invoke-virtual {v0}, Llh/c;->readLong()J

    move-result-wide v6

    new-instance v0, Llh/c;

    invoke-direct {v0}, Llh/c;-><init>()V

    const-wide/16 v2, 0x20

    add-long v3, v8, v2

    move-object v2, p0

    move-object v5, v0

    invoke-virtual/range {v2 .. v7}, Lbh/a;->a(JLlh/c;J)V

    invoke-virtual {v0}, Llh/c;->b2()Llh/f;

    move-result-object v5

    new-instance p0, Lbh/b;

    const/4 v2, 0x0

    const-wide/16 v6, 0x0

    move-object v0, p0

    move-wide v3, v8

    invoke-direct/range {v0 .. v7}, Lbh/b;-><init>(Ljava/io/RandomAccessFile;Llh/y;JLlh/f;J)V

    return-object p0

    :cond_0
    new-instance p0, Ljava/io/IOException;

    const-string v0, "unreadable cache file"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public a(J)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lbh/b;->h(J)V

    iget-object v0, p0, Lbh/b;->a:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/channels/FileChannel;->force(Z)V

    sget-object v3, Lbh/b;->m:Llh/f;

    iget-object v0, p0, Lbh/b;->g:Llh/f;

    invoke-virtual {v0}, Llh/f;->R()I

    move-result v0

    int-to-long v6, v0

    move-object v2, p0

    move-wide v4, p1

    invoke-virtual/range {v2 .. v7}, Lbh/b;->g(Llh/f;JJ)V

    iget-object p1, p0, Lbh/b;->a:Ljava/io/RandomAccessFile;

    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/nio/channels/FileChannel;->force(Z)V

    monitor-enter p0

    const/4 p1, 0x1

    :try_start_0
    iput-boolean p1, p0, Lbh/b;->f:Z

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lbh/b;->c:Llh/y;

    invoke-static {p1}, LYg/c;->g(Ljava/io/Closeable;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lbh/b;->c:Llh/y;

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public c()Z
    .locals 1

    iget-object v0, p0, Lbh/b;->a:Ljava/io/RandomAccessFile;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public d()Llh/f;
    .locals 1

    iget-object v0, p0, Lbh/b;->g:Llh/f;

    return-object v0
.end method

.method public e()Llh/y;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lbh/b;->a:Ljava/io/RandomAccessFile;

    if-nez v0, :cond_0

    monitor-exit p0

    const/4 v0, 0x0

    return-object v0

    :catchall_0
    move-exception v0

    goto :goto_0

    :cond_0
    iget v0, p0, Lbh/b;->j:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lbh/b;->j:I

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance v0, Lbh/b$a;

    invoke-direct {v0, p0}, Lbh/b$a;-><init>(Lbh/b;)V

    return-object v0

    :goto_0
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final g(Llh/f;JJ)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v3, Llh/c;

    invoke-direct {v3}, Llh/c;-><init>()V

    invoke-virtual {v3, p1}, Llh/c;->h0(Llh/f;)Llh/c;

    invoke-virtual {v3, p2, p3}, Llh/c;->t0(J)Llh/c;

    invoke-virtual {v3, p4, p5}, Llh/c;->t0(J)Llh/c;

    invoke-virtual {v3}, Llh/c;->U()J

    move-result-wide p1

    const-wide/16 p3, 0x20

    cmp-long p1, p1, p3

    if-nez p1, :cond_0

    new-instance v0, Lbh/a;

    iget-object p1, p0, Lbh/b;->a:Ljava/io/RandomAccessFile;

    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object p1

    invoke-direct {v0, p1}, Lbh/a;-><init>(Ljava/nio/channels/FileChannel;)V

    const-wide/16 v1, 0x0

    const-wide/16 v4, 0x20

    invoke-virtual/range {v0 .. v5}, Lbh/a;->b(JLlh/c;J)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public final h(J)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v3, Llh/c;

    invoke-direct {v3}, Llh/c;-><init>()V

    iget-object v0, p0, Lbh/b;->g:Llh/f;

    invoke-virtual {v3, v0}, Llh/c;->h0(Llh/f;)Llh/c;

    new-instance v0, Lbh/a;

    iget-object v1, p0, Lbh/b;->a:Ljava/io/RandomAccessFile;

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v1

    invoke-direct {v0, v1}, Lbh/a;-><init>(Ljava/nio/channels/FileChannel;)V

    const-wide/16 v1, 0x20

    add-long/2addr v1, p1

    iget-object p1, p0, Lbh/b;->g:Llh/f;

    invoke-virtual {p1}, Llh/f;->R()I

    move-result p1

    int-to-long v4, p1

    invoke-virtual/range {v0 .. v5}, Lbh/a;->b(JLlh/c;J)V

    return-void
.end method
