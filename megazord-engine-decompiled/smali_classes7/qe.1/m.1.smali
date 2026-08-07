.class public Lqe/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lwe/j;
.implements Ljava/io/Serializable;


# static fields
.field public static final e:J = -0xe5a57018b0af8beL


# instance fields
.field public final b:Lwe/j;

.field public transient c:LCe/b;

.field public transient d:Lke/b;


# direct methods
.method public constructor <init>(Lwe/j;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lqe/m;->c:LCe/b;

    iput-object v0, p0, Lqe/m;->d:Lke/b;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lqe/m;->b:Lwe/j;

    return-void
.end method

.method public static synthetic a(Lqe/m;)Lwe/j;
    .locals 0

    iget-object p0, p0, Lqe/m;->b:Lwe/j;

    return-object p0
.end method


# virtual methods
.method public B3(CC)C
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public Bb(CC)Z
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public F9(CCC)C
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public H(C)Z
    .locals 1

    iget-object v0, p0, Lqe/m;->b:Lwe/j;

    invoke-interface {v0, p1}, Lwe/j;->H(C)Z

    move-result p1

    return p1
.end method

.method public J2(Lze/k;)Z
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public N([C)[C
    .locals 1

    iget-object v0, p0, Lqe/m;->b:Lwe/j;

    invoke-interface {v0, p1}, Lwe/j;->N([C)[C

    move-result-object p1

    return-object p1
.end method

.method public R([C)[C
    .locals 1

    iget-object v0, p0, Lqe/m;->b:Lwe/j;

    invoke-interface {v0, p1}, Lwe/j;->R([C)[C

    move-result-object p1

    return-object p1
.end method

.method public T5(CC)C
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public b(C)C
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

.method public e0(Lze/q;)Z
    .locals 1

    iget-object v0, p0, Lqe/m;->b:Lwe/j;

    invoke-interface {v0, p1}, Lwe/j;->e0(Lze/q;)Z

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-eq p1, p0, :cond_1

    iget-object v0, p0, Lqe/m;->b:Lwe/j;

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

.method public h8(Lze/k;)Z
    .locals 1

    iget-object v0, p0, Lqe/m;->b:Lwe/j;

    invoke-interface {v0, p1}, Lwe/j;->h8(Lze/k;)Z

    move-result p1

    return p1
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lqe/m;->b:Lwe/j;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public i()C
    .locals 1

    iget-object v0, p0, Lqe/m;->b:Lwe/j;

    invoke-interface {v0}, Lwe/j;->i()C

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    iget-object v0, p0, Lqe/m;->b:Lwe/j;

    invoke-interface {v0}, Lwe/j;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public iterator()Lre/l;
    .locals 1

    new-instance v0, Lqe/m$a;

    invoke-direct {v0, p0}, Lqe/m$a;-><init>(Lqe/m;)V

    return-object v0
.end method

.method public j()[C
    .locals 1

    iget-object v0, p0, Lqe/m;->b:Lwe/j;

    invoke-interface {v0}, Lwe/j;->j()[C

    move-result-object v0

    return-object v0
.end method

.method public k()Lke/b;
    .locals 1

    iget-object v0, p0, Lqe/m;->d:Lke/b;

    if-nez v0, :cond_0

    iget-object v0, p0, Lqe/m;->b:Lwe/j;

    invoke-interface {v0}, Lwe/j;->k()Lke/b;

    move-result-object v0

    invoke-static {v0}, Lke/c;->c1(Lke/b;)Lke/b;

    move-result-object v0

    iput-object v0, p0, Lqe/m;->d:Lke/b;

    :cond_0
    iget-object v0, p0, Lqe/m;->d:Lke/b;

    return-object v0
.end method

.method public keySet()LCe/b;
    .locals 1

    iget-object v0, p0, Lqe/m;->c:LCe/b;

    if-nez v0, :cond_0

    iget-object v0, p0, Lqe/m;->b:Lwe/j;

    invoke-interface {v0}, Lwe/j;->keySet()LCe/b;

    move-result-object v0

    invoke-static {v0}, Lke/c;->B2(LCe/b;)LCe/b;

    move-result-object v0

    iput-object v0, p0, Lqe/m;->c:LCe/b;

    :cond_0
    iget-object v0, p0, Lqe/m;->c:LCe/b;

    return-object v0
.end method

.method public l()C
    .locals 1

    iget-object v0, p0, Lqe/m;->b:Lwe/j;

    invoke-interface {v0}, Lwe/j;->l()C

    move-result v0

    return v0
.end method

.method public l0(Lze/q;)Z
    .locals 1

    iget-object v0, p0, Lqe/m;->b:Lwe/j;

    invoke-interface {v0, p1}, Lwe/j;->l0(Lze/q;)Z

    move-result p1

    return p1
.end method

.method public m0(C)C
    .locals 1

    iget-object v0, p0, Lqe/m;->b:Lwe/j;

    invoke-interface {v0, p1}, Lwe/j;->m0(C)C

    move-result p1

    return p1
.end method

.method public p(Lme/b;)V
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public pc(Lwe/j;)V
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
            "Ljava/lang/Character;",
            "+",
            "Ljava/lang/Character;",
            ">;)V"
        }
    .end annotation

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, Lqe/m;->b:Lwe/j;

    invoke-interface {v0}, Lwe/j;->size()I

    move-result v0

    return v0
.end method

.method public t(C)Z
    .locals 1

    iget-object v0, p0, Lqe/m;->b:Lwe/j;

    invoke-interface {v0, p1}, Lwe/j;->t(C)Z

    move-result p1

    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lqe/m;->b:Lwe/j;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public values()[C
    .locals 1

    iget-object v0, p0, Lqe/m;->b:Lwe/j;

    invoke-interface {v0}, Lwe/j;->values()[C

    move-result-object v0

    return-object v0
.end method

.method public z0(C)Z
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method
