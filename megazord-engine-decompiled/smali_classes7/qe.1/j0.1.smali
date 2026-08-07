.class public Lqe/j0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lwe/T;
.implements Ljava/io/Serializable;


# static fields
.field public static final e:J = -0xe5a57018b0af8beL


# instance fields
.field public final b:Lwe/T;

.field public transient c:LCe/f;

.field public transient d:Lke/g;


# direct methods
.method public constructor <init>(Lwe/T;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lqe/j0;->c:LCe/f;

    iput-object v0, p0, Lqe/j0;->d:Lke/g;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lqe/j0;->b:Lwe/T;

    return-void
.end method

.method public static synthetic a(Lqe/j0;)Lwe/T;
    .locals 0

    iget-object p0, p0, Lqe/j0;->b:Lwe/T;

    return-object p0
.end method


# virtual methods
.method public C6(JI)Z
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public D0(J)Z
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public F(Lze/b0;)Z
    .locals 1

    iget-object v0, p0, Lqe/j0;->b:Lwe/T;

    invoke-interface {v0, p1}, Lwe/T;->F(Lze/b0;)Z

    move-result p1

    return p1
.end method

.method public J(J)Z
    .locals 1

    iget-object v0, p0, Lqe/j0;->b:Lwe/T;

    invoke-interface {v0, p1, p2}, Lwe/T;->J(J)Z

    move-result p1

    return p1
.end method

.method public O5(Lze/Y;)Z
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public W([I)[I
    .locals 1

    iget-object v0, p0, Lqe/j0;->b:Lwe/T;

    invoke-interface {v0, p1}, Lwe/T;->W([I)[I

    move-result-object p1

    return-object p1
.end method

.method public Z([J)[J
    .locals 1

    iget-object v0, p0, Lqe/j0;->b:Lwe/T;

    invoke-interface {v0, p1}, Lwe/T;->Z([J)[J

    move-result-object p1

    return-object p1
.end method

.method public Za(JI)I
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public a0(Lze/S;)Z
    .locals 1

    iget-object v0, p0, Lqe/j0;->b:Lwe/T;

    invoke-interface {v0, p1}, Lwe/T;->a0(Lze/S;)Z

    move-result p1

    return p1
.end method

.method public c8(JII)I
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

.method public e(J)I
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-eq p1, p0, :cond_1

    iget-object v0, p0, Lqe/j0;->b:Lwe/T;

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

.method public fa(JI)I
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lqe/j0;->b:Lwe/T;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public i()I
    .locals 1

    iget-object v0, p0, Lqe/j0;->b:Lwe/T;

    invoke-interface {v0}, Lwe/T;->i()I

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    iget-object v0, p0, Lqe/j0;->b:Lwe/T;

    invoke-interface {v0}, Lwe/T;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public iterator()Lre/a0;
    .locals 1

    new-instance v0, Lqe/j0$a;

    invoke-direct {v0, p0}, Lqe/j0$a;-><init>(Lqe/j0;)V

    return-object v0
.end method

.method public j()[J
    .locals 1

    iget-object v0, p0, Lqe/j0;->b:Lwe/T;

    invoke-interface {v0}, Lwe/T;->j()[J

    move-result-object v0

    return-object v0
.end method

.method public k()Lke/g;
    .locals 1

    iget-object v0, p0, Lqe/j0;->d:Lke/g;

    if-nez v0, :cond_0

    iget-object v0, p0, Lqe/j0;->b:Lwe/T;

    invoke-interface {v0}, Lwe/T;->k()Lke/g;

    move-result-object v0

    invoke-static {v0}, Lke/c;->f1(Lke/g;)Lke/g;

    move-result-object v0

    iput-object v0, p0, Lqe/j0;->d:Lke/g;

    :cond_0
    iget-object v0, p0, Lqe/j0;->d:Lke/g;

    return-object v0
.end method

.method public keySet()LCe/f;
    .locals 1

    iget-object v0, p0, Lqe/j0;->c:LCe/f;

    if-nez v0, :cond_0

    iget-object v0, p0, Lqe/j0;->b:Lwe/T;

    invoke-interface {v0}, Lwe/T;->keySet()LCe/f;

    move-result-object v0

    invoke-static {v0}, Lke/c;->F2(LCe/f;)LCe/f;

    move-result-object v0

    iput-object v0, p0, Lqe/j0;->c:LCe/f;

    :cond_0
    iget-object v0, p0, Lqe/j0;->c:LCe/f;

    return-object v0
.end method

.method public l()J
    .locals 2

    iget-object v0, p0, Lqe/j0;->b:Lwe/T;

    invoke-interface {v0}, Lwe/T;->l()J

    move-result-wide v0

    return-wide v0
.end method

.method public la(Lze/Y;)Z
    .locals 1

    iget-object v0, p0, Lqe/j0;->b:Lwe/T;

    invoke-interface {v0, p1}, Lwe/T;->la(Lze/Y;)Z

    move-result p1

    return p1
.end method

.method public o5(Lwe/T;)V
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
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public s(J)I
    .locals 1

    iget-object v0, p0, Lqe/j0;->b:Lwe/T;

    invoke-interface {v0, p1, p2}, Lwe/T;->s(J)I

    move-result p1

    return p1
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, Lqe/j0;->b:Lwe/T;

    invoke-interface {v0}, Lwe/T;->size()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lqe/j0;->b:Lwe/T;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public v(I)Z
    .locals 1

    iget-object v0, p0, Lqe/j0;->b:Lwe/T;

    invoke-interface {v0, p1}, Lwe/T;->v(I)Z

    move-result p1

    return p1
.end method

.method public values()[I
    .locals 1

    iget-object v0, p0, Lqe/j0;->b:Lwe/T;

    invoke-interface {v0}, Lwe/T;->values()[I

    move-result-object v0

    return-object v0
.end method
