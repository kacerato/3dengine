.class public Lqe/C;
.super Lqe/y;
.source "SourceFile"

# interfaces
.implements Lte/c;


# static fields
.field public static final e:J = -0x3f0dace4a1371f0L


# instance fields
.field public final d:Lte/c;


# direct methods
.method public constructor <init>(Lte/c;)V
    .locals 0

    invoke-direct {p0, p1}, Lqe/y;-><init>(Lke/e;)V

    iput-object p1, p0, Lqe/C;->d:Lte/c;

    return-void
.end method

.method private b()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lqe/C;->d:Lte/c;

    instance-of v1, v0, Ljava/util/RandomAccess;

    if-eqz v1, :cond_0

    new-instance v1, Lqe/y0;

    invoke-direct {v1, v0}, Lqe/y0;-><init>(Lte/c;)V

    goto :goto_0

    :cond_0
    move-object v1, p0

    :goto_0
    return-object v1
.end method


# virtual methods
.method public Ad(Lze/z;)Lte/c;
    .locals 1

    iget-object v0, p0, Lqe/C;->d:Lte/c;

    invoke-interface {v0, p1}, Lte/c;->Ad(Lze/z;)Lte/c;

    move-result-object p1

    return-object p1
.end method

.method public Ba(I[D)V
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public C9(I[DII)V
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public Cc(ID)V
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public D3([DII)[D
    .locals 1

    iget-object v0, p0, Lqe/C;->d:Lte/c;

    invoke-interface {v0, p1, p2, p3}, Lte/c;->D3([DII)[D

    move-result-object p1

    return-object p1
.end method

.method public D8(D)I
    .locals 1

    iget-object v0, p0, Lqe/C;->d:Lte/c;

    invoke-interface {v0, p1, p2}, Lte/c;->D8(D)I

    move-result p1

    return p1
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

.method public H4([DIII)[D
    .locals 1

    iget-object v0, p0, Lqe/C;->d:Lte/c;

    invoke-interface {v0, p1, p2, p3, p4}, Lte/c;->H4([DIII)[D

    move-result-object p1

    return-object p1
.end method

.method public I4(Lze/z;)Z
    .locals 1

    iget-object v0, p0, Lqe/C;->d:Lte/c;

    invoke-interface {v0, p1}, Lte/c;->I4(Lze/z;)Z

    move-result p1

    return p1
.end method

.method public N7(Lze/z;)Lte/c;
    .locals 1

    iget-object v0, p0, Lqe/C;->d:Lte/c;

    invoke-interface {v0, p1}, Lte/c;->N7(Lze/z;)Lte/c;

    move-result-object p1

    return-object p1
.end method

.method public Pd(I[D)V
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public Q3([D)V
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public X3([DII)V
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public Y6(ID)D
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public Z2(D)V
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public d4(D)I
    .locals 1

    iget-object v0, p0, Lqe/C;->d:Lte/c;

    invoke-interface {v0, p1, p2}, Lte/c;->d4(D)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-eq p1, p0, :cond_1

    iget-object v0, p0, Lqe/C;->d:Lte/c;

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

.method public fb(IID)V
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public g9(DII)I
    .locals 1

    iget-object v0, p0, Lqe/C;->d:Lte/c;

    invoke-interface {v0, p1, p2, p3, p4}, Lte/c;->g9(DII)I

    move-result p1

    return p1
.end method

.method public get(I)D
    .locals 2

    iget-object v0, p0, Lqe/C;->d:Lte/c;

    invoke-interface {v0, p1}, Lte/c;->get(I)D

    move-result-wide v0

    return-wide v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lqe/C;->d:Lte/c;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public i9(ID)I
    .locals 1

    iget-object v0, p0, Lqe/C;->d:Lte/c;

    invoke-interface {v0, p1, p2, p3}, Lte/c;->i9(ID)I

    move-result p1

    return p1
.end method

.method public k5(D)I
    .locals 1

    iget-object v0, p0, Lqe/C;->d:Lte/c;

    invoke-interface {v0, p1, p2}, Lte/c;->k5(D)I

    move-result p1

    return p1
.end method

.method public max()D
    .locals 2

    iget-object v0, p0, Lqe/C;->d:Lte/c;

    invoke-interface {v0}, Lte/c;->max()D

    move-result-wide v0

    return-wide v0
.end method

.method public min()D
    .locals 2

    iget-object v0, p0, Lqe/C;->d:Lte/c;

    invoke-interface {v0}, Lte/c;->min()D

    move-result-wide v0

    return-wide v0
.end method

.method public n(Lme/c;)V
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public na(I[DII)V
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public nd(ID)D
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public r()D
    .locals 2

    iget-object v0, p0, Lqe/C;->d:Lte/c;

    invoke-interface {v0}, Lte/c;->r()D

    move-result-wide v0

    return-wide v0
.end method

.method public r0(II)[D
    .locals 1

    iget-object v0, p0, Lqe/C;->d:Lte/c;

    invoke-interface {v0, p1, p2}, Lte/c;->r0(II)[D

    move-result-object p1

    return-object p1
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

.method public subList(II)Lte/c;
    .locals 2

    new-instance v0, Lqe/C;

    iget-object v1, p0, Lqe/C;->d:Lte/c;

    invoke-interface {v1, p1, p2}, Lte/c;->subList(II)Lte/c;

    move-result-object p1

    invoke-direct {v0, p1}, Lqe/C;-><init>(Lte/c;)V

    return-object v0
.end method

.method public t0(I)D
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

.method public z8(ID)I
    .locals 1

    iget-object v0, p0, Lqe/C;->d:Lte/c;

    invoke-interface {v0, p1, p2, p3}, Lte/c;->z8(ID)I

    move-result p1

    return p1
.end method
