.class public final Leh/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ldh/c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Leh/a$g;,
        Leh/a$d;,
        Leh/a$f;,
        Leh/a$b;,
        Leh/a$c;,
        Leh/a$e;
    }
.end annotation


# static fields
.field public static final h:I = 0x0

.field public static final i:I = 0x1

.field public static final j:I = 0x2

.field public static final k:I = 0x3

.field public static final l:I = 0x4

.field public static final m:I = 0x5

.field public static final n:I = 0x6

.field public static final o:I = 0x40000


# instance fields
.field public final b:Lokhttp3/z;

.field public final c:Lch/f;

.field public final d:Llh/e;

.field public final e:Llh/d;

.field public f:I

.field public g:J


# direct methods
.method public constructor <init>(Lokhttp3/z;Lch/f;Llh/e;Llh/d;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Leh/a;->f:I

    const-wide/32 v0, 0x40000

    iput-wide v0, p0, Leh/a;->g:J

    iput-object p1, p0, Leh/a;->b:Lokhttp3/z;

    iput-object p2, p0, Leh/a;->c:Lch/f;

    iput-object p3, p0, Leh/a;->d:Llh/e;

    iput-object p4, p0, Leh/a;->e:Llh/d;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Leh/a;->e:Llh/d;

    invoke-interface {v0}, Llh/d;->flush()V

    return-void
.end method

.method public b(Lokhttp3/C;J)Llh/x;
    .locals 2

    const-string v0, "Transfer-Encoding"

    invoke-virtual {p1, v0}, Lokhttp3/C;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "chunked"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Leh/a;->i()Llh/x;

    move-result-object p1

    return-object p1

    :cond_0
    const-wide/16 v0, -0x1

    cmp-long p1, p2, v0

    if-eqz p1, :cond_1

    invoke-virtual {p0, p2, p3}, Leh/a;->k(J)Llh/x;

    move-result-object p1

    return-object p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Cannot stream a request body without chunked encoding or a known content length!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public c(Lokhttp3/C;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Leh/a;->c:Lch/f;

    invoke-virtual {v0}, Lch/f;->d()Lch/c;

    move-result-object v0

    invoke-virtual {v0}, Lch/c;->b()Lokhttp3/G;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/G;->b()Ljava/net/Proxy;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v0

    invoke-static {p1, v0}, Ldh/i;->a(Lokhttp3/C;Ljava/net/Proxy$Type;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lokhttp3/C;->e()Lokhttp3/u;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Leh/a;->p(Lokhttp3/u;Ljava/lang/String;)V

    return-void
.end method

.method public cancel()V
    .locals 1

    iget-object v0, p0, Leh/a;->c:Lch/f;

    invoke-virtual {v0}, Lch/f;->d()Lch/c;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lch/c;->g()V

    :cond_0
    return-void
.end method

.method public d(Lokhttp3/E;)Lokhttp3/F;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Leh/a;->c:Lch/f;

    iget-object v1, v0, Lch/f;->f:Lokhttp3/r;

    iget-object v0, v0, Lch/f;->e:Lokhttp3/e;

    invoke-virtual {v1, v0}, Lokhttp3/r;->q(Lokhttp3/e;)V

    const-string v0, "Content-Type"

    invoke-virtual {p1, v0}, Lokhttp3/E;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Ldh/e;->c(Lokhttp3/E;)Z

    move-result v1

    if-nez v1, :cond_0

    const-wide/16 v1, 0x0

    invoke-virtual {p0, v1, v2}, Leh/a;->l(J)Llh/y;

    move-result-object p1

    new-instance v3, Ldh/h;

    invoke-static {p1}, Llh/p;->d(Llh/y;)Llh/e;

    move-result-object p1

    invoke-direct {v3, v0, v1, v2, p1}, Ldh/h;-><init>(Ljava/lang/String;JLlh/e;)V

    return-object v3

    :cond_0
    const-string v1, "Transfer-Encoding"

    invoke-virtual {p1, v1}, Lokhttp3/E;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "chunked"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    const-wide/16 v2, -0x1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lokhttp3/E;->x()Lokhttp3/C;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/C;->k()Lokhttp3/v;

    move-result-object p1

    invoke-virtual {p0, p1}, Leh/a;->j(Lokhttp3/v;)Llh/y;

    move-result-object p1

    new-instance v1, Ldh/h;

    invoke-static {p1}, Llh/p;->d(Llh/y;)Llh/e;

    move-result-object p1

    invoke-direct {v1, v0, v2, v3, p1}, Ldh/h;-><init>(Ljava/lang/String;JLlh/e;)V

    return-object v1

    :cond_1
    invoke-static {p1}, Ldh/e;->b(Lokhttp3/E;)J

    move-result-wide v4

    cmp-long p1, v4, v2

    if-eqz p1, :cond_2

    invoke-virtual {p0, v4, v5}, Leh/a;->l(J)Llh/y;

    move-result-object p1

    new-instance v1, Ldh/h;

    invoke-static {p1}, Llh/p;->d(Llh/y;)Llh/e;

    move-result-object p1

    invoke-direct {v1, v0, v4, v5, p1}, Ldh/h;-><init>(Ljava/lang/String;JLlh/e;)V

    return-object v1

    :cond_2
    new-instance p1, Ldh/h;

    invoke-virtual {p0}, Leh/a;->m()Llh/y;

    move-result-object v1

    invoke-static {v1}, Llh/p;->d(Llh/y;)Llh/e;

    move-result-object v1

    invoke-direct {p1, v0, v2, v3, v1}, Ldh/h;-><init>(Ljava/lang/String;JLlh/e;)V

    return-object p1
.end method

.method public e(Z)Lokhttp3/E$a;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Leh/a;->f:I

    const/4 v1, 0x1

    const/4 v2, 0x3

    if-eq v0, v1, :cond_1

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "state: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Leh/a;->f:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    :try_start_0
    invoke-virtual {p0}, Leh/a;->n()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ldh/k;->b(Ljava/lang/String;)Ldh/k;

    move-result-object v0

    new-instance v1, Lokhttp3/E$a;

    invoke-direct {v1}, Lokhttp3/E$a;-><init>()V

    iget-object v3, v0, Ldh/k;->a:Lokhttp3/A;

    invoke-virtual {v1, v3}, Lokhttp3/E$a;->n(Lokhttp3/A;)Lokhttp3/E$a;

    move-result-object v1

    iget v3, v0, Ldh/k;->b:I

    invoke-virtual {v1, v3}, Lokhttp3/E$a;->g(I)Lokhttp3/E$a;

    move-result-object v1

    iget-object v3, v0, Ldh/k;->c:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lokhttp3/E$a;->k(Ljava/lang/String;)Lokhttp3/E$a;

    move-result-object v1

    invoke-virtual {p0}, Leh/a;->o()Lokhttp3/u;

    move-result-object v3

    invoke-virtual {v1, v3}, Lokhttp3/E$a;->j(Lokhttp3/u;)Lokhttp3/E$a;

    move-result-object v1

    const/16 v3, 0x64

    if-eqz p1, :cond_2

    iget p1, v0, Ldh/k;->b:I

    if-ne p1, v3, :cond_2

    const/4 p1, 0x0

    return-object p1

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_2
    iget p1, v0, Ldh/k;->b:I

    if-ne p1, v3, :cond_3

    iput v2, p0, Leh/a;->f:I

    return-object v1

    :cond_3
    const/4 p1, 0x4

    iput p1, p0, Leh/a;->f:I
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :goto_1
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unexpected end of stream on "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Leh/a;->c:Lch/f;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    throw v0
.end method

.method public f()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Leh/a;->e:Llh/d;

    invoke-interface {v0}, Llh/d;->flush()V

    return-void
.end method

.method public g(Llh/j;)V
    .locals 2

    invoke-virtual {p1}, Llh/j;->k()Llh/z;

    move-result-object v0

    sget-object v1, Llh/z;->d:Llh/z;

    invoke-virtual {p1, v1}, Llh/j;->l(Llh/z;)Llh/j;

    invoke-virtual {v0}, Llh/z;->a()Llh/z;

    invoke-virtual {v0}, Llh/z;->b()Llh/z;

    return-void
.end method

.method public h()Z
    .locals 2

    iget v0, p0, Leh/a;->f:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public i()Llh/x;
    .locals 3

    iget v0, p0, Leh/a;->f:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x2

    iput v0, p0, Leh/a;->f:I

    new-instance v0, Leh/a$c;

    invoke-direct {v0, p0}, Leh/a$c;-><init>(Leh/a;)V

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Leh/a;->f:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public j(Lokhttp3/v;)Llh/y;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Leh/a;->f:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x5

    iput v0, p0, Leh/a;->f:I

    new-instance v0, Leh/a$d;

    invoke-direct {v0, p0, p1}, Leh/a$d;-><init>(Leh/a;Lokhttp3/v;)V

    return-object v0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "state: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Leh/a;->f:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public k(J)Llh/x;
    .locals 2

    iget v0, p0, Leh/a;->f:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x2

    iput v0, p0, Leh/a;->f:I

    new-instance v0, Leh/a$e;

    invoke-direct {v0, p0, p1, p2}, Leh/a$e;-><init>(Leh/a;J)V

    return-object v0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "state: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Leh/a;->f:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public l(J)Llh/y;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Leh/a;->f:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x5

    iput v0, p0, Leh/a;->f:I

    new-instance v0, Leh/a$f;

    invoke-direct {v0, p0, p1, p2}, Leh/a$f;-><init>(Leh/a;J)V

    return-object v0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "state: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Leh/a;->f:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public m()Llh/y;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Leh/a;->f:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Leh/a;->c:Lch/f;

    if-eqz v0, :cond_0

    const/4 v1, 0x5

    iput v1, p0, Leh/a;->f:I

    invoke-virtual {v0}, Lch/f;->j()V

    new-instance v0, Leh/a$g;

    invoke-direct {v0, p0}, Leh/a$g;-><init>(Leh/a;)V

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "streamAllocation == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Leh/a;->f:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final n()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Leh/a;->d:Llh/e;

    iget-wide v1, p0, Leh/a;->g:J

    invoke-interface {v0, v1, v2}, Llh/e;->A1(J)Ljava/lang/String;

    move-result-object v0

    iget-wide v1, p0, Leh/a;->g:J

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    int-to-long v3, v3

    sub-long/2addr v1, v3

    iput-wide v1, p0, Leh/a;->g:J

    return-object v0
.end method

.method public o()Lokhttp3/u;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lokhttp3/u$a;

    invoke-direct {v0}, Lokhttp3/u$a;-><init>()V

    :goto_0
    invoke-virtual {p0}, Leh/a;->n()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, LYg/a;->a:LYg/a;

    invoke-virtual {v2, v0, v1}, LYg/a;->a(Lokhttp3/u$a;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lokhttp3/u$a;->h()Lokhttp3/u;

    move-result-object v0

    return-object v0
.end method

.method public p(Lokhttp3/u;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Leh/a;->f:I

    if-nez v0, :cond_1

    iget-object v0, p0, Leh/a;->e:Llh/d;

    invoke-interface {v0, p2}, Llh/d;->J(Ljava/lang/String;)Llh/d;

    move-result-object p2

    const-string v0, "\r\n"

    invoke-interface {p2, v0}, Llh/d;->J(Ljava/lang/String;)Llh/d;

    invoke-virtual {p1}, Lokhttp3/u;->l()I

    move-result p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p2, :cond_0

    iget-object v2, p0, Leh/a;->e:Llh/d;

    invoke-virtual {p1, v1}, Lokhttp3/u;->g(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Llh/d;->J(Ljava/lang/String;)Llh/d;

    move-result-object v2

    const-string v3, ": "

    invoke-interface {v2, v3}, Llh/d;->J(Ljava/lang/String;)Llh/d;

    move-result-object v2

    invoke-virtual {p1, v1}, Lokhttp3/u;->n(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Llh/d;->J(Ljava/lang/String;)Llh/d;

    move-result-object v2

    invoke-interface {v2, v0}, Llh/d;->J(Ljava/lang/String;)Llh/d;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Leh/a;->e:Llh/d;

    invoke-interface {p1, v0}, Llh/d;->J(Ljava/lang/String;)Llh/d;

    const/4 p1, 0x1

    iput p1, p0, Leh/a;->f:I

    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "state: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Leh/a;->f:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
