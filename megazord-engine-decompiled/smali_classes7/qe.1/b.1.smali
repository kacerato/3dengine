.class public Lqe/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lwe/b;
.implements Ljava/io/Serializable;


# static fields
.field public static final e:J = -0xe5a57018b0af8beL


# instance fields
.field public final b:Lwe/b;

.field public transient c:LCe/a;

.field public transient d:Lke/b;


# direct methods
.method public constructor <init>(Lwe/b;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lqe/b;->c:LCe/a;

    iput-object v0, p0, Lqe/b;->d:Lke/b;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lqe/b;->b:Lwe/b;

    return-void
.end method

.method public static synthetic a(Lqe/b;)Lwe/b;
    .locals 0

    iget-object p0, p0, Lqe/b;->b:Lwe/b;

    return-object p0
.end method


# virtual methods
.method public A0(B)Z
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public Bd(Lze/b;)Z
    .locals 1

    iget-object v0, p0, Lqe/b;->b:Lwe/b;

    invoke-interface {v0, p1}, Lwe/b;->Bd(Lze/b;)Z

    move-result p1

    return p1
.end method

.method public Eb(Lze/b;)Z
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public I(B)Z
    .locals 1

    iget-object v0, p0, Lqe/b;->b:Lwe/b;

    invoke-interface {v0, p1}, Lwe/b;->I(B)Z

    move-result p1

    return p1
.end method

.method public Na(Lwe/b;)V
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public P([B)[B
    .locals 1

    iget-object v0, p0, Lqe/b;->b:Lwe/b;

    invoke-interface {v0, p1}, Lwe/b;->P([B)[B

    move-result-object p1

    return-object p1
.end method

.method public Q4(BC)C
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public R([C)[C
    .locals 1

    iget-object v0, p0, Lqe/b;->b:Lwe/b;

    invoke-interface {v0, p1}, Lwe/b;->R([C)[C

    move-result-object p1

    return-object p1
.end method

.method public clear()V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public e0(Lze/q;)Z
    .locals 1

    iget-object v0, p0, Lqe/b;->b:Lwe/b;

    invoke-interface {v0, p1}, Lwe/b;->e0(Lze/q;)Z

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-eq p1, p0, :cond_1

    iget-object v0, p0, Lqe/b;->b:Lwe/b;

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

.method public g0(Lze/h;)Z
    .locals 1

    iget-object v0, p0, Lqe/b;->b:Lwe/b;

    invoke-interface {v0, p1}, Lwe/b;->g0(Lze/h;)Z

    move-result p1

    return p1
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lqe/b;->b:Lwe/b;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public i()C
    .locals 1

    iget-object v0, p0, Lqe/b;->b:Lwe/b;

    invoke-interface {v0}, Lwe/b;->i()C

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    iget-object v0, p0, Lqe/b;->b:Lwe/b;

    invoke-interface {v0}, Lwe/b;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public iterator()Lre/c;
    .locals 1

    new-instance v0, Lqe/b$a;

    invoke-direct {v0, p0}, Lqe/b$a;-><init>(Lqe/b;)V

    return-object v0
.end method

.method public j()[B
    .locals 1

    iget-object v0, p0, Lqe/b;->b:Lwe/b;

    invoke-interface {v0}, Lwe/b;->j()[B

    move-result-object v0

    return-object v0
.end method

.method public k()Lke/b;
    .locals 1

    iget-object v0, p0, Lqe/b;->d:Lke/b;

    if-nez v0, :cond_0

    iget-object v0, p0, Lqe/b;->b:Lwe/b;

    invoke-interface {v0}, Lwe/b;->k()Lke/b;

    move-result-object v0

    invoke-static {v0}, Lke/c;->c1(Lke/b;)Lke/b;

    move-result-object v0

    iput-object v0, p0, Lqe/b;->d:Lke/b;

    :cond_0
    iget-object v0, p0, Lqe/b;->d:Lke/b;

    return-object v0
.end method

.method public keySet()LCe/a;
    .locals 1

    iget-object v0, p0, Lqe/b;->c:LCe/a;

    if-nez v0, :cond_0

    iget-object v0, p0, Lqe/b;->b:Lwe/b;

    invoke-interface {v0}, Lwe/b;->keySet()LCe/a;

    move-result-object v0

    invoke-static {v0}, Lke/c;->A2(LCe/a;)LCe/a;

    move-result-object v0

    iput-object v0, p0, Lqe/b;->c:LCe/a;

    :cond_0
    iget-object v0, p0, Lqe/b;->c:LCe/a;

    return-object v0
.end method

.method public l()B
    .locals 1

    iget-object v0, p0, Lqe/b;->b:Lwe/b;

    invoke-interface {v0}, Lwe/b;->l()B

    move-result v0

    return v0
.end method

.method public m(B)C
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public o6(BCC)C
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
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
            "Ljava/lang/Byte;",
            "+",
            "Ljava/lang/Character;",
            ">;)V"
        }
    .end annotation

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public q0(B)C
    .locals 1

    iget-object v0, p0, Lqe/b;->b:Lwe/b;

    invoke-interface {v0, p1}, Lwe/b;->q0(B)C

    move-result p1

    return p1
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, Lqe/b;->b:Lwe/b;

    invoke-interface {v0}, Lwe/b;->size()I

    move-result v0

    return v0
.end method

.method public t(C)Z
    .locals 1

    iget-object v0, p0, Lqe/b;->b:Lwe/b;

    invoke-interface {v0, p1}, Lwe/b;->t(C)Z

    move-result p1

    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lqe/b;->b:Lwe/b;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public u4(BC)C
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public values()[C
    .locals 1

    iget-object v0, p0, Lqe/b;->b:Lwe/b;

    invoke-interface {v0}, Lwe/b;->values()[C

    move-result-object v0

    return-object v0
.end method

.method public yc(BC)Z
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method
