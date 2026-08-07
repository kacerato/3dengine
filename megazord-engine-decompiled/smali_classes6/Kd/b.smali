.class public LKd/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "LKd/a;",
        ">;"
    }
.end annotation


# instance fields
.field public final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "LId/i<",
            "*>;",
            "LKd/e<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field public final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "LId/z;",
            "LKd/a;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "LKd/a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/IdentityHashMap;

    invoke-direct {v0}, Ljava/util/IdentityHashMap;-><init>()V

    iput-object v0, p0, LKd/b;->b:Ljava/util/Map;

    new-instance v0, Ljava/util/IdentityHashMap;

    invoke-direct {v0}, Ljava/util/IdentityHashMap;-><init>()V

    iput-object v0, p0, LKd/b;->c:Ljava/util/Map;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, LKd/b;->d:Ljava/util/Collection;

    return-void
.end method


# virtual methods
.method public a(LId/j;)V
    .locals 2

    new-instance v0, LKd/e;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1, v1}, LKd/e;-><init>(LId/j;LId/i;LId/A;)V

    iget-object v1, p0, LKd/b;->c:Ljava/util/Map;

    invoke-interface {p1}, LId/j;->t()LId/z;

    move-result-object p1

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, LKd/b;->d:Ljava/util/Collection;

    invoke-interface {p1, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public b(LId/j;LId/i;LId/A;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LId/j;",
            "LId/i<",
            "TT;>;",
            "LId/A;",
            ")V"
        }
    .end annotation

    new-instance v0, LKd/e;

    invoke-direct {v0, p1, p2, p3}, LKd/e;-><init>(LId/j;LId/i;LId/A;)V

    iget-object p3, p0, LKd/b;->b:Ljava/util/Map;

    invoke-interface {p3, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p2, p0, LKd/b;->c:Ljava/util/Map;

    invoke-interface {p1}, LId/j;->t()LId/z;

    move-result-object p1

    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, LKd/b;->d:Ljava/util/Collection;

    invoke-interface {p1, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public c(LId/M;LId/A;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LId/M<",
            "TT;>;",
            "LId/A;",
            ")V"
        }
    .end annotation

    new-instance v0, LKd/h;

    invoke-direct {v0, p1, p2}, LKd/h;-><init>(LId/M;LId/A;)V

    iget-object p2, p0, LKd/b;->d:Ljava/util/Collection;

    invoke-interface {p2, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1}, LId/M;->b()[LId/z;

    move-result-object p1

    array-length p2, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p2, :cond_0

    aget-object v2, p1, v1

    iget-object v3, p0, LKd/b;->c:Ljava/util/Map;

    invoke-interface {v3, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public d(LId/i;)LId/A;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LId/i<",
            "TT;>;)",
            "LId/A;"
        }
    .end annotation

    invoke-virtual {p0, p1}, LKd/b;->g(LId/i;)LKd/e;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-interface {p1}, LKd/a;->e()LId/A;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public e(LId/i;)LId/j;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LId/i<",
            "TT;>;)",
            "LId/j;"
        }
    .end annotation

    invoke-virtual {p0, p1}, LKd/b;->g(LId/i;)LKd/e;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, LKd/e;->f()LId/j;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The event handler "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " is not processing events."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final f(LId/z;)LKd/a;
    .locals 1

    iget-object v0, p0, LKd/b;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LKd/a;

    return-object p1
.end method

.method public final g(LId/i;)LKd/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LId/i<",
            "TT;>;)",
            "LKd/e<",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p0, LKd/b;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LKd/e;

    return-object p1
.end method

.method public h()[LId/z;
    .locals 4

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, LKd/b;->d:Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LKd/a;

    invoke-interface {v2}, LKd/a;->b()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, LKd/a;->a()[LId/z;

    move-result-object v2

    invoke-static {v0, v2}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [LId/z;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LId/z;

    return-object v0
.end method

.method public i(LId/i;)LId/z;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LId/i<",
            "TT;>;)",
            "LId/z;"
        }
    .end annotation

    invoke-virtual {p0, p1}, LKd/b;->e(LId/i;)LId/j;

    move-result-object p1

    invoke-interface {p1}, LId/j;->t()LId/z;

    move-result-object p1

    return-object p1
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "LKd/a;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, LKd/b;->d:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public varargs j([LId/z;)V
    .locals 3

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    invoke-virtual {p0, v2}, LKd/b;->f(LId/z;)LKd/a;

    move-result-object v2

    invoke-interface {v2}, LKd/a;->c()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
