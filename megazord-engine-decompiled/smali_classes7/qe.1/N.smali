.class public Lqe/N;
.super Lqe/J;
.source "SourceFile"

# interfaces
.implements Lte/d;


# static fields
.field public static final e:J = -0x3f0dace4a1371f0L


# instance fields
.field public final d:Lte/d;


# direct methods
.method public constructor <init>(Lte/d;)V
    .locals 0

    invoke-direct {p0, p1}, Lqe/J;-><init>(Lke/f;)V

    iput-object p1, p0, Lqe/N;->d:Lte/d;

    return-void
.end method

.method private a()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lqe/N;->d:Lte/d;

    instance-of v1, v0, Ljava/util/RandomAccess;

    if-eqz v1, :cond_0

    new-instance v1, Lqe/z0;

    invoke-direct {v1, v0}, Lqe/z0;-><init>(Lte/d;)V

    goto :goto_0

    :cond_0
    move-object v1, p0

    :goto_0
    return-object v1
.end method


# virtual methods
.method public Ec(IF)V
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

.method public Fa(I[F)V
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

.method public I5(I[FII)V
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public J3(Lze/I;)Lte/d;
    .locals 1

    iget-object v0, p0, Lqe/N;->d:Lte/d;

    invoke-interface {v0, p1}, Lte/d;->J3(Lze/I;)Lte/d;

    move-result-object p1

    return-object p1
.end method

.method public J8(F)I
    .locals 1

    iget-object v0, p0, Lqe/N;->d:Lte/d;

    invoke-interface {v0, p1}, Lte/d;->J8(F)I

    move-result p1

    return p1
.end method

.method public Nd(IF)F
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public U8(IIF)V
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public Vb(I[FII)V
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public W2(F)V
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public Yd([FII)[F
    .locals 1

    iget-object v0, p0, Lqe/N;->d:Lte/d;

    invoke-interface {v0, p1, p2, p3}, Lte/d;->Yd([FII)[F

    move-result-object p1

    return-object p1
.end method

.method public Z7([FIII)[F
    .locals 1

    iget-object v0, p0, Lqe/N;->d:Lte/d;

    invoke-interface {v0, p1, p2, p3, p4}, Lte/d;->Z7([FIII)[F

    move-result-object p1

    return-object p1
.end method

.method public b5(F)I
    .locals 1

    iget-object v0, p0, Lqe/N;->d:Lte/d;

    invoke-interface {v0, p1}, Lte/d;->b5(F)I

    move-result p1

    return p1
.end method

.method public be(I[F)V
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public c7(IF)F
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-eq p1, p0, :cond_1

    iget-object v0, p0, Lqe/N;->d:Lte/d;

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

.method public get(I)F
    .locals 1

    iget-object v0, p0, Lqe/N;->d:Lte/d;

    invoke-interface {v0, p1}, Lte/d;->get(I)F

    move-result p1

    return p1
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lqe/N;->d:Lte/d;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public je([FII)V
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public k9(IF)I
    .locals 1

    iget-object v0, p0, Lqe/N;->d:Lte/d;

    invoke-interface {v0, p1, p2}, Lte/d;->k9(IF)I

    move-result p1

    return p1
.end method

.method public lc(Lze/I;)Z
    .locals 1

    iget-object v0, p0, Lqe/N;->d:Lte/d;

    invoke-interface {v0, p1}, Lte/d;->lc(Lze/I;)Z

    move-result p1

    return p1
.end method

.method public max()F
    .locals 1

    iget-object v0, p0, Lqe/N;->d:Lte/d;

    invoke-interface {v0}, Lte/d;->max()F

    move-result v0

    return v0
.end method

.method public min()F
    .locals 1

    iget-object v0, p0, Lqe/N;->d:Lte/d;

    invoke-interface {v0}, Lte/d;->min()F

    move-result v0

    return v0
.end method

.method public o(Lme/d;)V
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public r()F
    .locals 1

    iget-object v0, p0, Lqe/N;->d:Lte/d;

    invoke-interface {v0}, Lte/d;->r()F

    move-result v0

    return v0
.end method

.method public r0(II)[F
    .locals 1

    iget-object v0, p0, Lqe/N;->d:Lte/d;

    invoke-interface {v0, p1, p2}, Lte/d;->r0(II)[F

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

.method public subList(II)Lte/d;
    .locals 2

    new-instance v0, Lqe/N;

    iget-object v1, p0, Lqe/N;->d:Lte/d;

    invoke-interface {v1, p1, p2}, Lte/d;->subList(II)Lte/d;

    move-result-object p1

    invoke-direct {v0, p1}, Lqe/N;-><init>(Lte/d;)V

    return-object v0
.end method

.method public t0(I)F
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public t4(FII)I
    .locals 1

    iget-object v0, p0, Lqe/N;->d:Lte/d;

    invoke-interface {v0, p1, p2, p3}, Lte/d;->t4(FII)I

    move-result p1

    return p1
.end method

.method public u0()V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public v4(F)I
    .locals 1

    iget-object v0, p0, Lqe/N;->d:Lte/d;

    invoke-interface {v0, p1}, Lte/d;->v4(F)I

    move-result p1

    return p1
.end method

.method public w0(II)V
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public w7(Lze/I;)Lte/d;
    .locals 1

    iget-object v0, p0, Lqe/N;->d:Lte/d;

    invoke-interface {v0, p1}, Lte/d;->w7(Lze/I;)Lte/d;

    move-result-object p1

    return-object p1
.end method

.method public y3([F)V
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public y8(IF)I
    .locals 1

    iget-object v0, p0, Lqe/N;->d:Lte/d;

    invoke-interface {v0, p1, p2}, Lte/d;->y8(IF)I

    move-result p1

    return p1
.end method
