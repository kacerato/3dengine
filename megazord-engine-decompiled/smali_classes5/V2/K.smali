.class public final LV2/K;
.super LV2/c0;
.source "SourceFile"


# annotations
.annotation build LQ2/a;
.end annotation

.annotation runtime LV2/t;
.end annotation

.annotation runtime Ld3/j;
    containerOf = {
        "N",
        "V"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LV2/K$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<N:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "LV2/c0<",
        "TN;TV;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(LV2/j0;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LV2/j0<",
            "TN;TV;>;)V"
        }
    .end annotation

    invoke-static {p1}, LV2/k0;->g(LV2/j0;)LV2/k0;

    move-result-object v0

    invoke-static {p1}, LV2/K;->a0(LV2/j0;)Lcom/google/common/collect/i1;

    move-result-object v1

    invoke-interface {p1}, LV2/j0;->c()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result p1

    int-to-long v2, p1

    invoke-direct {p0, v0, v1, v2, v3}, LV2/c0;-><init>(LV2/g;Ljava/util/Map;J)V

    return-void
.end method

.method public static synthetic V(LV2/j0;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0, p1, p2}, LV2/K;->b0(LV2/j0;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static X(LV2/j0;Ljava/lang/Object;)LV2/B;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<N:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "LV2/j0<",
            "TN;TV;>;TN;)",
            "LV2/B<",
            "TN;TV;>;"
        }
    .end annotation

    new-instance v0, LV2/J;

    invoke-direct {v0, p0, p1}, LV2/J;-><init>(LV2/j0;Ljava/lang/Object;)V

    invoke-interface {p0}, LV2/j0;->e()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0, p1}, LV2/j0;->l(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p0

    invoke-static {p1, p0, v0}, LV2/o;->x(Ljava/lang/Object;Ljava/lang/Iterable;LR2/t;)LV2/o;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-interface {p0, p1}, LV2/j0;->k(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p0

    invoke-static {p0, v0}, Lcom/google/common/collect/Q1;->j(Ljava/util/Set;LR2/t;)Ljava/util/Map;

    move-result-object p0

    invoke-static {p0}, LV2/g0;->l(Ljava/util/Map;)LV2/g0;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static Y(LV2/K;)LV2/K;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<N:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "LV2/K<",
            "TN;TV;>;)",
            "LV2/K<",
            "TN;TV;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p0}, LR2/H;->E(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, LV2/K;

    return-object p0
.end method

.method public static Z(LV2/j0;)LV2/K;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<N:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "LV2/j0<",
            "TN;TV;>;)",
            "LV2/K<",
            "TN;TV;>;"
        }
    .end annotation

    instance-of v0, p0, LV2/K;

    if-eqz v0, :cond_0

    check-cast p0, LV2/K;

    goto :goto_0

    :cond_0
    new-instance v0, LV2/K;

    invoke-direct {v0, p0}, LV2/K;-><init>(LV2/j0;)V

    move-object p0, v0

    :goto_0
    return-object p0
.end method

.method public static a0(LV2/j0;)Lcom/google/common/collect/i1;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<N:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "LV2/j0<",
            "TN;TV;>;)",
            "Lcom/google/common/collect/i1<",
            "TN;",
            "LV2/B<",
            "TN;TV;>;>;"
        }
    .end annotation

    invoke-static {}, Lcom/google/common/collect/i1;->i()Lcom/google/common/collect/i1$b;

    move-result-object v0

    invoke-interface {p0}, LV2/j0;->m()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-static {p0, v2}, LV2/K;->X(LV2/j0;Ljava/lang/Object;)LV2/B;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/google/common/collect/i1$b;->i(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/i1$b;

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/google/common/collect/i1$b;->d()Lcom/google/common/collect/i1;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b0(LV2/j0;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    invoke-interface {p0, p1, p2, v0}, LV2/j0;->A(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic A(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p3    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    invoke-super {p0, p1, p2, p3}, LV2/c0;->A(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public W()LV2/E;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LV2/E<",
            "TN;>;"
        }
    .end annotation

    new-instance v0, LV2/E;

    invoke-direct {v0, p0}, LV2/E;-><init>(LV2/k;)V

    return-object v0
.end method

.method public bridge synthetic a(Ljava/lang/Object;)Ljava/util/Set;
    .locals 0

    invoke-super {p0, p1}, LV2/c0;->a(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic b(Ljava/lang/Object;)Ljava/util/Set;
    .locals 0

    invoke-super {p0, p1}, LV2/c0;->b(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic d(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    invoke-super {p0, p1, p2}, LV2/c0;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic e()Z
    .locals 1

    invoke-super {p0}, LV2/c0;->e()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic f(LV2/u;)Z
    .locals 0

    invoke-super {p0, p1}, LV2/c0;->f(LV2/u;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic h()LV2/s;
    .locals 1

    invoke-super {p0}, LV2/c0;->h()LV2/s;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic j()Z
    .locals 1

    invoke-super {p0}, LV2/c0;->j()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic k(Ljava/lang/Object;)Ljava/util/Set;
    .locals 0

    invoke-super {p0, p1}, LV2/c0;->k(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic l(Ljava/lang/Object;)Ljava/util/Set;
    .locals 0

    invoke-super {p0, p1}, LV2/c0;->l(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic m()Ljava/util/Set;
    .locals 1

    invoke-super {p0}, LV2/c0;->m()Ljava/util/Set;

    move-result-object v0

    return-object v0
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

    invoke-static {}, LV2/s;->g()LV2/s;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic t()LV2/z;
    .locals 1

    invoke-virtual {p0}, LV2/K;->W()LV2/E;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic u(LV2/u;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p2    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    invoke-super {p0, p1, p2}, LV2/c0;->u(LV2/u;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
