.class public Lqe/M;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lwe/C;
.implements Ljava/io/Serializable;


# static fields
.field public static final e:J = -0xe5a57018b0af8beL


# instance fields
.field public final b:Lwe/C;

.field public transient c:LCe/d;

.field public transient d:Lke/g;


# direct methods
.method public constructor <init>(Lwe/C;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lqe/M;->c:LCe/d;

    iput-object v0, p0, Lqe/M;->d:Lke/g;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lqe/M;->b:Lwe/C;

    return-void
.end method

.method public static synthetic a(Lqe/M;)Lwe/C;
    .locals 0

    iget-object p0, p0, Lqe/M;->b:Lwe/C;

    return-object p0
.end method


# virtual methods
.method public C0(F)Z
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public Gd(Lwe/C;)V
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public L(F)Z
    .locals 1

    iget-object v0, p0, Lqe/M;->b:Lwe/C;

    invoke-interface {v0, p1}, Lwe/C;->L(F)Z

    move-result p1

    return p1
.end method

.method public V([F)[F
    .locals 1

    iget-object v0, p0, Lqe/M;->b:Lwe/C;

    invoke-interface {v0, p1}, Lwe/C;->V([F)[F

    move-result-object p1

    return-object p1
.end method

.method public W([I)[I
    .locals 1

    iget-object v0, p0, Lqe/M;->b:Lwe/C;

    invoke-interface {v0, p1}, Lwe/C;->W([I)[I

    move-result-object p1

    return-object p1
.end method

.method public W7(FI)I
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public Xc(FI)I
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public a0(Lze/S;)Z
    .locals 1

    iget-object v0, p0, Lqe/M;->b:Lwe/C;

    invoke-interface {v0, p1}, Lwe/C;->a0(Lze/S;)Z

    move-result p1

    return p1
.end method

.method public c(F)I
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

    iget-object v0, p0, Lqe/M;->b:Lwe/C;

    invoke-interface {v0, p1}, Lwe/C;->d0(Lze/I;)Z

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-eq p1, p0, :cond_1

    iget-object v0, p0, Lqe/M;->b:Lwe/C;

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

.method public f(Lme/e;)V
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public gc(Lze/F;)Z
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lqe/M;->b:Lwe/C;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public i()I
    .locals 1

    iget-object v0, p0, Lqe/M;->b:Lwe/C;

    invoke-interface {v0}, Lwe/C;->i()I

    move-result v0

    return v0
.end method

.method public ia(FII)I
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public isEmpty()Z
    .locals 1

    iget-object v0, p0, Lqe/M;->b:Lwe/C;

    invoke-interface {v0}, Lwe/C;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public iterator()Lre/G;
    .locals 1

    new-instance v0, Lqe/M$a;

    invoke-direct {v0, p0}, Lqe/M$a;-><init>(Lqe/M;)V

    return-object v0
.end method

.method public j()[F
    .locals 1

    iget-object v0, p0, Lqe/M;->b:Lwe/C;

    invoke-interface {v0}, Lwe/C;->j()[F

    move-result-object v0

    return-object v0
.end method

.method public k()Lke/g;
    .locals 1

    iget-object v0, p0, Lqe/M;->d:Lke/g;

    if-nez v0, :cond_0

    iget-object v0, p0, Lqe/M;->b:Lwe/C;

    invoke-interface {v0}, Lwe/C;->k()Lke/g;

    move-result-object v0

    invoke-static {v0}, Lke/c;->f1(Lke/g;)Lke/g;

    move-result-object v0

    iput-object v0, p0, Lqe/M;->d:Lke/g;

    :cond_0
    iget-object v0, p0, Lqe/M;->d:Lke/g;

    return-object v0
.end method

.method public keySet()LCe/d;
    .locals 1

    iget-object v0, p0, Lqe/M;->c:LCe/d;

    if-nez v0, :cond_0

    iget-object v0, p0, Lqe/M;->b:Lwe/C;

    invoke-interface {v0}, Lwe/C;->keySet()LCe/d;

    move-result-object v0

    invoke-static {v0}, Lke/c;->D2(LCe/d;)LCe/d;

    move-result-object v0

    iput-object v0, p0, Lqe/M;->c:LCe/d;

    :cond_0
    iget-object v0, p0, Lqe/M;->c:LCe/d;

    return-object v0
.end method

.method public l()F
    .locals 1

    iget-object v0, p0, Lqe/M;->b:Lwe/C;

    invoke-interface {v0}, Lwe/C;->l()F

    move-result v0

    return v0
.end method

.method public o0(F)I
    .locals 1

    iget-object v0, p0, Lqe/M;->b:Lwe/C;

    invoke-interface {v0, p1}, Lwe/C;->o0(F)I

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
            "Ljava/lang/Float;",
            "+",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public sa(Lze/F;)Z
    .locals 1

    iget-object v0, p0, Lqe/M;->b:Lwe/C;

    invoke-interface {v0, p1}, Lwe/C;->sa(Lze/F;)Z

    move-result p1

    return p1
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, Lqe/M;->b:Lwe/C;

    invoke-interface {v0}, Lwe/C;->size()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lqe/M;->b:Lwe/C;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public v(I)Z
    .locals 1

    iget-object v0, p0, Lqe/M;->b:Lwe/C;

    invoke-interface {v0, p1}, Lwe/C;->v(I)Z

    move-result p1

    return p1
.end method

.method public v3(FI)Z
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public values()[I
    .locals 1

    iget-object v0, p0, Lqe/M;->b:Lwe/C;

    invoke-interface {v0}, Lwe/C;->values()[I

    move-result-object v0

    return-object v0
.end method
