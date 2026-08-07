.class public Lxe/c$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lke/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lxe/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "e"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lxe/c$e$b;
    }
.end annotation


# instance fields
.field public final synthetic b:Lxe/c;


# direct methods
.method public constructor <init>(Lxe/c;)V
    .locals 0

    iput-object p1, p0, Lxe/c$e;->b:Lxe/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public B1(Lke/e;)Z
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public D1([D)Z
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public H1([D)Z
    .locals 5

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    add-int/lit8 v2, v0, -0x1

    if-lez v0, :cond_1

    aget-wide v3, p1, v2

    invoke-virtual {p0, v3, v4}, Lxe/c$e;->a(D)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    return v1
.end method

.method public W1(Lke/e;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    invoke-virtual {p0}, Lxe/c$e;->clear()V

    return v0

    :cond_0
    invoke-interface {p1}, Lke/e;->iterator()Lre/y;

    move-result-object p1

    const/4 v1, 0x0

    :cond_1
    :goto_0
    invoke-interface {p1}, Lre/V;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Lre/y;->next()D

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lxe/c$e;->a(D)Z

    move-result v2

    if-eqz v2, :cond_1

    move v1, v0

    goto :goto_0

    :cond_2
    return v1
.end method

.method public X0(D)Z
    .locals 1

    iget-object v0, p0, Lxe/c$e;->b:Lxe/c;

    invoke-virtual {v0, p1, p2}, Lxe/c;->x(D)Z

    move-result p1

    return p1
.end method

.method public a(D)Z
    .locals 6

    iget-object v0, p0, Lxe/c$e;->b:Lxe/c;

    iget-object v1, v0, Lxe/c;->t:[D

    iget-object v0, v0, Loe/b0;->l:[Ljava/lang/Object;

    array-length v2, v1

    :goto_0
    add-int/lit8 v3, v2, -0x1

    if-lez v2, :cond_1

    aget-object v2, v0, v3

    sget-object v4, Loe/b0;->p:Ljava/lang/Object;

    if-eq v2, v4, :cond_0

    sget-object v4, Loe/b0;->o:Ljava/lang/Object;

    if-eq v2, v4, :cond_0

    aget-wide v4, v1, v3

    cmpl-double v2, p1, v4

    if-nez v2, :cond_0

    iget-object p1, p0, Lxe/c$e;->b:Lxe/c;

    invoke-virtual {p1, v3}, Lxe/c;->ue(I)V

    const/4 p1, 0x1

    return p1

    :cond_0
    move v2, v3

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public add(D)Z
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public addAll(Ljava/util/Collection;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Ljava/lang/Double;",
            ">;)Z"
        }
    .end annotation

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public c1(Lze/z;)Z
    .locals 1

    iget-object v0, p0, Lxe/c$e;->b:Lxe/c;

    invoke-virtual {v0, p1}, Lxe/c;->C(Lze/z;)Z

    move-result p1

    return p1
.end method

.method public clear()V
    .locals 1

    iget-object v0, p0, Lxe/c$e;->b:Lxe/c;

    invoke-virtual {v0}, Lxe/c;->clear()V

    return-void
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Ljava/lang/Double;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    iget-object v3, p0, Lxe/c$e;->b:Lxe/c;

    invoke-virtual {v3, v0, v1}, Lxe/c;->x(D)Z

    move-result v0

    if-nez v0, :cond_0

    :cond_1
    return v2

    :cond_2
    const/4 p1, 0x1

    return p1
.end method

.method public i()D
    .locals 2

    iget-object v0, p0, Lxe/c$e;->b:Lxe/c;

    iget-wide v0, v0, Lxe/c;->u:D

    return-wide v0
.end method

.method public isEmpty()Z
    .locals 1

    iget-object v0, p0, Lxe/c$e;->b:Lxe/c;

    invoke-static {v0}, Lxe/c;->Te(Lxe/c;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public iterator()Lre/y;
    .locals 1

    new-instance v0, Lxe/c$e$b;

    invoke-direct {v0, p0}, Lxe/c$e$b;-><init>(Lxe/c$e;)V

    return-object v0
.end method

.method public n1(Lke/e;)Z
    .locals 4

    const/4 v0, 0x0

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Lxe/c$e;->iterator()Lre/y;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Lre/V;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Lre/y;->next()D

    move-result-wide v2

    invoke-interface {p1, v2, v3}, Lke/e;->X0(D)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-interface {v1}, Lre/V;->remove()V

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    return v0
.end method

.method public q1(Lke/e;)Z
    .locals 3

    invoke-interface {p1}, Lke/e;->iterator()Lre/y;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Lre/V;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lxe/c$e;->b:Lxe/c;

    invoke-interface {p1}, Lre/y;->next()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lxe/c;->x(D)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Ljava/lang/Double;

    if-eqz v2, :cond_0

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lxe/c$e;->a(D)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    invoke-virtual {p0}, Lxe/c$e;->iterator()Lre/y;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Lre/V;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Lre/y;->next()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-interface {v0}, Lre/V;->remove()V

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public s2([D)Z
    .locals 7

    invoke-static {p1}, Ljava/util/Arrays;->sort([D)V

    iget-object v0, p0, Lxe/c$e;->b:Lxe/c;

    iget-object v1, v0, Lxe/c;->t:[D

    iget-object v0, v0, Loe/b0;->l:[Ljava/lang/Object;

    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    add-int/lit8 v4, v2, -0x1

    if-lez v2, :cond_1

    aget-object v2, v0, v4

    sget-object v5, Loe/b0;->p:Ljava/lang/Object;

    if-eq v2, v5, :cond_0

    sget-object v5, Loe/b0;->o:Ljava/lang/Object;

    if-eq v2, v5, :cond_0

    aget-wide v5, v1, v4

    invoke-static {p1, v5, v6}, Ljava/util/Arrays;->binarySearch([DD)I

    move-result v2

    if-gez v2, :cond_0

    iget-object v2, p0, Lxe/c$e;->b:Lxe/c;

    invoke-virtual {v2, v4}, Lxe/c;->ue(I)V

    const/4 v3, 0x1

    :cond_0
    move v2, v4

    goto :goto_0

    :cond_1
    return v3
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, Lxe/c$e;->b:Lxe/c;

    invoke-static {v0}, Lxe/c;->Se(Lxe/c;)I

    move-result v0

    return v0
.end method

.method public toArray()[D
    .locals 1

    .line 1
    iget-object v0, p0, Lxe/c$e;->b:Lxe/c;

    invoke-virtual {v0}, Lxe/c;->values()[D

    move-result-object v0

    return-object v0
.end method

.method public toArray([D)[D
    .locals 1

    .line 2
    iget-object v0, p0, Lxe/c$e;->b:Lxe/c;

    invoke-virtual {v0, p1}, Lxe/c;->T([D)[D

    move-result-object p1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lxe/c$e;->b:Lxe/c;

    new-instance v2, Lxe/c$e$a;

    invoke-direct {v2, p0, v0}, Lxe/c$e$a;-><init>(Lxe/c$e;Ljava/lang/StringBuilder;)V

    invoke-virtual {v1, v2}, Lxe/c;->C(Lze/z;)Z

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public x1([D)Z
    .locals 6

    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget-wide v3, p1, v2

    iget-object v5, p0, Lxe/c$e;->b:Lxe/c;

    invoke-virtual {v5, v3, v4}, Lxe/c;->x(D)Z

    move-result v3

    if-nez v3, :cond_0

    return v1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    return p1
.end method
