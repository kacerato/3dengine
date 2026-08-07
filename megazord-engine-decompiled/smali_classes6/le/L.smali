.class public Lle/L;
.super Ljava/util/AbstractMap;
.source "SourceFile"

# interfaces
.implements Ljava/util/Map;
.implements Ljava/io/Externalizable;
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractMap<",
        "Ljava/lang/Float;",
        "TV;>;",
        "Ljava/util/Map<",
        "Ljava/lang/Float;",
        "TV;>;",
        "Ljava/io/Externalizable;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# static fields
.field public static final c:J = 0x1L


# instance fields
.field public b:Lwe/E;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lwe/E<",
            "TV;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    return-void
.end method

.method public constructor <init>(Lwe/E;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lwe/E<",
            "TV;>;)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    .line 3
    iput-object p1, p0, Lle/L;->b:Lwe/E;

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    iget-object v0, p0, Lle/L;->b:Lwe/E;

    invoke-interface {v0}, Lwe/E;->clear()V

    return-void
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 1

    if-nez p1, :cond_0

    iget-object p1, p0, Lle/L;->b:Lwe/E;

    invoke-interface {p1}, Lwe/E;->l()F

    move-result v0

    invoke-interface {p1, v0}, Lwe/E;->L(F)Z

    move-result p1

    return p1

    :cond_0
    instance-of v0, p1, Ljava/lang/Float;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lle/L;->b:Lwe/E;

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-interface {v0, p1}, Lwe/E;->L(F)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lle/L;->b:Lwe/E;

    invoke-interface {v0, p1}, Lwe/E;->containsValue(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public e()Lwe/E;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lwe/E<",
            "TV;>;"
        }
    .end annotation

    iget-object v0, p0, Lle/L;->b:Lwe/E;

    return-object v0
.end method

.method public entrySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/Float;",
            "TV;>;>;"
        }
    .end annotation

    new-instance v0, Lle/L$a;

    invoke-direct {v0, p0}, Lle/L$a;-><init>(Lle/L;)V

    return-object v0
.end method

.method public f(Ljava/lang/Float;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Float;",
            "TV;)TV;"
        }
    .end annotation

    if-nez p1, :cond_0

    iget-object p1, p0, Lle/L;->b:Lwe/E;

    invoke-interface {p1}, Lwe/E;->l()F

    move-result p1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lle/L;->g(Ljava/lang/Float;)F

    move-result p1

    :goto_0
    iget-object v0, p0, Lle/L;->b:Lwe/E;

    invoke-interface {v0, p1, p2}, Lwe/E;->Sd(FLjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public g(Ljava/lang/Float;)F
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    return p1
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    if-eqz p1, :cond_1

    instance-of v0, p1, Ljava/lang/Float;

    if-eqz v0, :cond_0

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p0, p1}, Lle/L;->g(Ljava/lang/Float;)F

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return-object p1

    :cond_1
    iget-object p1, p0, Lle/L;->b:Lwe/E;

    invoke-interface {p1}, Lwe/E;->l()F

    move-result p1

    :goto_0
    iget-object v0, p0, Lle/L;->b:Lwe/E;

    invoke-interface {v0, p1}, Lwe/E;->o0(F)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public h(F)Ljava/lang/Float;
    .locals 0

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    return-object p1
.end method

.method public isEmpty()Z
    .locals 1

    invoke-virtual {p0}, Lle/L;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public bridge synthetic put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p0, p1, p2}, Lle/L;->f(Ljava/lang/Float;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public putAll(Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "+",
            "Ljava/lang/Float;",
            "+TV;>;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result p1

    :goto_0
    add-int/lit8 v1, p1, -0x1

    if-lez p1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map$Entry;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, v2, p1}, Lle/L;->f(Ljava/lang/Float;Ljava/lang/Object;)Ljava/lang/Object;

    move p1, v1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public readExternal(Ljava/io/ObjectInput;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    invoke-interface {p1}, Ljava/io/DataInput;->readByte()B

    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lwe/E;

    iput-object p1, p0, Lle/L;->b:Lwe/E;

    return-void
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    if-eqz p1, :cond_1

    instance-of v0, p1, Ljava/lang/Float;

    if-eqz v0, :cond_0

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p0, p1}, Lle/L;->g(Ljava/lang/Float;)F

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return-object p1

    :cond_1
    iget-object p1, p0, Lle/L;->b:Lwe/E;

    invoke-interface {p1}, Lwe/E;->l()F

    move-result p1

    :goto_0
    iget-object v0, p0, Lle/L;->b:Lwe/E;

    invoke-interface {v0, p1}, Lwe/E;->c(F)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, Lle/L;->b:Lwe/E;

    invoke-interface {v0}, Lwe/E;->size()I

    move-result v0

    return v0
.end method

.method public writeExternal(Ljava/io/ObjectOutput;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeByte(I)V

    iget-object v0, p0, Lle/L;->b:Lwe/E;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    return-void
.end method
