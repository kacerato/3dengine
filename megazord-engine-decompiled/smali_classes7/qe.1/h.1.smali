.class public Lqe/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lwe/f;
.implements Ljava/io/Serializable;


# static fields
.field public static final e:J = -0xe5a57018b0af8beL


# instance fields
.field public final b:Lwe/f;

.field public transient c:LCe/a;

.field public transient d:Lke/h;


# direct methods
.method public constructor <init>(Lwe/f;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lqe/h;->c:LCe/a;

    iput-object v0, p0, Lqe/h;->d:Lke/h;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lqe/h;->b:Lwe/f;

    return-void
.end method

.method public static synthetic a(Lqe/h;)Lwe/f;
    .locals 0

    iget-object p0, p0, Lqe/h;->b:Lwe/f;

    return-object p0
.end method


# virtual methods
.method public A0(B)Z
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public Dd(BJJ)J
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public E(Lze/b0;)Z
    .locals 1

    iget-object v0, p0, Lqe/h;->b:Lwe/f;

    invoke-interface {v0, p1}, Lwe/f;->E(Lze/b0;)Z

    move-result p1

    return p1
.end method

.method public I(B)Z
    .locals 1

    iget-object v0, p0, Lqe/h;->b:Lwe/f;

    invoke-interface {v0, p1}, Lwe/f;->I(B)Z

    move-result p1

    return p1
.end method

.method public Jc(BJ)Z
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public P([B)[B
    .locals 1

    iget-object v0, p0, Lqe/h;->b:Lwe/f;

    invoke-interface {v0, p1}, Lwe/f;->P([B)[B

    move-result-object p1

    return-object p1
.end method

.method public Y([J)[J
    .locals 1

    iget-object v0, p0, Lqe/h;->b:Lwe/f;

    invoke-interface {v0, p1}, Lwe/f;->Y([J)[J

    move-result-object p1

    return-object p1
.end method

.method public a5(BJ)J
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public b3(Lwe/f;)V
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public clear()V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-eq p1, p0, :cond_1

    iget-object v0, p0, Lqe/h;->b:Lwe/f;

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

.method public g0(Lze/h;)Z
    .locals 1

    iget-object v0, p0, Lqe/h;->b:Lwe/f;

    invoke-interface {v0, p1}, Lwe/f;->g0(Lze/h;)Z

    move-result p1

    return p1
.end method

.method public h(Lme/f;)V
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lqe/h;->b:Lwe/f;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public i()J
    .locals 2

    iget-object v0, p0, Lqe/h;->b:Lwe/f;

    invoke-interface {v0}, Lwe/f;->i()J

    move-result-wide v0

    return-wide v0
.end method

.method public i8(Lze/f;)Z
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public isEmpty()Z
    .locals 1

    iget-object v0, p0, Lqe/h;->b:Lwe/f;

    invoke-interface {v0}, Lwe/f;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public iterator()Lre/h;
    .locals 1

    new-instance v0, Lqe/h$a;

    invoke-direct {v0, p0}, Lqe/h$a;-><init>(Lqe/h;)V

    return-object v0
.end method

.method public j()[B
    .locals 1

    iget-object v0, p0, Lqe/h;->b:Lwe/f;

    invoke-interface {v0}, Lwe/f;->j()[B

    move-result-object v0

    return-object v0
.end method

.method public j5(BJ)J
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public k()Lke/h;
    .locals 1

    iget-object v0, p0, Lqe/h;->d:Lke/h;

    if-nez v0, :cond_0

    iget-object v0, p0, Lqe/h;->b:Lwe/f;

    invoke-interface {v0}, Lwe/f;->k()Lke/h;

    move-result-object v0

    invoke-static {v0}, Lke/c;->g1(Lke/h;)Lke/h;

    move-result-object v0

    iput-object v0, p0, Lqe/h;->d:Lke/h;

    :cond_0
    iget-object v0, p0, Lqe/h;->d:Lke/h;

    return-object v0
.end method

.method public keySet()LCe/a;
    .locals 1

    iget-object v0, p0, Lqe/h;->c:LCe/a;

    if-nez v0, :cond_0

    iget-object v0, p0, Lqe/h;->b:Lwe/f;

    invoke-interface {v0}, Lwe/f;->keySet()LCe/a;

    move-result-object v0

    invoke-static {v0}, Lke/c;->A2(LCe/a;)LCe/a;

    move-result-object v0

    iput-object v0, p0, Lqe/h;->c:LCe/a;

    :cond_0
    iget-object v0, p0, Lqe/h;->c:LCe/a;

    return-object v0
.end method

.method public l()B
    .locals 1

    iget-object v0, p0, Lqe/h;->b:Lwe/f;

    invoke-interface {v0}, Lwe/f;->l()B

    move-result v0

    return v0
.end method

.method public m(B)J
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public putAll(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "+",
            "Ljava/lang/Byte;",
            "+",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public q0(B)J
    .locals 2

    iget-object v0, p0, Lqe/h;->b:Lwe/f;

    invoke-interface {v0, p1}, Lwe/f;->q0(B)J

    move-result-wide v0

    return-wide v0
.end method

.method public s6(Lze/f;)Z
    .locals 1

    iget-object v0, p0, Lqe/h;->b:Lwe/f;

    invoke-interface {v0, p1}, Lwe/f;->s6(Lze/f;)Z

    move-result p1

    return p1
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, Lqe/h;->b:Lwe/f;

    invoke-interface {v0}, Lwe/f;->size()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lqe/h;->b:Lwe/f;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public values()[J
    .locals 1

    iget-object v0, p0, Lqe/h;->b:Lwe/f;

    invoke-interface {v0}, Lwe/f;->values()[J

    move-result-object v0

    return-object v0
.end method

.method public w(J)Z
    .locals 1

    iget-object v0, p0, Lqe/h;->b:Lwe/f;

    invoke-interface {v0, p1, p2}, Lwe/f;->w(J)Z

    move-result p1

    return p1
.end method
