.class public Lqe/k0;
.super Lqe/g0;
.source "SourceFile"

# interfaces
.implements Lte/h;


# static fields
.field public static final e:J = -0x3f0dace4a1371f0L


# instance fields
.field public final d:Lte/h;


# direct methods
.method public constructor <init>(Lte/h;)V
    .locals 0

    invoke-direct {p0, p1}, Lqe/g0;-><init>(Lke/h;)V

    iput-object p1, p0, Lqe/k0;->d:Lte/h;

    return-void
.end method

.method private a()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lqe/k0;->d:Lte/h;

    instance-of v1, v0, Ljava/util/RandomAccess;

    if-eqz v1, :cond_0

    new-instance v1, Lqe/B0;

    invoke-direct {v1, v0}, Lqe/B0;-><init>(Lte/h;)V

    goto :goto_0

    :cond_0
    move-object v1, p0

    :goto_0
    return-object v1
.end method


# virtual methods
.method public C3([J)V
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public E5([JII)V
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public F0(II)V
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public G0(Ljava/util/Random;)V
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public H8(I[JII)V
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public La(I[J)V
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public O8(J)I
    .locals 1

    iget-object v0, p0, Lqe/k0;->d:Lte/h;

    invoke-interface {v0, p1, p2}, Lte/h;->O8(J)I

    move-result p1

    return p1
.end method

.method public P5(Lze/b0;)Z
    .locals 1

    iget-object v0, p0, Lqe/k0;->d:Lte/h;

    invoke-interface {v0, p1}, Lte/h;->P5(Lze/b0;)Z

    move-result p1

    return p1
.end method

.method public S4(J)I
    .locals 1

    iget-object v0, p0, Lqe/k0;->d:Lte/h;

    invoke-interface {v0, p1, p2}, Lte/h;->S4(J)I

    move-result p1

    return p1
.end method

.method public Sc([JIII)[J
    .locals 1

    iget-object v0, p0, Lqe/k0;->d:Lte/h;

    invoke-interface {v0, p1, p2, p3, p4}, Lte/h;->Sc([JIII)[J

    move-result-object p1

    return-object p1
.end method

.method public Td(IJ)J
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public W8(IIJ)V
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public Wd(I[J)V
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public ae(Lze/b0;)Lte/h;
    .locals 1

    iget-object v0, p0, Lqe/k0;->d:Lte/h;

    invoke-interface {v0, p1}, Lte/h;->ae(Lze/b0;)Lte/h;

    move-result-object p1

    return-object p1
.end method

.method public b6(J)I
    .locals 1

    iget-object v0, p0, Lqe/k0;->d:Lte/h;

    invoke-interface {v0, p1, p2}, Lte/h;->b6(J)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-eq p1, p0, :cond_1

    iget-object v0, p0, Lqe/k0;->d:Lte/h;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public ge(JII)I
    .locals 1

    iget-object v0, p0, Lqe/k0;->d:Lte/h;

    invoke-interface {v0, p1, p2, p3, p4}, Lte/h;->ge(JII)I

    move-result p1

    return p1
.end method

.method public get(I)J
    .locals 2

    iget-object v0, p0, Lqe/k0;->d:Lte/h;

    invoke-interface {v0, p1}, Lte/h;->get(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public h(Lme/f;)V
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public h6([JII)[J
    .locals 1

    iget-object v0, p0, Lqe/k0;->d:Lte/h;

    invoke-interface {v0, p1, p2, p3}, Lte/h;->h6([JII)[J

    move-result-object p1

    return-object p1
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lqe/k0;->d:Lte/h;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public j6(Lze/b0;)Lte/h;
    .locals 1

    iget-object v0, p0, Lqe/k0;->d:Lte/h;

    invoke-interface {v0, p1}, Lte/h;->j6(Lze/b0;)Lte/h;

    move-result-object p1

    return-object p1
.end method

.method public k7(IJ)J
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public max()J
    .locals 2

    iget-object v0, p0, Lqe/k0;->d:Lte/h;

    invoke-interface {v0}, Lte/h;->max()J

    move-result-wide v0

    return-wide v0
.end method

.method public min()J
    .locals 2

    iget-object v0, p0, Lqe/k0;->d:Lte/h;

    invoke-interface {v0}, Lte/h;->min()J

    move-result-wide v0

    return-wide v0
.end method

.method public p3(J)V
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public q9(IJ)I
    .locals 1

    iget-object v0, p0, Lqe/k0;->d:Lte/h;

    invoke-interface {v0, p1, p2, p3}, Lte/h;->q9(IJ)I

    move-result p1

    return p1
.end method

.method public r()J
    .locals 2

    iget-object v0, p0, Lqe/k0;->d:Lte/h;

    invoke-interface {v0}, Lte/h;->r()J

    move-result-wide v0

    return-wide v0
.end method

.method public r0(II)[J
    .locals 1

    iget-object v0, p0, Lqe/k0;->d:Lte/h;

    invoke-interface {v0, p1, p2}, Lte/h;->r0(II)[J

    move-result-object p1

    return-object p1
.end method

.method public r8(IJ)I
    .locals 1

    iget-object v0, p0, Lqe/k0;->d:Lte/h;

    invoke-interface {v0, p1, p2, p3}, Lte/h;->r8(IJ)I

    move-result p1

    return p1
.end method

.method public s0(II)V
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public sort()V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public subList(II)Lte/h;
    .locals 2

    new-instance v0, Lqe/k0;

    iget-object v1, p0, Lqe/k0;->d:Lte/h;

    invoke-interface {v1, p1, p2}, Lte/h;->subList(II)Lte/h;

    move-result-object p1

    invoke-direct {v0, p1}, Lqe/k0;-><init>(Lte/h;)V

    return-object v0
.end method

.method public t0(I)J
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public u0()V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public w0(II)V
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public yb(IJ)V
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public za(I[JII)V
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method
