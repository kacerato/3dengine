.class public final LFf/K0;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Ldg/j;
    name = "UNumbersKt"
.end annotation


# direct methods
.method public static final A(I)I
    .locals 0
    .annotation build LFf/l0;
        version = "1.5"
    .end annotation

    .annotation build LWf/f;
    .end annotation

    invoke-static {p0}, Ljava/lang/Integer;->lowestOneBit(I)I

    move-result p0

    invoke-static {p0}, LFf/B0;->n(I)I

    move-result p0

    return p0
.end method

.method public static final B(S)S
    .locals 1
    .annotation build LFf/l0;
        version = "1.5"
    .end annotation

    .annotation build LWf/f;
    .end annotation

    const v0, 0xffff

    and-int/2addr p0, v0

    invoke-static {p0}, Ljava/lang/Integer;->lowestOneBit(I)I

    move-result p0

    int-to-short p0, p0

    invoke-static {p0}, LFf/L0;->i(S)S

    move-result p0

    return p0
.end method

.method public static final a(B)I
    .locals 0
    .annotation build LFf/l0;
        version = "1.5"
    .end annotation

    .annotation build LWf/f;
    .end annotation

    and-int/lit16 p0, p0, 0xff

    invoke-static {p0}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    move-result p0

    add-int/lit8 p0, p0, -0x18

    return p0
.end method

.method public static final b(J)I
    .locals 0
    .annotation build LFf/l0;
        version = "1.5"
    .end annotation

    .annotation build LWf/f;
    .end annotation

    invoke-static {p0, p1}, Ljava/lang/Long;->numberOfLeadingZeros(J)I

    move-result p0

    return p0
.end method

.method public static final c(I)I
    .locals 0
    .annotation build LFf/l0;
        version = "1.5"
    .end annotation

    .annotation build LWf/f;
    .end annotation

    invoke-static {p0}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    move-result p0

    return p0
.end method

.method public static final d(S)I
    .locals 1
    .annotation build LFf/l0;
        version = "1.5"
    .end annotation

    .annotation build LWf/f;
    .end annotation

    const v0, 0xffff

    and-int/2addr p0, v0

    invoke-static {p0}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    move-result p0

    add-int/lit8 p0, p0, -0x10

    return p0
.end method

.method public static final e(B)I
    .locals 0
    .annotation build LFf/l0;
        version = "1.5"
    .end annotation

    .annotation build LWf/f;
    .end annotation

    and-int/lit16 p0, p0, 0xff

    invoke-static {p0}, LFf/B0;->n(I)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->bitCount(I)I

    move-result p0

    return p0
.end method

.method public static final f(J)I
    .locals 0
    .annotation build LFf/l0;
        version = "1.5"
    .end annotation

    .annotation build LWf/f;
    .end annotation

    invoke-static {p0, p1}, Ljava/lang/Long;->bitCount(J)I

    move-result p0

    return p0
.end method

.method public static final g(I)I
    .locals 0
    .annotation build LFf/l0;
        version = "1.5"
    .end annotation

    .annotation build LWf/f;
    .end annotation

    invoke-static {p0}, Ljava/lang/Integer;->bitCount(I)I

    move-result p0

    return p0
.end method

.method public static final h(S)I
    .locals 1
    .annotation build LFf/l0;
        version = "1.5"
    .end annotation

    .annotation build LWf/f;
    .end annotation

    const v0, 0xffff

    and-int/2addr p0, v0

    invoke-static {p0}, LFf/B0;->n(I)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->bitCount(I)I

    move-result p0

    return p0
.end method

.method public static final i(B)I
    .locals 0
    .annotation build LFf/l0;
        version = "1.5"
    .end annotation

    .annotation build LWf/f;
    .end annotation

    or-int/lit16 p0, p0, 0x100

    invoke-static {p0}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result p0

    return p0
.end method

.method public static final j(J)I
    .locals 0
    .annotation build LFf/l0;
        version = "1.5"
    .end annotation

    .annotation build LWf/f;
    .end annotation

    invoke-static {p0, p1}, Ljava/lang/Long;->numberOfTrailingZeros(J)I

    move-result p0

    return p0
.end method

.method public static final k(I)I
    .locals 0
    .annotation build LFf/l0;
        version = "1.5"
    .end annotation

    .annotation build LWf/f;
    .end annotation

    invoke-static {p0}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result p0

    return p0
.end method

.method public static final l(S)I
    .locals 1
    .annotation build LFf/l0;
        version = "1.5"
    .end annotation

    .annotation build LWf/f;
    .end annotation

    const/high16 v0, 0x10000

    or-int/2addr p0, v0

    invoke-static {p0}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result p0

    return p0
.end method

.method public static final m(JI)J
    .locals 0
    .annotation build LFf/l0;
        version = "1.6"
    .end annotation

    .annotation build LWf/f;
    .end annotation

    invoke-static {p0, p1, p2}, Ljava/lang/Long;->rotateLeft(JI)J

    move-result-wide p0

    invoke-static {p0, p1}, LFf/F0;->i(J)J

    move-result-wide p0

    return-wide p0
.end method

.method public static final n(BI)B
    .locals 0
    .annotation build LFf/l0;
        version = "1.6"
    .end annotation

    .annotation build LWf/f;
    .end annotation

    invoke-static {p0, p1}, LFf/V;->Z0(BI)B

    move-result p0

    invoke-static {p0}, LFf/x0;->i(B)B

    move-result p0

    return p0
.end method

.method public static final o(II)I
    .locals 0
    .annotation build LFf/l0;
        version = "1.6"
    .end annotation

    .annotation build LWf/f;
    .end annotation

    invoke-static {p0, p1}, Ljava/lang/Integer;->rotateLeft(II)I

    move-result p0

    invoke-static {p0}, LFf/B0;->n(I)I

    move-result p0

    return p0
.end method

.method public static final p(SI)S
    .locals 0
    .annotation build LFf/l0;
        version = "1.6"
    .end annotation

    .annotation build LWf/f;
    .end annotation

    invoke-static {p0, p1}, LFf/V;->a1(SI)S

    move-result p0

    invoke-static {p0}, LFf/L0;->i(S)S

    move-result p0

    return p0
.end method

.method public static final q(JI)J
    .locals 0
    .annotation build LFf/l0;
        version = "1.6"
    .end annotation

    .annotation build LWf/f;
    .end annotation

    invoke-static {p0, p1, p2}, Ljava/lang/Long;->rotateRight(JI)J

    move-result-wide p0

    invoke-static {p0, p1}, LFf/F0;->i(J)J

    move-result-wide p0

    return-wide p0
.end method

.method public static final r(BI)B
    .locals 0
    .annotation build LFf/l0;
        version = "1.6"
    .end annotation

    .annotation build LWf/f;
    .end annotation

    invoke-static {p0, p1}, LFf/V;->b1(BI)B

    move-result p0

    invoke-static {p0}, LFf/x0;->i(B)B

    move-result p0

    return p0
.end method

.method public static final s(II)I
    .locals 0
    .annotation build LFf/l0;
        version = "1.6"
    .end annotation

    .annotation build LWf/f;
    .end annotation

    invoke-static {p0, p1}, Ljava/lang/Integer;->rotateRight(II)I

    move-result p0

    invoke-static {p0}, LFf/B0;->n(I)I

    move-result p0

    return p0
.end method

.method public static final t(SI)S
    .locals 0
    .annotation build LFf/l0;
        version = "1.6"
    .end annotation

    .annotation build LWf/f;
    .end annotation

    invoke-static {p0, p1}, LFf/V;->c1(SI)S

    move-result p0

    invoke-static {p0}, LFf/L0;->i(S)S

    move-result p0

    return p0
.end method

.method public static final u(B)B
    .locals 0
    .annotation build LFf/l0;
        version = "1.5"
    .end annotation

    .annotation build LWf/f;
    .end annotation

    and-int/lit16 p0, p0, 0xff

    invoke-static {p0}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result p0

    int-to-byte p0, p0

    invoke-static {p0}, LFf/x0;->i(B)B

    move-result p0

    return p0
.end method

.method public static final v(J)J
    .locals 0
    .annotation build LFf/l0;
        version = "1.5"
    .end annotation

    .annotation build LWf/f;
    .end annotation

    invoke-static {p0, p1}, Ljava/lang/Long;->highestOneBit(J)J

    move-result-wide p0

    invoke-static {p0, p1}, LFf/F0;->i(J)J

    move-result-wide p0

    return-wide p0
.end method

.method public static final w(I)I
    .locals 0
    .annotation build LFf/l0;
        version = "1.5"
    .end annotation

    .annotation build LWf/f;
    .end annotation

    invoke-static {p0}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result p0

    invoke-static {p0}, LFf/B0;->n(I)I

    move-result p0

    return p0
.end method

.method public static final x(S)S
    .locals 1
    .annotation build LFf/l0;
        version = "1.5"
    .end annotation

    .annotation build LWf/f;
    .end annotation

    const v0, 0xffff

    and-int/2addr p0, v0

    invoke-static {p0}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result p0

    int-to-short p0, p0

    invoke-static {p0}, LFf/L0;->i(S)S

    move-result p0

    return p0
.end method

.method public static final y(B)B
    .locals 0
    .annotation build LFf/l0;
        version = "1.5"
    .end annotation

    .annotation build LWf/f;
    .end annotation

    and-int/lit16 p0, p0, 0xff

    invoke-static {p0}, Ljava/lang/Integer;->lowestOneBit(I)I

    move-result p0

    int-to-byte p0, p0

    invoke-static {p0}, LFf/x0;->i(B)B

    move-result p0

    return p0
.end method

.method public static final z(J)J
    .locals 0
    .annotation build LFf/l0;
        version = "1.5"
    .end annotation

    .annotation build LWf/f;
    .end annotation

    invoke-static {p0, p1}, Ljava/lang/Long;->lowestOneBit(J)J

    move-result-wide p0

    invoke-static {p0, p1}, LFf/F0;->i(J)J

    move-result-wide p0

    return-wide p0
.end method
