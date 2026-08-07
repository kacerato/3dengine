.class public LV2/E;
.super LV2/w;
.source "SourceFile"


# annotations
.annotation build LQ2/a;
.end annotation

.annotation runtime LV2/t;
.end annotation

.annotation runtime Ld3/j;
    containerOf = {
        "N"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LV2/E$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<N:",
        "Ljava/lang/Object;",
        ">",
        "LV2/w<",
        "TN;>;"
    }
.end annotation


# instance fields
.field public final a:LV2/k;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LV2/k<",
            "TN;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(LV2/k;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LV2/k<",
            "TN;>;)V"
        }
    .end annotation

    invoke-direct {p0}, LV2/w;-><init>()V

    iput-object p1, p0, LV2/E;->a:LV2/k;

    return-void
.end method

.method public static R(LV2/z;Ljava/lang/Object;)LV2/B;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<N:",
            "Ljava/lang/Object;",
            ">(",
            "LV2/z<",
            "TN;>;TN;)",
            "LV2/B<",
            "TN;",
            "LV2/C$a;",
            ">;"
        }
    .end annotation

    sget-object v0, LV2/C$a;->EDGE_EXISTS:LV2/C$a;

    invoke-static {v0}, LR2/v;->b(Ljava/lang/Object;)LR2/t;

    move-result-object v0

    invoke-interface {p0}, LV2/z;->e()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0, p1}, LV2/z;->l(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p0

    invoke-static {p1, p0, v0}, LV2/o;->x(Ljava/lang/Object;Ljava/lang/Iterable;LR2/t;)LV2/o;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-interface {p0, p1}, LV2/z;->k(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p0

    invoke-static {p0, v0}, Lcom/google/common/collect/Q1;->j(Ljava/util/Set;LR2/t;)Ljava/util/Map;

    move-result-object p0

    invoke-static {p0}, LV2/g0;->l(Ljava/util/Map;)LV2/g0;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static S(LV2/z;)LV2/E;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<N:",
            "Ljava/lang/Object;",
            ">(",
            "LV2/z<",
            "TN;>;)",
            "LV2/E<",
            "TN;>;"
        }
    .end annotation

    instance-of v0, p0, LV2/E;

    if-eqz v0, :cond_0

    check-cast p0, LV2/E;

    goto :goto_0

    :cond_0
    new-instance v0, LV2/E;

    new-instance v1, LV2/c0;

    invoke-static {p0}, LV2/A;->g(LV2/z;)LV2/A;

    move-result-object v2

    invoke-static {p0}, LV2/E;->U(LV2/z;)Lcom/google/common/collect/i1;

    move-result-object v3

    invoke-interface {p0}, LV2/z;->c()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->size()I

    move-result p0

    int-to-long v4, p0

    invoke-direct {v1, v2, v3, v4, v5}, LV2/c0;-><init>(LV2/g;Ljava/util/Map;J)V

    invoke-direct {v0, v1}, LV2/E;-><init>(LV2/k;)V

    move-object p0, v0

    :goto_0
    return-object p0
.end method

.method public static T(LV2/E;)LV2/E;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<N:",
            "Ljava/lang/Object;",
            ">(",
            "LV2/E<",
            "TN;>;)",
            "LV2/E<",
            "TN;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p0}, LR2/H;->E(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, LV2/E;

    return-object p0
.end method

.method public static U(LV2/z;)Lcom/google/common/collect/i1;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<N:",
            "Ljava/lang/Object;",
            ">(",
            "LV2/z<",
            "TN;>;)",
            "Lcom/google/common/collect/i1<",
            "TN;",
            "LV2/B<",
            "TN;",
            "LV2/C$a;",
            ">;>;"
        }
    .end annotation

    invoke-static {}, Lcom/google/common/collect/i1;->i()Lcom/google/common/collect/i1$b;

    move-result-object v0

    invoke-interface {p0}, LV2/z;->m()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-static {p0, v2}, LV2/E;->R(LV2/z;Ljava/lang/Object;)LV2/B;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/google/common/collect/i1$b;->i(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/i1$b;

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/google/common/collect/i1$b;->d()Lcom/google/common/collect/i1;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public Q()LV2/k;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LV2/k<",
            "TN;>;"
        }
    .end annotation

    iget-object v0, p0, LV2/E;->a:LV2/k;

    return-object v0
.end method

.method public bridge synthetic a(Ljava/lang/Object;)Ljava/util/Set;
    .locals 0

    invoke-super {p0, p1}, LV2/w;->a(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic b(Ljava/lang/Object;)Ljava/util/Set;
    .locals 0

    invoke-super {p0, p1}, LV2/w;->b(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic d(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    invoke-super {p0, p1, p2}, LV2/w;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic e()Z
    .locals 1

    invoke-super {p0}, LV2/w;->e()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic f(LV2/u;)Z
    .locals 0

    invoke-super {p0, p1}, LV2/w;->f(LV2/u;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic g(Ljava/lang/Object;)I
    .locals 0

    invoke-super {p0, p1}, LV2/w;->g(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic h()LV2/s;
    .locals 1

    invoke-super {p0}, LV2/w;->h()LV2/s;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic i(Ljava/lang/Object;)I
    .locals 0

    invoke-super {p0, p1}, LV2/w;->i(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic j()Z
    .locals 1

    invoke-super {p0}, LV2/w;->j()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic k(Ljava/lang/Object;)Ljava/util/Set;
    .locals 0

    invoke-super {p0, p1}, LV2/w;->k(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic l(Ljava/lang/Object;)Ljava/util/Set;
    .locals 0

    invoke-super {p0, p1}, LV2/w;->l(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic m()Ljava/util/Set;
    .locals 1

    invoke-super {p0}, LV2/w;->m()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic n(Ljava/lang/Object;)I
    .locals 0

    invoke-super {p0, p1}, LV2/w;->n(Ljava/lang/Object;)I

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

    invoke-static {}, LV2/s;->g()LV2/s;

    move-result-object v0

    return-object v0
.end method
