.class public Lqe/D;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lwe/v;
.implements Ljava/io/Serializable;


# static fields
.field public static final e:J = -0xe5a57018b0af8beL


# instance fields
.field public final b:Lwe/v;

.field public transient c:LCe/c;

.field public transient d:Lke/h;


# direct methods
.method public constructor <init>(Lwe/v;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lqe/D;->c:LCe/c;

    iput-object v0, p0, Lqe/D;->d:Lke/h;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lqe/D;->b:Lwe/v;

    return-void
.end method

.method public static synthetic b(Lqe/D;)Lwe/v;
    .locals 0

    iget-object p0, p0, Lqe/D;->b:Lwe/v;

    return-object p0
.end method


# virtual methods
.method public B(Lze/z;)Z
    .locals 1

    iget-object v0, p0, Lqe/D;->b:Lwe/v;

    invoke-interface {v0, p1}, Lwe/v;->B(Lze/z;)Z

    move-result p1

    return p1
.end method

.method public E(Lze/b0;)Z
    .locals 1

    iget-object v0, p0, Lqe/D;->b:Lwe/v;

    invoke-interface {v0, p1}, Lwe/v;->E(Lze/b0;)Z

    move-result p1

    return p1
.end method

.method public G(D)Z
    .locals 1

    iget-object v0, p0, Lqe/D;->b:Lwe/v;

    invoke-interface {v0, p1, p2}, Lwe/v;->G(D)Z

    move-result p1

    return p1
.end method

.method public K6(DJJ)J
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public M2(Lze/x;)Z
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public M5(DJ)Z
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public O([D)[D
    .locals 1

    iget-object v0, p0, Lqe/D;->b:Lwe/v;

    invoke-interface {v0, p1}, Lwe/v;->O([D)[D

    move-result-object p1

    return-object p1
.end method

.method public Y([J)[J
    .locals 1

    iget-object v0, p0, Lqe/D;->b:Lwe/v;

    invoke-interface {v0, p1}, Lwe/v;->Y([J)[J

    move-result-object p1

    return-object p1
.end method

.method public Y2(DJ)J
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public a(D)J
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public b9(Lwe/v;)V
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

.method public e9(Lze/x;)Z
    .locals 1

    iget-object v0, p0, Lqe/D;->b:Lwe/v;

    invoke-interface {v0, p1}, Lwe/v;->e9(Lze/x;)Z

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-eq p1, p0, :cond_1

    iget-object v0, p0, Lqe/D;->b:Lwe/v;

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

.method public h(Lme/f;)V
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lqe/D;->b:Lwe/v;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public i()J
    .locals 2

    iget-object v0, p0, Lqe/D;->b:Lwe/v;

    invoke-interface {v0}, Lwe/v;->i()J

    move-result-wide v0

    return-wide v0
.end method

.method public increment(D)Z
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public isEmpty()Z
    .locals 1

    iget-object v0, p0, Lqe/D;->b:Lwe/v;

    invoke-interface {v0}, Lwe/v;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public iterator()Lre/z;
    .locals 1

    new-instance v0, Lqe/D$a;

    invoke-direct {v0, p0}, Lqe/D$a;-><init>(Lqe/D;)V

    return-object v0
.end method

.method public j()[D
    .locals 1

    iget-object v0, p0, Lqe/D;->b:Lwe/v;

    invoke-interface {v0}, Lwe/v;->j()[D

    move-result-object v0

    return-object v0
.end method

.method public k()Lke/h;
    .locals 1

    iget-object v0, p0, Lqe/D;->d:Lke/h;

    if-nez v0, :cond_0

    iget-object v0, p0, Lqe/D;->b:Lwe/v;

    invoke-interface {v0}, Lwe/v;->k()Lke/h;

    move-result-object v0

    invoke-static {v0}, Lke/c;->g1(Lke/h;)Lke/h;

    move-result-object v0

    iput-object v0, p0, Lqe/D;->d:Lke/h;

    :cond_0
    iget-object v0, p0, Lqe/D;->d:Lke/h;

    return-object v0
.end method

.method public keySet()LCe/c;
    .locals 1

    iget-object v0, p0, Lqe/D;->c:LCe/c;

    if-nez v0, :cond_0

    iget-object v0, p0, Lqe/D;->b:Lwe/v;

    invoke-interface {v0}, Lwe/v;->keySet()LCe/c;

    move-result-object v0

    invoke-static {v0}, Lke/c;->C2(LCe/c;)LCe/c;

    move-result-object v0

    iput-object v0, p0, Lqe/D;->c:LCe/c;

    :cond_0
    iget-object v0, p0, Lqe/D;->c:LCe/c;

    return-object v0
.end method

.method public l()D
    .locals 2

    iget-object v0, p0, Lqe/D;->b:Lwe/v;

    invoke-interface {v0}, Lwe/v;->l()D

    move-result-wide v0

    return-wide v0
.end method

.method public n0(D)J
    .locals 1

    iget-object v0, p0, Lqe/D;->b:Lwe/v;

    invoke-interface {v0, p1, p2}, Lwe/v;->n0(D)J

    move-result-wide p1

    return-wide p1
.end method

.method public putAll(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "+",
            "Ljava/lang/Double;",
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

    iget-object v0, p0, Lqe/D;->b:Lwe/v;

    invoke-interface {v0}, Lwe/v;->size()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lqe/D;->b:Lwe/v;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public v2(DJ)J
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public values()[J
    .locals 1

    iget-object v0, p0, Lqe/D;->b:Lwe/v;

    invoke-interface {v0}, Lwe/v;->values()[J

    move-result-object v0

    return-object v0
.end method

.method public w(J)Z
    .locals 1

    iget-object v0, p0, Lqe/D;->b:Lwe/v;

    invoke-interface {v0, p1, p2}, Lwe/v;->w(J)Z

    move-result p1

    return p1
.end method
