.class public abstract LV2/w;
.super LV2/f;
.source "SourceFile"


# annotations
.annotation runtime LV2/t;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<N:",
        "Ljava/lang/Object;",
        ">",
        "LV2/f<",
        "TN;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, LV2/f;-><init>()V

    return-void
.end method


# virtual methods
.method public N()J
    .locals 2

    invoke-virtual {p0}, LV2/w;->Q()LV2/k;

    move-result-object v0

    invoke-interface {v0}, LV2/k;->c()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public abstract Q()LV2/k;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LV2/k<",
            "TN;>;"
        }
    .end annotation
.end method

.method public bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Iterable;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, LV2/w;->a(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/lang/Object;)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;)",
            "Ljava/util/Set<",
            "TN;>;"
        }
    .end annotation

    .line 2
    invoke-virtual {p0}, LV2/w;->Q()LV2/k;

    move-result-object v0

    invoke-interface {v0, p1}, LV2/k;->a(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic b(Ljava/lang/Object;)Ljava/lang/Iterable;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, LV2/w;->b(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method public b(Ljava/lang/Object;)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;)",
            "Ljava/util/Set<",
            "TN;>;"
        }
    .end annotation

    .line 2
    invoke-virtual {p0}, LV2/w;->Q()LV2/k;

    move-result-object v0

    invoke-interface {v0, p1}, LV2/k;->b(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method public d(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;TN;)Z"
        }
    .end annotation

    invoke-virtual {p0}, LV2/w;->Q()LV2/k;

    move-result-object v0

    invoke-interface {v0, p1, p2}, LV2/k;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public e()Z
    .locals 1

    invoke-virtual {p0}, LV2/w;->Q()LV2/k;

    move-result-object v0

    invoke-interface {v0}, LV2/k;->e()Z

    move-result v0

    return v0
.end method

.method public f(LV2/u;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LV2/u<",
            "TN;>;)Z"
        }
    .end annotation

    invoke-virtual {p0}, LV2/w;->Q()LV2/k;

    move-result-object v0

    invoke-interface {v0, p1}, LV2/k;->f(LV2/u;)Z

    move-result p1

    return p1
.end method

.method public g(Ljava/lang/Object;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;)I"
        }
    .end annotation

    invoke-virtual {p0}, LV2/w;->Q()LV2/k;

    move-result-object v0

    invoke-interface {v0, p1}, LV2/k;->g(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public h()LV2/s;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LV2/s<",
            "TN;>;"
        }
    .end annotation

    invoke-virtual {p0}, LV2/w;->Q()LV2/k;

    move-result-object v0

    invoke-interface {v0}, LV2/k;->h()LV2/s;

    move-result-object v0

    return-object v0
.end method

.method public i(Ljava/lang/Object;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;)I"
        }
    .end annotation

    invoke-virtual {p0}, LV2/w;->Q()LV2/k;

    move-result-object v0

    invoke-interface {v0, p1}, LV2/k;->i(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public j()Z
    .locals 1

    invoke-virtual {p0}, LV2/w;->Q()LV2/k;

    move-result-object v0

    invoke-interface {v0}, LV2/k;->j()Z

    move-result v0

    return v0
.end method

.method public k(Ljava/lang/Object;)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;)",
            "Ljava/util/Set<",
            "TN;>;"
        }
    .end annotation

    invoke-virtual {p0}, LV2/w;->Q()LV2/k;

    move-result-object v0

    invoke-interface {v0, p1}, LV2/k;->k(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method public l(Ljava/lang/Object;)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;)",
            "Ljava/util/Set<",
            "LV2/u<",
            "TN;>;>;"
        }
    .end annotation

    invoke-virtual {p0}, LV2/w;->Q()LV2/k;

    move-result-object v0

    invoke-interface {v0, p1}, LV2/k;->l(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method public m()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TN;>;"
        }
    .end annotation

    invoke-virtual {p0}, LV2/w;->Q()LV2/k;

    move-result-object v0

    invoke-interface {v0}, LV2/k;->m()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public n(Ljava/lang/Object;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;)I"
        }
    .end annotation

    invoke-virtual {p0}, LV2/w;->Q()LV2/k;

    move-result-object v0

    invoke-interface {v0, p1}, LV2/k;->n(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public p()LV2/s;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LV2/s<",
            "TN;>;"
        }
    .end annotation

    invoke-virtual {p0}, LV2/w;->Q()LV2/k;

    move-result-object v0

    invoke-interface {v0}, LV2/k;->p()LV2/s;

    move-result-object v0

    return-object v0
.end method
