.class public Lqe/l0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lwe/U;
.implements Ljava/io/Serializable;


# static fields
.field public static final e:J = -0xe5a57018b0af8beL


# instance fields
.field public final b:Lwe/U;

.field public transient c:LCe/f;

.field public transient d:Lke/h;


# direct methods
.method public constructor <init>(Lwe/U;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lqe/l0;->c:LCe/f;

    iput-object v0, p0, Lqe/l0;->d:Lke/h;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lqe/l0;->b:Lwe/U;

    return-void
.end method

.method public static synthetic a(Lqe/l0;)Lwe/U;
    .locals 0

    iget-object p0, p0, Lqe/l0;->b:Lwe/U;

    return-object p0
.end method


# virtual methods
.method public D0(J)Z
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public E(Lze/b0;)Z
    .locals 1

    iget-object v0, p0, Lqe/l0;->b:Lwe/U;

    invoke-interface {v0, p1}, Lwe/U;->E(Lze/b0;)Z

    move-result p1

    return p1
.end method

.method public F(Lze/b0;)Z
    .locals 1

    iget-object v0, p0, Lqe/l0;->b:Lwe/U;

    invoke-interface {v0, p1}, Lwe/U;->F(Lze/b0;)Z

    move-result p1

    return p1
.end method

.method public I8(JJJ)J
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public J(J)Z
    .locals 1

    iget-object v0, p0, Lqe/l0;->b:Lwe/U;

    invoke-interface {v0, p1, p2}, Lwe/U;->J(J)Z

    move-result p1

    return p1
.end method

.method public M9(Lze/Z;)Z
    .locals 1

    iget-object v0, p0, Lqe/l0;->b:Lwe/U;

    invoke-interface {v0, p1}, Lwe/U;->M9(Lze/Z;)Z

    move-result p1

    return p1
.end method

.method public V6(JJ)Z
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public Y([J)[J
    .locals 1

    iget-object v0, p0, Lqe/l0;->b:Lwe/U;

    invoke-interface {v0, p1}, Lwe/U;->Y([J)[J

    move-result-object p1

    return-object p1
.end method

.method public Y7(Lze/Z;)Z
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public Z([J)[J
    .locals 1

    iget-object v0, p0, Lqe/l0;->b:Lwe/U;

    invoke-interface {v0, p1}, Lwe/U;->Z([J)[J

    move-result-object p1

    return-object p1
.end method

.method public aa(JJ)J
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

.method public e(J)J
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-eq p1, p0, :cond_1

    iget-object v0, p0, Lqe/l0;->b:Lwe/U;

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

.method public ga(JJ)J
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public h(Lme/f;)V
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lqe/l0;->b:Lwe/U;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public i()J
    .locals 2

    iget-object v0, p0, Lqe/l0;->b:Lwe/U;

    invoke-interface {v0}, Lwe/U;->i()J

    move-result-wide v0

    return-wide v0
.end method

.method public isEmpty()Z
    .locals 1

    iget-object v0, p0, Lqe/l0;->b:Lwe/U;

    invoke-interface {v0}, Lwe/U;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public iterator()Lre/c0;
    .locals 1

    new-instance v0, Lqe/l0$a;

    invoke-direct {v0, p0}, Lqe/l0$a;-><init>(Lqe/l0;)V

    return-object v0
.end method

.method public j()[J
    .locals 1

    iget-object v0, p0, Lqe/l0;->b:Lwe/U;

    invoke-interface {v0}, Lwe/U;->j()[J

    move-result-object v0

    return-object v0
.end method

.method public k()Lke/h;
    .locals 1

    iget-object v0, p0, Lqe/l0;->d:Lke/h;

    if-nez v0, :cond_0

    iget-object v0, p0, Lqe/l0;->b:Lwe/U;

    invoke-interface {v0}, Lwe/U;->k()Lke/h;

    move-result-object v0

    invoke-static {v0}, Lke/c;->g1(Lke/h;)Lke/h;

    move-result-object v0

    iput-object v0, p0, Lqe/l0;->d:Lke/h;

    :cond_0
    iget-object v0, p0, Lqe/l0;->d:Lke/h;

    return-object v0
.end method

.method public keySet()LCe/f;
    .locals 1

    iget-object v0, p0, Lqe/l0;->c:LCe/f;

    if-nez v0, :cond_0

    iget-object v0, p0, Lqe/l0;->b:Lwe/U;

    invoke-interface {v0}, Lwe/U;->keySet()LCe/f;

    move-result-object v0

    invoke-static {v0}, Lke/c;->F2(LCe/f;)LCe/f;

    move-result-object v0

    iput-object v0, p0, Lqe/l0;->c:LCe/f;

    :cond_0
    iget-object v0, p0, Lqe/l0;->c:LCe/f;

    return-object v0
.end method

.method public l()J
    .locals 2

    iget-object v0, p0, Lqe/l0;->b:Lwe/U;

    invoke-interface {v0}, Lwe/U;->l()J

    move-result-wide v0

    return-wide v0
.end method

.method public l7(Lwe/U;)V
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
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public s(J)J
    .locals 1

    iget-object v0, p0, Lqe/l0;->b:Lwe/U;

    invoke-interface {v0, p1, p2}, Lwe/U;->s(J)J

    move-result-wide p1

    return-wide p1
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, Lqe/l0;->b:Lwe/U;

    invoke-interface {v0}, Lwe/U;->size()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lqe/l0;->b:Lwe/U;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public values()[J
    .locals 1

    iget-object v0, p0, Lqe/l0;->b:Lwe/U;

    invoke-interface {v0}, Lwe/U;->values()[J

    move-result-object v0

    return-object v0
.end method

.method public w(J)Z
    .locals 1

    iget-object v0, p0, Lqe/l0;->b:Lwe/U;

    invoke-interface {v0, p1, p2}, Lwe/U;->w(J)Z

    move-result p1

    return p1
.end method
