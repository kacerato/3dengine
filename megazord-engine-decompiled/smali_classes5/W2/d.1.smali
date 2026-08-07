.class public abstract LW2/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LW2/r;


# annotations
.annotation runtime LW2/k;
.end annotation

.annotation build Ld3/a;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a([B)LW2/G;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, LW2/d;->a([B)LW2/r;

    move-result-object p1

    return-object p1
.end method

.method public a([B)LW2/r;
    .locals 2

    .line 2
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, LW2/d;->e([BII)LW2/r;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic b(C)LW2/G;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, LW2/d;->b(C)LW2/r;

    move-result-object p1

    return-object p1
.end method

.method public b(C)LW2/r;
    .locals 1

    int-to-byte v0, p1

    .line 2
    invoke-interface {p0, v0}, LW2/r;->c(B)LW2/r;

    ushr-int/lit8 p1, p1, 0x8

    int-to-byte p1, p1

    .line 3
    invoke-interface {p0, p1}, LW2/r;->c(B)LW2/r;

    return-object p0
.end method

.method public bridge synthetic d(Ljava/lang/CharSequence;)LW2/G;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, LW2/d;->d(Ljava/lang/CharSequence;)LW2/r;

    move-result-object p1

    return-object p1
.end method

.method public d(Ljava/lang/CharSequence;)LW2/r;
    .locals 3

    .line 2
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 3
    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-virtual {p0, v2}, LW2/d;->b(C)LW2/r;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public bridge synthetic e([BII)LW2/G;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, LW2/d;->e([BII)LW2/r;

    move-result-object p1

    return-object p1
.end method

.method public e([BII)LW2/r;
    .locals 2

    add-int v0, p2, p3

    .line 2
    array-length v1, p1

    invoke-static {p2, v0, v1}, LR2/H;->f0(III)V

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p3, :cond_0

    add-int v1, p2, v0

    .line 3
    aget-byte v1, p1, v1

    invoke-interface {p0, v1}, LW2/r;->c(B)LW2/r;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public bridge synthetic f(Ljava/nio/ByteBuffer;)LW2/G;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, LW2/d;->f(Ljava/nio/ByteBuffer;)LW2/r;

    move-result-object p1

    return-object p1
.end method

.method public f(Ljava/nio/ByteBuffer;)LW2/r;
    .locals 3

    .line 2
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v1

    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, LW2/d;->e([BII)LW2/r;

    .line 4
    invoke-virtual {p1}, Ljava/nio/Buffer;->limit()I

    move-result v0

    invoke-static {p1, v0}, LW2/w;->d(Ljava/nio/Buffer;I)V

    goto :goto_1

    .line 5
    :cond_0
    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    move-result v0

    :goto_0
    if-lez v0, :cond_1

    .line 6
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    invoke-interface {p0, v1}, LW2/r;->c(B)LW2/r;

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-object p0
.end method

.method public bridge synthetic g(Ljava/lang/CharSequence;Ljava/nio/charset/Charset;)LW2/G;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, LW2/d;->g(Ljava/lang/CharSequence;Ljava/nio/charset/Charset;)LW2/r;

    move-result-object p1

    return-object p1
.end method

.method public g(Ljava/lang/CharSequence;Ljava/nio/charset/Charset;)LW2/r;
    .locals 0

    .line 2
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    invoke-virtual {p0, p1}, LW2/d;->a([B)LW2/r;

    move-result-object p1

    return-object p1
.end method

.method public h(Ljava/lang/Object;LW2/n;)LW2/r;
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime LW2/F;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "LW2/n<",
            "-TT;>;)",
            "LW2/r;"
        }
    .end annotation

    invoke-interface {p2, p1, p0}, LW2/n;->K3(Ljava/lang/Object;LW2/G;)V

    return-object p0
.end method

.method public bridge synthetic putBoolean(Z)LW2/G;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, LW2/d;->putBoolean(Z)LW2/r;

    move-result-object p1

    return-object p1
.end method

.method public final putBoolean(Z)LW2/r;
    .locals 0

    .line 2
    invoke-interface {p0, p1}, LW2/r;->c(B)LW2/r;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic putDouble(D)LW2/G;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, LW2/d;->putDouble(D)LW2/r;

    move-result-object p1

    return-object p1
.end method

.method public final putDouble(D)LW2/r;
    .locals 0

    .line 2
    invoke-static {p1, p2}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, LW2/d;->putLong(J)LW2/r;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic putFloat(F)LW2/G;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, LW2/d;->putFloat(F)LW2/r;

    move-result-object p1

    return-object p1
.end method

.method public final putFloat(F)LW2/r;
    .locals 0

    .line 2
    invoke-static {p1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p1

    invoke-virtual {p0, p1}, LW2/d;->putInt(I)LW2/r;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic putInt(I)LW2/G;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, LW2/d;->putInt(I)LW2/r;

    move-result-object p1

    return-object p1
.end method

.method public putInt(I)LW2/r;
    .locals 1

    int-to-byte v0, p1

    .line 2
    invoke-interface {p0, v0}, LW2/r;->c(B)LW2/r;

    ushr-int/lit8 v0, p1, 0x8

    int-to-byte v0, v0

    .line 3
    invoke-interface {p0, v0}, LW2/r;->c(B)LW2/r;

    ushr-int/lit8 v0, p1, 0x10

    int-to-byte v0, v0

    .line 4
    invoke-interface {p0, v0}, LW2/r;->c(B)LW2/r;

    ushr-int/lit8 p1, p1, 0x18

    int-to-byte p1, p1

    .line 5
    invoke-interface {p0, p1}, LW2/r;->c(B)LW2/r;

    return-object p0
.end method

.method public bridge synthetic putLong(J)LW2/G;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, LW2/d;->putLong(J)LW2/r;

    move-result-object p1

    return-object p1
.end method

.method public putLong(J)LW2/r;
    .locals 3

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0x40

    if-ge v0, v1, :cond_0

    ushr-long v1, p1, v0

    long-to-int v1, v1

    int-to-byte v1, v1

    .line 2
    invoke-interface {p0, v1}, LW2/r;->c(B)LW2/r;

    add-int/lit8 v0, v0, 0x8

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public bridge synthetic putShort(S)LW2/G;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, LW2/d;->putShort(S)LW2/r;

    move-result-object p1

    return-object p1
.end method

.method public putShort(S)LW2/r;
    .locals 1

    int-to-byte v0, p1

    .line 2
    invoke-interface {p0, v0}, LW2/r;->c(B)LW2/r;

    ushr-int/lit8 p1, p1, 0x8

    int-to-byte p1, p1

    .line 3
    invoke-interface {p0, p1}, LW2/r;->c(B)LW2/r;

    return-object p0
.end method
