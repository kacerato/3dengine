.class public abstract Lcom/google/common/cache/h;
.super Lcom/google/common/collect/I0;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/cache/c;


# annotations
.annotation build LQ2/c;
.end annotation

.annotation runtime Lcom/google/common/cache/g;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/cache/h$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/I0;",
        "Lcom/google/common/cache/c<",
        "TK;TV;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/common/collect/I0;-><init>()V

    return-void
.end method


# virtual methods
.method public R(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    invoke-virtual {p0}, Lcom/google/common/cache/h;->p0()Lcom/google/common/cache/c;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/common/cache/c;->R(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public S(Ljava/lang/Iterable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/common/cache/h;->p0()Lcom/google/common/cache/c;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/common/cache/c;->S(Ljava/lang/Iterable;)V

    return-void
.end method

.method public cleanUp()V
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/cache/h;->p0()Lcom/google/common/cache/c;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/cache/c;->cleanUp()V

    return-void
.end method

.method public h0(Ljava/lang/Iterable;)Lcom/google/common/collect/i1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/google/common/collect/i1<",
            "TK;TV;>;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/common/cache/h;->p0()Lcom/google/common/cache/c;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/common/cache/c;->h0(Ljava/lang/Iterable;)Lcom/google/common/collect/i1;

    move-result-object p1

    return-object p1
.end method

.method public k()Ljava/util/concurrent/ConcurrentMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/ConcurrentMap<",
            "TK;TV;>;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/common/cache/h;->p0()Lcom/google/common/cache/c;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/cache/c;->k()Ljava/util/concurrent/ConcurrentMap;

    move-result-object v0

    return-object v0
.end method

.method public n(Ljava/lang/Object;Ljava/util/concurrent/Callable;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/util/concurrent/Callable<",
            "+TV;>;)TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/common/cache/h;->p0()Lcom/google/common/cache/c;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/google/common/cache/c;->n(Ljava/lang/Object;Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public n0()V
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/cache/h;->p0()Lcom/google/common/cache/c;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/cache/c;->n0()V

    return-void
.end method

.method public bridge synthetic o0()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/cache/h;->p0()Lcom/google/common/cache/c;

    move-result-object v0

    return-object v0
.end method

.method public abstract p0()Lcom/google/common/cache/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/cache/c<",
            "TK;TV;>;"
        }
    .end annotation
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/common/cache/h;->p0()Lcom/google/common/cache/c;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/google/common/cache/c;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public putAll(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "+TK;+TV;>;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/common/cache/h;->p0()Lcom/google/common/cache/c;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/common/cache/c;->putAll(Ljava/util/Map;)V

    return-void
.end method

.method public size()J
    .locals 2

    invoke-virtual {p0}, Lcom/google/common/cache/h;->p0()Lcom/google/common/cache/c;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/cache/c;->size()J

    move-result-wide v0

    return-wide v0
.end method

.method public stats()Lcom/google/common/cache/f;
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/cache/h;->p0()Lcom/google/common/cache/c;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/cache/c;->stats()Lcom/google/common/cache/f;

    move-result-object v0

    return-object v0
.end method

.method public z(Ljava/lang/Object;)V
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/cache/h;->p0()Lcom/google/common/cache/c;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/common/cache/c;->z(Ljava/lang/Object;)V

    return-void
.end method
