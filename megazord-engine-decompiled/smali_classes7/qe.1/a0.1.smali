.class public Lqe/a0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lwe/L;
.implements Ljava/io/Serializable;


# static fields
.field public static final e:J = -0xe5a57018b0af8beL


# instance fields
.field public final b:Lwe/L;

.field public transient c:LCe/e;

.field public transient d:Lke/h;


# direct methods
.method public constructor <init>(Lwe/L;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lqe/a0;->c:LCe/e;

    iput-object v0, p0, Lqe/a0;->d:Lke/h;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lqe/a0;->b:Lwe/L;

    return-void
.end method

.method public static synthetic a(Lqe/a0;)Lwe/L;
    .locals 0

    iget-object p0, p0, Lqe/a0;->b:Lwe/L;

    return-object p0
.end method


# virtual methods
.method public A9(Lze/P;)Z
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public B0(I)Z
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public E(Lze/b0;)Z
    .locals 1

    iget-object v0, p0, Lqe/a0;->b:Lwe/L;

    invoke-interface {v0, p1}, Lwe/L;->E(Lze/b0;)Z

    move-result p1

    return p1
.end method

.method public K(I)Z
    .locals 1

    iget-object v0, p0, Lqe/a0;->b:Lwe/L;

    invoke-interface {v0, p1}, Lwe/L;->K(I)Z

    move-result p1

    return p1
.end method

.method public K7(IJ)Z
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public Kc(Lze/P;)Z
    .locals 1

    iget-object v0, p0, Lqe/a0;->b:Lwe/L;

    invoke-interface {v0, p1}, Lwe/L;->Kc(Lze/P;)Z

    move-result p1

    return p1
.end method

.method public O4(IJJ)J
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public U6(Lwe/L;)V
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public Ua(IJ)J
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public X([I)[I
    .locals 1

    iget-object v0, p0, Lqe/a0;->b:Lwe/L;

    invoke-interface {v0, p1}, Lwe/L;->X([I)[I

    move-result-object p1

    return-object p1
.end method

.method public Y([J)[J
    .locals 1

    iget-object v0, p0, Lqe/a0;->b:Lwe/L;

    invoke-interface {v0, p1}, Lwe/L;->Y([J)[J

    move-result-object p1

    return-object p1
.end method

.method public Z6(IJ)J
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public c0(Lze/S;)Z
    .locals 1

    iget-object v0, p0, Lqe/a0;->b:Lwe/L;

    invoke-interface {v0, p1}, Lwe/L;->c0(Lze/S;)Z

    move-result p1

    return p1
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

    iget-object v0, p0, Lqe/a0;->b:Lwe/L;

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

.method public get(I)J
    .locals 2

    iget-object v0, p0, Lqe/a0;->b:Lwe/L;

    invoke-interface {v0, p1}, Lwe/L;->get(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public h(Lme/f;)V
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lqe/a0;->b:Lwe/L;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public i()J
    .locals 2

    iget-object v0, p0, Lqe/a0;->b:Lwe/L;

    invoke-interface {v0}, Lwe/L;->i()J

    move-result-wide v0

    return-wide v0
.end method

.method public isEmpty()Z
    .locals 1

    iget-object v0, p0, Lqe/a0;->b:Lwe/L;

    invoke-interface {v0}, Lwe/L;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public iterator()Lre/S;
    .locals 1

    new-instance v0, Lqe/a0$a;

    invoke-direct {v0, p0}, Lqe/a0$a;-><init>(Lqe/a0;)V

    return-object v0
.end method

.method public j()[I
    .locals 1

    iget-object v0, p0, Lqe/a0;->b:Lwe/L;

    invoke-interface {v0}, Lwe/L;->j()[I

    move-result-object v0

    return-object v0
.end method

.method public k()Lke/h;
    .locals 1

    iget-object v0, p0, Lqe/a0;->d:Lke/h;

    if-nez v0, :cond_0

    iget-object v0, p0, Lqe/a0;->b:Lwe/L;

    invoke-interface {v0}, Lwe/L;->k()Lke/h;

    move-result-object v0

    invoke-static {v0}, Lke/c;->g1(Lke/h;)Lke/h;

    move-result-object v0

    iput-object v0, p0, Lqe/a0;->d:Lke/h;

    :cond_0
    iget-object v0, p0, Lqe/a0;->d:Lke/h;

    return-object v0
.end method

.method public keySet()LCe/e;
    .locals 1

    iget-object v0, p0, Lqe/a0;->c:LCe/e;

    if-nez v0, :cond_0

    iget-object v0, p0, Lqe/a0;->b:Lwe/L;

    invoke-interface {v0}, Lwe/L;->keySet()LCe/e;

    move-result-object v0

    invoke-static {v0}, Lke/c;->E2(LCe/e;)LCe/e;

    move-result-object v0

    iput-object v0, p0, Lqe/a0;->c:LCe/e;

    :cond_0
    iget-object v0, p0, Lqe/a0;->c:LCe/e;

    return-object v0
.end method

.method public l()I
    .locals 1

    iget-object v0, p0, Lqe/a0;->b:Lwe/L;

    invoke-interface {v0}, Lwe/L;->l()I

    move-result v0

    return v0
.end method

.method public putAll(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "+",
            "Ljava/lang/Integer;",
            "+",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public remove(I)J
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, Lqe/a0;->b:Lwe/L;

    invoke-interface {v0}, Lwe/L;->size()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lqe/a0;->b:Lwe/L;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public values()[J
    .locals 1

    iget-object v0, p0, Lqe/a0;->b:Lwe/L;

    invoke-interface {v0}, Lwe/L;->values()[J

    move-result-object v0

    return-object v0
.end method

.method public w(J)Z
    .locals 1

    iget-object v0, p0, Lqe/a0;->b:Lwe/L;

    invoke-interface {v0, p1, p2}, Lwe/L;->w(J)Z

    move-result p1

    return p1
.end method
