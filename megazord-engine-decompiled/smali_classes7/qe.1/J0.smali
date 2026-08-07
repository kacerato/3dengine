.class public Lqe/J0;
.super Lqe/F0;
.source "SourceFile"

# interfaces
.implements Lte/i;


# static fields
.field public static final e:J = -0x3f0dace4a1371f0L


# instance fields
.field public final d:Lte/i;


# direct methods
.method public constructor <init>(Lte/i;)V
    .locals 0

    invoke-direct {p0, p1}, Lqe/F0;-><init>(Lke/i;)V

    iput-object p1, p0, Lqe/J0;->d:Lte/i;

    return-void
.end method

.method private a()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lqe/J0;->d:Lte/i;

    instance-of v1, v0, Ljava/util/RandomAccess;

    if-eqz v1, :cond_0

    new-instance v1, Lqe/C0;

    invoke-direct {v1, v0}, Lqe/C0;-><init>(Lte/i;)V

    goto :goto_0

    :cond_0
    move-object v1, p0

    :goto_0
    return-object v1
.end method


# virtual methods
.method public C8(IS)I
    .locals 1

    iget-object v0, p0, Lqe/J0;->d:Lte/i;

    invoke-interface {v0, p1, p2}, Lte/i;->C8(IS)I

    move-result p1

    return p1
.end method

.method public D7(S)I
    .locals 1

    iget-object v0, p0, Lqe/J0;->d:Lte/i;

    invoke-interface {v0, p1}, Lte/i;->D7(S)I

    move-result p1

    return p1
.end method

.method public F0(II)V
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public F3(S)V
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public F6([SII)V
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public Fb(IS)V
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

.method public L5(S)I
    .locals 1

    iget-object v0, p0, Lqe/J0;->d:Lte/i;

    invoke-interface {v0, p1}, Lte/i;->L5(S)I

    move-result p1

    return p1
.end method

.method public Ld(IS)S
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public S8(IIS)V
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public Wa(I[S)V
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public Ya([SIII)[S
    .locals 1

    iget-object v0, p0, Lqe/J0;->d:Lte/i;

    invoke-interface {v0, p1, p2, p3, p4}, Lte/i;->Ya([SIII)[S

    move-result-object p1

    return-object p1
.end method

.method public cc(Lze/t0;)Z
    .locals 1

    iget-object v0, p0, Lqe/J0;->d:Lte/i;

    invoke-interface {v0, p1}, Lte/i;->cc(Lze/t0;)Z

    move-result p1

    return p1
.end method

.method public dc(I[SII)V
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-eq p1, p0, :cond_1

    iget-object v0, p0, Lqe/J0;->d:Lte/i;

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

.method public fe(I[S)V
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public get(I)S
    .locals 1

    iget-object v0, p0, Lqe/J0;->d:Lte/i;

    invoke-interface {v0, p1}, Lte/i;->get(I)S

    move-result p1

    return p1
.end method

.method public h4(S)I
    .locals 1

    iget-object v0, p0, Lqe/J0;->d:Lte/i;

    invoke-interface {v0, p1}, Lte/i;->h4(S)I

    move-result p1

    return p1
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lqe/J0;->d:Lte/i;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public l3([S)V
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public max()S
    .locals 1

    iget-object v0, p0, Lqe/J0;->d:Lte/i;

    invoke-interface {v0}, Lte/i;->max()S

    move-result v0

    return v0
.end method

.method public min()S
    .locals 1

    iget-object v0, p0, Lqe/J0;->d:Lte/i;

    invoke-interface {v0}, Lte/i;->min()S

    move-result v0

    return v0
.end method

.method public o3(I[SII)V
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public q(Lme/h;)V
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public r()S
    .locals 1

    iget-object v0, p0, Lqe/J0;->d:Lte/i;

    invoke-interface {v0}, Lte/i;->r()S

    move-result v0

    return v0
.end method

.method public r0(II)[S
    .locals 1

    iget-object v0, p0, Lqe/J0;->d:Lte/i;

    invoke-interface {v0, p1, p2}, Lte/i;->r0(II)[S

    move-result-object p1

    return-object p1
.end method

.method public r7([SII)[S
    .locals 1

    iget-object v0, p0, Lqe/J0;->d:Lte/i;

    invoke-interface {v0, p1, p2, p3}, Lte/i;->r7([SII)[S

    move-result-object p1

    return-object p1
.end method

.method public s0(II)V
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public s9(Lze/t0;)Lte/i;
    .locals 1

    iget-object v0, p0, Lqe/J0;->d:Lte/i;

    invoke-interface {v0, p1}, Lte/i;->s9(Lze/t0;)Lte/i;

    move-result-object p1

    return-object p1
.end method

.method public sb(Lze/t0;)Lte/i;
    .locals 1

    iget-object v0, p0, Lqe/J0;->d:Lte/i;

    invoke-interface {v0, p1}, Lte/i;->sb(Lze/t0;)Lte/i;

    move-result-object p1

    return-object p1
.end method

.method public sort()V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public subList(II)Lte/i;
    .locals 2

    new-instance v0, Lqe/J0;

    iget-object v1, p0, Lqe/J0;->d:Lte/i;

    invoke-interface {v1, p1, p2}, Lte/i;->subList(II)Lte/i;

    move-result-object p1

    invoke-direct {v0, p1}, Lqe/J0;-><init>(Lte/i;)V

    return-object v0
.end method

.method public t0(I)S
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public t7(SII)I
    .locals 1

    iget-object v0, p0, Lqe/J0;->d:Lte/i;

    invoke-interface {v0, p1, p2, p3}, Lte/i;->t7(SII)I

    move-result p1

    return p1
.end method

.method public u0()V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public v7(IS)S
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public w0(II)V
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public w9(IS)I
    .locals 1

    iget-object v0, p0, Lqe/J0;->d:Lte/i;

    invoke-interface {v0, p1, p2}, Lte/i;->w9(IS)I

    move-result p1

    return p1
.end method
