.class public Lqe/r;
.super Lqe/n;
.source "SourceFile"

# interfaces
.implements Lte/b;


# static fields
.field public static final e:J = -0x3f0dace4a1371f0L


# instance fields
.field public final d:Lte/b;


# direct methods
.method public constructor <init>(Lte/b;)V
    .locals 0

    invoke-direct {p0, p1}, Lqe/n;-><init>(Lke/b;)V

    iput-object p1, p0, Lqe/r;->d:Lte/b;

    return-void
.end method

.method private a()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lqe/r;->d:Lte/b;

    instance-of v1, v0, Ljava/util/RandomAccess;

    if-eqz v1, :cond_0

    new-instance v1, Lqe/x0;

    invoke-direct {v1, v0}, Lqe/x0;-><init>(Lte/b;)V

    goto :goto_0

    :cond_0
    move-object v1, p0

    :goto_0
    return-object v1
.end method


# virtual methods
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

.method public G7([CII)[C
    .locals 1

    iget-object v0, p0, Lqe/r;->d:Lte/b;

    invoke-interface {v0, p1, p2, p3}, Lte/b;->G7([CII)[C

    move-result-object p1

    return-object p1
.end method

.method public G8(C)I
    .locals 1

    iget-object v0, p0, Lqe/r;->d:Lte/b;

    invoke-interface {v0, p1}, Lte/b;->G8(C)I

    move-result p1

    return p1
.end method

.method public G9([CIII)[C
    .locals 1

    iget-object v0, p0, Lqe/r;->d:Lte/b;

    invoke-interface {v0, p1, p2, p3, p4}, Lte/b;->G9([CIII)[C

    move-result-object p1

    return-object p1
.end method

.method public Hc(IC)V
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public M3(Lze/q;)Lte/b;
    .locals 1

    iget-object v0, p0, Lqe/r;->d:Lte/b;

    invoke-interface {v0, p1}, Lte/b;->M3(Lze/q;)Lte/b;

    move-result-object p1

    return-object p1
.end method

.method public Od(I[C)V
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public Pa(CII)I
    .locals 1

    iget-object v0, p0, Lqe/r;->d:Lte/b;

    invoke-interface {v0, p1, p2, p3}, Lte/b;->Pa(CII)I

    move-result p1

    return p1
.end method

.method public R9(Lze/q;)Z
    .locals 1

    iget-object v0, p0, Lqe/r;->d:Lte/b;

    invoke-interface {v0, p1}, Lte/b;->R9(Lze/q;)Z

    move-result p1

    return p1
.end method

.method public T6(IC)C
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public V3([C)V
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public V7([CII)V
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public c3(C)V
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public d9(IC)I
    .locals 1

    iget-object v0, p0, Lqe/r;->d:Lte/b;

    invoke-interface {v0, p1, p2}, Lte/b;->d9(IC)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-eq p1, p0, :cond_1

    iget-object v0, p0, Lqe/r;->d:Lte/b;

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

.method public fc(Lze/q;)Lte/b;
    .locals 1

    iget-object v0, p0, Lqe/r;->d:Lte/b;

    invoke-interface {v0, p1}, Lte/b;->fc(Lze/q;)Lte/b;

    move-result-object p1

    return-object p1
.end method

.method public g5(C)I
    .locals 1

    iget-object v0, p0, Lqe/r;->d:Lte/b;

    invoke-interface {v0, p1}, Lte/b;->g5(C)I

    move-result p1

    return p1
.end method

.method public get(I)C
    .locals 1

    iget-object v0, p0, Lqe/r;->d:Lte/b;

    invoke-interface {v0, p1}, Lte/b;->get(I)C

    move-result p1

    return p1
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lqe/r;->d:Lte/b;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public ib(I[CII)V
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public id(IC)C
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public jb(IIC)V
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public l4(C)I
    .locals 1

    iget-object v0, p0, Lqe/r;->d:Lte/b;

    invoke-interface {v0, p1}, Lte/b;->l4(C)I

    move-result p1

    return p1
.end method

.method public max()C
    .locals 1

    iget-object v0, p0, Lqe/r;->d:Lte/b;

    invoke-interface {v0}, Lte/b;->max()C

    move-result v0

    return v0
.end method

.method public min()C
    .locals 1

    iget-object v0, p0, Lqe/r;->d:Lte/b;

    invoke-interface {v0}, Lte/b;->min()C

    move-result v0

    return v0
.end method

.method public n6(IC)I
    .locals 1

    iget-object v0, p0, Lqe/r;->d:Lte/b;

    invoke-interface {v0, p1, p2}, Lte/b;->n6(IC)I

    move-result p1

    return p1
.end method

.method public p(Lme/b;)V
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public r()C
    .locals 1

    iget-object v0, p0, Lqe/r;->d:Lte/b;

    invoke-interface {v0}, Lte/b;->r()C

    move-result v0

    return v0
.end method

.method public r0(II)[C
    .locals 1

    iget-object v0, p0, Lqe/r;->d:Lte/b;

    invoke-interface {v0, p1, p2}, Lte/b;->r0(II)[C

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

.method public subList(II)Lte/b;
    .locals 2

    new-instance v0, Lqe/r;

    iget-object v1, p0, Lqe/r;->d:Lte/b;

    invoke-interface {v1, p1, p2}, Lte/b;->subList(II)Lte/b;

    move-result-object p1

    invoke-direct {v0, p1}, Lqe/r;-><init>(Lte/b;)V

    return-object v0
.end method

.method public t0(I)C
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

.method public x8(I[CII)V
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public xa(I[C)V
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method
