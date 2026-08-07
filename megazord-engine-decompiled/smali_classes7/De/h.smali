.class public LDe/h;
.super LDe/f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LDe/h$c;,
        LDe/h$d;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "LDe/f<",
        "TE;>;"
    }
.end annotation


# instance fields
.field public r:Lte/e;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, LDe/f;-><init>()V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, LDe/f;-><init>(I)V

    return-void
.end method

.method public constructor <init>(IF)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2}, LDe/f;-><init>(IF)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Collection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+TE;>;)V"
        }
    .end annotation

    .line 4
    invoke-direct {p0, p1}, LDe/f;-><init>(Ljava/util/Collection;)V

    return-void
.end method


# virtual methods
.method public Ee(Lze/k0;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lze/k0<",
            "-TE;>;)Z"
        }
    .end annotation

    new-instance v0, LDe/h$c;

    iget-object v1, p0, Loe/b0;->l:[Ljava/lang/Object;

    invoke-direct {v0, p0, v1, p1}, LDe/h$c;-><init>(LDe/h;[Ljava/lang/Object;Lze/k0;)V

    iget-object p1, p0, LDe/h;->r:Lte/e;

    invoke-interface {p1, v0}, Lte/e;->Q0(Lze/S;)Z

    move-result p1

    return p1
.end method

.method public Se()Lse/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lse/a<",
            "TE;>;"
        }
    .end annotation

    new-instance v0, LDe/h$b;

    invoke-direct {v0, p0, p0}, LDe/h$b;-><init>(LDe/h;Loe/b0;)V

    return-object v0
.end method

.method public Te(Ljava/io/ObjectOutput;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, LDe/h$d;

    invoke-direct {v0, p0, p1}, LDe/h$d;-><init>(LDe/h;Ljava/io/ObjectOutput;)V

    iget-object p1, p0, LDe/h;->r:Lte/e;

    invoke-interface {p1, v0}, Lte/e;->Q0(Lze/S;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, LDe/h$d;->b()Ljava/io/IOException;

    move-result-object p1

    throw p1
.end method

.method public add(Ljava/lang/Object;)Z
    .locals 1
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
    iget-object v0, p0, LDe/h;->r:Lte/e;

    invoke-interface {v0, p1}, Lte/e;->add(I)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-boolean p1, p0, Loe/b0;->m:Z

    invoke-virtual {p0, p1}, Loe/H;->re(Z)V

    const/4 p1, 0x1

    return p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Order not changed after insert"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public clear()V
    .locals 1

    invoke-super {p0}, LDe/f;->clear()V

    iget-object v0, p0, LDe/h;->r:Lte/e;

    invoke-interface {v0}, Lte/e;->clear()V

    return-void
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    invoke-virtual {p0}, LDe/h;->Se()Lse/a;

    move-result-object v0

    return-object v0
.end method

.method public te(I)V
    .locals 9

    new-instance v0, Lve/e;

    iget-object v1, p0, LDe/h;->r:Lte/e;

    invoke-direct {v0, v1}, Lve/e;-><init>(Lte/e;)V

    invoke-virtual {p0}, Loe/H;->size()I

    move-result v1

    iget-object v8, p0, Loe/b0;->l:[Ljava/lang/Object;

    iget-object v2, p0, LDe/h;->r:Lte/e;

    invoke-interface {v2}, Lte/e;->clear()V

    new-array p1, p1, [Ljava/lang/Object;

    iput-object p1, p0, Loe/b0;->l:[Ljava/lang/Object;

    sget-object v2, Loe/b0;->p:Ljava/lang/Object;

    invoke-static {p1, v2}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0}, Lve/e;->iterator()Lre/Q;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Lre/V;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Lre/Q;->next()I

    move-result v0

    aget-object v4, v8, v0

    sget-object v0, Loe/b0;->p:Ljava/lang/Object;

    if-eq v4, v0, :cond_3

    sget-object v2, Loe/b0;->o:Ljava/lang/Object;

    if-eq v4, v2, :cond_3

    if-eq v4, v0, :cond_0

    if-eq v4, v2, :cond_0

    invoke-virtual {p0, v4}, Loe/b0;->Je(Ljava/lang/Object;)I

    move-result v0

    if-gez v0, :cond_1

    iget-object v2, p0, Loe/b0;->l:[Ljava/lang/Object;

    neg-int v3, v0

    add-int/lit8 v3, v3, -0x1

    aget-object v3, v2, v3

    invoke-virtual {p0}, Loe/H;->size()I

    move-result v5

    move-object v2, p0

    move v6, v1

    move-object v7, v8

    invoke-virtual/range {v2 .. v7}, Loe/b0;->Re(Ljava/lang/Object;Ljava/lang/Object;II[Ljava/lang/Object;)V

    :cond_1
    iget-object v2, p0, LDe/h;->r:Lte/e;

    invoke-interface {v2, v0}, Lte/e;->add(I)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Order not changed after insert"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Iterating over empty location while rehashing"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, LDe/h;->Se()Lse/a;

    move-result-object v1

    const/4 v2, 0x1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    goto :goto_1

    :cond_0
    const-string v3, ", "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public ue(I)V
    .locals 1

    iget-object v0, p0, LDe/h;->r:Lte/e;

    invoke-interface {v0, p1}, Lte/e;->remove(I)Z

    invoke-super {p0, p1}, Loe/b0;->ue(I)V

    return-void
.end method

.method public we(I)I
    .locals 1

    new-instance v0, LDe/h$a;

    invoke-direct {v0, p0, p1}, LDe/h$a;-><init>(LDe/h;I)V

    iput-object v0, p0, LDe/h;->r:Lte/e;

    invoke-super {p0, p1}, Loe/b0;->we(I)I

    move-result p1

    return p1
.end method
