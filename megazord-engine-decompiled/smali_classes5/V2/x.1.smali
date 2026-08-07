.class public abstract LV2/x;
.super LV2/h;
.source "SourceFile"


# annotations
.annotation runtime LV2/t;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<N:",
        "Ljava/lang/Object;",
        "E:",
        "Ljava/lang/Object;",
        ">",
        "LV2/h<",
        "TN;TE;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, LV2/h;-><init>()V

    return-void
.end method


# virtual methods
.method public B(LV2/u;)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LV2/u<",
            "TN;>;)",
            "Ljava/util/Set<",
            "TE;>;"
        }
    .end annotation

    invoke-virtual {p0}, LV2/x;->R()LV2/T;

    move-result-object v0

    invoke-interface {v0, p1}, LV2/T;->B(LV2/u;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method public C(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;TN;)TE;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    invoke-virtual {p0}, LV2/x;->R()LV2/T;

    move-result-object v0

    invoke-interface {v0, p1, p2}, LV2/T;->C(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public F(Ljava/lang/Object;)LV2/u;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "LV2/u<",
            "TN;>;"
        }
    .end annotation

    invoke-virtual {p0}, LV2/x;->R()LV2/T;

    move-result-object v0

    invoke-interface {v0, p1}, LV2/T;->F(Ljava/lang/Object;)LV2/u;

    move-result-object p1

    return-object p1
.end method

.method public G(LV2/u;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LV2/u<",
            "TN;>;)TE;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    invoke-virtual {p0}, LV2/x;->R()LV2/T;

    move-result-object v0

    invoke-interface {v0, p1}, LV2/T;->G(LV2/u;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public I()LV2/s;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LV2/s<",
            "TE;>;"
        }
    .end annotation

    invoke-virtual {p0}, LV2/x;->R()LV2/T;

    move-result-object v0

    invoke-interface {v0}, LV2/T;->I()LV2/s;

    move-result-object v0

    return-object v0
.end method

.method public K(Ljava/lang/Object;)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;)",
            "Ljava/util/Set<",
            "TE;>;"
        }
    .end annotation

    invoke-virtual {p0}, LV2/x;->R()LV2/T;

    move-result-object v0

    invoke-interface {v0, p1}, LV2/T;->K(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method public abstract R()LV2/T;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LV2/T<",
            "TN;TE;>;"
        }
    .end annotation
.end method

.method public bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Iterable;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, LV2/x;->a(Ljava/lang/Object;)Ljava/util/Set;

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
    invoke-virtual {p0}, LV2/x;->R()LV2/T;

    move-result-object v0

    invoke-interface {v0, p1}, LV2/T;->a(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic b(Ljava/lang/Object;)Ljava/lang/Iterable;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, LV2/x;->b(Ljava/lang/Object;)Ljava/util/Set;

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
    invoke-virtual {p0}, LV2/x;->R()LV2/T;

    move-result-object v0

    invoke-interface {v0, p1}, LV2/T;->b(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method public c()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TE;>;"
        }
    .end annotation

    invoke-virtual {p0}, LV2/x;->R()LV2/T;

    move-result-object v0

    invoke-interface {v0}, LV2/T;->c()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public d(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;TN;)Z"
        }
    .end annotation

    invoke-virtual {p0}, LV2/x;->R()LV2/T;

    move-result-object v0

    invoke-interface {v0, p1, p2}, LV2/T;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public e()Z
    .locals 1

    invoke-virtual {p0}, LV2/x;->R()LV2/T;

    move-result-object v0

    invoke-interface {v0}, LV2/T;->e()Z

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

    invoke-virtual {p0}, LV2/x;->R()LV2/T;

    move-result-object v0

    invoke-interface {v0, p1}, LV2/T;->f(LV2/u;)Z

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

    invoke-virtual {p0}, LV2/x;->R()LV2/T;

    move-result-object v0

    invoke-interface {v0, p1}, LV2/T;->g(Ljava/lang/Object;)I

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

    invoke-virtual {p0}, LV2/x;->R()LV2/T;

    move-result-object v0

    invoke-interface {v0}, LV2/T;->h()LV2/s;

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

    invoke-virtual {p0}, LV2/x;->R()LV2/T;

    move-result-object v0

    invoke-interface {v0, p1}, LV2/T;->i(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public j()Z
    .locals 1

    invoke-virtual {p0}, LV2/x;->R()LV2/T;

    move-result-object v0

    invoke-interface {v0}, LV2/T;->j()Z

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

    invoke-virtual {p0}, LV2/x;->R()LV2/T;

    move-result-object v0

    invoke-interface {v0, p1}, LV2/T;->k(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method public l(Ljava/lang/Object;)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;)",
            "Ljava/util/Set<",
            "TE;>;"
        }
    .end annotation

    invoke-virtual {p0}, LV2/x;->R()LV2/T;

    move-result-object v0

    invoke-interface {v0, p1}, LV2/T;->l(Ljava/lang/Object;)Ljava/util/Set;

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

    invoke-virtual {p0}, LV2/x;->R()LV2/T;

    move-result-object v0

    invoke-interface {v0}, LV2/T;->m()Ljava/util/Set;

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

    invoke-virtual {p0}, LV2/x;->R()LV2/T;

    move-result-object v0

    invoke-interface {v0, p1}, LV2/T;->n(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public v(Ljava/lang/Object;)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;)",
            "Ljava/util/Set<",
            "TE;>;"
        }
    .end annotation

    invoke-virtual {p0}, LV2/x;->R()LV2/T;

    move-result-object v0

    invoke-interface {v0, p1}, LV2/T;->v(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method public x(Ljava/lang/Object;)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Ljava/util/Set<",
            "TE;>;"
        }
    .end annotation

    invoke-virtual {p0}, LV2/x;->R()LV2/T;

    move-result-object v0

    invoke-interface {v0, p1}, LV2/T;->x(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method public y(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;TN;)",
            "Ljava/util/Set<",
            "TE;>;"
        }
    .end annotation

    invoke-virtual {p0}, LV2/x;->R()LV2/T;

    move-result-object v0

    invoke-interface {v0, p1, p2}, LV2/T;->y(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method public z()Z
    .locals 1

    invoke-virtual {p0}, LV2/x;->R()LV2/T;

    move-result-object v0

    invoke-interface {v0}, LV2/T;->z()Z

    move-result v0

    return v0
.end method
