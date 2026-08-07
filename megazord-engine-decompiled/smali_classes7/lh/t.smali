.class public final Llh/t;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Llh/e;


# instance fields
.field public final b:Llh/c;

.field public final c:Llh/y;

.field public d:Z


# direct methods
.method public constructor <init>(Llh/y;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Llh/c;

    invoke-direct {v0}, Llh/c;-><init>()V

    iput-object v0, p0, Llh/t;->b:Llh/c;

    if-eqz p1, :cond_0

    iput-object p1, p0, Llh/t;->c:Llh/y;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "source == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public A1(J)Ljava/lang/String;
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_3

    const-wide v0, 0x7fffffffffffffffL

    cmp-long v2, p1, v0

    const-wide/16 v3, 0x1

    if-nez v2, :cond_0

    move-wide v5, v0

    goto :goto_0

    :cond_0
    add-long v5, p1, v3

    :goto_0
    const/16 v8, 0xa

    const-wide/16 v9, 0x0

    move-object v7, p0

    move-wide v11, v5

    invoke-virtual/range {v7 .. v12}, Llh/t;->x1(BJJ)J

    move-result-wide v7

    const-wide/16 v9, -0x1

    cmp-long v2, v7, v9

    if-eqz v2, :cond_1

    iget-object p1, p0, Llh/t;->b:Llh/c;

    invoke-virtual {p1, v7, v8}, Llh/c;->B(J)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    cmp-long v0, v5, v0

    if-gez v0, :cond_2

    invoke-virtual {p0, v5, v6}, Llh/t;->i(J)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Llh/t;->b:Llh/c;

    sub-long v1, v5, v3

    invoke-virtual {v0, v1, v2}, Llh/c;->l(J)B

    move-result v0

    const/16 v1, 0xd

    if-ne v0, v1, :cond_2

    add-long/2addr v3, v5

    invoke-virtual {p0, v3, v4}, Llh/t;->i(J)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Llh/t;->b:Llh/c;

    invoke-virtual {v0, v5, v6}, Llh/c;->l(J)B

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_2

    iget-object p1, p0, Llh/t;->b:Llh/c;

    invoke-virtual {p1, v5, v6}, Llh/c;->B(J)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_2
    new-instance v6, Llh/c;

    invoke-direct {v6}, Llh/c;-><init>()V

    iget-object v0, p0, Llh/t;->b:Llh/c;

    const-wide/16 v1, 0x20

    invoke-virtual {v0}, Llh/c;->U()J

    move-result-wide v3

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    const-wide/16 v2, 0x0

    move-object v1, v6

    invoke-virtual/range {v0 .. v5}, Llh/c;->h(Llh/c;JJ)Llh/c;

    new-instance v0, Ljava/io/EOFException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\\n not found: limit="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Llh/t;->b:Llh/c;

    invoke-virtual {v2}, Llh/c;->U()J

    move-result-wide v2

    invoke-static {v2, v3, p1, p2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, " content="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Llh/c;->b2()Llh/f;

    move-result-object p1

    invoke-virtual {p1}, Llh/f;->r()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0x2026

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "limit < 0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public B1(Llh/c;J)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0, p2, p3}, Llh/t;->I1(J)V
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v0, p0, Llh/t;->b:Llh/c;

    invoke-virtual {v0, p1, p2, p3}, Llh/c;->B1(Llh/c;J)V

    return-void

    :catch_0
    move-exception p2

    iget-object p3, p0, Llh/t;->b:Llh/c;

    invoke-virtual {p1, p3}, Llh/c;->V(Llh/y;)J

    throw p2
.end method

.method public C()Llh/c;
    .locals 1

    iget-object v0, p0, Llh/t;->b:Llh/c;

    return-object v0
.end method

.method public C1(Llh/f;J)J
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Llh/t;->d:Z

    if-nez v0, :cond_2

    :goto_0
    iget-object v0, p0, Llh/t;->b:Llh/c;

    invoke-virtual {v0, p1, p2, p3}, Llh/c;->C1(Llh/f;J)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    return-wide v0

    :cond_0
    iget-object v0, p0, Llh/t;->b:Llh/c;

    iget-wide v4, v0, Llh/c;->c:J

    iget-object v1, p0, Llh/t;->c:Llh/y;

    const-wide/16 v6, 0x2000

    invoke-interface {v1, v0, v6, v7}, Llh/y;->x0(Llh/c;J)J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    return-wide v2

    :cond_1
    invoke-virtual {p1}, Llh/f;->R()I

    move-result v0

    int-to-long v0, v0

    sub-long/2addr v4, v0

    const-wide/16 v0, 0x1

    add-long/2addr v4, v0

    invoke-static {p2, p3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p2

    goto :goto_0

    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public D1(Llh/x;)J
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_3

    const-wide/16 v0, 0x0

    move-wide v2, v0

    :cond_0
    :goto_0
    iget-object v4, p0, Llh/t;->c:Llh/y;

    iget-object v5, p0, Llh/t;->b:Llh/c;

    const-wide/16 v6, 0x2000

    invoke-interface {v4, v5, v6, v7}, Llh/y;->x0(Llh/c;J)J

    move-result-wide v4

    const-wide/16 v6, -0x1

    cmp-long v4, v4, v6

    if-eqz v4, :cond_1

    iget-object v4, p0, Llh/t;->b:Llh/c;

    invoke-virtual {v4}, Llh/c;->e()J

    move-result-wide v4

    cmp-long v6, v4, v0

    if-lez v6, :cond_0

    add-long/2addr v2, v4

    iget-object v6, p0, Llh/t;->b:Llh/c;

    invoke-interface {p1, v6, v4, v5}, Llh/x;->d0(Llh/c;J)V

    goto :goto_0

    :cond_1
    iget-object v4, p0, Llh/t;->b:Llh/c;

    invoke-virtual {v4}, Llh/c;->U()J

    move-result-wide v4

    cmp-long v0, v4, v0

    if-lez v0, :cond_2

    iget-object v0, p0, Llh/t;->b:Llh/c;

    invoke-virtual {v0}, Llh/c;->U()J

    move-result-wide v0

    add-long/2addr v2, v0

    iget-object v0, p0, Llh/t;->b:Llh/c;

    invoke-virtual {v0}, Llh/c;->U()J

    move-result-wide v4

    invoke-interface {p1, v0, v4, v5}, Llh/x;->d0(Llh/c;J)V

    :cond_2
    return-wide v2

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "sink == null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public E1()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, v0, v1}, Llh/t;->A1(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public F1(J)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Llh/t;->I1(J)V

    iget-object v0, p0, Llh/t;->b:Llh/c;

    invoke-virtual {v0, p1, p2}, Llh/c;->F1(J)[B

    move-result-object p1

    return-object p1
.end method

.method public G1()S
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, 0x2

    invoke-virtual {p0, v0, v1}, Llh/t;->I1(J)V

    iget-object v0, p0, Llh/t;->b:Llh/c;

    invoke-virtual {v0}, Llh/c;->G1()S

    move-result v0

    return v0
.end method

.method public H1()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, 0x8

    invoke-virtual {p0, v0, v1}, Llh/t;->I1(J)V

    iget-object v0, p0, Llh/t;->b:Llh/c;

    invoke-virtual {v0}, Llh/c;->H1()J

    move-result-wide v0

    return-wide v0
.end method

.method public I1(J)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Llh/t;->i(J)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1
.end method

.method public J1(J)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Llh/t;->I1(J)V

    iget-object v0, p0, Llh/t;->b:Llh/c;

    invoke-virtual {v0, p1, p2}, Llh/c;->J1(J)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public K1(J)Llh/f;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Llh/t;->I1(J)V

    iget-object v0, p0, Llh/t;->b:Llh/c;

    invoke-virtual {v0, p1, p2}, Llh/c;->K1(J)Llh/f;

    move-result-object p1

    return-object p1
.end method

.method public L1()[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Llh/t;->b:Llh/c;

    iget-object v1, p0, Llh/t;->c:Llh/y;

    invoke-virtual {v0, v1}, Llh/c;->V(Llh/y;)J

    iget-object v0, p0, Llh/t;->b:Llh/c;

    invoke-virtual {v0}, Llh/c;->L1()[B

    move-result-object v0

    return-object v0
.end method

.method public M1()Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Llh/t;->d:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Llh/t;->b:Llh/c;

    invoke-virtual {v0}, Llh/c;->M1()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Llh/t;->c:Llh/y;

    iget-object v1, p0, Llh/t;->b:Llh/c;

    const-wide/16 v2, 0x2000

    invoke-interface {v0, v1, v2, v3}, Llh/y;->x0(Llh/c;J)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public V1(JLlh/f;II)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Llh/t;->d:Z

    if-nez v0, :cond_5

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    const/4 v1, 0x0

    if-ltz v0, :cond_4

    if-ltz p4, :cond_4

    if-ltz p5, :cond_4

    invoke-virtual {p3}, Llh/f;->R()I

    move-result v0

    sub-int/2addr v0, p4

    if-ge v0, p5, :cond_0

    goto :goto_1

    :cond_0
    move v0, v1

    :goto_0
    if-ge v0, p5, :cond_3

    int-to-long v2, v0

    add-long/2addr v2, p1

    const-wide/16 v4, 0x1

    add-long/2addr v4, v2

    invoke-virtual {p0, v4, v5}, Llh/t;->i(J)Z

    move-result v4

    if-nez v4, :cond_1

    return v1

    :cond_1
    iget-object v4, p0, Llh/t;->b:Llh/c;

    invoke-virtual {v4, v2, v3}, Llh/c;->l(J)B

    move-result v2

    add-int v3, p4, v0

    invoke-virtual {p3, v3}, Llh/f;->p(I)B

    move-result v3

    if-eq v2, v3, :cond_2

    return v1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    const/4 p1, 0x1

    return p1

    :cond_4
    :goto_1
    return v1

    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public W1()J
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, 0x1

    invoke-virtual {p0, v0, v1}, Llh/t;->I1(J)V

    const/4 v0, 0x0

    :goto_0
    add-int/lit8 v1, v0, 0x1

    int-to-long v2, v1

    invoke-virtual {p0, v2, v3}, Llh/t;->i(J)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Llh/t;->b:Llh/c;

    int-to-long v3, v0

    invoke-virtual {v2, v3, v4}, Llh/c;->l(J)B

    move-result v2

    const/16 v3, 0x30

    if-lt v2, v3, :cond_0

    const/16 v3, 0x39

    if-le v2, v3, :cond_1

    :cond_0
    if-nez v0, :cond_2

    const/16 v3, 0x2d

    if-eq v2, v3, :cond_1

    goto :goto_1

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    :goto_1
    if-eqz v0, :cond_3

    goto :goto_2

    :cond_3
    new-instance v0, Ljava/lang/NumberFormatException;

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "Expected leading [0-9] or \'-\' character but was %#x"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    :goto_2
    iget-object v0, p0, Llh/t;->b:Llh/c;

    invoke-virtual {v0}, Llh/c;->W1()J

    move-result-wide v0

    return-wide v0
.end method

.method public X1(Ljava/nio/charset/Charset;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_0

    iget-object v0, p0, Llh/t;->b:Llh/c;

    iget-object v1, p0, Llh/t;->c:Llh/y;

    invoke-virtual {v0, v1}, Llh/c;->V(Llh/y;)J

    iget-object v0, p0, Llh/t;->b:Llh/c;

    invoke-virtual {v0, p1}, Llh/c;->X1(Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "charset == null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public Y1()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, 0x1

    invoke-virtual {p0, v0, v1}, Llh/t;->I1(J)V

    iget-object v0, p0, Llh/t;->b:Llh/c;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Llh/c;->l(J)B

    move-result v0

    and-int/lit16 v1, v0, 0xe0

    const/16 v2, 0xc0

    if-ne v1, v2, :cond_0

    const-wide/16 v0, 0x2

    invoke-virtual {p0, v0, v1}, Llh/t;->I1(J)V

    goto :goto_0

    :cond_0
    and-int/lit16 v1, v0, 0xf0

    const/16 v2, 0xe0

    if-ne v1, v2, :cond_1

    const-wide/16 v0, 0x3

    invoke-virtual {p0, v0, v1}, Llh/t;->I1(J)V

    goto :goto_0

    :cond_1
    and-int/lit16 v0, v0, 0xf8

    const/16 v1, 0xf0

    if-ne v0, v1, :cond_2

    const-wide/16 v0, 0x4

    invoke-virtual {p0, v0, v1}, Llh/t;->I1(J)V

    :cond_2
    :goto_0
    iget-object v0, p0, Llh/t;->b:Llh/c;

    invoke-virtual {v0}, Llh/c;->Y1()I

    move-result v0

    return v0
.end method

.method public Z1(Llh/f;)J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, v0, v1}, Llh/t;->v1(Llh/f;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public a0()Llh/z;
    .locals 1

    iget-object v0, p0, Llh/t;->c:Llh/y;

    invoke-interface {v0}, Llh/y;->a0()Llh/z;

    move-result-object v0

    return-object v0
.end method

.method public a2(Llh/q;)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Llh/t;->d:Z

    if-nez v0, :cond_3

    :cond_0
    iget-object v0, p0, Llh/t;->b:Llh/c;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Llh/c;->Q(Llh/q;Z)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    return v1

    :cond_1
    const/4 v2, -0x2

    if-ne v0, v2, :cond_2

    iget-object v0, p0, Llh/t;->c:Llh/y;

    iget-object v2, p0, Llh/t;->b:Llh/c;

    const-wide/16 v3, 0x2000

    invoke-interface {v0, v2, v3, v4}, Llh/y;->x0(Llh/c;J)J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v0, v2, v4

    if-nez v0, :cond_0

    return v1

    :cond_2
    iget-object p1, p1, Llh/q;->b:[Llh/f;

    aget-object p1, p1, v0

    invoke-virtual {p1}, Llh/f;->R()I

    move-result p1

    iget-object v1, p0, Llh/t;->b:Llh/c;

    int-to-long v2, p1

    invoke-virtual {v1, v2, v3}, Llh/c;->skip(J)V

    return v0

    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "closed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public b2()Llh/f;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Llh/t;->b:Llh/c;

    iget-object v1, p0, Llh/t;->c:Llh/y;

    invoke-virtual {v0, v1}, Llh/c;->V(Llh/y;)J

    iget-object v0, p0, Llh/t;->b:Llh/c;

    invoke-virtual {v0}, Llh/c;->b2()Llh/f;

    move-result-object v0

    return-object v0
.end method

.method public c2()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, 0x4

    invoke-virtual {p0, v0, v1}, Llh/t;->I1(J)V

    iget-object v0, p0, Llh/t;->b:Llh/c;

    invoke-virtual {v0}, Llh/c;->c2()I

    move-result v0

    return v0
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Llh/t;->d:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Llh/t;->d:Z

    iget-object v0, p0, Llh/t;->c:Llh/y;

    invoke-interface {v0}, Llh/y;->close()V

    iget-object v0, p0, Llh/t;->b:Llh/c;

    invoke-virtual {v0}, Llh/c;->c()V

    return-void
.end method

.method public d2()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Llh/t;->b:Llh/c;

    iget-object v1, p0, Llh/t;->c:Llh/y;

    invoke-virtual {v0, v1}, Llh/c;->V(Llh/y;)J

    iget-object v0, p0, Llh/t;->b:Llh/c;

    invoke-virtual {v0}, Llh/c;->d2()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public e2(JLjava/nio/charset/Charset;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Llh/t;->I1(J)V

    if-eqz p3, :cond_0

    iget-object v0, p0, Llh/t;->b:Llh/c;

    invoke-virtual {v0, p1, p2, p3}, Llh/c;->e2(JLjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "charset == null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public f2()J
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, 0x1

    invoke-virtual {p0, v0, v1}, Llh/t;->I1(J)V

    const/4 v0, 0x0

    :goto_0
    add-int/lit8 v1, v0, 0x1

    int-to-long v2, v1

    invoke-virtual {p0, v2, v3}, Llh/t;->i(J)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Llh/t;->b:Llh/c;

    int-to-long v3, v0

    invoke-virtual {v2, v3, v4}, Llh/c;->l(J)B

    move-result v2

    const/16 v3, 0x30

    if-lt v2, v3, :cond_0

    const/16 v3, 0x39

    if-le v2, v3, :cond_2

    :cond_0
    const/16 v3, 0x61

    if-lt v2, v3, :cond_1

    const/16 v3, 0x66

    if-le v2, v3, :cond_2

    :cond_1
    const/16 v3, 0x41

    if-lt v2, v3, :cond_3

    const/16 v3, 0x46

    if-le v2, v3, :cond_2

    goto :goto_1

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    :goto_1
    if-eqz v0, :cond_4

    goto :goto_2

    :cond_4
    new-instance v0, Ljava/lang/NumberFormatException;

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "Expected leading [0-9a-fA-F] character but was %#x"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    :goto_2
    iget-object v0, p0, Llh/t;->b:Llh/c;

    invoke-virtual {v0}, Llh/c;->f2()J

    move-result-wide v0

    return-wide v0
.end method

.method public g2()Ljava/io/InputStream;
    .locals 1

    new-instance v0, Llh/t$a;

    invoke-direct {v0, p0}, Llh/t$a;-><init>(Llh/t;)V

    return-object v0
.end method

.method public i(J)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_3

    iget-boolean v0, p0, Llh/t;->d:Z

    if-nez v0, :cond_2

    :cond_0
    iget-object v0, p0, Llh/t;->b:Llh/c;

    iget-wide v1, v0, Llh/c;->c:J

    cmp-long v1, v1, p1

    if-gez v1, :cond_1

    iget-object v1, p0, Llh/t;->c:Llh/y;

    const-wide/16 v2, 0x2000

    invoke-interface {v1, v0, v2, v3}, Llh/y;->x0(Llh/c;J)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_1
    const/4 p1, 0x1

    return p1

    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "byteCount < 0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isOpen()Z
    .locals 1

    iget-boolean v0, p0, Llh/t;->d:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public read(Ljava/nio/ByteBuffer;)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7
    iget-object v0, p0, Llh/t;->b:Llh/c;

    iget-wide v1, v0, Llh/c;->c:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    .line 8
    iget-object v1, p0, Llh/t;->c:Llh/y;

    const-wide/16 v2, 0x2000

    invoke-interface {v1, v0, v2, v3}, Llh/y;->x0(Llh/c;J)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 p1, -0x1

    return p1

    .line 9
    :cond_0
    iget-object v0, p0, Llh/t;->b:Llh/c;

    invoke-virtual {v0, p1}, Llh/c;->read(Ljava/nio/ByteBuffer;)I

    move-result p1

    return p1
.end method

.method public read([B)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Llh/t;->read([BII)I

    move-result p1

    return p1
.end method

.method public read([BII)I
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    array-length v0, p1

    int-to-long v1, v0

    int-to-long v3, p2

    int-to-long v7, p3

    move-wide v5, v7

    invoke-static/range {v1 .. v6}, Llh/B;->b(JJJ)V

    .line 3
    iget-object p3, p0, Llh/t;->b:Llh/c;

    iget-wide v0, p3, Llh/c;->c:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 4
    iget-object v0, p0, Llh/t;->c:Llh/y;

    const-wide/16 v1, 0x2000

    invoke-interface {v0, p3, v1, v2}, Llh/y;->x0(Llh/c;J)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long p3, v0, v2

    if-nez p3, :cond_0

    const/4 p1, -0x1

    return p1

    .line 5
    :cond_0
    iget-object p3, p0, Llh/t;->b:Llh/c;

    iget-wide v0, p3, Llh/c;->c:J

    invoke-static {v7, v8, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int p3, v0

    .line 6
    iget-object v0, p0, Llh/t;->b:Llh/c;

    invoke-virtual {v0, p1, p2, p3}, Llh/c;->read([BII)I

    move-result p1

    return p1
.end method

.method public readByte()B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, 0x1

    invoke-virtual {p0, v0, v1}, Llh/t;->I1(J)V

    iget-object v0, p0, Llh/t;->b:Llh/c;

    invoke-virtual {v0}, Llh/c;->readByte()B

    move-result v0

    return v0
.end method

.method public readFully([B)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    array-length v0, p1

    int-to-long v0, v0

    invoke-virtual {p0, v0, v1}, Llh/t;->I1(J)V
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v0, p0, Llh/t;->b:Llh/c;

    invoke-virtual {v0, p1}, Llh/c;->readFully([B)V

    return-void

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Llh/t;->b:Llh/c;

    iget-wide v3, v2, Llh/c;->c:J

    const-wide/16 v5, 0x0

    cmp-long v5, v3, v5

    if-lez v5, :cond_1

    long-to-int v3, v3

    invoke-virtual {v2, p1, v1, v3}, Llh/c;->read([BII)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    add-int/2addr v1, v2

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    throw v0
.end method

.method public readInt()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, 0x4

    invoke-virtual {p0, v0, v1}, Llh/t;->I1(J)V

    iget-object v0, p0, Llh/t;->b:Llh/c;

    invoke-virtual {v0}, Llh/c;->readInt()I

    move-result v0

    return v0
.end method

.method public readLong()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, 0x8

    invoke-virtual {p0, v0, v1}, Llh/t;->I1(J)V

    iget-object v0, p0, Llh/t;->b:Llh/c;

    invoke-virtual {v0}, Llh/c;->readLong()J

    move-result-wide v0

    return-wide v0
.end method

.method public readShort()S
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, 0x2

    invoke-virtual {p0, v0, v1}, Llh/t;->I1(J)V

    iget-object v0, p0, Llh/t;->b:Llh/c;

    invoke-virtual {v0}, Llh/c;->readShort()S

    move-result v0

    return v0
.end method

.method public s1(B)J
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v2, 0x0

    const-wide v4, 0x7fffffffffffffffL

    move-object v0, p0

    move v1, p1

    invoke-virtual/range {v0 .. v5}, Llh/t;->x1(BJJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public skip(J)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Llh/t;->d:Z

    if-nez v0, :cond_3

    :goto_0
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-lez v2, :cond_2

    iget-object v2, p0, Llh/t;->b:Llh/c;

    iget-wide v3, v2, Llh/c;->c:J

    cmp-long v0, v3, v0

    if-nez v0, :cond_1

    iget-object v0, p0, Llh/t;->c:Llh/y;

    const-wide/16 v3, 0x2000

    invoke-interface {v0, v2, v3, v4}, Llh/y;->x0(Llh/c;J)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1

    :cond_1
    :goto_1
    iget-object v0, p0, Llh/t;->b:Llh/c;

    invoke-virtual {v0}, Llh/c;->U()J

    move-result-wide v0

    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    iget-object v2, p0, Llh/t;->b:Llh/c;

    invoke-virtual {v2, v0, v1}, Llh/c;->skip(J)V

    sub-long/2addr p1, v0

    goto :goto_0

    :cond_2
    return-void

    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public t1(JLlh/f;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p3}, Llh/f;->R()I

    move-result v5

    const/4 v4, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Llh/t;->V1(JLlh/f;II)Z

    move-result p1

    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "buffer("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Llh/t;->c:Llh/y;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public v1(Llh/f;J)J
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Llh/t;->d:Z

    if-nez v0, :cond_2

    :goto_0
    iget-object v0, p0, Llh/t;->b:Llh/c;

    invoke-virtual {v0, p1, p2, p3}, Llh/c;->v1(Llh/f;J)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    return-wide v0

    :cond_0
    iget-object v0, p0, Llh/t;->b:Llh/c;

    iget-wide v4, v0, Llh/c;->c:J

    iget-object v1, p0, Llh/t;->c:Llh/y;

    const-wide/16 v6, 0x2000

    invoke-interface {v1, v0, v6, v7}, Llh/y;->x0(Llh/c;J)J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    return-wide v2

    :cond_1
    invoke-static {p2, p3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p2

    goto :goto_0

    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public w1(BJ)J
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide v4, 0x7fffffffffffffffL

    move-object v0, p0

    move v1, p1

    move-wide v2, p2

    invoke-virtual/range {v0 .. v5}, Llh/t;->x1(BJJ)J

    move-result-wide p1

    return-wide p1
.end method

.method public x0(Llh/c;J)J
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_3

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-ltz v2, :cond_2

    iget-boolean v2, p0, Llh/t;->d:Z

    if-nez v2, :cond_1

    iget-object v2, p0, Llh/t;->b:Llh/c;

    iget-wide v3, v2, Llh/c;->c:J

    cmp-long v0, v3, v0

    if-nez v0, :cond_0

    iget-object v0, p0, Llh/t;->c:Llh/y;

    const-wide/16 v3, 0x2000

    invoke-interface {v0, v2, v3, v4}, Llh/y;->x0(Llh/c;J)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    return-wide v2

    :cond_0
    iget-object v0, p0, Llh/t;->b:Llh/c;

    iget-wide v0, v0, Llh/c;->c:J

    invoke-static {p2, p3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p2

    iget-object v0, p0, Llh/t;->b:Llh/c;

    invoke-virtual {v0, p1, p2, p3}, Llh/c;->x0(Llh/c;J)J

    move-result-wide p1

    return-wide p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
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

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "sink == null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public x1(BJJ)J
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Llh/t;->d:Z

    if-nez v0, :cond_4

    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-ltz v0, :cond_3

    cmp-long v0, p4, p2

    if-ltz v0, :cond_3

    :goto_0
    cmp-long v0, p2, p4

    const-wide/16 v7, -0x1

    if-gez v0, :cond_2

    iget-object v1, p0, Llh/t;->b:Llh/c;

    move v2, p1

    move-wide v3, p2

    move-wide v5, p4

    invoke-virtual/range {v1 .. v6}, Llh/c;->x1(BJJ)J

    move-result-wide v0

    cmp-long v2, v0, v7

    if-eqz v2, :cond_0

    return-wide v0

    :cond_0
    iget-object v0, p0, Llh/t;->b:Llh/c;

    iget-wide v1, v0, Llh/c;->c:J

    cmp-long v3, v1, p4

    if-gez v3, :cond_2

    iget-object v3, p0, Llh/t;->c:Llh/y;

    const-wide/16 v4, 0x2000

    invoke-interface {v3, v0, v4, v5}, Llh/y;->x0(Llh/c;J)J

    move-result-wide v3

    cmp-long v0, v3, v7

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {p2, p3, v1, v2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p2

    goto :goto_0

    :cond_2
    :goto_1
    return-wide v7

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    filled-new-array {p2, p3}, [Ljava/lang/Object;

    move-result-object p2

    const-string p3, "fromIndex=%s toIndex=%s"

    invoke-static {p3, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public y1()Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Llh/t;->s1(B)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-nez v2, :cond_1

    iget-object v0, p0, Llh/t;->b:Llh/c;

    iget-wide v0, v0, Llh/c;->c:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    invoke-virtual {p0, v0, v1}, Llh/t;->J1(J)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    iget-object v2, p0, Llh/t;->b:Llh/c;

    invoke-virtual {v2, v0, v1}, Llh/c;->B(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public z1(Llh/f;)J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, v0, v1}, Llh/t;->C1(Llh/f;J)J

    move-result-wide v0

    return-wide v0
.end method
