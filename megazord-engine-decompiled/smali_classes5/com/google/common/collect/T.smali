.class public final Lcom/google/common/collect/T;
.super Lcom/google/common/collect/v1;
.source "SourceFile"


# annotations
.annotation build LQ2/c;
.end annotation

.annotation runtime Lcom/google/common/collect/X;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/v1<",
        "TE;>;"
    }
.end annotation


# instance fields
.field public final transient f:Lcom/google/common/collect/v1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/v1<",
            "TE;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/common/collect/v1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/v1<",
            "TE;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/common/collect/v1;-><init>()V

    iput-object p1, p0, Lcom/google/common/collect/T;->f:Lcom/google/common/collect/v1;

    return-void
.end method


# virtual methods
.method public bridge synthetic D9()Lcom/google/common/collect/K2;
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/collect/T;->Q()Lcom/google/common/collect/v1;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic Ib(Ljava/lang/Object;Lcom/google/common/collect/x;)Lcom/google/common/collect/K2;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/T;->f0(Ljava/lang/Object;Lcom/google/common/collect/x;)Lcom/google/common/collect/v1;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic Oa(Ljava/lang/Object;Lcom/google/common/collect/x;)Lcom/google/common/collect/K2;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/T;->T(Ljava/lang/Object;Lcom/google/common/collect/x;)Lcom/google/common/collect/v1;

    move-result-object p1

    return-object p1
.end method

.method public Q()Lcom/google/common/collect/v1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/v1<",
            "TE;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/T;->f:Lcom/google/common/collect/v1;

    return-object v0
.end method

.method public R()Lcom/google/common/collect/x1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/x1<",
            "TE;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/T;->f:Lcom/google/common/collect/v1;

    invoke-virtual {v0}, Lcom/google/common/collect/v1;->R()Lcom/google/common/collect/x1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/x1;->Z()Lcom/google/common/collect/x1;

    move-result-object v0

    return-object v0
.end method

.method public T(Ljava/lang/Object;Lcom/google/common/collect/x;)Lcom/google/common/collect/v1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;",
            "Lcom/google/common/collect/x;",
            ")",
            "Lcom/google/common/collect/v1<",
            "TE;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/T;->f:Lcom/google/common/collect/v1;

    invoke-virtual {v0, p1, p2}, Lcom/google/common/collect/v1;->f0(Ljava/lang/Object;Lcom/google/common/collect/x;)Lcom/google/common/collect/v1;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/common/collect/v1;->Q()Lcom/google/common/collect/v1;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic U1()Ljava/util/NavigableSet;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/common/collect/T;->R()Lcom/google/common/collect/x1;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic U1()Ljava/util/Set;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/common/collect/T;->R()Lcom/google/common/collect/x1;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic U1()Ljava/util/SortedSet;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/google/common/collect/T;->R()Lcom/google/common/collect/x1;

    move-result-object v0

    return-object v0
.end method

.method public f0(Ljava/lang/Object;Lcom/google/common/collect/x;)Lcom/google/common/collect/v1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;",
            "Lcom/google/common/collect/x;",
            ")",
            "Lcom/google/common/collect/v1<",
            "TE;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/T;->f:Lcom/google/common/collect/v1;

    invoke-virtual {v0, p1, p2}, Lcom/google/common/collect/v1;->T(Ljava/lang/Object;Lcom/google/common/collect/x;)Lcom/google/common/collect/v1;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/common/collect/v1;->Q()Lcom/google/common/collect/v1;

    move-result-object p1

    return-object p1
.end method

.method public firstEntry()Lcom/google/common/collect/V1$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/V1$a<",
            "TE;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/T;->f:Lcom/google/common/collect/v1;

    invoke-interface {v0}, Lcom/google/common/collect/K2;->lastEntry()Lcom/google/common/collect/V1$a;

    move-result-object v0

    return-object v0
.end method

.method public h()Z
    .locals 1

    iget-object v0, p0, Lcom/google/common/collect/T;->f:Lcom/google/common/collect/v1;

    invoke-virtual {v0}, Lcom/google/common/collect/c1;->h()Z

    move-result v0

    return v0
.end method

.method public kb(Ljava/lang/Object;)I
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/google/common/collect/T;->f:Lcom/google/common/collect/v1;

    invoke-interface {v0, p1}, Lcom/google/common/collect/V1;->kb(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public lastEntry()Lcom/google/common/collect/V1$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/V1$a<",
            "TE;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/T;->f:Lcom/google/common/collect/v1;

    invoke-interface {v0}, Lcom/google/common/collect/K2;->firstEntry()Lcom/google/common/collect/V1$a;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic r()Lcom/google/common/collect/r1;
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/collect/T;->R()Lcom/google/common/collect/x1;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, Lcom/google/common/collect/T;->f:Lcom/google/common/collect/v1;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    return v0
.end method

.method public t(I)Lcom/google/common/collect/V1$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/google/common/collect/V1$a<",
            "TE;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/T;->f:Lcom/google/common/collect/v1;

    invoke-virtual {v0}, Lcom/google/common/collect/n1;->s()Lcom/google/common/collect/r1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/r1;->a()Lcom/google/common/collect/g1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/g1;->J()Lcom/google/common/collect/g1;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/common/collect/V1$a;

    return-object p1
.end method
