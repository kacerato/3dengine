.class public LDe/c;
.super Loe/q;
.source "SourceFile"

# interfaces
.implements Ljava/util/Set;
.implements Ljava/lang/Iterable;
.implements Ljava/io/Externalizable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LDe/c$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Loe/q<",
        "TE;>;",
        "Ljava/util/Set<",
        "TE;>;",
        "Ljava/lang/Iterable<",
        "TE;>;",
        "Ljava/io/Externalizable;"
    }
.end annotation


# static fields
.field public static final s:J = 0x1L


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Loe/q;-><init>()V

    return-void
.end method

.method public constructor <init>(LGe/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LGe/a<",
            "-TE;>;)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0, p1}, Loe/q;-><init>(LGe/a;)V

    return-void
.end method

.method public constructor <init>(LGe/a;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LGe/a<",
            "-TE;>;I)V"
        }
    .end annotation

    .line 3
    invoke-direct {p0, p1, p2}, Loe/q;-><init>(LGe/a;I)V

    return-void
.end method

.method public constructor <init>(LGe/a;IF)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LGe/a<",
            "-TE;>;IF)V"
        }
    .end annotation

    .line 4
    invoke-direct {p0, p1, p2, p3}, Loe/q;-><init>(LGe/a;IF)V

    return-void
.end method

.method public constructor <init>(LGe/a;Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LGe/a<",
            "-TE;>;",
            "Ljava/util/Collection<",
            "+TE;>;)V"
        }
    .end annotation

    .line 5
    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result v0

    invoke-direct {p0, p1, v0}, LDe/c;-><init>(LGe/a;I)V

    .line 6
    invoke-virtual {p0, p2}, LDe/c;->addAll(Ljava/util/Collection;)Z

    return-void
.end method


# virtual methods
.method public Se()Lse/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lse/a<",
            "TE;>;"
        }
    .end annotation

    new-instance v0, Lse/a;

    invoke-direct {v0, p0}, Lse/a;-><init>(Loe/b0;)V

    return-object v0
.end method

.method public add(Ljava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    invoke-virtual {p0, p1}, Loe/b0;->Je(Ljava/lang/Object;)I

    move-result p1

    if-gez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-boolean p1, p0, Loe/b0;->m:Z

    invoke-virtual {p0, p1}, Loe/H;->re(Z)V

    const/4 p1, 0x1

    return p1
.end method

.method public addAll(Ljava/util/Collection;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+TE;>;)Z"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    invoke-virtual {p0, v0}, Loe/H;->pe(I)V

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v1, 0x0

    :goto_0
    add-int/lit8 v2, v0, -0x1

    if-lez v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, LDe/c;->add(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    return v1
.end method

.method public clear()V
    .locals 4

    invoke-super {p0}, Loe/H;->clear()V

    iget-object v0, p0, Loe/b0;->l:[Ljava/lang/Object;

    array-length v1, v0

    sget-object v2, Loe/b0;->p:Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v2}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    return-void
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .locals 1
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

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Loe/b0;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Ljava/util/Set;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v0

    invoke-virtual {p0}, Loe/H;->size()I

    move-result v2

    if-eq v0, v2, :cond_1

    return v1

    :cond_1
    invoke-virtual {p0, p1}, LDe/c;->containsAll(Ljava/util/Collection;)Z

    move-result p1

    return p1
.end method

.method public hashCode()I
    .locals 2

    new-instance v0, LDe/c$b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, LDe/c$b;-><init>(LDe/c;LDe/c$a;)V

    invoke-virtual {p0, v0}, Loe/b0;->Ee(Lze/k0;)Z

    invoke-virtual {v0}, LDe/c$b;->b()I

    move-result v0

    return v0
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    invoke-virtual {p0}, LDe/c;->Se()Lse/a;

    move-result-object v0

    return-object v0
.end method

.method public readExternal(Ljava/io/ObjectInput;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    invoke-interface {p1}, Ljava/io/DataInput;->readByte()B

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Loe/q;->readExternal(Ljava/io/ObjectInput;)V

    :cond_0
    invoke-interface {p1}, Ljava/io/DataInput;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Loe/b0;->we(I)I

    :goto_0
    add-int/lit8 v1, v0, -0x1

    if-lez v0, :cond_1

    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, LDe/c;->add(Ljava/lang/Object;)Z

    move v0, v1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 0

    invoke-virtual {p0, p1}, Loe/b0;->Ge(Ljava/lang/Object;)I

    move-result p1

    if-ltz p1, :cond_0

    invoke-virtual {p0, p1}, Loe/b0;->ue(I)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

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

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v1, 0x0

    :goto_0
    add-int/lit8 v2, v0, -0x1

    if-lez v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, LDe/c;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    return v1
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

    invoke-virtual {p0}, Loe/H;->size()I

    move-result v0

    invoke-virtual {p0}, LDe/c;->Se()Lse/a;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    add-int/lit8 v3, v0, -0x1

    if-lez v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    const/4 v2, 0x1

    :cond_0
    move v0, v3

    goto :goto_0

    :cond_1
    return v2
.end method

.method public te(I)V
    .locals 9

    iget-object v0, p0, Loe/b0;->l:[Ljava/lang/Object;

    array-length v0, v0

    invoke-virtual {p0}, Loe/H;->size()I

    move-result v7

    iget-object v8, p0, Loe/b0;->l:[Ljava/lang/Object;

    new-array p1, p1, [Ljava/lang/Object;

    iput-object p1, p0, Loe/b0;->l:[Ljava/lang/Object;

    sget-object v1, Loe/b0;->p:Ljava/lang/Object;

    invoke-static {p1, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_0
    add-int/lit8 p1, v0, -0x1

    if-lez v0, :cond_1

    aget-object v3, v8, p1

    sget-object v0, Loe/b0;->p:Ljava/lang/Object;

    if-eq v3, v0, :cond_0

    sget-object v0, Loe/b0;->o:Ljava/lang/Object;

    if-eq v3, v0, :cond_0

    invoke-virtual {p0, v3}, Loe/b0;->Je(Ljava/lang/Object;)I

    move-result v0

    if-gez v0, :cond_0

    iget-object v1, p0, Loe/b0;->l:[Ljava/lang/Object;

    neg-int v0, v0

    add-int/lit8 v0, v0, -0x1

    aget-object v2, v1, v0

    invoke-virtual {p0}, Loe/H;->size()I

    move-result v4

    move-object v1, p0

    move v5, v7

    move-object v6, v8

    invoke-virtual/range {v1 .. v6}, Loe/b0;->Re(Ljava/lang/Object;Ljava/lang/Object;II[Ljava/lang/Object;)V

    :cond_0
    move v0, p1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 2

    .line 1
    invoke-virtual {p0}, Loe/H;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/Object;

    .line 2
    new-instance v1, LAe/a;

    invoke-direct {v1, v0}, LAe/a;-><init>([Ljava/lang/Object;)V

    invoke-virtual {p0, v1}, Loe/b0;->Ee(Lze/k0;)Z

    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .line 3
    invoke-virtual {p0}, Loe/H;->size()I

    move-result v0

    .line 4
    array-length v1, p1

    if-ge v1, v0, :cond_0

    .line 5
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object p1

    invoke-static {p1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/Object;

    .line 6
    :cond_0
    new-instance v1, LAe/a;

    invoke-direct {v1, p1}, LAe/a;-><init>([Ljava/lang/Object;)V

    invoke-virtual {p0, v1}, Loe/b0;->Ee(Lze/k0;)Z

    .line 7
    array-length v1, p1

    if-le v1, v0, :cond_1

    const/4 v1, 0x0

    .line 8
    aput-object v1, p1, v0

    :cond_1
    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v1, LDe/c$a;

    invoke-direct {v1, p0, v0}, LDe/c$a;-><init>(LDe/c;Ljava/lang/StringBuilder;)V

    invoke-virtual {p0, v1}, Loe/b0;->Ee(Lze/k0;)Z

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeExternal(Ljava/io/ObjectOutput;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeByte(I)V

    invoke-super {p0, p1}, Loe/q;->writeExternal(Ljava/io/ObjectOutput;)V

    iget v0, p0, Loe/H;->b:I

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeInt(I)V

    iget-object v0, p0, Loe/b0;->l:[Ljava/lang/Object;

    array-length v0, v0

    :goto_0
    add-int/lit8 v1, v0, -0x1

    if-lez v0, :cond_1

    iget-object v0, p0, Loe/b0;->l:[Ljava/lang/Object;

    aget-object v0, v0, v1

    sget-object v2, Loe/b0;->o:Ljava/lang/Object;

    if-eq v0, v2, :cond_0

    sget-object v2, Loe/b0;->p:Ljava/lang/Object;

    if-eq v0, v2, :cond_0

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    return-void
.end method
