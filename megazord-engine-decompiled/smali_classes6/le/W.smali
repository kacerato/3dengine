.class public Lle/W;
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
        "Ljava/lang/Integer;",
        "TV;>;",
        "Ljava/util/Map<",
        "Ljava/lang/Integer;",
        "TV;>;",
        "Ljava/io/Externalizable;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# static fields
.field public static final c:J = 0x1L


# instance fields
.field public b:Lwe/M;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lwe/M<",
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

.method public constructor <init>(Lwe/M;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lwe/M<",
            "TV;>;)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    .line 3
    iput-object p1, p0, Lle/W;->b:Lwe/M;

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    iget-object v0, p0, Lle/W;->b:Lwe/M;

    invoke-interface {v0}, Lwe/M;->clear()V

    return-void
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 1

    if-nez p1, :cond_0

    iget-object p1, p0, Lle/W;->b:Lwe/M;

    invoke-interface {p1}, Lwe/M;->l()I

    move-result v0

    invoke-interface {p1, v0}, Lwe/M;->K(I)Z

    move-result p1

    return p1

    :cond_0
    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lle/W;->b:Lwe/M;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-interface {v0, p1}, Lwe/M;->K(I)Z

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

    iget-object v0, p0, Lle/W;->b:Lwe/M;

    invoke-interface {v0, p1}, Lwe/M;->containsValue(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public e()Lwe/M;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lwe/M<",
            "TV;>;"
        }
    .end annotation

    iget-object v0, p0, Lle/W;->b:Lwe/M;

    return-object v0
.end method

.method public entrySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/Integer;",
            "TV;>;>;"
        }
    .end annotation

    new-instance v0, Lle/W$a;

    invoke-direct {v0, p0}, Lle/W$a;-><init>(Lle/W;)V

    return-object v0
.end method

.method public f(Ljava/lang/Integer;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            "TV;)TV;"
        }
    .end annotation

    if-nez p1, :cond_0

    iget-object p1, p0, Lle/W;->b:Lwe/M;

    invoke-interface {p1}, Lwe/M;->l()I

    move-result p1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lle/W;->g(Ljava/lang/Integer;)I

    move-result p1

    :goto_0
    iget-object v0, p0, Lle/W;->b:Lwe/M;

    invoke-interface {v0, p1, p2}, Lwe/M;->Db(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public g(Ljava/lang/Integer;)I
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

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

    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lle/W;->g(Ljava/lang/Integer;)I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return-object p1

    :cond_1
    iget-object p1, p0, Lle/W;->b:Lwe/M;

    invoke-interface {p1}, Lwe/M;->l()I

    move-result p1

    :goto_0
    iget-object v0, p0, Lle/W;->b:Lwe/M;

    invoke-interface {v0, p1}, Lwe/M;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public h(I)Ljava/lang/Integer;
    .locals 0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public isEmpty()Z
    .locals 1

    invoke-virtual {p0}, Lle/W;->size()I

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

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1, p2}, Lle/W;->f(Ljava/lang/Integer;Ljava/lang/Object;)Ljava/lang/Object;

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
            "Ljava/lang/Integer;",
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

    check-cast v2, Ljava/lang/Integer;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, v2, p1}, Lle/W;->f(Ljava/lang/Integer;Ljava/lang/Object;)Ljava/lang/Object;

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

    check-cast p1, Lwe/M;

    iput-object p1, p0, Lle/W;->b:Lwe/M;

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

    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lle/W;->g(Ljava/lang/Integer;)I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return-object p1

    :cond_1
    iget-object p1, p0, Lle/W;->b:Lwe/M;

    invoke-interface {p1}, Lwe/M;->l()I

    move-result p1

    :goto_0
    iget-object v0, p0, Lle/W;->b:Lwe/M;

    invoke-interface {v0, p1}, Lwe/M;->remove(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, Lle/W;->b:Lwe/M;

    invoke-interface {v0}, Lwe/M;->size()I

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

    iget-object v0, p0, Lle/W;->b:Lwe/M;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    return-void
.end method
