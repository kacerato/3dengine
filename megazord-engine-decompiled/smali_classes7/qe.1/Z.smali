.class public Lqe/Z;
.super Lqe/V;
.source "SourceFile"

# interfaces
.implements Lte/e;


# static fields
.field public static final e:J = -0x3f0dace4a1371f0L


# instance fields
.field public final d:Lte/e;


# direct methods
.method public constructor <init>(Lte/e;)V
    .locals 0

    invoke-direct {p0, p1}, Lqe/V;-><init>(Lke/g;)V

    iput-object p1, p0, Lqe/Z;->d:Lte/e;

    return-void
.end method

.method private a()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lqe/Z;->d:Lte/e;

    instance-of v1, v0, Ljava/util/RandomAccess;

    if-eqz v1, :cond_0

    new-instance v1, Lqe/A0;

    invoke-direct {v1, v0}, Lqe/A0;-><init>(Lte/e;)V

    goto :goto_0

    :cond_0
    move-object v1, p0

    :goto_0
    return-object v1
.end method


# virtual methods
.method public D2([III)V
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

.method public G3([I)V
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public Ia(I[I)V
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public O2(Lze/S;)Lte/e;
    .locals 1

    iget-object v0, p0, Lqe/Z;->d:Lte/e;

    invoke-interface {v0, p1}, Lte/e;->O2(Lze/S;)Lte/e;

    move-result-object p1

    return-object p1
.end method

.method public P4(I)I
    .locals 1

    iget-object v0, p0, Lqe/Z;->d:Lte/e;

    invoke-interface {v0, p1}, Lte/e;->P4(I)I

    move-result p1

    return p1
.end method

.method public P8(I)I
    .locals 1

    iget-object v0, p0, Lqe/Z;->d:Lte/e;

    invoke-interface {v0, p1}, Lte/e;->P8(I)I

    move-result p1

    return p1
.end method

.method public Qd(II)I
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public Tb(Lze/S;)Z
    .locals 1

    iget-object v0, p0, Lqe/Z;->d:Lte/e;

    invoke-interface {v0, p1}, Lte/e;->Tb(Lze/S;)Z

    move-result p1

    return p1
.end method

.method public Y8(III)V
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public de(I[I)V
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public e3([III)[I
    .locals 1

    iget-object v0, p0, Lqe/Z;->d:Lte/e;

    invoke-interface {v0, p1, p2, p3}, Lte/e;->e3([III)[I

    move-result-object p1

    return-object p1
.end method

.method public e7(II)I
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-eq p1, p0, :cond_1

    iget-object v0, p0, Lqe/Z;->d:Lte/e;

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

.method public f(Lme/e;)V
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public get(I)I
    .locals 1

    iget-object v0, p0, Lqe/Z;->d:Lte/e;

    invoke-interface {v0, p1}, Lte/e;->get(I)I

    move-result p1

    return p1
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lqe/Z;->d:Lte/e;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public k6(I[III)V
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public k8(Lze/S;)Lte/e;
    .locals 1

    iget-object v0, p0, Lqe/Z;->d:Lte/e;

    invoke-interface {v0, p1}, Lte/e;->k8(Lze/S;)Lte/e;

    move-result-object p1

    return-object p1
.end method

.method public l6([IIII)[I
    .locals 1

    iget-object v0, p0, Lqe/Z;->d:Lte/e;

    invoke-interface {v0, p1, p2, p3, p4}, Lte/e;->l6([IIII)[I

    move-result-object p1

    return-object p1
.end method

.method public max()I
    .locals 1

    iget-object v0, p0, Lqe/Z;->d:Lte/e;

    invoke-interface {v0}, Lte/e;->max()I

    move-result v0

    return v0
.end method

.method public min()I
    .locals 1

    iget-object v0, p0, Lqe/Z;->d:Lte/e;

    invoke-interface {v0}, Lte/e;->min()I

    move-result v0

    return v0
.end method

.method public n9(II)I
    .locals 1

    iget-object v0, p0, Lqe/Z;->d:Lte/e;

    invoke-interface {v0, p1, p2}, Lte/e;->n9(II)I

    move-result p1

    return p1
.end method

.method public q3(I)V
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public r()I
    .locals 1

    iget-object v0, p0, Lqe/Z;->d:Lte/e;

    invoke-interface {v0}, Lte/e;->r()I

    move-result v0

    return v0
.end method

.method public r0(II)[I
    .locals 1

    iget-object v0, p0, Lqe/Z;->d:Lte/e;

    invoke-interface {v0, p1, p2}, Lte/e;->r0(II)[I

    move-result-object p1

    return-object p1
.end method

.method public ra(I[III)V
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public s0(II)V
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public s4(I)I
    .locals 1

    iget-object v0, p0, Lqe/Z;->d:Lte/e;

    invoke-interface {v0, p1}, Lte/e;->s4(I)I

    move-result p1

    return p1
.end method

.method public sort()V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public subList(II)Lte/e;
    .locals 2

    new-instance v0, Lqe/Z;

    iget-object v1, p0, Lqe/Z;->d:Lte/e;

    invoke-interface {v1, p1, p2}, Lte/e;->subList(II)Lte/e;

    move-result-object p1

    invoke-direct {v0, p1}, Lqe/Z;-><init>(Lte/e;)V

    return-object v0
.end method

.method public t0(I)I
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

.method public ua(III)I
    .locals 1

    iget-object v0, p0, Lqe/Z;->d:Lte/e;

    invoke-interface {v0, p1, p2, p3}, Lte/e;->ua(III)I

    move-result p1

    return p1
.end method

.method public ub(II)V
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public v8(II)I
    .locals 1

    iget-object v0, p0, Lqe/Z;->d:Lte/e;

    invoke-interface {v0, p1, p2}, Lte/e;->v8(II)I

    move-result p1

    return p1
.end method

.method public w0(II)V
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method
