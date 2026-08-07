.class public LKi/e;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:LKi/c;

.field public final b:LKi/h;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, LKi/c;

    invoke-direct {v0}, LKi/c;-><init>()V

    iput-object v0, p0, LKi/e;->a:LKi/c;

    new-instance v0, LKi/h;

    invoke-direct {v0}, LKi/h;-><init>()V

    iput-object v0, p0, LKi/e;->b:LKi/h;

    return-void
.end method


# virtual methods
.method public final a(ILEi/y;)J
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "ref",
            "params"
        }
    .end annotation

    iget v0, p2, LEi/y;->d:I

    invoke-static {v0}, LEi/g;->j(I)I

    move-result v0

    invoke-static {v0}, LEi/g;->g(I)I

    move-result v0

    iget p2, p2, LEi/y;->e:I

    invoke-static {p2}, LEi/g;->j(I)I

    move-result p2

    invoke-static {p2}, LEi/g;->g(I)I

    move-result p2

    rsub-int/lit8 v1, v0, 0x20

    sub-int/2addr v1, p2

    const/16 v2, 0x1f

    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    const/4 v2, 0x1

    shl-int v1, v2, v1

    sub-int/2addr v1, v2

    shl-int v3, v2, v0

    sub-int/2addr v3, v2

    shl-int v4, v2, p2

    sub-int/2addr v4, v2

    add-int/2addr v0, p2

    shr-int v0, p1, v0

    and-int/2addr v0, v1

    shr-int p2, p1, p2

    and-int/2addr p2, v3

    and-int/2addr p1, v4

    invoke-static {v0, p2, p1}, LEi/v;->s(III)J

    move-result-wide p1

    return-wide p1
.end method

.method public b(Ljava/io/InputStream;)LEi/v;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "is"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p1}, LKi/b;->b(Ljava/io/InputStream;)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {p0, p1}, LKi/e;->d(Ljava/nio/ByteBuffer;)LEi/v;

    move-result-object p1

    return-object p1
.end method

.method public c(Ljava/io/InputStream;I)LEi/v;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "is",
            "maxVertPerPoly"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p1}, LKi/b;->b(Ljava/io/InputStream;)Ljava/nio/ByteBuffer;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, LKi/e;->f(Ljava/nio/ByteBuffer;IZ)LEi/v;

    move-result-object p1

    return-object p1
.end method

.method public d(Ljava/nio/ByteBuffer;)LEi/v;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bb"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, LKi/e;->f(Ljava/nio/ByteBuffer;IZ)LEi/v;

    move-result-object p1

    return-object p1
.end method

.method public e(Ljava/nio/ByteBuffer;I)LEi/v;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "bb",
            "maxVertPerPoly"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, LKi/e;->f(Ljava/nio/ByteBuffer;IZ)LEi/v;

    move-result-object p1

    return-object p1
.end method

.method public f(Ljava/nio/ByteBuffer;IZ)LEi/v;
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "bb",
            "maxVertPerPoly",
            "is32Bit"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, LKi/e;->i(Ljava/nio/ByteBuffer;I)LKi/j;

    move-result-object v3

    iget p2, v3, LKi/j;->e:I

    if-lez p2, :cond_1

    iget p2, v3, LKi/j;->b:I

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    move v4, v0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    move v4, p2

    :goto_0
    new-instance p2, LEi/v;

    iget-object v0, v3, LKi/j;->d:LEi/y;

    iget v1, v3, LKi/j;->e:I

    invoke-direct {p2, v0, v1}, LEi/v;-><init>(LEi/y;I)V

    move-object v0, p0

    move-object v1, p1

    move v2, p3

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, LKi/e;->j(Ljava/nio/ByteBuffer;ZLKi/j;ZLEi/v;)V

    return-object p2

    :cond_1
    new-instance p1, Ljava/io/IOException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Invalid number of verts per poly "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, v3, LKi/j;->e:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public g(Ljava/io/InputStream;I)LEi/v;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "is",
            "maxVertPerPoly"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p1}, LKi/b;->b(Ljava/io/InputStream;)Ljava/nio/ByteBuffer;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, LKi/e;->f(Ljava/nio/ByteBuffer;IZ)LEi/v;

    move-result-object p1

    return-object p1
.end method

.method public h(Ljava/nio/ByteBuffer;I)LEi/v;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "bb",
            "maxVertPerPoly"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, LKi/e;->f(Ljava/nio/ByteBuffer;IZ)LEi/v;

    move-result-object p1

    return-object p1
.end method

.method public final i(Ljava/nio/ByteBuffer;I)LKi/j;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "bb",
            "maxVertsPerPoly"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, LKi/j;

    invoke-direct {v0}, LKi/j;-><init>()V

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    iput v1, v0, LKi/j;->a:I

    const v2, 0x4d534554    # 2.21533504E8f

    if-eq v1, v2, :cond_2

    invoke-static {v1}, LKi/b;->a(I)I

    move-result v1

    iput v1, v0, LKi/j;->a:I

    if-ne v1, v2, :cond_1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v1

    sget-object v2, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    if-ne v1, v2, :cond_0

    sget-object v2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    :cond_0
    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/io/IOException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid magic "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v0, LKi/j;->a:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    :goto_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    iput v1, v0, LKi/j;->b:I

    const/4 v2, 0x1

    const v3, 0x8802

    if-eq v1, v2, :cond_4

    const v2, 0x8801

    if-eq v1, v2, :cond_4

    if-ne v1, v3, :cond_3

    goto :goto_1

    :cond_3
    new-instance p1, Ljava/io/IOException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid version "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v0, LKi/j;->b:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    :goto_1
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    iput v1, v0, LKi/j;->c:I

    iget-object v1, p0, LKi/e;->b:LKi/h;

    invoke-virtual {v1, p1}, LKi/h;->a(Ljava/nio/ByteBuffer;)LEi/y;

    move-result-object v1

    iput-object v1, v0, LKi/j;->d:LEi/y;

    iput p2, v0, LKi/j;->e:I

    iget p2, v0, LKi/j;->b:I

    if-ne p2, v3, :cond_5

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result p1

    iput p1, v0, LKi/j;->e:I

    :cond_5
    return-object v0
.end method

.method public final j(Ljava/nio/ByteBuffer;ZLKi/j;ZLEi/v;)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "bb",
            "is32Bit",
            "header",
            "cCompatibility",
            "mesh"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    iget v1, p3, LKi/j;->c:I

    if-ge v0, v1, :cond_3

    new-instance v1, LKi/k;

    invoke-direct {v1}, LKi/k;-><init>()V

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v2

    iget-object v3, p3, LKi/j;->d:LEi/y;

    invoke-virtual {p0, v2, v3}, LKi/e;->a(ILEi/y;)J

    move-result-wide v2

    iput-wide v2, v1, LKi/k;->a:J

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v2

    iput-wide v2, v1, LKi/k;->a:J

    :goto_1
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v2

    iput v2, v1, LKi/k;->b:I

    iget-wide v3, v1, LKi/k;->a:J

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-eqz v3, :cond_3

    if-nez v2, :cond_1

    goto :goto_2

    :cond_1
    if-eqz p4, :cond_2

    if-nez p2, :cond_2

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    :cond_2
    iget-object v2, p0, LKi/e;->a:LKi/c;

    invoke-virtual {p5}, LEi/v;->y()I

    move-result v3

    invoke-virtual {v2, p1, v3, p2}, LKi/c;->d(Ljava/nio/ByteBuffer;IZ)LEi/q;

    move-result-object v2

    iget-wide v3, v1, LKi/k;->a:J

    invoke-virtual {p5, v2, v0, v3, v4}, LEi/v;->c(LEi/q;IJ)J

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    :goto_2
    return-void
.end method
