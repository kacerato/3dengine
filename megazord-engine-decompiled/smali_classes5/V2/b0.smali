.class public LV2/b0;
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


# instance fields
.field public final a:Z

.field public final b:Z

.field public final c:Z

.field public final d:LV2/s;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LV2/s<",
            "TN;>;"
        }
    .end annotation
.end field

.field public final e:LV2/s;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LV2/s<",
            "TE;>;"
        }
    .end annotation
.end field

.field public final f:LV2/M;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LV2/M<",
            "TN;",
            "LV2/V<",
            "TN;TE;>;>;"
        }
    .end annotation
.end field

.field public final g:LV2/M;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LV2/M<",
            "TE;TN;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(LV2/U;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LV2/U<",
            "-TN;-TE;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p1, LV2/g;->c:LV2/s;

    iget-object v1, p1, LV2/g;->e:LR2/C;

    const/16 v2, 0xa

    .line 2
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, LR2/C;->i(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 3
    invoke-virtual {v0, v1}, LV2/s;->c(I)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p1, LV2/U;->g:LV2/s;

    iget-object v2, p1, LV2/U;->h:LR2/C;

    const/16 v3, 0x14

    .line 4
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, LR2/C;->i(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, LV2/s;->c(I)Ljava/util/Map;

    move-result-object v1

    .line 5
    invoke-direct {p0, p1, v0, v1}, LV2/b0;-><init>(LV2/U;Ljava/util/Map;Ljava/util/Map;)V

    return-void
.end method

.method public constructor <init>(LV2/U;Ljava/util/Map;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LV2/U<",
            "-TN;-TE;>;",
            "Ljava/util/Map<",
            "TN;",
            "LV2/V<",
            "TN;TE;>;>;",
            "Ljava/util/Map<",
            "TE;TN;>;)V"
        }
    .end annotation

    .line 6
    invoke-direct {p0}, LV2/h;-><init>()V

    .line 7
    iget-boolean v0, p1, LV2/g;->a:Z

    iput-boolean v0, p0, LV2/b0;->a:Z

    .line 8
    iget-boolean v0, p1, LV2/U;->f:Z

    iput-boolean v0, p0, LV2/b0;->b:Z

    .line 9
    iget-boolean v0, p1, LV2/g;->b:Z

    iput-boolean v0, p0, LV2/b0;->c:Z

    .line 10
    iget-object v0, p1, LV2/g;->c:LV2/s;

    invoke-virtual {v0}, LV2/s;->a()LV2/s;

    move-result-object v0

    iput-object v0, p0, LV2/b0;->d:LV2/s;

    .line 11
    iget-object p1, p1, LV2/U;->g:LV2/s;

    invoke-virtual {p1}, LV2/s;->a()LV2/s;

    move-result-object p1

    iput-object p1, p0, LV2/b0;->e:LV2/s;

    .line 12
    instance-of p1, p2, Ljava/util/TreeMap;

    if-eqz p1, :cond_0

    .line 13
    new-instance p1, LV2/N;

    invoke-direct {p1, p2}, LV2/N;-><init>(Ljava/util/Map;)V

    goto :goto_0

    .line 14
    :cond_0
    new-instance p1, LV2/M;

    invoke-direct {p1, p2}, LV2/M;-><init>(Ljava/util/Map;)V

    :goto_0
    iput-object p1, p0, LV2/b0;->f:LV2/M;

    .line 15
    new-instance p1, LV2/M;

    invoke-direct {p1, p3}, LV2/M;-><init>(Ljava/util/Map;)V

    iput-object p1, p0, LV2/b0;->g:LV2/M;

    return-void
.end method


# virtual methods
.method public F(Ljava/lang/Object;)LV2/u;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "LV2/u<",
            "TN;>;"
        }
    .end annotation

    invoke-virtual {p0, p1}, LV2/b0;->S(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, LV2/b0;->f:LV2/M;

    invoke-virtual {v1, v0}, LV2/M;->f(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LV2/V;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v1, LV2/V;

    invoke-interface {v1, p1}, LV2/V;->h(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0, v0, p1}, LV2/u;->k(LV2/T;Ljava/lang/Object;Ljava/lang/Object;)LV2/u;

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

    iget-object v0, p0, LV2/b0;->e:LV2/s;

    return-object v0
.end method

.method public K(Ljava/lang/Object;)Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;)",
            "Ljava/util/Set<",
            "TE;>;"
        }
    .end annotation

    invoke-virtual {p0, p1}, LV2/b0;->R(Ljava/lang/Object;)LV2/V;

    move-result-object p1

    invoke-interface {p1}, LV2/V;->i()Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method public final R(Ljava/lang/Object;)LV2/V;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;)",
            "LV2/V<",
            "TN;TE;>;"
        }
    .end annotation

    iget-object v0, p0, LV2/b0;->f:LV2/M;

    invoke-virtual {v0, p1}, LV2/M;->f(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LV2/V;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    invoke-static {p1}, LR2/H;->E(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Node %s is not an element of this graph."

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v1, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final S(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)TN;"
        }
    .end annotation

    iget-object v0, p0, LV2/b0;->g:LV2/M;

    invoke-virtual {v0, p1}, LV2/M;->f(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    invoke-static {p1}, LR2/H;->E(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Edge %s is not an element of this graph."

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v1, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final T(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    iget-object v0, p0, LV2/b0;->g:LV2/M;

    invoke-virtual {v0, p1}, LV2/M;->e(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final U(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;)Z"
        }
    .end annotation

    iget-object v0, p0, LV2/b0;->f:LV2/M;

    invoke-virtual {v0, p1}, LV2/M;->e(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Iterable;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, LV2/b0;->a(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/lang/Object;)Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;)",
            "Ljava/util/Set<",
            "TN;>;"
        }
    .end annotation

    .line 2
    invoke-virtual {p0, p1}, LV2/b0;->R(Ljava/lang/Object;)LV2/V;

    move-result-object p1

    invoke-interface {p1}, LV2/V;->b()Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic b(Ljava/lang/Object;)Ljava/lang/Iterable;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, LV2/b0;->b(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method public b(Ljava/lang/Object;)Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;)",
            "Ljava/util/Set<",
            "TN;>;"
        }
    .end annotation

    .line 2
    invoke-virtual {p0, p1}, LV2/b0;->R(Ljava/lang/Object;)LV2/V;

    move-result-object p1

    invoke-interface {p1}, LV2/V;->a()Ljava/util/Set;

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

    iget-object v0, p0, LV2/b0;->g:LV2/M;

    invoke-virtual {v0}, LV2/M;->k()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public e()Z
    .locals 1

    iget-boolean v0, p0, LV2/b0;->a:Z

    return v0
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

    iget-object v0, p0, LV2/b0;->d:LV2/s;

    return-object v0
.end method

.method public j()Z
    .locals 1

    iget-boolean v0, p0, LV2/b0;->c:Z

    return v0
.end method

.method public k(Ljava/lang/Object;)Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;)",
            "Ljava/util/Set<",
            "TN;>;"
        }
    .end annotation

    invoke-virtual {p0, p1}, LV2/b0;->R(Ljava/lang/Object;)LV2/V;

    move-result-object p1

    invoke-interface {p1}, LV2/V;->c()Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method public l(Ljava/lang/Object;)Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;)",
            "Ljava/util/Set<",
            "TE;>;"
        }
    .end annotation

    invoke-virtual {p0, p1}, LV2/b0;->R(Ljava/lang/Object;)LV2/V;

    move-result-object p1

    invoke-interface {p1}, LV2/V;->g()Ljava/util/Set;

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

    iget-object v0, p0, LV2/b0;->f:LV2/M;

    invoke-virtual {v0}, LV2/M;->k()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public v(Ljava/lang/Object;)Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;)",
            "Ljava/util/Set<",
            "TE;>;"
        }
    .end annotation

    invoke-virtual {p0, p1}, LV2/b0;->R(Ljava/lang/Object;)LV2/V;

    move-result-object p1

    invoke-interface {p1}, LV2/V;->k()Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method public y(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;TN;)",
            "Ljava/util/Set<",
            "TE;>;"
        }
    .end annotation

    invoke-virtual {p0, p1}, LV2/b0;->R(Ljava/lang/Object;)LV2/V;

    move-result-object v0

    iget-boolean v1, p0, LV2/b0;->c:Z

    if-nez v1, :cond_0

    if-ne p1, p2, :cond_0

    invoke-static {}, Lcom/google/common/collect/r1;->x()Lcom/google/common/collect/r1;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-virtual {p0, p2}, LV2/b0;->U(Ljava/lang/Object;)Z

    move-result p1

    const-string v1, "Node %s is not an element of this graph."

    invoke-static {p1, v1, p2}, LR2/H;->u(ZLjava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v0, p2}, LV2/V;->l(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method public z()Z
    .locals 1

    iget-boolean v0, p0, LV2/b0;->b:Z

    return v0
.end method
