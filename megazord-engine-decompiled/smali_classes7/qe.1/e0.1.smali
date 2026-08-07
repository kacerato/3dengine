.class public Lqe/e0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lwe/O;
.implements Ljava/io/Serializable;


# static fields
.field public static final e:J = -0xe5a57018b0af8beL


# instance fields
.field public final b:Lwe/O;

.field public transient c:LCe/f;

.field public transient d:Lke/a;


# direct methods
.method public constructor <init>(Lwe/O;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lqe/e0;->c:LCe/f;

    iput-object v0, p0, Lqe/e0;->d:Lke/a;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lqe/e0;->b:Lwe/O;

    return-void
.end method

.method public static synthetic a(Lqe/e0;)Lwe/O;
    .locals 0

    iget-object p0, p0, Lqe/e0;->b:Lwe/O;

    return-object p0
.end method


# virtual methods
.method public A(Lze/h;)Z
    .locals 1

    iget-object v0, p0, Lqe/e0;->b:Lwe/O;

    invoke-interface {v0, p1}, Lwe/O;->A(Lze/h;)Z

    move-result p1

    return p1
.end method

.method public D0(J)Z
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public F(Lze/b0;)Z
    .locals 1

    iget-object v0, p0, Lqe/e0;->b:Lwe/O;

    invoke-interface {v0, p1}, Lwe/O;->F(Lze/b0;)Z

    move-result p1

    return p1
.end method

.method public I6(JB)Z
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public J(J)Z
    .locals 1

    iget-object v0, p0, Lqe/e0;->b:Lwe/O;

    invoke-interface {v0, p1, p2}, Lwe/O;->J(J)Z

    move-result p1

    return p1
.end method

.method public S([B)[B
    .locals 1

    iget-object v0, p0, Lqe/e0;->b:Lwe/O;

    invoke-interface {v0, p1}, Lwe/O;->S([B)[B

    move-result-object p1

    return-object p1
.end method

.method public V9(JB)B
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public Wb(Lze/U;)Z
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public Yc(Lze/U;)Z
    .locals 1

    iget-object v0, p0, Lqe/e0;->b:Lwe/O;

    invoke-interface {v0, p1}, Lwe/O;->Yc(Lze/U;)Z

    move-result p1

    return p1
.end method

.method public Z([J)[J
    .locals 1

    iget-object v0, p0, Lqe/e0;->b:Lwe/O;

    invoke-interface {v0, p1}, Lwe/O;->Z([J)[J

    move-result-object p1

    return-object p1
.end method

.method public clear()V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public db(JB)B
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public e(J)B
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-eq p1, p0, :cond_1

    iget-object v0, p0, Lqe/e0;->b:Lwe/O;

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

.method public g(Lme/a;)V
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lqe/e0;->b:Lwe/O;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public i()B
    .locals 1

    iget-object v0, p0, Lqe/e0;->b:Lwe/O;

    invoke-interface {v0}, Lwe/O;->i()B

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    iget-object v0, p0, Lqe/e0;->b:Lwe/O;

    invoke-interface {v0}, Lwe/O;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public iterator()Lre/W;
    .locals 1

    new-instance v0, Lqe/e0$a;

    invoke-direct {v0, p0}, Lqe/e0$a;-><init>(Lqe/e0;)V

    return-object v0
.end method

.method public j()[J
    .locals 1

    iget-object v0, p0, Lqe/e0;->b:Lwe/O;

    invoke-interface {v0}, Lwe/O;->j()[J

    move-result-object v0

    return-object v0
.end method

.method public k()Lke/a;
    .locals 1

    iget-object v0, p0, Lqe/e0;->d:Lke/a;

    if-nez v0, :cond_0

    iget-object v0, p0, Lqe/e0;->b:Lwe/O;

    invoke-interface {v0}, Lwe/O;->k()Lke/a;

    move-result-object v0

    invoke-static {v0}, Lke/c;->b1(Lke/a;)Lke/a;

    move-result-object v0

    iput-object v0, p0, Lqe/e0;->d:Lke/a;

    :cond_0
    iget-object v0, p0, Lqe/e0;->d:Lke/a;

    return-object v0
.end method

.method public keySet()LCe/f;
    .locals 1

    iget-object v0, p0, Lqe/e0;->c:LCe/f;

    if-nez v0, :cond_0

    iget-object v0, p0, Lqe/e0;->b:Lwe/O;

    invoke-interface {v0}, Lwe/O;->keySet()LCe/f;

    move-result-object v0

    invoke-static {v0}, Lke/c;->F2(LCe/f;)LCe/f;

    move-result-object v0

    iput-object v0, p0, Lqe/e0;->c:LCe/f;

    :cond_0
    iget-object v0, p0, Lqe/e0;->c:LCe/f;

    return-object v0
.end method

.method public l()J
    .locals 2

    iget-object v0, p0, Lqe/e0;->b:Lwe/O;

    invoke-interface {v0}, Lwe/O;->l()J

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
            "Ljava/lang/Long;",
            "+",
            "Ljava/lang/Byte;",
            ">;)V"
        }
    .end annotation

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public rb(JBB)B
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public s(J)B
    .locals 1

    iget-object v0, p0, Lqe/e0;->b:Lwe/O;

    invoke-interface {v0, p1, p2}, Lwe/O;->s(J)B

    move-result p1

    return p1
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, Lqe/e0;->b:Lwe/O;

    invoke-interface {v0}, Lwe/O;->size()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lqe/e0;->b:Lwe/O;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public u(B)Z
    .locals 1

    iget-object v0, p0, Lqe/e0;->b:Lwe/O;

    invoke-interface {v0, p1}, Lwe/O;->u(B)Z

    move-result p1

    return p1
.end method

.method public va(Lwe/O;)V
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public values()[B
    .locals 1

    iget-object v0, p0, Lqe/e0;->b:Lwe/O;

    invoke-interface {v0}, Lwe/O;->values()[B

    move-result-object v0

    return-object v0
.end method
