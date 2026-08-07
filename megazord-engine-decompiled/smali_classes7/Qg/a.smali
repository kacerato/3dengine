.class public LQg/a;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/nio/charset/Charset;)I
    .locals 0

    invoke-static {p1, p2}, LQg/d;->b(Ljava/lang/String;Ljava/nio/charset/Charset;)[B

    move-result-object p1

    array-length p1, p1

    return p1
.end method

.method public final b(ZLTg/s;Ljava/nio/charset/Charset;)[B
    .locals 2

    const/4 v0, 0x2

    new-array v0, v0, [B

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2}, LQg/a;->e(ZLTg/s;)B

    move-result p1

    aput-byte p1, v0, v1

    if-eqz p3, :cond_0

    sget-object p1, LXg/d;->w:Ljava/nio/charset/Charset;

    invoke-virtual {p1, p3}, Ljava/nio/charset/Charset;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    const/4 p1, 0x1

    aget-byte p2, v0, p1

    const/4 p3, 0x3

    invoke-static {p2, p3}, LXg/a;->b(BI)B

    move-result p2

    aput-byte p2, v0, p1

    :cond_1
    return-object v0
.end method

.method public final c(LTg/s;)LTg/a;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    new-instance v0, LTg/a;

    invoke-direct {v0}, LTg/a;-><init>()V

    invoke-virtual {p1}, LTg/s;->b()LUg/b;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, LTg/s;->b()LUg/b;

    move-result-object v1

    invoke-virtual {v0, v1}, LTg/a;->i(LUg/b;)V

    :cond_0
    invoke-virtual {p1}, LTg/s;->a()LUg/a;

    move-result-object v1

    sget-object v2, LUg/a;->KEY_STRENGTH_128:LUg/a;

    if-ne v1, v2, :cond_1

    invoke-virtual {v0, v2}, LTg/a;->h(LUg/a;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, LTg/s;->a()LUg/a;

    move-result-object v1

    sget-object v2, LUg/a;->KEY_STRENGTH_192:LUg/a;

    if-ne v1, v2, :cond_2

    invoke-virtual {v0, v2}, LTg/a;->h(LUg/a;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, LTg/s;->a()LUg/a;

    move-result-object v1

    sget-object v2, LUg/a;->KEY_STRENGTH_256:LUg/a;

    if-ne v1, v2, :cond_3

    invoke-virtual {v0, v2}, LTg/a;->h(LUg/a;)V

    :goto_0
    invoke-virtual {p1}, LTg/s;->d()LUg/d;

    move-result-object p1

    invoke-virtual {v0, p1}, LTg/a;->j(LUg/d;)V

    return-object v0

    :cond_3
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    const-string v0, "invalid AES key strength"

    invoke-direct {p1, v0}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public d(LTg/s;ZILjava/nio/charset/Charset;LXg/f;)LTg/j;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    new-instance v0, LTg/j;

    invoke-direct {v0}, LTg/j;-><init>()V

    sget-object v1, LQg/c;->CENTRAL_DIRECTORY:LQg/c;

    invoke-virtual {v0, v1}, LTg/q;->b(LQg/c;)V

    invoke-static {p1, p5}, LXg/i;->a(LTg/s;LXg/f;)I

    move-result p5

    invoke-virtual {v0, p5}, LTg/j;->b0(I)V

    invoke-static {p1}, LXg/i;->b(LTg/s;)LQg/g;

    move-result-object p5

    invoke-virtual {p5}, LQg/g;->a()I

    move-result p5

    invoke-virtual {v0, p5}, LTg/b;->L(I)V

    invoke-virtual {p1}, LTg/s;->o()Z

    move-result p5

    if-eqz p5, :cond_0

    invoke-virtual {p1}, LTg/s;->f()LUg/e;

    move-result-object p5

    sget-object v1, LUg/e;->AES:LUg/e;

    if-ne p5, v1, :cond_0

    sget-object p5, LUg/d;->AES_INTERNAL_ONLY:LUg/d;

    invoke-virtual {v0, p5}, LTg/b;->x(LUg/d;)V

    invoke-virtual {p0, p1}, LQg/a;->c(LTg/s;)LTg/a;

    move-result-object p5

    invoke-virtual {v0, p5}, LTg/b;->v(LTg/a;)V

    invoke-virtual {v0}, LTg/b;->i()I

    move-result p5

    add-int/lit8 p5, p5, 0xb

    invoke-virtual {v0, p5}, LTg/b;->E(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, LTg/s;->d()LUg/d;

    move-result-object p5

    invoke-virtual {v0, p5}, LTg/b;->x(LUg/d;)V

    :goto_0
    invoke-virtual {p1}, LTg/s;->o()Z

    move-result p5

    if-eqz p5, :cond_2

    invoke-virtual {p1}, LTg/s;->f()LUg/e;

    move-result-object p5

    if-eqz p5, :cond_1

    invoke-virtual {p1}, LTg/s;->f()LUg/e;

    move-result-object p5

    sget-object v1, LUg/e;->NONE:LUg/e;

    if-eq p5, v1, :cond_1

    const/4 p5, 0x1

    invoke-virtual {v0, p5}, LTg/b;->B(Z)V

    invoke-virtual {p1}, LTg/s;->f()LUg/e;

    move-result-object p5

    invoke-virtual {v0, p5}, LTg/b;->C(LUg/e;)V

    goto :goto_1

    :cond_1
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    const-string p2, "Encryption method has to be set when encryptFiles flag is set in zip parameters"

    invoke-direct {p1, p2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    :goto_1
    invoke-virtual {p1}, LTg/s;->k()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p0, p5}, LQg/a;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p5

    invoke-virtual {v0, p5}, LTg/b;->F(Ljava/lang/String;)V

    invoke-virtual {p0, p5, p4}, LQg/a;->a(Ljava/lang/String;Ljava/nio/charset/Charset;)I

    move-result v1

    invoke-virtual {v0, v1}, LTg/b;->G(I)V

    if-eqz p2, :cond_3

    goto :goto_2

    :cond_3
    const/4 p3, 0x0

    :goto_2
    invoke-virtual {v0, p3}, LTg/j;->V(I)V

    invoke-virtual {p1}, LTg/s;->l()J

    move-result-wide p2

    invoke-static {p2, p3}, LXg/h;->h(J)J

    move-result-wide p2

    invoke-virtual {v0, p2, p3}, LTg/b;->J(J)V

    invoke-static {p5}, LXg/c;->A(Ljava/lang/String;)Z

    move-result p2

    invoke-virtual {v0, p2}, LTg/b;->A(Z)V

    invoke-static {p2}, LXg/c;->i(Z)[B

    move-result-object p2

    invoke-virtual {v0, p2}, LTg/j;->W([B)V

    invoke-virtual {p1}, LTg/s;->u()Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-virtual {p1}, LTg/s;->h()J

    move-result-wide p2

    const-wide/16 v1, -0x1

    cmp-long p2, p2, v1

    if-nez p2, :cond_4

    const-wide/16 p2, 0x0

    invoke-virtual {v0, p2, p3}, LTg/b;->K(J)V

    goto :goto_3

    :cond_4
    invoke-virtual {p1}, LTg/s;->h()J

    move-result-wide p2

    invoke-virtual {v0, p2, p3}, LTg/b;->K(J)V

    :goto_3
    invoke-virtual {p1}, LTg/s;->o()Z

    move-result p2

    if-eqz p2, :cond_5

    invoke-virtual {p1}, LTg/s;->f()LUg/e;

    move-result-object p2

    sget-object p3, LUg/e;->ZIP_STANDARD:LUg/e;

    if-ne p2, p3, :cond_5

    invoke-virtual {p1}, LTg/s;->g()J

    move-result-wide p2

    invoke-virtual {v0, p2, p3}, LTg/b;->y(J)V

    :cond_5
    invoke-virtual {v0}, LTg/b;->t()Z

    move-result p2

    invoke-virtual {p0, p2, p1, p4}, LQg/a;->b(ZLTg/s;Ljava/nio/charset/Charset;)[B

    move-result-object p2

    invoke-virtual {v0, p2}, LTg/b;->I([B)V

    invoke-virtual {p1}, LTg/s;->u()Z

    move-result p2

    invoke-virtual {v0, p2}, LTg/b;->z(Z)V

    invoke-virtual {p1}, LTg/s;->j()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, LTg/j;->X(Ljava/lang/String;)V

    return-object v0
.end method

.method public final e(ZLTg/s;)B
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-static {v0, v0}, LXg/a;->b(BI)B

    move-result v0

    :cond_0
    sget-object p1, LUg/d;->DEFLATE:LUg/d;

    invoke-virtual {p2}, LTg/s;->d()LUg/d;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    sget-object p1, LUg/c;->NORMAL:LUg/c;

    invoke-virtual {p2}, LTg/s;->c()LUg/c;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eqz p1, :cond_1

    invoke-static {v0, v2}, LXg/a;->c(BI)B

    move-result p1

    invoke-static {p1, v1}, LXg/a;->c(BI)B

    move-result v0

    goto :goto_0

    :cond_1
    sget-object p1, LUg/c;->MAXIMUM:LUg/c;

    invoke-virtual {p2}, LTg/s;->c()LUg/c;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-static {v0, v2}, LXg/a;->b(BI)B

    move-result p1

    invoke-static {p1, v1}, LXg/a;->c(BI)B

    move-result v0

    goto :goto_0

    :cond_2
    sget-object p1, LUg/c;->FAST:LUg/c;

    invoke-virtual {p2}, LTg/s;->c()LUg/c;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-static {v0, v2}, LXg/a;->c(BI)B

    move-result p1

    invoke-static {p1, v1}, LXg/a;->b(BI)B

    move-result v0

    goto :goto_0

    :cond_3
    sget-object p1, LUg/c;->FASTEST:LUg/c;

    invoke-virtual {p2}, LTg/s;->c()LUg/c;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    sget-object p1, LUg/c;->ULTRA:LUg/c;

    invoke-virtual {p2}, LTg/s;->c()LUg/c;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    :cond_4
    invoke-static {v0, v2}, LXg/a;->b(BI)B

    move-result p1

    invoke-static {p1, v1}, LXg/a;->b(BI)B

    move-result v0

    :cond_5
    :goto_0
    invoke-virtual {p2}, LTg/s;->u()Z

    move-result p1

    if-eqz p1, :cond_6

    const/4 p1, 0x3

    invoke-static {v0, p1}, LXg/a;->b(BI)B

    move-result v0

    :cond_6
    return v0
.end method

.method public f(LTg/j;)LTg/k;
    .locals 3

    new-instance v0, LTg/k;

    invoke-direct {v0}, LTg/k;-><init>()V

    sget-object v1, LQg/c;->LOCAL_FILE_HEADER:LQg/c;

    invoke-virtual {v0, v1}, LTg/q;->b(LQg/c;)V

    invoke-virtual {p1}, LTg/b;->p()I

    move-result v1

    invoke-virtual {v0, v1}, LTg/b;->L(I)V

    invoke-virtual {p1}, LTg/b;->e()LUg/d;

    move-result-object v1

    invoke-virtual {v0, v1}, LTg/b;->x(LUg/d;)V

    invoke-virtual {p1}, LTg/b;->m()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, LTg/b;->J(J)V

    invoke-virtual {p1}, LTg/b;->o()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, LTg/b;->K(J)V

    invoke-virtual {p1}, LTg/b;->k()I

    move-result v1

    invoke-virtual {v0, v1}, LTg/b;->G(I)V

    invoke-virtual {p1}, LTg/b;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, LTg/b;->F(Ljava/lang/String;)V

    invoke-virtual {p1}, LTg/b;->t()Z

    move-result v1

    invoke-virtual {v0, v1}, LTg/b;->B(Z)V

    invoke-virtual {p1}, LTg/b;->g()LUg/e;

    move-result-object v1

    invoke-virtual {v0, v1}, LTg/b;->C(LUg/e;)V

    invoke-virtual {p1}, LTg/b;->c()LTg/a;

    move-result-object v1

    invoke-virtual {v0, v1}, LTg/b;->v(LTg/a;)V

    invoke-virtual {p1}, LTg/b;->f()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, LTg/b;->y(J)V

    invoke-virtual {p1}, LTg/b;->d()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, LTg/b;->w(J)V

    invoke-virtual {p1}, LTg/b;->l()[B

    move-result-object v1

    invoke-virtual {v1}, [B->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    invoke-virtual {v0, v1}, LTg/b;->I([B)V

    invoke-virtual {p1}, LTg/b;->r()Z

    move-result v1

    invoke-virtual {v0, v1}, LTg/b;->z(Z)V

    invoke-virtual {p1}, LTg/b;->i()I

    move-result p1

    invoke-virtual {v0, p1}, LTg/b;->E(I)V

    return-object v0
.end method

.method public final g(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    invoke-static {p1}, LXg/h;->j(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    :cond_0
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    const-string v0, "fileNameInZip is null or empty"

    invoke-direct {p1, v0}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
