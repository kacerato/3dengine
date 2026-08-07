.class public LKi/g;
.super LKi/a;
.source "SourceFile"


# instance fields
.field public final a:LKi/d;

.field public final b:LKi/i;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, LKi/a;-><init>()V

    new-instance v0, LKi/d;

    invoke-direct {v0}, LKi/d;-><init>()V

    iput-object v0, p0, LKi/g;->a:LKi/d;

    new-instance v0, LKi/i;

    invoke-direct {v0}, LKi/i;-><init>()V

    iput-object v0, p0, LKi/g;->b:LKi/i;

    return-void
.end method


# virtual methods
.method public h(Ljava/io/OutputStream;LEi/v;Ljava/nio/ByteOrder;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "stream",
            "mesh",
            "order",
            "cCompatibility"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2, p3, p4}, LKi/g;->i(Ljava/io/OutputStream;LEi/v;Ljava/nio/ByteOrder;Z)V

    invoke-virtual {p0, p1, p2, p3, p4}, LKi/g;->j(Ljava/io/OutputStream;LEi/v;Ljava/nio/ByteOrder;Z)V

    return-void
.end method

.method public final i(Ljava/io/OutputStream;LEi/v;Ljava/nio/ByteOrder;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "stream",
            "mesh",
            "order",
            "cCompatibility"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const v0, 0x4d534554    # 2.21533504E8f

    invoke-virtual {p0, p1, v0, p3}, LKi/a;->c(Ljava/io/OutputStream;ILjava/nio/ByteOrder;)V

    if-eqz p4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const v0, 0x8802

    :goto_0
    invoke-virtual {p0, p1, v0, p3}, LKi/a;->c(Ljava/io/OutputStream;ILjava/nio/ByteOrder;)V

    const/4 v0, 0x0

    move v1, v0

    :goto_1
    invoke-virtual {p2}, LEi/v;->x()I

    move-result v2

    if-ge v0, v2, :cond_3

    invoke-virtual {p2, v0}, LEi/v;->I(I)LEi/s;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v2, v2, LEi/s;->c:LEi/q;

    if-eqz v2, :cond_2

    iget-object v2, v2, LEi/q;->a:LEi/r;

    if-nez v2, :cond_1

    goto :goto_2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    :cond_2
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    invoke-virtual {p0, p1, v1, p3}, LKi/a;->c(Ljava/io/OutputStream;ILjava/nio/ByteOrder;)V

    iget-object v0, p0, LKi/g;->b:LKi/i;

    invoke-virtual {p2}, LEi/v;->C()LEi/y;

    move-result-object v1

    invoke-virtual {v0, p1, v1, p3}, LKi/i;->h(Ljava/io/OutputStream;LEi/y;Ljava/nio/ByteOrder;)V

    if-nez p4, :cond_4

    invoke-virtual {p2}, LEi/v;->y()I

    move-result p2

    invoke-virtual {p0, p1, p2, p3}, LKi/a;->c(Ljava/io/OutputStream;ILjava/nio/ByteOrder;)V

    :cond_4
    return-void
.end method

.method public final j(Ljava/io/OutputStream;LEi/v;Ljava/nio/ByteOrder;Z)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "stream",
            "mesh",
            "order",
            "cCompatibility"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {p2}, LEi/v;->x()I

    move-result v2

    if-ge v1, v2, :cond_3

    invoke-virtual {p2, v1}, LEi/v;->I(I)LEi/s;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v3, v2, LEi/s;->c:LEi/q;

    if-eqz v3, :cond_2

    iget-object v3, v3, LEi/q;->a:LEi/r;

    if-nez v3, :cond_0

    goto :goto_1

    :cond_0
    new-instance v3, LKi/k;

    invoke-direct {v3}, LKi/k;-><init>()V

    invoke-virtual {p2, v2}, LEi/v;->P(LEi/s;)J

    move-result-wide v4

    iput-wide v4, v3, LKi/k;->a:J

    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iget-object v5, p0, LKi/g;->a:LKi/d;

    iget-object v2, v2, LEi/s;->c:LEi/q;

    invoke-virtual {v5, v4, v2, p3, p4}, LKi/d;->h(Ljava/io/OutputStream;LEi/q;Ljava/nio/ByteOrder;Z)V

    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    array-length v4, v2

    iput v4, v3, LKi/k;->b:I

    iget-wide v4, v3, LKi/k;->a:J

    invoke-virtual {p0, p1, v4, v5, p3}, LKi/a;->d(Ljava/io/OutputStream;JLjava/nio/ByteOrder;)V

    iget v3, v3, LKi/k;->b:I

    invoke-virtual {p0, p1, v3, p3}, LKi/a;->c(Ljava/io/OutputStream;ILjava/nio/ByteOrder;)V

    if-eqz p4, :cond_1

    invoke-virtual {p0, p1, v0, p3}, LKi/a;->c(Ljava/io/OutputStream;ILjava/nio/ByteOrder;)V

    :cond_1
    invoke-virtual {p1, v2}, Ljava/io/OutputStream;->write([B)V

    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method
