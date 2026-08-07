.class public Lui/d;
.super Lpi/a;
.source "SourceFile"

# interfaces
.implements Lti/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lui/d$b;
    }
.end annotation


# instance fields
.field public final a:Lui/e;

.field public final b:Lui/h;


# direct methods
.method public constructor <init>(Lui/e;)V
    .locals 0

    invoke-direct {p0}, Lpi/a;-><init>()V

    iput-object p1, p0, Lui/d;->a:Lui/e;

    invoke-interface {p1}, Lui/e;->b()Lui/h;

    move-result-object p1

    iput-object p1, p0, Lui/d;->b:Lui/h;

    return-void
.end method


# virtual methods
.method public A()Ljava/util/Set;
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Class<",
            "+",
            "Lpi/v;",
            ">;>;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashSet;

    const-class v19, Lpi/y;

    const-class v20, Lpi/l;

    const-class v1, Lpi/i;

    const-class v2, Lpi/m;

    const-class v3, Lpi/x;

    const-class v4, Lpi/c;

    const-class v5, Lpi/d;

    const-class v6, Lpi/k;

    const-class v7, Lpi/n;

    const-class v8, Lpi/B;

    const-class v9, Lpi/q;

    const-class v10, Lpi/r;

    const-class v11, Lpi/u;

    const-class v12, Lpi/w;

    const-class v13, Lpi/p;

    const-class v14, Lpi/j;

    const-class v15, Lpi/z;

    const-class v16, Lpi/A;

    const-class v17, Lpi/e;

    const-class v18, Lpi/o;

    filled-new-array/range {v1 .. v20}, [Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public D(Lpi/y;)V
    .locals 1

    iget-object p1, p0, Lui/d;->b:Lui/h;

    iget-object v0, p0, Lui/d;->a:Lui/e;

    invoke-interface {v0}, Lui/e;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lui/h;->c(Ljava/lang/String;)V

    return-void
.end method

.method public E(Lpi/d;)V
    .locals 2

    const-string v0, "ul"

    invoke-virtual {p0, p1, v0}, Lui/d;->N(Lpi/v;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {p0, p1, v0, v1}, Lui/d;->R(Lpi/t;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public G(Lpi/j;)V
    .locals 3

    iget-object v0, p0, Lui/d;->b:Lui/h;

    const-string v1, "em"

    invoke-virtual {p0, p1, v1}, Lui/d;->N(Lpi/v;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lui/h;->e(Ljava/lang/String;Ljava/util/Map;)V

    invoke-virtual {p0, p1}, Lui/d;->f(Lpi/v;)V

    iget-object p1, p0, Lui/d;->b:Lui/h;

    const-string v0, "/em"

    invoke-virtual {p1, v0}, Lui/h;->d(Ljava/lang/String;)V

    return-void
.end method

.method public I(Lpi/x;)V
    .locals 4

    invoke-virtual {p0, p1}, Lui/d;->P(Lpi/x;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v1, p0, Lui/d;->b:Lui/h;

    invoke-virtual {v1}, Lui/h;->b()V

    iget-object v1, p0, Lui/d;->b:Lui/h;

    const-string v2, "p"

    invoke-virtual {p0, p1, v2}, Lui/d;->N(Lpi/v;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lui/h;->e(Ljava/lang/String;Ljava/util/Map;)V

    :cond_0
    invoke-virtual {p0, p1}, Lui/d;->f(Lpi/v;)V

    if-nez v0, :cond_1

    iget-object p1, p0, Lui/d;->b:Lui/h;

    const-string v0, "/p"

    invoke-virtual {p1, v0}, Lui/h;->d(Ljava/lang/String;)V

    iget-object p1, p0, Lui/d;->b:Lui/h;

    invoke-virtual {p1}, Lui/h;->b()V

    :cond_1
    return-void
.end method

.method public J(Lpi/A;)V
    .locals 1

    iget-object v0, p0, Lui/d;->b:Lui/h;

    invoke-virtual {p1}, Lpi/A;->p()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lui/h;->g(Ljava/lang/String;)V

    return-void
.end method

.method public K(Lpi/p;)V
    .locals 4

    iget-object v0, p0, Lui/d;->a:Lui/e;

    invoke-virtual {p1}, Lpi/p;->p()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lui/e;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lui/d$b;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lui/d$b;-><init>(Lui/d$a;)V

    invoke-virtual {p1, v1}, Lpi/p;->c(Lpi/C;)V

    invoke-virtual {v1}, Lui/d$b;->N()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    const-string v3, "src"

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "alt"

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lpi/p;->q()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v0, "title"

    invoke-virtual {p1}, Lpi/p;->q()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object v0, p0, Lui/d;->b:Lui/h;

    const-string v1, "img"

    invoke-virtual {p0, p1, v1, v2}, Lui/d;->O(Lpi/v;Ljava/lang/String;Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p1, v2}, Lui/h;->f(Ljava/lang/String;Ljava/util/Map;Z)V

    return-void
.end method

.method public M(Lpi/i;)V
    .locals 0

    invoke-virtual {p0, p1}, Lui/d;->f(Lpi/v;)V

    return-void
.end method

.method public final N(Lpi/v;Ljava/lang/String;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lpi/v;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lui/d;->O(Lpi/v;Ljava/lang/String;Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method public final O(Lpi/v;Ljava/lang/String;Ljava/util/Map;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lpi/v;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lui/d;->a:Lui/e;

    invoke-interface {v0, p1, p2, p3}, Lui/e;->f(Lpi/v;Ljava/lang/String;Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method public final P(Lpi/x;)Z
    .locals 1

    invoke-virtual {p1}, Lpi/b;->p()Lpi/b;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lpi/v;->h()Lpi/v;

    move-result-object p1

    if-eqz p1, :cond_0

    instance-of v0, p1, Lpi/t;

    if-eqz v0, :cond_0

    check-cast p1, Lpi/t;

    invoke-virtual {p1}, Lpi/t;->q()Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final Q(Ljava/lang/String;Lpi/v;Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lpi/v;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lui/d;->b:Lui/h;

    invoke-virtual {v0}, Lui/h;->b()V

    iget-object v0, p0, Lui/d;->b:Lui/h;

    const-string v1, "pre"

    invoke-virtual {p0, p2, v1}, Lui/d;->N(Lpi/v;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lui/h;->e(Ljava/lang/String;Ljava/util/Map;)V

    iget-object v0, p0, Lui/d;->b:Lui/h;

    const-string v1, "code"

    invoke-virtual {p0, p2, v1, p3}, Lui/d;->O(Lpi/v;Ljava/lang/String;Ljava/util/Map;)Ljava/util/Map;

    move-result-object p2

    invoke-virtual {v0, v1, p2}, Lui/h;->e(Ljava/lang/String;Ljava/util/Map;)V

    iget-object p2, p0, Lui/d;->b:Lui/h;

    invoke-virtual {p2, p1}, Lui/h;->g(Ljava/lang/String;)V

    iget-object p1, p0, Lui/d;->b:Lui/h;

    const-string p2, "/code"

    invoke-virtual {p1, p2}, Lui/h;->d(Ljava/lang/String;)V

    iget-object p1, p0, Lui/d;->b:Lui/h;

    const-string p2, "/pre"

    invoke-virtual {p1, p2}, Lui/h;->d(Ljava/lang/String;)V

    iget-object p1, p0, Lui/d;->b:Lui/h;

    invoke-virtual {p1}, Lui/h;->b()V

    return-void
.end method

.method public final R(Lpi/t;Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lpi/t;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lui/d;->b:Lui/h;

    invoke-virtual {v0}, Lui/h;->b()V

    iget-object v0, p0, Lui/d;->b:Lui/h;

    invoke-virtual {v0, p2, p3}, Lui/h;->e(Ljava/lang/String;Ljava/util/Map;)V

    iget-object p3, p0, Lui/d;->b:Lui/h;

    invoke-virtual {p3}, Lui/h;->b()V

    invoke-virtual {p0, p1}, Lui/d;->f(Lpi/v;)V

    iget-object p1, p0, Lui/d;->b:Lui/h;

    invoke-virtual {p1}, Lui/h;->b()V

    iget-object p1, p0, Lui/d;->b:Lui/h;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v0, 0x2f

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lui/h;->d(Ljava/lang/String;)V

    iget-object p1, p0, Lui/d;->b:Lui/h;

    invoke-virtual {p1}, Lui/h;->b()V

    return-void
.end method

.method public a(Lpi/v;)V
    .locals 0

    invoke-virtual {p1, p0}, Lpi/v;->c(Lpi/C;)V

    return-void
.end method

.method public b(Lpi/q;)V
    .locals 2

    invoke-virtual {p1}, Lpi/q;->q()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {p0, v0, p1, v1}, Lui/d;->Q(Ljava/lang/String;Lpi/v;Ljava/util/Map;)V

    return-void
.end method

.method public d(Lpi/m;)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "h"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lpi/m;->q()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lui/d;->b:Lui/h;

    invoke-virtual {v1}, Lui/h;->b()V

    iget-object v1, p0, Lui/d;->b:Lui/h;

    invoke-virtual {p0, p1, v0}, Lui/d;->N(Lpi/v;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lui/h;->e(Ljava/lang/String;Ljava/util/Map;)V

    invoke-virtual {p0, p1}, Lui/d;->f(Lpi/v;)V

    iget-object p1, p0, Lui/d;->b:Lui/h;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x2f

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lui/h;->d(Ljava/lang/String;)V

    iget-object p1, p0, Lui/d;->b:Lui/h;

    invoke-virtual {p1}, Lui/h;->b()V

    return-void
.end method

.method public f(Lpi/v;)V
    .locals 2

    invoke-virtual {p1}, Lpi/v;->e()Lpi/v;

    move-result-object p1

    :goto_0
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lpi/v;->g()Lpi/v;

    move-result-object v0

    iget-object v1, p0, Lui/d;->a:Lui/e;

    invoke-interface {v1, p1}, Lui/e;->a(Lpi/v;)V

    move-object p1, v0

    goto :goto_0

    :cond_0
    return-void
.end method

.method public g(Lpi/z;)V
    .locals 3

    iget-object v0, p0, Lui/d;->b:Lui/h;

    const-string v1, "strong"

    invoke-virtual {p0, p1, v1}, Lui/d;->N(Lpi/v;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lui/h;->e(Ljava/lang/String;Ljava/util/Map;)V

    invoke-virtual {p0, p1}, Lui/d;->f(Lpi/v;)V

    iget-object p1, p0, Lui/d;->b:Lui/h;

    const-string v0, "/strong"

    invoke-virtual {p1, v0}, Lui/h;->d(Ljava/lang/String;)V

    return-void
.end method

.method public i(Lpi/l;)V
    .locals 3

    iget-object v0, p0, Lui/d;->b:Lui/h;

    const-string v1, "br"

    invoke-virtual {p0, p1, v1}, Lui/d;->N(Lpi/v;Ljava/lang/String;)Ljava/util/Map;

    move-result-object p1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p1, v2}, Lui/h;->f(Ljava/lang/String;Ljava/util/Map;Z)V

    iget-object p1, p0, Lui/d;->b:Lui/h;

    invoke-virtual {p1}, Lui/h;->b()V

    return-void
.end method

.method public k(Lpi/r;)V
    .locals 3

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iget-object v1, p0, Lui/d;->a:Lui/e;

    invoke-virtual {p1}, Lpi/r;->p()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lui/e;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "href"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lpi/r;->q()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v1, "title"

    invoke-virtual {p1}, Lpi/r;->q()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object v1, p0, Lui/d;->b:Lui/h;

    const-string v2, "a"

    invoke-virtual {p0, p1, v2, v0}, Lui/d;->O(Lpi/v;Ljava/lang/String;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lui/h;->e(Ljava/lang/String;Ljava/util/Map;)V

    invoke-virtual {p0, p1}, Lui/d;->f(Lpi/v;)V

    iget-object p1, p0, Lui/d;->b:Lui/h;

    const-string v0, "/a"

    invoke-virtual {p1, v0}, Lui/h;->d(Ljava/lang/String;)V

    return-void
.end method

.method public m(Lpi/u;)V
    .locals 3

    iget-object v0, p0, Lui/d;->b:Lui/h;

    const-string v1, "li"

    invoke-virtual {p0, p1, v1}, Lui/d;->N(Lpi/v;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lui/h;->e(Ljava/lang/String;Ljava/util/Map;)V

    invoke-virtual {p0, p1}, Lui/d;->f(Lpi/v;)V

    iget-object p1, p0, Lui/d;->b:Lui/h;

    const-string v0, "/li"

    invoke-virtual {p1, v0}, Lui/h;->d(Ljava/lang/String;)V

    iget-object p1, p0, Lui/d;->b:Lui/h;

    invoke-virtual {p1}, Lui/h;->b()V

    return-void
.end method

.method public n(Lpi/o;)V
    .locals 1

    iget-object v0, p0, Lui/d;->a:Lui/e;

    invoke-interface {v0}, Lui/e;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lui/d;->b:Lui/h;

    invoke-virtual {p1}, Lpi/o;->p()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lui/h;->g(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lui/d;->b:Lui/h;

    invoke-virtual {p1}, Lpi/o;->p()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lui/h;->c(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public p(Lpi/e;)V
    .locals 3

    iget-object v0, p0, Lui/d;->b:Lui/h;

    const-string v1, "code"

    invoke-virtual {p0, p1, v1}, Lui/d;->N(Lpi/v;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lui/h;->e(Ljava/lang/String;Ljava/util/Map;)V

    iget-object v0, p0, Lui/d;->b:Lui/h;

    invoke-virtual {p1}, Lpi/e;->p()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lui/h;->g(Ljava/lang/String;)V

    iget-object p1, p0, Lui/d;->b:Lui/h;

    const-string v0, "/code"

    invoke-virtual {p1, v0}, Lui/h;->d(Ljava/lang/String;)V

    return-void
.end method

.method public r(Lpi/w;)V
    .locals 3

    invoke-virtual {p1}, Lpi/w;->t()I

    move-result v0

    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    const/4 v2, 0x1

    if-eq v0, v2, :cond_0

    const-string v2, "start"

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    const-string v0, "ol"

    invoke-virtual {p0, p1, v0, v1}, Lui/d;->O(Lpi/v;Ljava/lang/String;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {p0, p1, v0, v1}, Lui/d;->R(Lpi/t;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public t(Lpi/k;)V
    .locals 5

    invoke-virtual {p1}, Lpi/k;->u()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-virtual {p1}, Lpi/k;->t()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_0

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    invoke-virtual {v2, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "language-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "class"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    invoke-virtual {p0, v0, p1, v1}, Lui/d;->Q(Ljava/lang/String;Lpi/v;Ljava/util/Map;)V

    return-void
.end method

.method public u(Lpi/c;)V
    .locals 3

    iget-object v0, p0, Lui/d;->b:Lui/h;

    invoke-virtual {v0}, Lui/h;->b()V

    iget-object v0, p0, Lui/d;->b:Lui/h;

    const-string v1, "blockquote"

    invoke-virtual {p0, p1, v1}, Lui/d;->N(Lpi/v;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lui/h;->e(Ljava/lang/String;Ljava/util/Map;)V

    iget-object v0, p0, Lui/d;->b:Lui/h;

    invoke-virtual {v0}, Lui/h;->b()V

    invoke-virtual {p0, p1}, Lui/d;->f(Lpi/v;)V

    iget-object p1, p0, Lui/d;->b:Lui/h;

    invoke-virtual {p1}, Lui/h;->b()V

    iget-object p1, p0, Lui/d;->b:Lui/h;

    const-string v0, "/blockquote"

    invoke-virtual {p1, v0}, Lui/h;->d(Ljava/lang/String;)V

    iget-object p1, p0, Lui/d;->b:Lui/h;

    invoke-virtual {p1}, Lui/h;->b()V

    return-void
.end method

.method public v(Lpi/n;)V
    .locals 3

    iget-object v0, p0, Lui/d;->b:Lui/h;

    invoke-virtual {v0}, Lui/h;->b()V

    iget-object v0, p0, Lui/d;->a:Lui/e;

    invoke-interface {v0}, Lui/e;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lui/d;->b:Lui/h;

    const-string v1, "p"

    invoke-virtual {p0, p1, v1}, Lui/d;->N(Lpi/v;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lui/h;->e(Ljava/lang/String;Ljava/util/Map;)V

    iget-object v0, p0, Lui/d;->b:Lui/h;

    invoke-virtual {p1}, Lpi/n;->q()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lui/h;->g(Ljava/lang/String;)V

    iget-object p1, p0, Lui/d;->b:Lui/h;

    const-string v0, "/p"

    invoke-virtual {p1, v0}, Lui/h;->d(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lui/d;->b:Lui/h;

    invoke-virtual {p1}, Lpi/n;->q()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lui/h;->c(Ljava/lang/String;)V

    :goto_0
    iget-object p1, p0, Lui/d;->b:Lui/h;

    invoke-virtual {p1}, Lui/h;->b()V

    return-void
.end method

.method public w(Lpi/B;)V
    .locals 3

    iget-object v0, p0, Lui/d;->b:Lui/h;

    invoke-virtual {v0}, Lui/h;->b()V

    iget-object v0, p0, Lui/d;->b:Lui/h;

    const-string v1, "hr"

    invoke-virtual {p0, p1, v1}, Lui/d;->N(Lpi/v;Ljava/lang/String;)Ljava/util/Map;

    move-result-object p1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p1, v2}, Lui/h;->f(Ljava/lang/String;Ljava/util/Map;Z)V

    iget-object p1, p0, Lui/d;->b:Lui/h;

    invoke-virtual {p1}, Lui/h;->b()V

    return-void
.end method
