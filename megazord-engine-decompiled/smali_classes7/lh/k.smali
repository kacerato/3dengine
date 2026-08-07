.class public final Llh/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Llh/x;


# instance fields
.field public final b:Llh/d;

.field public final c:Ljava/util/zip/Deflater;

.field public final d:Llh/g;

.field public e:Z

.field public final f:Ljava/util/zip/CRC32;


# direct methods
.method public constructor <init>(Llh/x;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/zip/CRC32;

    invoke-direct {v0}, Ljava/util/zip/CRC32;-><init>()V

    iput-object v0, p0, Llh/k;->f:Ljava/util/zip/CRC32;

    if-eqz p1, :cond_0

    new-instance v0, Ljava/util/zip/Deflater;

    const/4 v1, -0x1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Ljava/util/zip/Deflater;-><init>(IZ)V

    iput-object v0, p0, Llh/k;->c:Ljava/util/zip/Deflater;

    invoke-static {p1}, Llh/p;->c(Llh/x;)Llh/d;

    move-result-object p1

    iput-object p1, p0, Llh/k;->b:Llh/d;

    new-instance v1, Llh/g;

    invoke-direct {v1, p1, v0}, Llh/g;-><init>(Llh/d;Ljava/util/zip/Deflater;)V

    iput-object v1, p0, Llh/k;->d:Llh/g;

    invoke-virtual {p0}, Llh/k;->f()V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "sink == null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public a0()Llh/z;
    .locals 1

    iget-object v0, p0, Llh/k;->b:Llh/d;

    invoke-interface {v0}, Llh/x;->a0()Llh/z;

    move-result-object v0

    return-object v0
.end method

.method public final c()Ljava/util/zip/Deflater;
    .locals 1

    iget-object v0, p0, Llh/k;->c:Ljava/util/zip/Deflater;

    return-object v0
.end method

.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Llh/k;->e:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Llh/k;->d:Llh/g;

    invoke-virtual {v0}, Llh/g;->c()V

    invoke-virtual {p0}, Llh/k;->e()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    :goto_0
    :try_start_1
    iget-object v1, p0, Llh/k;->c:Ljava/util/zip/Deflater;

    invoke-virtual {v1}, Ljava/util/zip/Deflater;->end()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v1

    if-nez v0, :cond_1

    move-object v0, v1

    :cond_1
    :goto_1
    :try_start_2
    iget-object v1, p0, Llh/k;->b:Llh/d;

    invoke-interface {v1}, Llh/x;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_2

    :catchall_2
    move-exception v1

    if-nez v0, :cond_2

    move-object v0, v1

    :cond_2
    :goto_2
    const/4 v1, 0x1

    iput-boolean v1, p0, Llh/k;->e:Z

    if-eqz v0, :cond_3

    invoke-static {v0}, Llh/B;->f(Ljava/lang/Throwable;)V

    :cond_3
    return-void
.end method

.method public final d(Llh/c;J)V
    .locals 4

    iget-object p1, p1, Llh/c;->b:Llh/u;

    :goto_0
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-lez v0, :cond_0

    iget v0, p1, Llh/u;->c:I

    iget v1, p1, Llh/u;->b:I

    sub-int/2addr v0, v1

    int-to-long v0, v0

    invoke-static {p2, p3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int v0, v0

    iget-object v1, p0, Llh/k;->f:Ljava/util/zip/CRC32;

    iget-object v2, p1, Llh/u;->a:[B

    iget v3, p1, Llh/u;->b:I

    invoke-virtual {v1, v2, v3, v0}, Ljava/util/zip/CRC32;->update([BII)V

    int-to-long v0, v0

    sub-long/2addr p2, v0

    iget-object p1, p1, Llh/u;->f:Llh/u;

    goto :goto_0

    :cond_0
    return-void
.end method

.method public d0(Llh/c;J)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-ltz v0, :cond_1

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Llh/k;->d(Llh/c;J)V

    iget-object v0, p0, Llh/k;->d:Llh/g;

    invoke-virtual {v0, p1, p2, p3}, Llh/g;->d0(Llh/c;J)V

    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "byteCount < 0: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final e()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Llh/k;->b:Llh/d;

    iget-object v1, p0, Llh/k;->f:Ljava/util/zip/CRC32;

    invoke-virtual {v1}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v1

    long-to-int v1, v1

    invoke-interface {v0, v1}, Llh/d;->W(I)Llh/d;

    iget-object v0, p0, Llh/k;->b:Llh/d;

    iget-object v1, p0, Llh/k;->c:Ljava/util/zip/Deflater;

    invoke-virtual {v1}, Ljava/util/zip/Deflater;->getBytesRead()J

    move-result-wide v1

    long-to-int v1, v1

    invoke-interface {v0, v1}, Llh/d;->W(I)Llh/d;

    return-void
.end method

.method public final f()V
    .locals 2

    iget-object v0, p0, Llh/k;->b:Llh/d;

    invoke-interface {v0}, Llh/d;->C()Llh/c;

    move-result-object v0

    const/16 v1, 0x1f8b

    invoke-virtual {v0, v1}, Llh/c;->v0(I)Llh/c;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Llh/c;->k0(I)Llh/c;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Llh/c;->k0(I)Llh/c;

    invoke-virtual {v0, v1}, Llh/c;->q0(I)Llh/c;

    invoke-virtual {v0, v1}, Llh/c;->k0(I)Llh/c;

    invoke-virtual {v0, v1}, Llh/c;->k0(I)Llh/c;

    return-void
.end method

.method public flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Llh/k;->d:Llh/g;

    invoke-virtual {v0}, Llh/g;->flush()V

    return-void
.end method
