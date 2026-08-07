.class public final LId/y;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LId/f;
.implements LId/g;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "LId/f;",
        "LId/g<",
        "TE;>;"
    }
.end annotation


# static fields
.field public static final f:J = -0x1L


# instance fields
.field public final b:I

.field public final c:[Ljava/lang/Object;

.field public final d:I

.field public final e:LId/E;


# direct methods
.method public constructor <init>(LId/h;LId/E;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LId/h<",
            "TE;>;",
            "LId/E;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, LId/y;->e:LId/E;

    invoke-interface {p2}, LId/E;->i()I

    move-result v0

    iput v0, p0, LId/y;->d:I

    const/4 v1, 0x1

    if-lt v0, v1, :cond_1

    invoke-static {v0}, Ljava/lang/Integer;->bitCount(I)I

    move-result v2

    if-ne v2, v1, :cond_0

    sub-int/2addr v0, v1

    iput v0, p0, LId/y;->b:I

    invoke-interface {p2}, LId/E;->i()I

    move-result p2

    new-array p2, p2, [Ljava/lang/Object;

    iput-object p2, p0, LId/y;->c:[Ljava/lang/Object;

    invoke-virtual {p0, p1}, LId/y;->v(LId/h;)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "bufferSize must be a power of 2"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "bufferSize must not be less than 1"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static p(LKd/g;LId/h;ILId/J;)LId/y;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "LKd/g;",
            "LId/h<",
            "TE;>;I",
            "LId/J;",
            ")",
            "LId/y<",
            "TE;>;"
        }
    .end annotation

    sget-object v0, LId/y$a;->a:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    invoke-static {p1, p2, p3}, LId/y;->r(LId/h;ILId/J;)LId/y;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {p1, p2, p3}, LId/y;->u(LId/h;ILId/J;)LId/y;

    move-result-object p0

    return-object p0
.end method

.method public static q(LId/h;I)LId/y;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "LId/h<",
            "TE;>;I)",
            "LId/y<",
            "TE;>;"
        }
    .end annotation

    new-instance v0, LId/d;

    invoke-direct {v0}, LId/d;-><init>()V

    invoke-static {p0, p1, v0}, LId/y;->r(LId/h;ILId/J;)LId/y;

    move-result-object p0

    return-object p0
.end method

.method public static r(LId/h;ILId/J;)LId/y;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "LId/h<",
            "TE;>;I",
            "LId/J;",
            ")",
            "LId/y<",
            "TE;>;"
        }
    .end annotation

    new-instance v0, LId/u;

    invoke-direct {v0, p1, p2}, LId/u;-><init>(ILId/J;)V

    new-instance p1, LId/y;

    invoke-direct {p1, p0, v0}, LId/y;-><init>(LId/h;LId/E;)V

    return-object p1
.end method

.method public static t(LId/h;I)LId/y;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "LId/h<",
            "TE;>;I)",
            "LId/y<",
            "TE;>;"
        }
    .end annotation

    new-instance v0, LId/d;

    invoke-direct {v0}, LId/d;-><init>()V

    invoke-static {p0, p1, v0}, LId/y;->u(LId/h;ILId/J;)LId/y;

    move-result-object p0

    return-object p0
.end method

.method public static u(LId/h;ILId/J;)LId/y;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "LId/h<",
            "TE;>;I",
            "LId/J;",
            ")",
            "LId/y<",
            "TE;>;"
        }
    .end annotation

    new-instance v0, LId/F;

    invoke-direct {v0, p1, p2}, LId/F;-><init>(ILId/J;)V

    new-instance p1, LId/y;

    invoke-direct {p1, p0, v0}, LId/y;-><init>(LId/h;LId/E;)V

    return-object p1
.end method


# virtual methods
.method public A(LId/k;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LId/k<",
            "TE;>;)V"
        }
    .end annotation

    iget-object v0, p0, LId/y;->e:LId/E;

    invoke-interface {v0}, LId/E;->next()J

    move-result-wide v0

    invoke-virtual {p0, p1, v0, v1}, LId/y;->G(LId/k;J)V

    return-void
.end method

.method public B(LId/l;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            ">(",
            "LId/l<",
            "TE;TA;>;TA;)V"
        }
    .end annotation

    iget-object v0, p0, LId/y;->e:LId/E;

    invoke-interface {v0}, LId/E;->next()J

    move-result-wide v0

    invoke-virtual {p0, p1, v0, v1, p2}, LId/y;->H(LId/l;JLjava/lang/Object;)V

    return-void
.end method

.method public C(LId/m;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            "B:",
            "Ljava/lang/Object;",
            "C:",
            "Ljava/lang/Object;",
            ">(",
            "LId/m<",
            "TE;TA;TB;TC;>;TA;TB;TC;)V"
        }
    .end annotation

    iget-object v0, p0, LId/y;->e:LId/E;

    invoke-interface {v0}, LId/E;->next()J

    move-result-wide v3

    move-object v1, p0

    move-object v2, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    invoke-virtual/range {v1 .. v7}, LId/y;->I(LId/m;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public D(LId/n;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            "B:",
            "Ljava/lang/Object;",
            ">(",
            "LId/n<",
            "TE;TA;TB;>;TA;TB;)V"
        }
    .end annotation

    iget-object v0, p0, LId/y;->e:LId/E;

    invoke-interface {v0}, LId/E;->next()J

    move-result-wide v3

    move-object v1, p0

    move-object v2, p1

    move-object v5, p2

    move-object v6, p3

    invoke-virtual/range {v1 .. v6}, LId/y;->J(LId/n;JLjava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public varargs E(LId/o;[Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LId/o<",
            "TE;>;[",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, LId/y;->e:LId/E;

    invoke-interface {v0}, LId/E;->next()J

    move-result-wide v0

    invoke-virtual {p0, p1, v0, v1, p2}, LId/y;->K(LId/o;J[Ljava/lang/Object;)V

    return-void
.end method

.method public F(J)V
    .locals 1

    iget-object v0, p0, LId/y;->e:LId/E;

    invoke-interface {v0, p1, p2}, LId/E;->g(J)V

    iget-object v0, p0, LId/y;->e:LId/E;

    invoke-interface {v0, p1, p2}, LId/E;->e(J)V

    return-void
.end method

.method public final G(LId/k;J)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LId/k<",
            "TE;>;J)V"
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0, p2, p3}, LId/y;->s(J)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v0, p2, p3}, LId/k;->a(Ljava/lang/Object;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, LId/y;->e:LId/E;

    invoke-interface {p1, p2, p3}, LId/E;->e(J)V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, LId/y;->e:LId/E;

    invoke-interface {v0, p2, p3}, LId/E;->e(J)V

    throw p1
.end method

.method public final H(LId/l;JLjava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            ">(",
            "LId/l<",
            "TE;TA;>;JTA;)V"
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0, p2, p3}, LId/y;->s(J)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v0, p2, p3, p4}, LId/l;->a(Ljava/lang/Object;JLjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, LId/y;->e:LId/E;

    invoke-interface {p1, p2, p3}, LId/E;->e(J)V

    return-void

    :catchall_0
    move-exception p1

    iget-object p4, p0, LId/y;->e:LId/E;

    invoke-interface {p4, p2, p3}, LId/E;->e(J)V

    throw p1
.end method

.method public final I(LId/m;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            "B:",
            "Ljava/lang/Object;",
            "C:",
            "Ljava/lang/Object;",
            ">(",
            "LId/m<",
            "TE;TA;TB;TC;>;JTA;TB;TC;)V"
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0, p2, p3}, LId/y;->s(J)Ljava/lang/Object;

    move-result-object v1

    move-object v0, p1

    move-wide v2, p2

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-interface/range {v0 .. v6}, LId/m;->a(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, LId/y;->e:LId/E;

    invoke-interface {p1, p2, p3}, LId/E;->e(J)V

    return-void

    :catchall_0
    move-exception p1

    iget-object p4, p0, LId/y;->e:LId/E;

    invoke-interface {p4, p2, p3}, LId/E;->e(J)V

    throw p1
.end method

.method public final J(LId/n;JLjava/lang/Object;Ljava/lang/Object;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            "B:",
            "Ljava/lang/Object;",
            ">(",
            "LId/n<",
            "TE;TA;TB;>;JTA;TB;)V"
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0, p2, p3}, LId/y;->s(J)Ljava/lang/Object;

    move-result-object v1

    move-object v0, p1

    move-wide v2, p2

    move-object v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, LId/n;->a(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, LId/y;->e:LId/E;

    invoke-interface {p1, p2, p3}, LId/E;->e(J)V

    return-void

    :catchall_0
    move-exception p1

    iget-object p4, p0, LId/y;->e:LId/E;

    invoke-interface {p4, p2, p3}, LId/E;->e(J)V

    throw p1
.end method

.method public final varargs K(LId/o;J[Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            ">(",
            "LId/o<",
            "TE;>;J[",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0, p2, p3}, LId/y;->s(J)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v0, p2, p3, p4}, LId/o;->a(Ljava/lang/Object;J[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, LId/y;->e:LId/E;

    invoke-interface {p1, p2, p3}, LId/E;->e(J)V

    return-void

    :catchall_0
    move-exception p1

    iget-object p4, p0, LId/y;->e:LId/E;

    invoke-interface {p4, p2, p3}, LId/E;->e(J)V

    throw p1
.end method

.method public L(LId/k;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LId/k<",
            "TE;>;)Z"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, LId/y;->e:LId/E;

    invoke-interface {v0}, LId/E;->n()J

    move-result-wide v0

    invoke-virtual {p0, p1, v0, v1}, LId/y;->G(LId/k;J)V
    :try_end_0
    .catch Lcom/lmax/disruptor/InsufficientCapacityException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    const/4 p1, 0x0

    return p1
.end method

.method public M(LId/l;Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            ">(",
            "LId/l<",
            "TE;TA;>;TA;)Z"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, LId/y;->e:LId/E;

    invoke-interface {v0}, LId/E;->n()J

    move-result-wide v0

    invoke-virtual {p0, p1, v0, v1, p2}, LId/y;->H(LId/l;JLjava/lang/Object;)V
    :try_end_0
    .catch Lcom/lmax/disruptor/InsufficientCapacityException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    const/4 p1, 0x0

    return p1
.end method

.method public N(LId/m;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            "B:",
            "Ljava/lang/Object;",
            "C:",
            "Ljava/lang/Object;",
            ">(",
            "LId/m<",
            "TE;TA;TB;TC;>;TA;TB;TC;)Z"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, LId/y;->e:LId/E;

    invoke-interface {v0}, LId/E;->n()J

    move-result-wide v3

    move-object v1, p0

    move-object v2, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    invoke-virtual/range {v1 .. v7}, LId/y;->I(LId/m;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Lcom/lmax/disruptor/InsufficientCapacityException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    const/4 p1, 0x0

    return p1
.end method

.method public O(LId/n;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            "B:",
            "Ljava/lang/Object;",
            ">(",
            "LId/n<",
            "TE;TA;TB;>;TA;TB;)Z"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, LId/y;->e:LId/E;

    invoke-interface {v0}, LId/E;->n()J

    move-result-wide v3

    move-object v1, p0

    move-object v2, p1

    move-object v5, p2

    move-object v6, p3

    invoke-virtual/range {v1 .. v6}, LId/y;->J(LId/n;JLjava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Lcom/lmax/disruptor/InsufficientCapacityException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    const/4 p1, 0x0

    return p1
.end method

.method public varargs P(LId/o;[Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LId/o<",
            "TE;>;[",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, LId/y;->e:LId/E;

    invoke-interface {v0}, LId/E;->n()J

    move-result-wide v0

    invoke-virtual {p0, p1, v0, v1, p2}, LId/y;->K(LId/o;J[Ljava/lang/Object;)V
    :try_end_0
    .catch Lcom/lmax/disruptor/InsufficientCapacityException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    const/4 p1, 0x0

    return p1
.end method

.method public varargs b([LId/z;)LId/A;
    .locals 1

    iget-object v0, p0, LId/y;->e:LId/E;

    invoke-interface {v0, p1}, LId/E;->b([LId/z;)LId/A;

    move-result-object p1

    return-object p1
.end method

.method public c(I)Z
    .locals 1

    iget-object v0, p0, LId/y;->e:LId/E;

    invoke-interface {v0, p1}, LId/E;->c(I)Z

    move-result p1

    return p1
.end method

.method public varargs d([LId/z;)V
    .locals 1

    iget-object v0, p0, LId/y;->e:LId/E;

    invoke-interface {v0, p1}, LId/E;->d([LId/z;)V

    return-void
.end method

.method public e(J)V
    .locals 1

    iget-object v0, p0, LId/y;->e:LId/E;

    invoke-interface {v0, p1, p2}, LId/E;->e(J)V

    return-void
.end method

.method public final getCursor()J
    .locals 2

    iget-object v0, p0, LId/y;->e:LId/E;

    invoke-interface {v0}, LId/f;->getCursor()J

    move-result-wide v0

    return-wide v0
.end method

.method public i()I
    .locals 1

    iget v0, p0, LId/y;->d:I

    return v0
.end method

.method public m(LId/z;)Z
    .locals 1

    iget-object v0, p0, LId/y;->e:LId/E;

    invoke-interface {v0, p1}, LId/E;->m(LId/z;)Z

    move-result p1

    return p1
.end method

.method public n()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lmax/disruptor/InsufficientCapacityException;
        }
    .end annotation

    iget-object v0, p0, LId/y;->e:LId/E;

    invoke-interface {v0}, LId/E;->n()J

    move-result-wide v0

    return-wide v0
.end method

.method public next()J
    .locals 2

    iget-object v0, p0, LId/y;->e:LId/E;

    invoke-interface {v0}, LId/E;->next()J

    move-result-wide v0

    return-wide v0
.end method

.method public o(J)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)TE;"
        }
    .end annotation

    iget-object v0, p0, LId/y;->e:LId/E;

    invoke-interface {v0, p1, p2}, LId/E;->g(J)V

    invoke-virtual {p0, p1, p2}, LId/y;->s(J)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public remainingCapacity()J
    .locals 2

    iget-object v0, p0, LId/y;->e:LId/E;

    invoke-interface {v0}, LId/E;->remainingCapacity()J

    move-result-wide v0

    return-wide v0
.end method

.method public s(J)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)TE;"
        }
    .end annotation

    iget-object v0, p0, LId/y;->c:[Ljava/lang/Object;

    long-to-int p1, p1

    iget p2, p0, LId/y;->b:I

    and-int/2addr p1, p2

    aget-object p1, v0, p1

    return-object p1
.end method

.method public final v(LId/h;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LId/h<",
            "TE;>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, LId/y;->c:[Ljava/lang/Object;

    array-length v2, v1

    if-ge v0, v2, :cond_0

    invoke-interface {p1}, LId/h;->a()Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public w()J
    .locals 2

    iget-object v0, p0, LId/y;->e:LId/E;

    invoke-interface {v0}, LId/E;->j()J

    move-result-wide v0

    return-wide v0
.end method

.method public x(J)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)TE;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0, p1, p2}, LId/y;->s(J)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public y(J)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)TE;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0, p1, p2}, LId/y;->s(J)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public z(J)Z
    .locals 1

    iget-object v0, p0, LId/y;->e:LId/E;

    invoke-interface {v0, p1, p2}, LId/E;->l(J)Z

    move-result p1

    return p1
.end method
