.class public LQi/e;
.super LKi/a;
.source "SourceFile"


# instance fields
.field public final a:LQi/b;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, LKi/a;-><init>()V

    new-instance v0, LQi/b;

    invoke-direct {v0}, LQi/b;-><init>()V

    iput-object v0, p0, LQi/e;->a:LQi/b;

    return-void
.end method


# virtual methods
.method public h(Ljava/io/OutputStream;LQi/c;Ljava/nio/ByteOrder;Z)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "stream",
            "f",
            "byteOrder",
            "compression"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const v0, 0x564f584c

    invoke-virtual {p0, p1, v0, p3}, LKi/a;->c(Ljava/io/OutputStream;ILjava/nio/ByteOrder;)V

    const/4 v0, 0x0

    if-eqz p4, :cond_0

    const/16 v1, 0x100

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    or-int/lit16 v1, v1, 0x1000

    invoke-virtual {p0, p1, v1, p3}, LKi/a;->c(Ljava/io/OutputStream;ILjava/nio/ByteOrder;)V

    iget v1, p2, LQi/c;->f:F

    invoke-virtual {p0, p1, v1, p3}, LKi/a;->b(Ljava/io/OutputStream;FLjava/nio/ByteOrder;)V

    iget v1, p2, LQi/c;->g:F

    invoke-virtual {p0, p1, v1, p3}, LKi/a;->b(Ljava/io/OutputStream;FLjava/nio/ByteOrder;)V

    iget v1, p2, LQi/c;->h:F

    invoke-virtual {p0, p1, v1, p3}, LKi/a;->b(Ljava/io/OutputStream;FLjava/nio/ByteOrder;)V

    iget v1, p2, LQi/c;->i:F

    invoke-virtual {p0, p1, v1, p3}, LKi/a;->b(Ljava/io/OutputStream;FLjava/nio/ByteOrder;)V

    iget v1, p2, LQi/c;->j:F

    invoke-virtual {p0, p1, v1, p3}, LKi/a;->b(Ljava/io/OutputStream;FLjava/nio/ByteOrder;)V

    iget v1, p2, LQi/c;->k:F

    invoke-virtual {p0, p1, v1, p3}, LKi/a;->b(Ljava/io/OutputStream;FLjava/nio/ByteOrder;)V

    iget v1, p2, LQi/c;->l:F

    invoke-virtual {p0, p1, v1, p3}, LKi/a;->b(Ljava/io/OutputStream;FLjava/nio/ByteOrder;)V

    iget v1, p2, LQi/c;->m:F

    invoke-virtual {p0, p1, v1, p3}, LKi/a;->b(Ljava/io/OutputStream;FLjava/nio/ByteOrder;)V

    iget v1, p2, LQi/c;->n:F

    invoke-virtual {p0, p1, v1, p3}, LKi/a;->b(Ljava/io/OutputStream;FLjava/nio/ByteOrder;)V

    iget v1, p2, LQi/c;->o:I

    invoke-virtual {p0, p1, v1, p3}, LKi/a;->c(Ljava/io/OutputStream;ILjava/nio/ByteOrder;)V

    iget-boolean v1, p2, LQi/c;->p:Z

    invoke-virtual {p0, p1, v1}, LKi/a;->g(Ljava/io/OutputStream;Z)V

    iget v1, p2, LQi/c;->q:F

    invoke-virtual {p0, p1, v1, p3}, LKi/a;->b(Ljava/io/OutputStream;FLjava/nio/ByteOrder;)V

    iget v1, p2, LQi/c;->r:F

    invoke-virtual {p0, p1, v1, p3}, LKi/a;->b(Ljava/io/OutputStream;FLjava/nio/ByteOrder;)V

    iget-boolean v1, p2, LQi/c;->s:Z

    invoke-virtual {p0, p1, v1}, LKi/a;->g(Ljava/io/OutputStream;Z)V

    iget v1, p2, LQi/c;->t:I

    invoke-virtual {p0, p1, v1, p3}, LKi/a;->c(Ljava/io/OutputStream;ILjava/nio/ByteOrder;)V

    iget v1, p2, LQi/c;->u:I

    invoke-virtual {p0, p1, v1, p3}, LKi/a;->c(Ljava/io/OutputStream;ILjava/nio/ByteOrder;)V

    iget-object v1, p2, LQi/c;->v:[F

    aget v1, v1, v0

    invoke-virtual {p0, p1, v1, p3}, LKi/a;->b(Ljava/io/OutputStream;FLjava/nio/ByteOrder;)V

    iget-object v1, p2, LQi/c;->v:[F

    const/4 v2, 0x1

    aget v1, v1, v2

    invoke-virtual {p0, p1, v1, p3}, LKi/a;->b(Ljava/io/OutputStream;FLjava/nio/ByteOrder;)V

    iget-object v1, p2, LQi/c;->v:[F

    const/4 v3, 0x2

    aget v1, v1, v3

    invoke-virtual {p0, p1, v1, p3}, LKi/a;->b(Ljava/io/OutputStream;FLjava/nio/ByteOrder;)V

    iget-object v1, p2, LQi/c;->w:[F

    aget v0, v1, v0

    invoke-virtual {p0, p1, v0, p3}, LKi/a;->b(Ljava/io/OutputStream;FLjava/nio/ByteOrder;)V

    iget-object v0, p2, LQi/c;->w:[F

    aget v0, v0, v2

    invoke-virtual {p0, p1, v0, p3}, LKi/a;->b(Ljava/io/OutputStream;FLjava/nio/ByteOrder;)V

    iget-object v0, p2, LQi/c;->w:[F

    aget v0, v0, v3

    invoke-virtual {p0, p1, v0, p3}, LKi/a;->b(Ljava/io/OutputStream;FLjava/nio/ByteOrder;)V

    iget-object v0, p2, LQi/c;->w:[F

    const/4 v1, 0x3

    aget v0, v0, v1

    invoke-virtual {p0, p1, v0, p3}, LKi/a;->b(Ljava/io/OutputStream;FLjava/nio/ByteOrder;)V

    iget-object v0, p2, LQi/c;->w:[F

    const/4 v1, 0x4

    aget v0, v0, v1

    invoke-virtual {p0, p1, v0, p3}, LKi/a;->b(Ljava/io/OutputStream;FLjava/nio/ByteOrder;)V

    iget-object v0, p2, LQi/c;->w:[F

    const/4 v1, 0x5

    aget v0, v0, v1

    invoke-virtual {p0, p1, v0, p3}, LKi/a;->b(Ljava/io/OutputStream;FLjava/nio/ByteOrder;)V

    iget-object v0, p2, LQi/c;->x:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p0, p1, v0, p3}, LKi/a;->c(Ljava/io/OutputStream;ILjava/nio/ByteOrder;)V

    iget-object p2, p2, LQi/c;->x:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LQi/f;

    invoke-virtual {p0, p1, v0, p3, p4}, LQi/e;->j(Ljava/io/OutputStream;LQi/f;Ljava/nio/ByteOrder;Z)V

    goto :goto_1

    :cond_1
    return-void
.end method

.method public i(Ljava/io/OutputStream;LQi/c;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "stream",
            "f",
            "compression"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, LQi/c;->y:Ljava/nio/ByteOrder;

    invoke-virtual {p0, p1, p2, v0, p3}, LQi/e;->h(Ljava/io/OutputStream;LQi/c;Ljava/nio/ByteOrder;Z)V

    return-void
.end method

.method public j(Ljava/io/OutputStream;LQi/f;Ljava/nio/ByteOrder;Z)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "stream",
            "tile",
            "byteOrder",
            "compression"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p2, LQi/f;->a:I

    invoke-virtual {p0, p1, v0, p3}, LKi/a;->c(Ljava/io/OutputStream;ILjava/nio/ByteOrder;)V

    iget v0, p2, LQi/f;->b:I

    invoke-virtual {p0, p1, v0, p3}, LKi/a;->c(Ljava/io/OutputStream;ILjava/nio/ByteOrder;)V

    iget v0, p2, LQi/f;->d:I

    invoke-virtual {p0, p1, v0, p3}, LKi/a;->c(Ljava/io/OutputStream;ILjava/nio/ByteOrder;)V

    iget v0, p2, LQi/f;->e:I

    invoke-virtual {p0, p1, v0, p3}, LKi/a;->c(Ljava/io/OutputStream;ILjava/nio/ByteOrder;)V

    iget v0, p2, LQi/f;->c:I

    invoke-virtual {p0, p1, v0, p3}, LKi/a;->c(Ljava/io/OutputStream;ILjava/nio/ByteOrder;)V

    iget-object v0, p2, LQi/f;->f:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    invoke-virtual {p0, p1, v0, p3}, LKi/a;->b(Ljava/io/OutputStream;FLjava/nio/ByteOrder;)V

    iget-object v0, p2, LQi/f;->f:[F

    const/4 v2, 0x1

    aget v0, v0, v2

    invoke-virtual {p0, p1, v0, p3}, LKi/a;->b(Ljava/io/OutputStream;FLjava/nio/ByteOrder;)V

    iget-object v0, p2, LQi/f;->f:[F

    const/4 v3, 0x2

    aget v0, v0, v3

    invoke-virtual {p0, p1, v0, p3}, LKi/a;->b(Ljava/io/OutputStream;FLjava/nio/ByteOrder;)V

    iget-object v0, p2, LQi/f;->g:[F

    aget v0, v0, v1

    invoke-virtual {p0, p1, v0, p3}, LKi/a;->b(Ljava/io/OutputStream;FLjava/nio/ByteOrder;)V

    iget-object v0, p2, LQi/f;->g:[F

    aget v0, v0, v2

    invoke-virtual {p0, p1, v0, p3}, LKi/a;->b(Ljava/io/OutputStream;FLjava/nio/ByteOrder;)V

    iget-object v0, p2, LQi/f;->g:[F

    aget v0, v0, v3

    invoke-virtual {p0, p1, v0, p3}, LKi/a;->b(Ljava/io/OutputStream;FLjava/nio/ByteOrder;)V

    iget v0, p2, LQi/f;->h:F

    invoke-virtual {p0, p1, v0, p3}, LKi/a;->b(Ljava/io/OutputStream;FLjava/nio/ByteOrder;)V

    iget v0, p2, LQi/f;->i:F

    invoke-virtual {p0, p1, v0, p3}, LKi/a;->b(Ljava/io/OutputStream;FLjava/nio/ByteOrder;)V

    iget-object p2, p2, LQi/f;->j:[B

    if-eqz p4, :cond_0

    iget-object p4, p0, LQi/e;->a:LQi/b;

    invoke-virtual {p4, p2}, LQi/b;->a([B)[B

    move-result-object p2

    :cond_0
    array-length p4, p2

    invoke-virtual {p0, p1, p4, p3}, LKi/a;->c(Ljava/io/OutputStream;ILjava/nio/ByteOrder;)V

    invoke-virtual {p1, p2}, Ljava/io/OutputStream;->write([B)V

    return-void
.end method
