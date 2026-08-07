.class public Lqe/s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lwe/n;
.implements Ljava/io/Serializable;


# static fields
.field public static final e:J = -0xe5a57018b0af8beL


# instance fields
.field public final b:Lwe/n;

.field public transient c:LCe/b;

.field public transient d:Lke/h;


# direct methods
.method public constructor <init>(Lwe/n;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lqe/s;->c:LCe/b;

    iput-object v0, p0, Lqe/s;->d:Lke/h;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lqe/s;->b:Lwe/n;

    return-void
.end method

.method public static synthetic a(Lqe/s;)Lwe/n;
    .locals 0

    iget-object p0, p0, Lqe/s;->b:Lwe/n;

    return-object p0
.end method


# virtual methods
.method public E(Lze/b0;)Z
    .locals 1

    iget-object v0, p0, Lqe/s;->b:Lwe/n;

    invoke-interface {v0, p1}, Lwe/n;->E(Lze/b0;)Z

    move-result p1

    return p1
.end method

.method public Ed(Lze/o;)Z
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public H(C)Z
    .locals 1

    iget-object v0, p0, Lqe/s;->b:Lwe/n;

    invoke-interface {v0, p1}, Lwe/n;->H(C)Z

    move-result p1

    return p1
.end method

.method public I2(Lze/o;)Z
    .locals 1

    iget-object v0, p0, Lqe/s;->b:Lwe/n;

    invoke-interface {v0, p1}, Lwe/n;->I2(Lze/o;)Z

    move-result p1

    return p1
.end method

.method public Jb(CJ)Z
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public N([C)[C
    .locals 1

    iget-object v0, p0, Lqe/s;->b:Lwe/n;

    invoke-interface {v0, p1}, Lwe/n;->N([C)[C

    move-result-object p1

    return-object p1
.end method

.method public Y([J)[J
    .locals 1

    iget-object v0, p0, Lqe/s;->b:Lwe/n;

    invoke-interface {v0, p1}, Lwe/n;->Y([J)[J

    move-result-object p1

    return-object p1
.end method

.method public b(C)J
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

    iget-object v0, p0, Lqe/s;->b:Lwe/n;

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

.method public f6(CJ)J
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

    iget-object v0, p0, Lqe/s;->b:Lwe/n;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public i()J
    .locals 2

    iget-object v0, p0, Lqe/s;->b:Lwe/n;

    invoke-interface {v0}, Lwe/n;->i()J

    move-result-wide v0

    return-wide v0
.end method

.method public isEmpty()Z
    .locals 1

    iget-object v0, p0, Lqe/s;->b:Lwe/n;

    invoke-interface {v0}, Lwe/n;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public iterator()Lre/q;
    .locals 1

    new-instance v0, Lqe/s$a;

    invoke-direct {v0, p0}, Lqe/s$a;-><init>(Lqe/s;)V

    return-object v0
.end method

.method public j()[C
    .locals 1

    iget-object v0, p0, Lqe/s;->b:Lwe/n;

    invoke-interface {v0}, Lwe/n;->j()[C

    move-result-object v0

    return-object v0
.end method

.method public j3(CJ)J
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public k()Lke/h;
    .locals 1

    iget-object v0, p0, Lqe/s;->d:Lke/h;

    if-nez v0, :cond_0

    iget-object v0, p0, Lqe/s;->b:Lwe/n;

    invoke-interface {v0}, Lwe/n;->k()Lke/h;

    move-result-object v0

    invoke-static {v0}, Lke/c;->g1(Lke/h;)Lke/h;

    move-result-object v0

    iput-object v0, p0, Lqe/s;->d:Lke/h;

    :cond_0
    iget-object v0, p0, Lqe/s;->d:Lke/h;

    return-object v0
.end method

.method public k3(Lwe/n;)V
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public keySet()LCe/b;
    .locals 1

    iget-object v0, p0, Lqe/s;->c:LCe/b;

    if-nez v0, :cond_0

    iget-object v0, p0, Lqe/s;->b:Lwe/n;

    invoke-interface {v0}, Lwe/n;->keySet()LCe/b;

    move-result-object v0

    invoke-static {v0}, Lke/c;->B2(LCe/b;)LCe/b;

    move-result-object v0

    iput-object v0, p0, Lqe/s;->c:LCe/b;

    :cond_0
    iget-object v0, p0, Lqe/s;->c:LCe/b;

    return-object v0
.end method

.method public l()C
    .locals 1

    iget-object v0, p0, Lqe/s;->b:Lwe/n;

    invoke-interface {v0}, Lwe/n;->l()C

    move-result v0

    return v0
.end method

.method public l0(Lze/q;)Z
    .locals 1

    iget-object v0, p0, Lqe/s;->b:Lwe/n;

    invoke-interface {v0, p1}, Lwe/n;->l0(Lze/q;)Z

    move-result p1

    return p1
.end method

.method public m0(C)J
    .locals 2

    iget-object v0, p0, Lqe/s;->b:Lwe/n;

    invoke-interface {v0, p1}, Lwe/n;->m0(C)J

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
            "Ljava/lang/Character;",
            "+",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, Lqe/s;->b:Lwe/n;

    invoke-interface {v0}, Lwe/n;->size()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lqe/s;->b:Lwe/n;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public values()[J
    .locals 1

    iget-object v0, p0, Lqe/s;->b:Lwe/n;

    invoke-interface {v0}, Lwe/n;->values()[J

    move-result-object v0

    return-object v0
.end method

.method public w(J)Z
    .locals 1

    iget-object v0, p0, Lqe/s;->b:Lwe/n;

    invoke-interface {v0, p1, p2}, Lwe/n;->w(J)Z

    move-result p1

    return p1
.end method

.method public z0(C)Z
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public z2(CJJ)J
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method
