.class public Lqe/h0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lwe/Q;
.implements Ljava/io/Serializable;


# static fields
.field public static final e:J = -0xe5a57018b0af8beL


# instance fields
.field public final b:Lwe/Q;

.field public transient c:LCe/f;

.field public transient d:Lke/e;


# direct methods
.method public constructor <init>(Lwe/Q;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lqe/h0;->c:LCe/f;

    iput-object v0, p0, Lqe/h0;->d:Lke/e;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lqe/h0;->b:Lwe/Q;

    return-void
.end method

.method public static synthetic a(Lqe/h0;)Lwe/Q;
    .locals 0

    iget-object p0, p0, Lqe/h0;->b:Lwe/Q;

    return-object p0
.end method


# virtual methods
.method public C(Lze/z;)Z
    .locals 1

    iget-object v0, p0, Lqe/h0;->b:Lwe/Q;

    invoke-interface {v0, p1}, Lwe/Q;->C(Lze/z;)Z

    move-result p1

    return p1
.end method

.method public Ca(Lwe/Q;)V
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public D0(J)Z
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public F(Lze/b0;)Z
    .locals 1

    iget-object v0, p0, Lqe/h0;->b:Lwe/Q;

    invoke-interface {v0, p1}, Lwe/Q;->F(Lze/b0;)Z

    move-result p1

    return p1
.end method

.method public G6(JD)Z
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public J(J)Z
    .locals 1

    iget-object v0, p0, Lqe/h0;->b:Lwe/Q;

    invoke-interface {v0, p1, p2}, Lwe/Q;->J(J)Z

    move-result p1

    return p1
.end method

.method public K9(Lze/W;)Z
    .locals 1

    iget-object v0, p0, Lqe/h0;->b:Lwe/Q;

    invoke-interface {v0, p1}, Lwe/Q;->K9(Lze/W;)Z

    move-result p1

    return p1
.end method

.method public L3(Lze/W;)Z
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public S9(JDD)D
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public T([D)[D
    .locals 1

    iget-object v0, p0, Lqe/h0;->b:Lwe/Q;

    invoke-interface {v0, p1}, Lwe/Q;->T([D)[D

    move-result-object p1

    return-object p1
.end method

.method public X9(JD)D
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public Z([J)[J
    .locals 1

    iget-object v0, p0, Lqe/h0;->b:Lwe/Q;

    invoke-interface {v0, p1}, Lwe/Q;->Z([J)[J

    move-result-object p1

    return-object p1
.end method

.method public clear()V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public e(J)D
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-eq p1, p0, :cond_1

    iget-object v0, p0, Lqe/h0;->b:Lwe/Q;

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

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lqe/h0;->b:Lwe/Q;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public hb(JD)D
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public i()D
    .locals 2

    iget-object v0, p0, Lqe/h0;->b:Lwe/Q;

    invoke-interface {v0}, Lwe/Q;->i()D

    move-result-wide v0

    return-wide v0
.end method

.method public isEmpty()Z
    .locals 1

    iget-object v0, p0, Lqe/h0;->b:Lwe/Q;

    invoke-interface {v0}, Lwe/Q;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public iterator()Lre/Y;
    .locals 1

    new-instance v0, Lqe/h0$a;

    invoke-direct {v0, p0}, Lqe/h0$a;-><init>(Lqe/h0;)V

    return-object v0
.end method

.method public j()[J
    .locals 1

    iget-object v0, p0, Lqe/h0;->b:Lwe/Q;

    invoke-interface {v0}, Lwe/Q;->j()[J

    move-result-object v0

    return-object v0
.end method

.method public k()Lke/e;
    .locals 1

    iget-object v0, p0, Lqe/h0;->d:Lke/e;

    if-nez v0, :cond_0

    iget-object v0, p0, Lqe/h0;->b:Lwe/Q;

    invoke-interface {v0}, Lwe/Q;->k()Lke/e;

    move-result-object v0

    invoke-static {v0}, Lke/c;->d1(Lke/e;)Lke/e;

    move-result-object v0

    iput-object v0, p0, Lqe/h0;->d:Lke/e;

    :cond_0
    iget-object v0, p0, Lqe/h0;->d:Lke/e;

    return-object v0
.end method

.method public keySet()LCe/f;
    .locals 1

    iget-object v0, p0, Lqe/h0;->c:LCe/f;

    if-nez v0, :cond_0

    iget-object v0, p0, Lqe/h0;->b:Lwe/Q;

    invoke-interface {v0}, Lwe/Q;->keySet()LCe/f;

    move-result-object v0

    invoke-static {v0}, Lke/c;->F2(LCe/f;)LCe/f;

    move-result-object v0

    iput-object v0, p0, Lqe/h0;->c:LCe/f;

    :cond_0
    iget-object v0, p0, Lqe/h0;->c:LCe/f;

    return-object v0
.end method

.method public l()J
    .locals 2

    iget-object v0, p0, Lqe/h0;->b:Lwe/Q;

    invoke-interface {v0}, Lwe/Q;->l()J

    move-result-wide v0

    return-wide v0
.end method

.method public n(Lme/c;)V
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
            "Ljava/lang/Long;",
            "+",
            "Ljava/lang/Double;",
            ">;)V"
        }
    .end annotation

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public s(J)D
    .locals 1

    iget-object v0, p0, Lqe/h0;->b:Lwe/Q;

    invoke-interface {v0, p1, p2}, Lwe/Q;->s(J)D

    move-result-wide p1

    return-wide p1
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, Lqe/h0;->b:Lwe/Q;

    invoke-interface {v0}, Lwe/Q;->size()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lqe/h0;->b:Lwe/Q;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public values()[D
    .locals 1

    iget-object v0, p0, Lqe/h0;->b:Lwe/Q;

    invoke-interface {v0}, Lwe/Q;->values()[D

    move-result-object v0

    return-object v0
.end method

.method public x(D)Z
    .locals 1

    iget-object v0, p0, Lqe/h0;->b:Lwe/Q;

    invoke-interface {v0, p1, p2}, Lwe/Q;->x(D)Z

    move-result p1

    return p1
.end method
