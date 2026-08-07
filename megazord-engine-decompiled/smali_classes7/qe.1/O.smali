.class public Lqe/O;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lwe/D;
.implements Ljava/io/Serializable;


# static fields
.field public static final e:J = -0xe5a57018b0af8beL


# instance fields
.field public final b:Lwe/D;

.field public transient c:LCe/d;

.field public transient d:Lke/h;


# direct methods
.method public constructor <init>(Lwe/D;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lqe/O;->c:LCe/d;

    iput-object v0, p0, Lqe/O;->d:Lke/h;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lqe/O;->b:Lwe/D;

    return-void
.end method

.method public static synthetic a(Lqe/O;)Lwe/D;
    .locals 0

    iget-object p0, p0, Lqe/O;->b:Lwe/D;

    return-object p0
.end method


# virtual methods
.method public B6(Lwe/D;)V
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public C0(F)Z
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public E(Lze/b0;)Z
    .locals 1

    iget-object v0, p0, Lqe/O;->b:Lwe/D;

    invoke-interface {v0, p1}, Lwe/D;->E(Lze/b0;)Z

    move-result p1

    return p1
.end method

.method public L(F)Z
    .locals 1

    iget-object v0, p0, Lqe/O;->b:Lwe/D;

    invoke-interface {v0, p1}, Lwe/D;->L(F)Z

    move-result p1

    return p1
.end method

.method public Nc(FJ)J
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public R3(Lze/G;)Z
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public S3(FJ)Z
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public Sa(FJJ)J
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public V([F)[F
    .locals 1

    iget-object v0, p0, Lqe/O;->b:Lwe/D;

    invoke-interface {v0, p1}, Lwe/D;->V([F)[F

    move-result-object p1

    return-object p1
.end method

.method public X7(FJ)J
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public Y([J)[J
    .locals 1

    iget-object v0, p0, Lqe/O;->b:Lwe/D;

    invoke-interface {v0, p1}, Lwe/D;->Y([J)[J

    move-result-object p1

    return-object p1
.end method

.method public c(F)J
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

.method public d0(Lze/I;)Z
    .locals 1

    iget-object v0, p0, Lqe/O;->b:Lwe/D;

    invoke-interface {v0, p1}, Lwe/D;->d0(Lze/I;)Z

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-eq p1, p0, :cond_1

    iget-object v0, p0, Lqe/O;->b:Lwe/D;

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

.method public h(Lme/f;)V
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lqe/O;->b:Lwe/D;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public i()J
    .locals 2

    iget-object v0, p0, Lqe/O;->b:Lwe/D;

    invoke-interface {v0}, Lwe/D;->i()J

    move-result-wide v0

    return-wide v0
.end method

.method public isEmpty()Z
    .locals 1

    iget-object v0, p0, Lqe/O;->b:Lwe/D;

    invoke-interface {v0}, Lwe/D;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public iterator()Lre/I;
    .locals 1

    new-instance v0, Lqe/O$a;

    invoke-direct {v0, p0}, Lqe/O$a;-><init>(Lqe/O;)V

    return-object v0
.end method

.method public j()[F
    .locals 1

    iget-object v0, p0, Lqe/O;->b:Lwe/D;

    invoke-interface {v0}, Lwe/D;->j()[F

    move-result-object v0

    return-object v0
.end method

.method public k()Lke/h;
    .locals 1

    iget-object v0, p0, Lqe/O;->d:Lke/h;

    if-nez v0, :cond_0

    iget-object v0, p0, Lqe/O;->b:Lwe/D;

    invoke-interface {v0}, Lwe/D;->k()Lke/h;

    move-result-object v0

    invoke-static {v0}, Lke/c;->g1(Lke/h;)Lke/h;

    move-result-object v0

    iput-object v0, p0, Lqe/O;->d:Lke/h;

    :cond_0
    iget-object v0, p0, Lqe/O;->d:Lke/h;

    return-object v0
.end method

.method public keySet()LCe/d;
    .locals 1

    iget-object v0, p0, Lqe/O;->c:LCe/d;

    if-nez v0, :cond_0

    iget-object v0, p0, Lqe/O;->b:Lwe/D;

    invoke-interface {v0}, Lwe/D;->keySet()LCe/d;

    move-result-object v0

    invoke-static {v0}, Lke/c;->D2(LCe/d;)LCe/d;

    move-result-object v0

    iput-object v0, p0, Lqe/O;->c:LCe/d;

    :cond_0
    iget-object v0, p0, Lqe/O;->c:LCe/d;

    return-object v0
.end method

.method public l()F
    .locals 1

    iget-object v0, p0, Lqe/O;->b:Lwe/D;

    invoke-interface {v0}, Lwe/D;->l()F

    move-result v0

    return v0
.end method

.method public o0(F)J
    .locals 2

    iget-object v0, p0, Lqe/O;->b:Lwe/D;

    invoke-interface {v0, p1}, Lwe/D;->o0(F)J

    move-result-wide v0

    return-wide v0
.end method

.method public putAll(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "+",
            "Ljava/lang/Float;",
            "+",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public sc(Lze/G;)Z
    .locals 1

    iget-object v0, p0, Lqe/O;->b:Lwe/D;

    invoke-interface {v0, p1}, Lwe/D;->sc(Lze/G;)Z

    move-result p1

    return p1
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, Lqe/O;->b:Lwe/D;

    invoke-interface {v0}, Lwe/D;->size()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lqe/O;->b:Lwe/D;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public values()[J
    .locals 1

    iget-object v0, p0, Lqe/O;->b:Lwe/D;

    invoke-interface {v0}, Lwe/D;->values()[J

    move-result-object v0

    return-object v0
.end method

.method public w(J)Z
    .locals 1

    iget-object v0, p0, Lqe/O;->b:Lwe/D;

    invoke-interface {v0, p1, p2}, Lwe/D;->w(J)Z

    move-result p1

    return p1
.end method
