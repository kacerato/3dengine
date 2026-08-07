.class public Lqe/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lwe/m;
.implements Ljava/io/Serializable;


# static fields
.field public static final e:J = -0xe5a57018b0af8beL


# instance fields
.field public final b:Lwe/m;

.field public transient c:LCe/b;

.field public transient d:Lke/g;


# direct methods
.method public constructor <init>(Lwe/m;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lqe/q;->c:LCe/b;

    iput-object v0, p0, Lqe/q;->d:Lke/g;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lqe/q;->b:Lwe/m;

    return-void
.end method

.method public static synthetic a(Lqe/q;)Lwe/m;
    .locals 0

    iget-object p0, p0, Lqe/q;->b:Lwe/m;

    return-object p0
.end method


# virtual methods
.method public A8(Lwe/m;)V
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public H(C)Z
    .locals 1

    iget-object v0, p0, Lqe/q;->b:Lwe/m;

    invoke-interface {v0, p1}, Lwe/m;->H(C)Z

    move-result p1

    return p1
.end method

.method public Jd(Lze/n;)Z
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public Mb(CI)Z
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public N([C)[C
    .locals 1

    iget-object v0, p0, Lqe/q;->b:Lwe/m;

    invoke-interface {v0, p1}, Lwe/m;->N([C)[C

    move-result-object p1

    return-object p1
.end method

.method public Uc(Lze/n;)Z
    .locals 1

    iget-object v0, p0, Lqe/q;->b:Lwe/m;

    invoke-interface {v0, p1}, Lwe/m;->Uc(Lze/n;)Z

    move-result p1

    return p1
.end method

.method public W([I)[I
    .locals 1

    iget-object v0, p0, Lqe/q;->b:Lwe/m;

    invoke-interface {v0, p1}, Lwe/m;->W([I)[I

    move-result-object p1

    return-object p1
.end method

.method public a0(Lze/S;)Z
    .locals 1

    iget-object v0, p0, Lqe/q;->b:Lwe/m;

    invoke-interface {v0, p1}, Lwe/m;->a0(Lze/S;)Z

    move-result p1

    return p1
.end method

.method public b(C)I
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

.method public e6(CI)I
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-eq p1, p0, :cond_1

    iget-object v0, p0, Lqe/q;->b:Lwe/m;

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

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lqe/q;->b:Lwe/m;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public i()I
    .locals 1

    iget-object v0, p0, Lqe/q;->b:Lwe/m;

    invoke-interface {v0}, Lwe/m;->i()I

    move-result v0

    return v0
.end method

.method public i3(CI)I
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public isEmpty()Z
    .locals 1

    iget-object v0, p0, Lqe/q;->b:Lwe/m;

    invoke-interface {v0}, Lwe/m;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public iterator()Lre/o;
    .locals 1

    new-instance v0, Lqe/q$a;

    invoke-direct {v0, p0}, Lqe/q$a;-><init>(Lqe/q;)V

    return-object v0
.end method

.method public j()[C
    .locals 1

    iget-object v0, p0, Lqe/q;->b:Lwe/m;

    invoke-interface {v0}, Lwe/m;->j()[C

    move-result-object v0

    return-object v0
.end method

.method public k()Lke/g;
    .locals 1

    iget-object v0, p0, Lqe/q;->d:Lke/g;

    if-nez v0, :cond_0

    iget-object v0, p0, Lqe/q;->b:Lwe/m;

    invoke-interface {v0}, Lwe/m;->k()Lke/g;

    move-result-object v0

    invoke-static {v0}, Lke/c;->f1(Lke/g;)Lke/g;

    move-result-object v0

    iput-object v0, p0, Lqe/q;->d:Lke/g;

    :cond_0
    iget-object v0, p0, Lqe/q;->d:Lke/g;

    return-object v0
.end method

.method public keySet()LCe/b;
    .locals 1

    iget-object v0, p0, Lqe/q;->c:LCe/b;

    if-nez v0, :cond_0

    iget-object v0, p0, Lqe/q;->b:Lwe/m;

    invoke-interface {v0}, Lwe/m;->keySet()LCe/b;

    move-result-object v0

    invoke-static {v0}, Lke/c;->B2(LCe/b;)LCe/b;

    move-result-object v0

    iput-object v0, p0, Lqe/q;->c:LCe/b;

    :cond_0
    iget-object v0, p0, Lqe/q;->c:LCe/b;

    return-object v0
.end method

.method public l()C
    .locals 1

    iget-object v0, p0, Lqe/q;->b:Lwe/m;

    invoke-interface {v0}, Lwe/m;->l()C

    move-result v0

    return v0
.end method

.method public l0(Lze/q;)Z
    .locals 1

    iget-object v0, p0, Lqe/q;->b:Lwe/m;

    invoke-interface {v0, p1}, Lwe/m;->l0(Lze/q;)Z

    move-result p1

    return p1
.end method

.method public m0(C)I
    .locals 1

    iget-object v0, p0, Lqe/q;->b:Lwe/m;

    invoke-interface {v0, p1}, Lwe/m;->m0(C)I

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
            "Ljava/lang/Character;",
            "+",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, Lqe/q;->b:Lwe/m;

    invoke-interface {v0}, Lwe/m;->size()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lqe/q;->b:Lwe/m;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public v(I)Z
    .locals 1

    iget-object v0, p0, Lqe/q;->b:Lwe/m;

    invoke-interface {v0, p1}, Lwe/m;->v(I)Z

    move-result p1

    return p1
.end method

.method public values()[I
    .locals 1

    iget-object v0, p0, Lqe/q;->b:Lwe/m;

    invoke-interface {v0}, Lwe/m;->values()[I

    move-result-object v0

    return-object v0
.end method

.method public w5(CII)I
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public z0(C)Z
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method
