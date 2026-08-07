.class public Lle/N$a;
.super Ljava/util/AbstractSet;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lle/N;->entrySet()Ljava/util/Set;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractSet<",
        "Ljava/util/Map$Entry<",
        "Ljava/lang/Float;",
        "Ljava/lang/Short;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic b:Lle/N;


# direct methods
.method public constructor <init>(Lle/N;)V
    .locals 0

    iput-object p1, p0, Lle/N$a;->b:Lle/N;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/util/Map$Entry;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/Float;",
            "Ljava/lang/Short;",
            ">;)Z"
        }
    .end annotation

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public bridge synthetic add(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Ljava/util/Map$Entry;

    invoke-virtual {p0, p1}, Lle/N$a;->a(Ljava/util/Map$Entry;)Z

    move-result p1

    return p1
.end method

.method public addAll(Ljava/util/Collection;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/Float;",
            "Ljava/lang/Short;",
            ">;>;)Z"
        }
    .end annotation

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public clear()V
    .locals 1

    iget-object v0, p0, Lle/N$a;->b:Lle/N;

    invoke-virtual {v0}, Lle/N;->clear()V

    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Ljava/util/Map$Entry;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p1, Ljava/util/Map$Entry;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    iget-object v2, p0, Lle/N$a;->b:Lle/N;

    invoke-virtual {v2, v0}, Lle/N;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lle/N$a;->b:Lle/N;

    invoke-virtual {v2, v0}, Lle/N;->a(Ljava/lang/Object;)Ljava/lang/Short;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Short;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public isEmpty()Z
    .locals 1

    iget-object v0, p0, Lle/N$a;->b:Lle/N;

    invoke-virtual {v0}, Lle/N;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/Float;",
            "Ljava/lang/Short;",
            ">;>;"
        }
    .end annotation

    new-instance v0, Lle/N$a$a;

    invoke-direct {v0, p0}, Lle/N$a$a;-><init>(Lle/N$a;)V

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 2

    invoke-virtual {p0, p1}, Lle/N$a;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    check-cast p1, Ljava/util/Map$Entry;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    iget-object v0, p0, Lle/N$a;->b:Lle/N;

    iget-object v1, v0, Lle/N;->b:Lwe/F;

    invoke-virtual {v0, p1}, Lle/N;->h(Ljava/lang/Object;)F

    move-result p1

    invoke-interface {v1, p1}, Lwe/F;->c(F)S

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, Lle/N$a;->b:Lle/N;

    iget-object v0, v0, Lle/N;->b:Lwe/F;

    invoke-interface {v0}, Lwe/F;->size()I

    move-result v0

    return v0
.end method
