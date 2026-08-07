.class public Lqe/o0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lwe/W;
.implements Ljava/io/Serializable;


# static fields
.field public static final e:J = -0xe5a57018b0af8beL


# instance fields
.field public final b:Lwe/W;

.field public transient c:LCe/f;

.field public transient d:Lke/i;


# direct methods
.method public constructor <init>(Lwe/W;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lqe/o0;->c:LCe/f;

    iput-object v0, p0, Lqe/o0;->d:Lke/i;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lqe/o0;->b:Lwe/W;

    return-void
.end method

.method public static synthetic a(Lqe/o0;)Lwe/W;
    .locals 0

    iget-object p0, p0, Lqe/o0;->b:Lwe/W;

    return-object p0
.end method


# virtual methods
.method public D0(J)Z
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public Ea(Lwe/W;)V
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public F(Lze/b0;)Z
    .locals 1

    iget-object v0, p0, Lqe/o0;->b:Lwe/W;

    invoke-interface {v0, p1}, Lwe/W;->F(Lze/b0;)Z

    move-result p1

    return p1
.end method

.method public J(J)Z
    .locals 1

    iget-object v0, p0, Lqe/o0;->b:Lwe/W;

    invoke-interface {v0, p1, p2}, Lwe/W;->J(J)Z

    move-result p1

    return p1
.end method

.method public Kb(JSS)S
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public T9(JS)S
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public Z([J)[J
    .locals 1

    iget-object v0, p0, Lqe/o0;->b:Lwe/W;

    invoke-interface {v0, p1}, Lwe/W;->Z([J)[J

    move-result-object p1

    return-object p1
.end method

.method public b0([S)[S
    .locals 1

    iget-object v0, p0, Lqe/o0;->b:Lwe/W;

    invoke-interface {v0, p1}, Lwe/W;->b0([S)[S

    move-result-object p1

    return-object p1
.end method

.method public ca(Lze/c0;)Z
    .locals 1

    iget-object v0, p0, Lqe/o0;->b:Lwe/W;

    invoke-interface {v0, p1}, Lwe/W;->ca(Lze/c0;)Z

    move-result p1

    return p1
.end method

.method public clear()V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public e(J)S
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-eq p1, p0, :cond_1

    iget-object v0, p0, Lqe/o0;->b:Lwe/W;

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

.method public h0(S)Z
    .locals 1

    iget-object v0, p0, Lqe/o0;->b:Lwe/W;

    invoke-interface {v0, p1}, Lwe/W;->h0(S)Z

    move-result p1

    return p1
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lqe/o0;->b:Lwe/W;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public i()S
    .locals 1

    iget-object v0, p0, Lqe/o0;->b:Lwe/W;

    invoke-interface {v0}, Lwe/W;->i()S

    move-result v0

    return v0
.end method

.method public i6(Lze/c0;)Z
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public isEmpty()Z
    .locals 1

    iget-object v0, p0, Lqe/o0;->b:Lwe/W;

    invoke-interface {v0}, Lwe/W;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public iterator()Lre/e0;
    .locals 1

    new-instance v0, Lqe/o0$a;

    invoke-direct {v0, p0}, Lqe/o0$a;-><init>(Lqe/o0;)V

    return-object v0
.end method

.method public j()[J
    .locals 1

    iget-object v0, p0, Lqe/o0;->b:Lwe/W;

    invoke-interface {v0}, Lwe/W;->j()[J

    move-result-object v0

    return-object v0
.end method

.method public j7(JS)Z
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public k()Lke/i;
    .locals 1

    iget-object v0, p0, Lqe/o0;->d:Lke/i;

    if-nez v0, :cond_0

    iget-object v0, p0, Lqe/o0;->b:Lwe/W;

    invoke-interface {v0}, Lwe/W;->k()Lke/i;

    move-result-object v0

    invoke-static {v0}, Lke/c;->h1(Lke/i;)Lke/i;

    move-result-object v0

    iput-object v0, p0, Lqe/o0;->d:Lke/i;

    :cond_0
    iget-object v0, p0, Lqe/o0;->d:Lke/i;

    return-object v0
.end method

.method public keySet()LCe/f;
    .locals 1

    iget-object v0, p0, Lqe/o0;->c:LCe/f;

    if-nez v0, :cond_0

    iget-object v0, p0, Lqe/o0;->b:Lwe/W;

    invoke-interface {v0}, Lwe/W;->keySet()LCe/f;

    move-result-object v0

    invoke-static {v0}, Lke/c;->F2(LCe/f;)LCe/f;

    move-result-object v0

    iput-object v0, p0, Lqe/o0;->c:LCe/f;

    :cond_0
    iget-object v0, p0, Lqe/o0;->c:LCe/f;

    return-object v0
.end method

.method public l()J
    .locals 2

    iget-object v0, p0, Lqe/o0;->b:Lwe/W;

    invoke-interface {v0}, Lwe/W;->l()J

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
            "Ljava/lang/Long;",
            "+",
            "Ljava/lang/Short;",
            ">;)V"
        }
    .end annotation

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

.method public qa(JS)S
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public s(J)S
    .locals 1

    iget-object v0, p0, Lqe/o0;->b:Lwe/W;

    invoke-interface {v0, p1, p2}, Lwe/W;->s(J)S

    move-result p1

    return p1
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, Lqe/o0;->b:Lwe/W;

    invoke-interface {v0}, Lwe/W;->size()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lqe/o0;->b:Lwe/W;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public values()[S
    .locals 1

    iget-object v0, p0, Lqe/o0;->b:Lwe/W;

    invoke-interface {v0}, Lwe/W;->values()[S

    move-result-object v0

    return-object v0
.end method

.method public z(Lze/t0;)Z
    .locals 1

    iget-object v0, p0, Lqe/o0;->b:Lwe/W;

    invoke-interface {v0, p1}, Lwe/W;->z(Lze/t0;)Z

    move-result p1

    return p1
.end method
