.class public Lqe/g;
.super Lqe/c;
.source "SourceFile"

# interfaces
.implements Lte/a;


# static fields
.field public static final e:J = -0x3f0dace4a1371f0L


# instance fields
.field public final d:Lte/a;


# direct methods
.method public constructor <init>(Lte/a;)V
    .locals 0

    invoke-direct {p0, p1}, Lqe/c;-><init>(Lke/a;)V

    iput-object p1, p0, Lqe/g;->d:Lte/a;

    return-void
.end method

.method private a()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lqe/g;->d:Lte/a;

    instance-of v1, v0, Ljava/util/RandomAccess;

    if-eqz v1, :cond_0

    new-instance v1, Lqe/w0;

    invoke-direct {v1, v0}, Lqe/w0;-><init>(Lte/a;)V

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

.method public G4(B)I
    .locals 1

    iget-object v0, p0, Lqe/g;->d:Lte/a;

    invoke-interface {v0, p1}, Lte/a;->G4(B)I

    move-result p1

    return p1
.end method

.method public Ga(Lze/h;)Lte/a;
    .locals 1

    iget-object v0, p0, Lqe/g;->d:Lte/a;

    invoke-interface {v0, p1}, Lte/a;->Ga(Lze/h;)Lte/a;

    move-result-object p1

    return-object p1
.end method

.method public Gc(IB)V
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public Ha([BII)[B
    .locals 1

    iget-object v0, p0, Lqe/g;->d:Lte/a;

    invoke-interface {v0, p1, p2, p3}, Lte/a;->Ha([BII)[B

    move-result-object p1

    return-object p1
.end method

.method public Md(I[B)V
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public Ob(Lze/h;)Lte/a;
    .locals 1

    iget-object v0, p0, Lqe/g;->d:Lte/a;

    invoke-interface {v0, p1}, Lte/a;->Ob(Lze/h;)Lte/a;

    move-result-object p1

    return-object p1
.end method

.method public R7(BII)I
    .locals 1

    iget-object v0, p0, Lqe/g;->d:Lte/a;

    invoke-interface {v0, p1, p2, p3}, Lte/a;->R7(BII)I

    move-result p1

    return p1
.end method

.method public Vd([BIII)[B
    .locals 1

    iget-object v0, p0, Lqe/g;->d:Lte/a;

    invoke-interface {v0, p1, p2, p3, p4}, Lte/a;->Vd([BIII)[B

    move-result-object p1

    return-object p1
.end method

.method public Xa([BII)V
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public bb(IIB)V
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public d3(B)V
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-eq p1, p0, :cond_1

    iget-object v0, p0, Lqe/g;->d:Lte/a;

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

.method public g(Lme/a;)V
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public get(I)B
    .locals 1

    iget-object v0, p0, Lqe/g;->d:Lte/a;

    invoke-interface {v0, p1}, Lte/a;->get(I)B

    move-result p1

    return p1
.end method

.method public h9(IB)I
    .locals 1

    iget-object v0, p0, Lqe/g;->d:Lte/a;

    invoke-interface {v0, p1, p2}, Lte/a;->h9(IB)I

    move-result p1

    return p1
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lqe/g;->d:Lte/a;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public hd(I[BII)V
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public i1([B)V
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public i4(B)I
    .locals 1

    iget-object v0, p0, Lqe/g;->d:Lte/a;

    invoke-interface {v0, p1}, Lte/a;->i4(B)I

    move-result p1

    return p1
.end method

.method public kd(IB)B
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public m6(IB)I
    .locals 1

    iget-object v0, p0, Lqe/g;->d:Lte/a;

    invoke-interface {v0, p1, p2}, Lte/a;->m6(IB)I

    move-result p1

    return p1
.end method

.method public max()B
    .locals 1

    iget-object v0, p0, Lqe/g;->d:Lte/a;

    invoke-interface {v0}, Lte/a;->max()B

    move-result v0

    return v0
.end method

.method public min()B
    .locals 1

    iget-object v0, p0, Lqe/g;->d:Lte/a;

    invoke-interface {v0}, Lte/a;->min()B

    move-result v0

    return v0
.end method

.method public r()B
    .locals 1

    iget-object v0, p0, Lqe/g;->d:Lte/a;

    invoke-interface {v0}, Lte/a;->r()B

    move-result v0

    return v0
.end method

.method public r0(II)[B
    .locals 1

    iget-object v0, p0, Lqe/g;->d:Lte/a;

    invoke-interface {v0, p1, p2}, Lte/a;->r0(II)[B

    move-result-object p1

    return-object p1
.end method

.method public s0(II)V
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public s1(B)I
    .locals 1

    iget-object v0, p0, Lqe/g;->d:Lte/a;

    invoke-interface {v0, p1}, Lte/a;->s1(B)I

    move-result p1

    return p1
.end method

.method public set(IB)B
    .locals 0

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public set(I[BII)V
    .locals 0

    .line 2
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

.method public subList(II)Lte/a;
    .locals 2

    new-instance v0, Lqe/g;

    iget-object v1, p0, Lqe/g;->d:Lte/a;

    invoke-interface {v1, p1, p2}, Lte/a;->subList(II)Lte/a;

    move-result-object p1

    invoke-direct {v0, p1}, Lqe/g;-><init>(Lte/a;)V

    return-object v0
.end method

.method public t0(I)B
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

.method public w2(Lze/h;)Z
    .locals 1

    iget-object v0, p0, Lqe/g;->d:Lte/a;

    invoke-interface {v0, p1}, Lte/a;->w2(Lze/h;)Z

    move-result p1

    return p1
.end method

.method public ya(I[B)V
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method
