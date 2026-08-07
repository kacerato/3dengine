.class public Lqe/f0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lwe/P;
.implements Ljava/io/Serializable;


# static fields
.field public static final e:J = -0xe5a57018b0af8beL


# instance fields
.field public final b:Lwe/P;

.field public transient c:LCe/f;

.field public transient d:Lke/b;


# direct methods
.method public constructor <init>(Lwe/P;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lqe/f0;->c:LCe/f;

    iput-object v0, p0, Lqe/f0;->d:Lke/b;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lqe/f0;->b:Lwe/P;

    return-void
.end method

.method public static synthetic a(Lqe/f0;)Lwe/P;
    .locals 0

    iget-object p0, p0, Lqe/f0;->b:Lwe/P;

    return-object p0
.end method


# virtual methods
.method public D0(J)Z
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public F(Lze/b0;)Z
    .locals 1

    iget-object v0, p0, Lqe/f0;->b:Lwe/P;

    invoke-interface {v0, p1}, Lwe/P;->F(Lze/b0;)Z

    move-result p1

    return p1
.end method

.method public H6(JC)Z
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public J(J)Z
    .locals 1

    iget-object v0, p0, Lqe/f0;->b:Lwe/P;

    invoke-interface {v0, p1, p2}, Lwe/P;->J(J)Z

    move-result p1

    return p1
.end method

.method public R([C)[C
    .locals 1

    iget-object v0, p0, Lqe/f0;->b:Lwe/P;

    invoke-interface {v0, p1}, Lwe/P;->R([C)[C

    move-result-object p1

    return-object p1
.end method

.method public W9(JC)C
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public Xb(JCC)C
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public Xd(Lze/V;)Z
    .locals 1

    iget-object v0, p0, Lqe/f0;->b:Lwe/P;

    invoke-interface {v0, p1}, Lwe/P;->Xd(Lze/V;)Z

    move-result p1

    return p1
.end method

.method public Z([J)[J
    .locals 1

    iget-object v0, p0, Lqe/f0;->b:Lwe/P;

    invoke-interface {v0, p1}, Lwe/P;->Z([J)[J

    move-result-object p1

    return-object p1
.end method

.method public a9(Lwe/P;)V
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

.method public e(J)C
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public e0(Lze/q;)Z
    .locals 1

    iget-object v0, p0, Lqe/f0;->b:Lwe/P;

    invoke-interface {v0, p1}, Lwe/P;->e0(Lze/q;)Z

    move-result p1

    return p1
.end method

.method public eb(JC)C
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-eq p1, p0, :cond_1

    iget-object v0, p0, Lqe/f0;->b:Lwe/P;

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

    iget-object v0, p0, Lqe/f0;->b:Lwe/P;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public i()C
    .locals 1

    iget-object v0, p0, Lqe/f0;->b:Lwe/P;

    invoke-interface {v0}, Lwe/P;->i()C

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    iget-object v0, p0, Lqe/f0;->b:Lwe/P;

    invoke-interface {v0}, Lwe/P;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public iterator()Lre/X;
    .locals 1

    new-instance v0, Lqe/f0$a;

    invoke-direct {v0, p0}, Lqe/f0$a;-><init>(Lqe/f0;)V

    return-object v0
.end method

.method public j()[J
    .locals 1

    iget-object v0, p0, Lqe/f0;->b:Lwe/P;

    invoke-interface {v0}, Lwe/P;->j()[J

    move-result-object v0

    return-object v0
.end method

.method public k()Lke/b;
    .locals 1

    iget-object v0, p0, Lqe/f0;->d:Lke/b;

    if-nez v0, :cond_0

    iget-object v0, p0, Lqe/f0;->b:Lwe/P;

    invoke-interface {v0}, Lwe/P;->k()Lke/b;

    move-result-object v0

    invoke-static {v0}, Lke/c;->c1(Lke/b;)Lke/b;

    move-result-object v0

    iput-object v0, p0, Lqe/f0;->d:Lke/b;

    :cond_0
    iget-object v0, p0, Lqe/f0;->d:Lke/b;

    return-object v0
.end method

.method public keySet()LCe/f;
    .locals 1

    iget-object v0, p0, Lqe/f0;->c:LCe/f;

    if-nez v0, :cond_0

    iget-object v0, p0, Lqe/f0;->b:Lwe/P;

    invoke-interface {v0}, Lwe/P;->keySet()LCe/f;

    move-result-object v0

    invoke-static {v0}, Lke/c;->F2(LCe/f;)LCe/f;

    move-result-object v0

    iput-object v0, p0, Lqe/f0;->c:LCe/f;

    :cond_0
    iget-object v0, p0, Lqe/f0;->c:LCe/f;

    return-object v0
.end method

.method public l()J
    .locals 2

    iget-object v0, p0, Lqe/f0;->b:Lwe/P;

    invoke-interface {v0}, Lwe/P;->l()J

    move-result-wide v0

    return-wide v0
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
            "Ljava/lang/Long;",
            "+",
            "Ljava/lang/Character;",
            ">;)V"
        }
    .end annotation

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public s(J)C
    .locals 1

    iget-object v0, p0, Lqe/f0;->b:Lwe/P;

    invoke-interface {v0, p1, p2}, Lwe/P;->s(J)C

    move-result p1

    return p1
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, Lqe/f0;->b:Lwe/P;

    invoke-interface {v0}, Lwe/P;->size()I

    move-result v0

    return v0
.end method

.method public t(C)Z
    .locals 1

    iget-object v0, p0, Lqe/f0;->b:Lwe/P;

    invoke-interface {v0, p1}, Lwe/P;->t(C)Z

    move-result p1

    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lqe/f0;->b:Lwe/P;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public values()[C
    .locals 1

    iget-object v0, p0, Lqe/f0;->b:Lwe/P;

    invoke-interface {v0}, Lwe/P;->values()[C

    move-result-object v0

    return-object v0
.end method

.method public xd(Lze/V;)Z
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method
