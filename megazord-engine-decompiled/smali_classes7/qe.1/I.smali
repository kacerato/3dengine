.class public Lqe/I;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lwe/z;
.implements Ljava/io/Serializable;


# static fields
.field public static final e:J = -0xe5a57018b0af8beL


# instance fields
.field public final b:Lwe/z;

.field public transient c:LCe/d;

.field public transient d:Lke/b;


# direct methods
.method public constructor <init>(Lwe/z;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lqe/I;->c:LCe/d;

    iput-object v0, p0, Lqe/I;->d:Lke/b;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lqe/I;->b:Lwe/z;

    return-void
.end method

.method public static synthetic a(Lqe/I;)Lwe/z;
    .locals 0

    iget-object p0, p0, Lqe/I;->b:Lwe/z;

    return-object p0
.end method


# virtual methods
.method public B8(Lze/C;)Z
    .locals 1

    iget-object v0, p0, Lqe/I;->b:Lwe/z;

    invoke-interface {v0, p1}, Lwe/z;->B8(Lze/C;)Z

    move-result p1

    return p1
.end method

.method public C0(F)Z
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public H3(FC)Z
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public L(F)Z
    .locals 1

    iget-object v0, p0, Lqe/I;->b:Lwe/z;

    invoke-interface {v0, p1}, Lwe/z;->L(F)Z

    move-result p1

    return p1
.end method

.method public P7(FC)C
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public R([C)[C
    .locals 1

    iget-object v0, p0, Lqe/I;->b:Lwe/z;

    invoke-interface {v0, p1}, Lwe/z;->R([C)[C

    move-result-object p1

    return-object p1
.end method

.method public T2(FCC)C
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public V([F)[F
    .locals 1

    iget-object v0, p0, Lqe/I;->b:Lwe/z;

    invoke-interface {v0, p1}, Lwe/z;->V([F)[F

    move-result-object p1

    return-object p1
.end method

.method public ad(FC)C
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public c(F)C
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

    iget-object v0, p0, Lqe/I;->b:Lwe/z;

    invoke-interface {v0, p1}, Lwe/z;->d0(Lze/I;)Z

    move-result p1

    return p1
.end method

.method public e0(Lze/q;)Z
    .locals 1

    iget-object v0, p0, Lqe/I;->b:Lwe/z;

    invoke-interface {v0, p1}, Lwe/z;->e0(Lze/q;)Z

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-eq p1, p0, :cond_1

    iget-object v0, p0, Lqe/I;->b:Lwe/z;

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

    iget-object v0, p0, Lqe/I;->b:Lwe/z;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public i()C
    .locals 1

    iget-object v0, p0, Lqe/I;->b:Lwe/z;

    invoke-interface {v0}, Lwe/z;->i()C

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    iget-object v0, p0, Lqe/I;->b:Lwe/z;

    invoke-interface {v0}, Lwe/z;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public iterator()Lre/D;
    .locals 1

    new-instance v0, Lqe/I$a;

    invoke-direct {v0, p0}, Lqe/I$a;-><init>(Lqe/I;)V

    return-object v0
.end method

.method public j()[F
    .locals 1

    iget-object v0, p0, Lqe/I;->b:Lwe/z;

    invoke-interface {v0}, Lwe/z;->j()[F

    move-result-object v0

    return-object v0
.end method

.method public k()Lke/b;
    .locals 1

    iget-object v0, p0, Lqe/I;->d:Lke/b;

    if-nez v0, :cond_0

    iget-object v0, p0, Lqe/I;->b:Lwe/z;

    invoke-interface {v0}, Lwe/z;->k()Lke/b;

    move-result-object v0

    invoke-static {v0}, Lke/c;->c1(Lke/b;)Lke/b;

    move-result-object v0

    iput-object v0, p0, Lqe/I;->d:Lke/b;

    :cond_0
    iget-object v0, p0, Lqe/I;->d:Lke/b;

    return-object v0
.end method

.method public keySet()LCe/d;
    .locals 1

    iget-object v0, p0, Lqe/I;->c:LCe/d;

    if-nez v0, :cond_0

    iget-object v0, p0, Lqe/I;->b:Lwe/z;

    invoke-interface {v0}, Lwe/z;->keySet()LCe/d;

    move-result-object v0

    invoke-static {v0}, Lke/c;->D2(LCe/d;)LCe/d;

    move-result-object v0

    iput-object v0, p0, Lqe/I;->c:LCe/d;

    :cond_0
    iget-object v0, p0, Lqe/I;->c:LCe/d;

    return-object v0
.end method

.method public l()F
    .locals 1

    iget-object v0, p0, Lqe/I;->b:Lwe/z;

    invoke-interface {v0}, Lwe/z;->l()F

    move-result v0

    return v0
.end method

.method public o0(F)C
    .locals 1

    iget-object v0, p0, Lqe/I;->b:Lwe/z;

    invoke-interface {v0, p1}, Lwe/z;->o0(F)C

    move-result p1

    return p1
.end method

.method public p(Lme/b;)V
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
            "Ljava/lang/Float;",
            "+",
            "Ljava/lang/Character;",
            ">;)V"
        }
    .end annotation

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public q8(Lze/C;)Z
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, Lqe/I;->b:Lwe/z;

    invoke-interface {v0}, Lwe/z;->size()I

    move-result v0

    return v0
.end method

.method public t(C)Z
    .locals 1

    iget-object v0, p0, Lqe/I;->b:Lwe/z;

    invoke-interface {v0, p1}, Lwe/z;->t(C)Z

    move-result p1

    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lqe/I;->b:Lwe/z;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public values()[C
    .locals 1

    iget-object v0, p0, Lqe/I;->b:Lwe/z;

    invoke-interface {v0}, Lwe/z;->values()[C

    move-result-object v0

    return-object v0
.end method

.method public z5(Lwe/z;)V
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method
