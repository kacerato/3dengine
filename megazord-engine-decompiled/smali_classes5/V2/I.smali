.class public final LV2/I;
.super LV2/b0;
.source "SourceFile"


# annotations
.annotation build LQ2/a;
.end annotation

.annotation runtime LV2/t;
.end annotation

.annotation runtime Ld3/j;
    containerOf = {
        "N",
        "E"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LV2/I$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<N:",
        "Ljava/lang/Object;",
        "E:",
        "Ljava/lang/Object;",
        ">",
        "LV2/b0<",
        "TN;TE;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(LV2/T;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LV2/T<",
            "TN;TE;>;)V"
        }
    .end annotation

    invoke-static {p1}, LV2/U;->i(LV2/T;)LV2/U;

    move-result-object v0

    invoke-static {p1}, LV2/I;->e0(LV2/T;)Ljava/util/Map;

    move-result-object v1

    invoke-static {p1}, LV2/I;->d0(LV2/T;)Ljava/util/Map;

    move-result-object p1

    invoke-direct {p0, v0, v1, p1}, LV2/b0;-><init>(LV2/U;Ljava/util/Map;Ljava/util/Map;)V

    return-void
.end method

.method public static synthetic V(LV2/T;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0, p1}, LV2/I;->h0(LV2/T;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic W(LV2/T;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0, p1}, LV2/I;->g0(LV2/T;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic X(LV2/T;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0, p1, p2}, LV2/I;->f0(LV2/T;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static Y(LV2/T;Ljava/lang/Object;)LR2/t;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<N:",
            "Ljava/lang/Object;",
            "E:",
            "Ljava/lang/Object;",
            ">(",
            "LV2/T<",
            "TN;TE;>;TN;)",
            "LR2/t<",
            "TE;TN;>;"
        }
    .end annotation

    new-instance v0, LV2/G;

    invoke-direct {v0, p0, p1}, LV2/G;-><init>(LV2/T;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static a0(LV2/T;Ljava/lang/Object;)LV2/V;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<N:",
            "Ljava/lang/Object;",
            "E:",
            "Ljava/lang/Object;",
            ">(",
            "LV2/T<",
            "TN;TE;>;TN;)",
            "LV2/V<",
            "TN;TE;>;"
        }
    .end annotation

    invoke-interface {p0}, LV2/T;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0, p1}, LV2/T;->K(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    invoke-static {p0}, LV2/I;->i0(LV2/T;)LR2/t;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/common/collect/Q1;->j(Ljava/util/Set;LR2/t;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {p0, p1}, LV2/T;->v(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v1

    invoke-static {p0}, LV2/I;->j0(LV2/T;)LR2/t;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/common/collect/Q1;->j(Ljava/util/Set;LR2/t;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {p0, p1, p1}, LV2/T;->y(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result p1

    invoke-interface {p0}, LV2/T;->z()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {v0, v1, p1}, LV2/p;->q(Ljava/util/Map;Ljava/util/Map;I)LV2/p;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-static {v0, v1, p1}, LV2/q;->o(Ljava/util/Map;Ljava/util/Map;I)LV2/q;

    move-result-object p0

    :goto_0
    return-object p0

    :cond_1
    invoke-interface {p0, p1}, LV2/T;->l(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    invoke-static {p0, p1}, LV2/I;->Y(LV2/T;Ljava/lang/Object;)LR2/t;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/google/common/collect/Q1;->j(Ljava/util/Set;LR2/t;)Ljava/util/Map;

    move-result-object p1

    invoke-interface {p0}, LV2/T;->z()Z

    move-result p0

    if-eqz p0, :cond_2

    invoke-static {p1}, LV2/h0;->q(Ljava/util/Map;)LV2/h0;

    move-result-object p0

    goto :goto_1

    :cond_2
    invoke-static {p1}, LV2/i0;->n(Ljava/util/Map;)LV2/i0;

    move-result-object p0

    :goto_1
    return-object p0
.end method

.method public static b0(LV2/I;)LV2/I;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<N:",
            "Ljava/lang/Object;",
            "E:",
            "Ljava/lang/Object;",
            ">(",
            "LV2/I<",
            "TN;TE;>;)",
            "LV2/I<",
            "TN;TE;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p0}, LR2/H;->E(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, LV2/I;

    return-object p0
.end method

.method public static c0(LV2/T;)LV2/I;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<N:",
            "Ljava/lang/Object;",
            "E:",
            "Ljava/lang/Object;",
            ">(",
            "LV2/T<",
            "TN;TE;>;)",
            "LV2/I<",
            "TN;TE;>;"
        }
    .end annotation

    instance-of v0, p0, LV2/I;

    if-eqz v0, :cond_0

    check-cast p0, LV2/I;

    goto :goto_0

    :cond_0
    new-instance v0, LV2/I;

    invoke-direct {v0, p0}, LV2/I;-><init>(LV2/T;)V

    move-object p0, v0

    :goto_0
    return-object p0
.end method

.method public static d0(LV2/T;)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<N:",
            "Ljava/lang/Object;",
            "E:",
            "Ljava/lang/Object;",
            ">(",
            "LV2/T<",
            "TN;TE;>;)",
            "Ljava/util/Map<",
            "TE;TN;>;"
        }
    .end annotation

    invoke-static {}, Lcom/google/common/collect/i1;->i()Lcom/google/common/collect/i1$b;

    move-result-object v0

    invoke-interface {p0}, LV2/T;->c()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p0, v2}, LV2/T;->F(Ljava/lang/Object;)LV2/u;

    move-result-object v3

    invoke-virtual {v3}, LV2/u;->h()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/google/common/collect/i1$b;->i(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/i1$b;

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/google/common/collect/i1$b;->d()Lcom/google/common/collect/i1;

    move-result-object p0

    return-object p0
.end method

.method public static e0(LV2/T;)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<N:",
            "Ljava/lang/Object;",
            "E:",
            "Ljava/lang/Object;",
            ">(",
            "LV2/T<",
            "TN;TE;>;)",
            "Ljava/util/Map<",
            "TN;",
            "LV2/V<",
            "TN;TE;>;>;"
        }
    .end annotation

    invoke-static {}, Lcom/google/common/collect/i1;->i()Lcom/google/common/collect/i1$b;

    move-result-object v0

    invoke-interface {p0}, LV2/T;->m()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-static {p0, v2}, LV2/I;->a0(LV2/T;Ljava/lang/Object;)LV2/V;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/google/common/collect/i1$b;->i(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/i1$b;

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/google/common/collect/i1$b;->d()Lcom/google/common/collect/i1;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic f0(LV2/T;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-interface {p0, p2}, LV2/T;->F(Ljava/lang/Object;)LV2/u;

    move-result-object p0

    invoke-virtual {p0, p1}, LV2/u;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic g0(LV2/T;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-interface {p0, p1}, LV2/T;->F(Ljava/lang/Object;)LV2/u;

    move-result-object p0

    invoke-virtual {p0}, LV2/u;->m()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic h0(LV2/T;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-interface {p0, p1}, LV2/T;->F(Ljava/lang/Object;)LV2/u;

    move-result-object p0

    invoke-virtual {p0}, LV2/u;->n()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static i0(LV2/T;)LR2/t;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<N:",
            "Ljava/lang/Object;",
            "E:",
            "Ljava/lang/Object;",
            ">(",
            "LV2/T<",
            "TN;TE;>;)",
            "LR2/t<",
            "TE;TN;>;"
        }
    .end annotation

    new-instance v0, LV2/F;

    invoke-direct {v0, p0}, LV2/F;-><init>(LV2/T;)V

    return-object v0
.end method

.method public static j0(LV2/T;)LR2/t;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<N:",
            "Ljava/lang/Object;",
            "E:",
            "Ljava/lang/Object;",
            ">(",
            "LV2/T<",
            "TN;TE;>;)",
            "LR2/t<",
            "TE;TN;>;"
        }
    .end annotation

    new-instance v0, LV2/H;

    invoke-direct {v0, p0}, LV2/H;-><init>(LV2/T;)V

    return-object v0
.end method


# virtual methods
.method public bridge synthetic F(Ljava/lang/Object;)LV2/u;
    .locals 0

    invoke-super {p0, p1}, LV2/b0;->F(Ljava/lang/Object;)LV2/u;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic I()LV2/s;
    .locals 1

    invoke-super {p0}, LV2/b0;->I()LV2/s;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic K(Ljava/lang/Object;)Ljava/util/Set;
    .locals 0

    invoke-super {p0, p1}, LV2/b0;->K(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method public Z()LV2/E;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LV2/E<",
            "TN;>;"
        }
    .end annotation

    new-instance v0, LV2/E;

    invoke-super {p0}, LV2/h;->t()LV2/z;

    move-result-object v1

    invoke-direct {v0, v1}, LV2/E;-><init>(LV2/k;)V

    return-object v0
.end method

.method public bridge synthetic a(Ljava/lang/Object;)Ljava/util/Set;
    .locals 0

    invoke-super {p0, p1}, LV2/b0;->a(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic b(Ljava/lang/Object;)Ljava/util/Set;
    .locals 0

    invoke-super {p0, p1}, LV2/b0;->b(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic c()Ljava/util/Set;
    .locals 1

    invoke-super {p0}, LV2/b0;->c()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic e()Z
    .locals 1

    invoke-super {p0}, LV2/b0;->e()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic h()LV2/s;
    .locals 1

    invoke-super {p0}, LV2/b0;->h()LV2/s;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic j()Z
    .locals 1

    invoke-super {p0}, LV2/b0;->j()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic k(Ljava/lang/Object;)Ljava/util/Set;
    .locals 0

    invoke-super {p0, p1}, LV2/b0;->k(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic l(Ljava/lang/Object;)Ljava/util/Set;
    .locals 0

    invoke-super {p0, p1}, LV2/b0;->l(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic m()Ljava/util/Set;
    .locals 1

    invoke-super {p0}, LV2/b0;->m()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic t()LV2/z;
    .locals 1

    invoke-virtual {p0}, LV2/I;->Z()LV2/E;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic v(Ljava/lang/Object;)Ljava/util/Set;
    .locals 0

    invoke-super {p0, p1}, LV2/b0;->v(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic y(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Set;
    .locals 0

    invoke-super {p0, p1, p2}, LV2/b0;->y(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic z()Z
    .locals 1

    invoke-super {p0}, LV2/b0;->z()Z

    move-result v0

    return v0
.end method
