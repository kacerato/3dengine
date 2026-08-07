.class public LSg/k;
.super Ljava/io/OutputStream;
.source "SourceFile"


# instance fields
.field public b:LSg/d;

.field public c:[C

.field public d:LTg/r;

.field public e:LSg/c;

.field public f:LTg/j;

.field public g:LTg/k;

.field public h:LQg/a;

.field public i:LQg/e;

.field public j:Ljava/util/zip/CRC32;

.field public k:LXg/f;

.field public l:J

.field public m:LTg/m;

.field public n:Z

.field public o:Z


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0, v0}, LSg/k;-><init>(Ljava/io/OutputStream;[CLjava/nio/charset/Charset;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, v0, p2}, LSg/k;-><init>(Ljava/io/OutputStream;[CLjava/nio/charset/Charset;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;[C)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 3
    invoke-direct {p0, p1, p2, v0}, LSg/k;-><init>(Ljava/io/OutputStream;[CLjava/nio/charset/Charset;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;[CLTg/m;LTg/r;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 6
    new-instance v0, LQg/a;

    invoke-direct {v0}, LQg/a;-><init>()V

    iput-object v0, p0, LSg/k;->h:LQg/a;

    .line 7
    new-instance v0, LQg/e;

    invoke-direct {v0}, LQg/e;-><init>()V

    iput-object v0, p0, LSg/k;->i:LQg/e;

    .line 8
    new-instance v0, Ljava/util/zip/CRC32;

    invoke-direct {v0}, Ljava/util/zip/CRC32;-><init>()V

    iput-object v0, p0, LSg/k;->j:Ljava/util/zip/CRC32;

    .line 9
    new-instance v0, LXg/f;

    invoke-direct {v0}, LXg/f;-><init>()V

    iput-object v0, p0, LSg/k;->k:LXg/f;

    const-wide/16 v0, 0x0

    .line 10
    iput-wide v0, p0, LSg/k;->l:J

    const/4 v0, 0x1

    .line 11
    iput-boolean v0, p0, LSg/k;->o:Z

    .line 12
    invoke-virtual {p3}, LTg/m;->a()I

    move-result v0

    const/16 v1, 0x200

    if-lt v0, v1, :cond_0

    .line 13
    new-instance v0, LSg/d;

    invoke-direct {v0, p1}, LSg/d;-><init>(Ljava/io/OutputStream;)V

    iput-object v0, p0, LSg/k;->b:LSg/d;

    .line 14
    iput-object p2, p0, LSg/k;->c:[C

    .line 15
    iput-object p3, p0, LSg/k;->m:LTg/m;

    .line 16
    invoke-virtual {p0, p4, v0}, LSg/k;->j(LTg/r;LSg/d;)LTg/r;

    move-result-object p1

    iput-object p1, p0, LSg/k;->d:LTg/r;

    const/4 p1, 0x0

    .line 17
    iput-boolean p1, p0, LSg/k;->n:Z

    .line 18
    invoke-virtual {p0}, LSg/k;->q()V

    return-void

    .line 19
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Buffer size cannot be less than 512 bytes"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Ljava/io/OutputStream;[CLjava/nio/charset/Charset;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4
    new-instance v0, LTg/m;

    const/16 v1, 0x1000

    const/4 v2, 0x1

    invoke-direct {v0, p3, v1, v2}, LTg/m;-><init>(Ljava/nio/charset/Charset;IZ)V

    new-instance p3, LTg/r;

    invoke-direct {p3}, LTg/r;-><init>()V

    invoke-direct {p0, p1, p2, v0, p3}, LSg/k;-><init>(Ljava/io/OutputStream;[CLTg/m;LTg/r;)V

    return-void
.end method


# virtual methods
.method public final a(LTg/s;)LTg/s;
    .locals 6

    new-instance v0, LTg/s;

    invoke-direct {v0, p1}, LTg/s;-><init>(LTg/s;)V

    invoke-virtual {p1}, LTg/s;->k()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, LXg/c;->A(Ljava/lang/String;)Z

    move-result v1

    const-wide/16 v2, 0x0

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, LTg/s;->P(Z)V

    sget-object v4, LUg/d;->STORE:LUg/d;

    invoke-virtual {v0, v4}, LTg/s;->y(LUg/d;)V

    invoke-virtual {v0, v1}, LTg/s;->A(Z)V

    invoke-virtual {v0, v2, v3}, LTg/s;->D(J)V

    :cond_0
    invoke-virtual {p1}, LTg/s;->l()J

    move-result-wide v4

    cmp-long p1, v4, v2

    if-gtz p1, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, LTg/s;->I(J)V

    :cond_1
    return-object v0
.end method

.method public c()LTg/j;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, LSg/k;->e:LSg/c;

    invoke-virtual {v0}, LSg/c;->c()V

    iget-object v0, p0, LSg/k;->e:LSg/c;

    invoke-virtual {v0}, LSg/c;->d()J

    move-result-wide v0

    iget-object v2, p0, LSg/k;->f:LTg/j;

    invoke-virtual {v2, v0, v1}, LTg/b;->w(J)V

    iget-object v2, p0, LSg/k;->g:LTg/k;

    invoke-virtual {v2, v0, v1}, LTg/b;->w(J)V

    iget-object v0, p0, LSg/k;->f:LTg/j;

    iget-wide v1, p0, LSg/k;->l:J

    invoke-virtual {v0, v1, v2}, LTg/b;->K(J)V

    iget-object v0, p0, LSg/k;->g:LTg/k;

    iget-wide v1, p0, LSg/k;->l:J

    invoke-virtual {v0, v1, v2}, LTg/b;->K(J)V

    iget-object v0, p0, LSg/k;->f:LTg/j;

    invoke-virtual {p0, v0}, LSg/k;->p(LTg/j;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, LSg/k;->f:LTg/j;

    iget-object v1, p0, LSg/k;->j:Ljava/util/zip/CRC32;

    invoke-virtual {v1}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, LTg/b;->y(J)V

    iget-object v0, p0, LSg/k;->g:LTg/k;

    iget-object v1, p0, LSg/k;->j:Ljava/util/zip/CRC32;

    invoke-virtual {v1}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, LTg/b;->y(J)V

    :cond_0
    iget-object v0, p0, LSg/k;->d:LTg/r;

    invoke-virtual {v0}, LTg/r;->f()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, LSg/k;->g:LTg/k;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, LSg/k;->d:LTg/r;

    invoke-virtual {v0}, LTg/r;->b()LTg/d;

    move-result-object v0

    invoke-virtual {v0}, LTg/d;->b()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, LSg/k;->f:LTg/j;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, LSg/k;->g:LTg/k;

    invoke-virtual {v0}, LTg/b;->r()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, LSg/k;->i:LQg/e;

    iget-object v1, p0, LSg/k;->g:LTg/k;

    iget-object v2, p0, LSg/k;->b:LSg/d;

    invoke-virtual {v0, v1, v2}, LQg/e;->o(LTg/k;Ljava/io/OutputStream;)V

    :cond_1
    invoke-virtual {p0}, LSg/k;->l()V

    const/4 v0, 0x1

    iput-boolean v0, p0, LSg/k;->o:Z

    iget-object v0, p0, LSg/k;->f:LTg/j;

    return-object v0
.end method

.method public close()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, LSg/k;->o:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, LSg/k;->c()LTg/j;

    :cond_0
    iget-object v0, p0, LSg/k;->d:LTg/r;

    invoke-virtual {v0}, LTg/r;->e()LTg/g;

    move-result-object v0

    iget-object v1, p0, LSg/k;->b:LSg/d;

    invoke-virtual {v1}, LSg/d;->e()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, LTg/g;->o(J)V

    iget-object v0, p0, LSg/k;->i:LQg/e;

    iget-object v1, p0, LSg/k;->d:LTg/r;

    iget-object v2, p0, LSg/k;->b:LSg/d;

    iget-object v3, p0, LSg/k;->m:LTg/m;

    invoke-virtual {v3}, LTg/m;->b()Ljava/nio/charset/Charset;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, LQg/e;->d(LTg/r;Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    iget-object v0, p0, LSg/k;->b:LSg/d;

    invoke-virtual {v0}, LSg/d;->close()V

    const/4 v0, 0x1

    iput-boolean v0, p0, LSg/k;->n:Z

    return-void
.end method

.method public final d()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, LSg/k;->n:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Stream is closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final e(LTg/s;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, LSg/k;->h:LQg/a;

    iget-object v1, p0, LSg/k;->b:LSg/d;

    invoke-virtual {v1}, LSg/d;->h()Z

    move-result v2

    iget-object v1, p0, LSg/k;->b:LSg/d;

    invoke-virtual {v1}, LSg/d;->d()I

    move-result v3

    iget-object v1, p0, LSg/k;->m:LTg/m;

    invoke-virtual {v1}, LTg/m;->b()Ljava/nio/charset/Charset;

    move-result-object v4

    iget-object v5, p0, LSg/k;->k:LXg/f;

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, LQg/a;->d(LTg/s;ZILjava/nio/charset/Charset;LXg/f;)LTg/j;

    move-result-object p1

    iput-object p1, p0, LSg/k;->f:LTg/j;

    iget-object v0, p0, LSg/k;->b:LSg/d;

    invoke-virtual {v0}, LSg/d;->f()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, LTg/j;->a0(J)V

    iget-object p1, p0, LSg/k;->h:LQg/a;

    iget-object v0, p0, LSg/k;->f:LTg/j;

    invoke-virtual {p1, v0}, LQg/a;->f(LTg/j;)LTg/k;

    move-result-object p1

    iput-object p1, p0, LSg/k;->g:LTg/k;

    iget-object v0, p0, LSg/k;->i:LQg/e;

    iget-object v1, p0, LSg/k;->d:LTg/r;

    iget-object v2, p0, LSg/k;->b:LSg/d;

    iget-object v3, p0, LSg/k;->m:LTg/m;

    invoke-virtual {v3}, LTg/m;->b()Ljava/nio/charset/Charset;

    move-result-object v3

    invoke-virtual {v0, v1, p1, v2, v3}, LQg/e;->q(LTg/r;LTg/k;Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    return-void
.end method

.method public final f(LSg/j;LTg/s;)LSg/b;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LSg/j;",
            "LTg/s;",
            ")",
            "LSg/b<",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p2}, LTg/s;->o()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, LSg/f;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, LSg/f;-><init>(LSg/j;LTg/s;[C)V

    return-object v0

    :cond_0
    iget-object v0, p0, LSg/k;->c:[C

    if-eqz v0, :cond_4

    array-length v0, v0

    if-eqz v0, :cond_4

    invoke-virtual {p2}, LTg/s;->f()LUg/e;

    move-result-object v0

    sget-object v1, LUg/e;->AES:LUg/e;

    if-ne v0, v1, :cond_1

    new-instance v0, LSg/a;

    iget-object v1, p0, LSg/k;->c:[C

    iget-object v2, p0, LSg/k;->m:LTg/m;

    invoke-virtual {v2}, LTg/m;->c()Z

    move-result v2

    invoke-direct {v0, p1, p2, v1, v2}, LSg/a;-><init>(LSg/j;LTg/s;[CZ)V

    return-object v0

    :cond_1
    invoke-virtual {p2}, LTg/s;->f()LUg/e;

    move-result-object v0

    sget-object v1, LUg/e;->ZIP_STANDARD:LUg/e;

    if-ne v0, v1, :cond_2

    new-instance v0, LSg/l;

    iget-object v1, p0, LSg/k;->c:[C

    iget-object v2, p0, LSg/k;->m:LTg/m;

    invoke-virtual {v2}, LTg/m;->c()Z

    move-result v2

    invoke-direct {v0, p1, p2, v1, v2}, LSg/l;-><init>(LSg/j;LTg/s;[CZ)V

    return-object v0

    :cond_2
    invoke-virtual {p2}, LTg/s;->f()LUg/e;

    move-result-object p1

    sget-object p2, LUg/e;->ZIP_STANDARD_VARIANT_STRONG:LUg/e;

    if-ne p1, p2, :cond_3

    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " encryption method is not supported"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    const-string p2, "Invalid encryption method"

    invoke-direct {p1, p2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    const-string p2, "password not set"

    invoke-direct {p1, p2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final g(LSg/b;LTg/s;)LSg/c;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LSg/b<",
            "*>;",
            "LTg/s;",
            ")",
            "LSg/c;"
        }
    .end annotation

    invoke-virtual {p2}, LTg/s;->d()LUg/d;

    move-result-object v0

    sget-object v1, LUg/d;->DEFLATE:LUg/d;

    if-ne v0, v1, :cond_0

    new-instance v0, LSg/e;

    invoke-virtual {p2}, LTg/s;->c()LUg/c;

    move-result-object p2

    iget-object v1, p0, LSg/k;->m:LTg/m;

    invoke-virtual {v1}, LTg/m;->a()I

    move-result v1

    invoke-direct {v0, p1, p2, v1}, LSg/e;-><init>(LSg/b;LUg/c;I)V

    return-object v0

    :cond_0
    new-instance p2, LSg/i;

    invoke-direct {p2, p1}, LSg/i;-><init>(LSg/b;)V

    return-object p2
.end method

.method public final h(LTg/s;)LSg/c;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, LSg/j;

    iget-object v1, p0, LSg/k;->b:LSg/d;

    invoke-direct {v0, v1}, LSg/j;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {p0, v0, p1}, LSg/k;->f(LSg/j;LTg/s;)LSg/b;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, LSg/k;->g(LSg/b;LTg/s;)LSg/c;

    move-result-object p1

    return-object p1
.end method

.method public final j(LTg/r;LSg/d;)LTg/r;
    .locals 2

    if-nez p1, :cond_0

    new-instance p1, LTg/r;

    invoke-direct {p1}, LTg/r;-><init>()V

    :cond_0
    invoke-virtual {p2}, LSg/d;->h()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, LTg/r;->v(Z)V

    invoke-virtual {p2}, LSg/d;->g()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, LTg/r;->w(J)V

    :cond_1
    return-object p1
.end method

.method public k(LTg/s;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, LSg/k;->o(LTg/s;)V

    invoke-virtual {p0, p1}, LSg/k;->a(LTg/s;)LTg/s;

    move-result-object p1

    invoke-virtual {p0, p1}, LSg/k;->e(LTg/s;)V

    invoke-virtual {p0, p1}, LSg/k;->h(LTg/s;)LSg/c;

    move-result-object p1

    iput-object p1, p0, LSg/k;->e:LSg/c;

    const/4 p1, 0x0

    iput-boolean p1, p0, LSg/k;->o:Z

    return-void
.end method

.method public final l()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    iput-wide v0, p0, LSg/k;->l:J

    iget-object v0, p0, LSg/k;->j:Ljava/util/zip/CRC32;

    invoke-virtual {v0}, Ljava/util/zip/CRC32;->reset()V

    iget-object v0, p0, LSg/k;->e:LSg/c;

    invoke-virtual {v0}, LSg/c;->close()V

    return-void
.end method

.method public n(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, LSg/k;->d()V

    iget-object v0, p0, LSg/k;->d:LTg/r;

    invoke-virtual {v0}, LTg/r;->e()LTg/g;

    move-result-object v0

    invoke-virtual {v0, p1}, LTg/g;->k(Ljava/lang/String;)V

    return-void
.end method

.method public final o(LTg/s;)V
    .locals 4

    invoke-virtual {p1}, LTg/s;->k()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, LXg/h;->k(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, LTg/s;->d()LUg/d;

    move-result-object v0

    sget-object v1, LUg/d;->STORE:LUg/d;

    if-ne v0, v1, :cond_1

    invoke-virtual {p1}, LTg/s;->h()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    invoke-virtual {p1}, LTg/s;->k()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, LXg/c;->A(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, LTg/s;->u()Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "uncompressed size should be set for zip entries of compression type store"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    return-void

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "fileNameInZip is null or empty"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final p(LTg/j;)Z
    .locals 2

    invoke-virtual {p1}, LTg/b;->t()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, LTg/b;->g()LUg/e;

    move-result-object v0

    sget-object v1, LUg/e;->AES:LUg/e;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, LTg/b;->c()LTg/a;

    move-result-object p1

    invoke-virtual {p1}, LTg/a;->d()LUg/b;

    move-result-object p1

    sget-object v0, LUg/b;->ONE:LUg/b;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public final q()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, LSg/k;->b:LSg/d;

    invoke-virtual {v0}, LSg/d;->h()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, LSg/k;->k:LXg/f;

    iget-object v1, p0, LSg/k;->b:LSg/d;

    sget-object v2, LQg/c;->SPLIT_ZIP:LQg/c;

    invoke-virtual {v2}, LQg/c;->a()J

    move-result-wide v2

    long-to-int v2, v2

    invoke-virtual {v0, v1, v2}, LXg/f;->o(Ljava/io/OutputStream;I)V

    return-void
.end method

.method public write(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    int-to-byte p1, p1

    const/4 v0, 0x1

    .line 1
    new-array v0, v0, [B

    const/4 v1, 0x0

    aput-byte p1, v0, v1

    invoke-virtual {p0, v0}, LSg/k;->write([B)V

    return-void
.end method

.method public write([B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, LSg/k;->write([BII)V

    return-void
.end method

.method public write([BII)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3
    invoke-virtual {p0}, LSg/k;->d()V

    .line 4
    iget-object v0, p0, LSg/k;->j:Ljava/util/zip/CRC32;

    invoke-virtual {v0, p1, p2, p3}, Ljava/util/zip/CRC32;->update([BII)V

    .line 5
    iget-object v0, p0, LSg/k;->e:LSg/c;

    invoke-virtual {v0, p1, p2, p3}, LSg/c;->write([BII)V

    .line 6
    iget-wide p1, p0, LSg/k;->l:J

    int-to-long v0, p3

    add-long/2addr p1, v0

    iput-wide p1, p0, LSg/k;->l:J

    return-void
.end method
