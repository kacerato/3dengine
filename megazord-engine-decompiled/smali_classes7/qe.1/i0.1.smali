.class public Lqe/i0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lwe/S;
.implements Ljava/io/Serializable;


# static fields
.field public static final e:J = -0xe5a57018b0af8beL


# instance fields
.field public final b:Lwe/S;

.field public transient c:LCe/f;

.field public transient d:Lke/f;


# direct methods
.method public constructor <init>(Lwe/S;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lqe/i0;->c:LCe/f;

    iput-object v0, p0, Lqe/i0;->d:Lke/f;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lqe/i0;->b:Lwe/S;

    return-void
.end method

.method public static synthetic a(Lqe/i0;)Lwe/S;
    .locals 0

    iget-object p0, p0, Lqe/i0;->b:Lwe/S;

    return-object p0
.end method


# virtual methods
.method public D0(J)Z
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public D6(JF)Z
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public F(Lze/b0;)Z
    .locals 1

    iget-object v0, p0, Lqe/i0;->b:Lwe/S;

    invoke-interface {v0, p1}, Lwe/S;->F(Lze/b0;)Z

    move-result p1

    return p1
.end method

.method public J(J)Z
    .locals 1

    iget-object v0, p0, Lqe/i0;->b:Lwe/S;

    invoke-interface {v0, p1, p2}, Lwe/S;->J(J)Z

    move-result p1

    return p1
.end method

.method public N8(Lze/X;)Z
    .locals 1

    iget-object v0, p0, Lqe/i0;->b:Lwe/S;

    invoke-interface {v0, p1}, Lwe/S;->N8(Lze/X;)Z

    move-result p1

    return p1
.end method

.method public U([F)[F
    .locals 1

    iget-object v0, p0, Lqe/i0;->b:Lwe/S;

    invoke-interface {v0, p1}, Lwe/S;->U([F)[F

    move-result-object p1

    return-object p1
.end method

.method public Va(JF)F
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public Y9(JF)F
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public Z([J)[J
    .locals 1

    iget-object v0, p0, Lqe/i0;->b:Lwe/S;

    invoke-interface {v0, p1}, Lwe/S;->Z([J)[J

    move-result-object p1

    return-object p1
.end method

.method public clear()V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public e(J)F
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-eq p1, p0, :cond_1

    iget-object v0, p0, Lqe/i0;->b:Lwe/S;

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

    iget-object v0, p0, Lqe/i0;->b:Lwe/S;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public i()F
    .locals 1

    iget-object v0, p0, Lqe/i0;->b:Lwe/S;

    invoke-interface {v0}, Lwe/S;->i()F

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    iget-object v0, p0, Lqe/i0;->b:Lwe/S;

    invoke-interface {v0}, Lwe/S;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public iterator()Lre/Z;
    .locals 1

    new-instance v0, Lqe/i0$a;

    invoke-direct {v0, p0}, Lqe/i0$a;-><init>(Lqe/i0;)V

    return-object v0
.end method

.method public j()[J
    .locals 1

    iget-object v0, p0, Lqe/i0;->b:Lwe/S;

    invoke-interface {v0}, Lwe/S;->j()[J

    move-result-object v0

    return-object v0
.end method

.method public k()Lke/f;
    .locals 1

    iget-object v0, p0, Lqe/i0;->d:Lke/f;

    if-nez v0, :cond_0

    iget-object v0, p0, Lqe/i0;->b:Lwe/S;

    invoke-interface {v0}, Lwe/S;->k()Lke/f;

    move-result-object v0

    invoke-static {v0}, Lke/c;->e1(Lke/f;)Lke/f;

    move-result-object v0

    iput-object v0, p0, Lqe/i0;->d:Lke/f;

    :cond_0
    iget-object v0, p0, Lqe/i0;->d:Lke/f;

    return-object v0
.end method

.method public keySet()LCe/f;
    .locals 1

    iget-object v0, p0, Lqe/i0;->c:LCe/f;

    if-nez v0, :cond_0

    iget-object v0, p0, Lqe/i0;->b:Lwe/S;

    invoke-interface {v0}, Lwe/S;->keySet()LCe/f;

    move-result-object v0

    invoke-static {v0}, Lke/c;->F2(LCe/f;)LCe/f;

    move-result-object v0

    iput-object v0, p0, Lqe/i0;->c:LCe/f;

    :cond_0
    iget-object v0, p0, Lqe/i0;->c:LCe/f;

    return-object v0
.end method

.method public l()J
    .locals 2

    iget-object v0, p0, Lqe/i0;->b:Lwe/S;

    invoke-interface {v0}, Lwe/S;->l()J

    move-result-wide v0

    return-wide v0
.end method

.method public mb(JFF)F
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public o(Lme/d;)V
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public p0(Lze/I;)Z
    .locals 1

    iget-object v0, p0, Lqe/i0;->b:Lwe/S;

    invoke-interface {v0, p1}, Lwe/S;->p0(Lze/I;)Z

    move-result p1

    return p1
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
            "Ljava/lang/Float;",
            ">;)V"
        }
    .end annotation

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public s(J)F
    .locals 1

    iget-object v0, p0, Lqe/i0;->b:Lwe/S;

    invoke-interface {v0, p1, p2}, Lwe/S;->s(J)F

    move-result p1

    return p1
.end method

.method public s3(Lwe/S;)V
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, Lqe/i0;->b:Lwe/S;

    invoke-interface {v0}, Lwe/S;->size()I

    move-result v0

    return v0
.end method

.method public t6(Lze/X;)Z
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lqe/i0;->b:Lwe/S;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public values()[F
    .locals 1

    iget-object v0, p0, Lqe/i0;->b:Lwe/S;

    invoke-interface {v0}, Lwe/S;->values()[F

    move-result-object v0

    return-object v0
.end method

.method public y(F)Z
    .locals 1

    iget-object v0, p0, Lqe/i0;->b:Lwe/S;

    invoke-interface {v0, p1}, Lwe/S;->y(F)Z

    move-result p1

    return p1
.end method
