.class public abstract LW2/a;
.super LW2/d;
.source "SourceFile"


# annotations
.annotation runtime LW2/k;
.end annotation

.annotation build Ld3/a;
.end annotation


# instance fields
.field public final a:Ljava/nio/ByteBuffer;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, LW2/d;-><init>()V

    const/16 v0, 0x8

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, LW2/a;->a:Ljava/nio/ByteBuffer;

    return-void
.end method


# virtual methods
.method public bridge synthetic a([B)LW2/G;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, LW2/a;->a([B)LW2/r;

    move-result-object p1

    return-object p1
.end method

.method public a([B)LW2/r;
    .locals 0

    .line 2
    invoke-static {p1}, LR2/H;->E(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-virtual {p0, p1}, LW2/a;->m([B)V

    return-object p0
.end method

.method public bridge synthetic b(C)LW2/G;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, LW2/a;->b(C)LW2/r;

    move-result-object p1

    return-object p1
.end method

.method public b(C)LW2/r;
    .locals 1

    .line 2
    iget-object v0, p0, LW2/a;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->putChar(C)Ljava/nio/ByteBuffer;

    const/4 p1, 0x2

    .line 3
    invoke-virtual {p0, p1}, LW2/a;->j(I)LW2/r;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic c(B)LW2/G;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, LW2/a;->c(B)LW2/r;

    move-result-object p1

    return-object p1
.end method

.method public c(B)LW2/r;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, LW2/a;->k(B)V

    return-object p0
.end method

.method public bridge synthetic e([BII)LW2/G;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, LW2/a;->e([BII)LW2/r;

    move-result-object p1

    return-object p1
.end method

.method public e([BII)LW2/r;
    .locals 2

    add-int v0, p2, p3

    .line 2
    array-length v1, p1

    invoke-static {p2, v0, v1}, LR2/H;->f0(III)V

    .line 3
    invoke-virtual {p0, p1, p2, p3}, LW2/a;->n([BII)V

    return-object p0
.end method

.method public bridge synthetic f(Ljava/nio/ByteBuffer;)LW2/G;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, LW2/a;->f(Ljava/nio/ByteBuffer;)LW2/r;

    move-result-object p1

    return-object p1
.end method

.method public f(Ljava/nio/ByteBuffer;)LW2/r;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, LW2/a;->l(Ljava/nio/ByteBuffer;)V

    return-object p0
.end method

.method public final j(I)LW2/r;
    .locals 2

    :try_start_0
    iget-object v0, p0, LW2/a;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p1}, LW2/a;->n([BII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, LW2/a;->a:Ljava/nio/ByteBuffer;

    invoke-static {p1}, LW2/w;->a(Ljava/nio/Buffer;)V

    return-object p0

    :catchall_0
    move-exception p1

    iget-object v0, p0, LW2/a;->a:Ljava/nio/ByteBuffer;

    invoke-static {v0}, LW2/w;->a(Ljava/nio/Buffer;)V

    throw p1
.end method

.method public abstract k(B)V
.end method

.method public l(Ljava/nio/ByteBuffer;)V
    .locals 3

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v1

    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, LW2/a;->n([BII)V

    invoke-virtual {p1}, Ljava/nio/Buffer;->limit()I

    move-result v0

    invoke-static {p1, v0}, LW2/w;->d(Ljava/nio/Buffer;I)V

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    move-result v0

    :goto_0
    if-lez v0, :cond_1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    invoke-virtual {p0, v1}, LW2/a;->k(B)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public m([B)V
    .locals 2

    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, LW2/a;->n([BII)V

    return-void
.end method

.method public n([BII)V
    .locals 2

    move v0, p2

    :goto_0
    add-int v1, p2, p3

    if-ge v0, v1, :cond_0

    aget-byte v1, p1, v0

    invoke-virtual {p0, v1}, LW2/a;->k(B)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public bridge synthetic putInt(I)LW2/G;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, LW2/a;->putInt(I)LW2/r;

    move-result-object p1

    return-object p1
.end method

.method public putInt(I)LW2/r;
    .locals 1

    .line 2
    iget-object v0, p0, LW2/a;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    const/4 p1, 0x4

    .line 3
    invoke-virtual {p0, p1}, LW2/a;->j(I)LW2/r;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic putLong(J)LW2/G;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, LW2/a;->putLong(J)LW2/r;

    move-result-object p1

    return-object p1
.end method

.method public putLong(J)LW2/r;
    .locals 1

    .line 2
    iget-object v0, p0, LW2/a;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1, p2}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    const/16 p1, 0x8

    .line 3
    invoke-virtual {p0, p1}, LW2/a;->j(I)LW2/r;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic putShort(S)LW2/G;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, LW2/a;->putShort(S)LW2/r;

    move-result-object p1

    return-object p1
.end method

.method public putShort(S)LW2/r;
    .locals 1

    .line 2
    iget-object v0, p0, LW2/a;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    const/4 p1, 0x2

    .line 3
    invoke-virtual {p0, p1}, LW2/a;->j(I)LW2/r;

    move-result-object p1

    return-object p1
.end method
