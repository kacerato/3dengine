.class public abstract Lcom/google/common/cache/CacheLoader;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build LQ2/b;
    emulated = true
.end annotation

.annotation runtime Lcom/google/common/cache/g;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/cache/CacheLoader$InvalidCacheLoadException;,
        Lcom/google/common/cache/CacheLoader$UnsupportedLoadingOperationException;,
        Lcom/google/common/cache/CacheLoader$c;,
        Lcom/google/common/cache/CacheLoader$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/google/common/cache/CacheLoader;Ljava/util/concurrent/Executor;)Lcom/google/common/cache/CacheLoader;
    .locals 1
    .annotation build LQ2/c;
    .end annotation

    .annotation runtime Ld3/b;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/cache/CacheLoader<",
            "TK;TV;>;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Lcom/google/common/cache/CacheLoader<",
            "TK;TV;>;"
        }
    .end annotation

    invoke-static {p0}, LR2/H;->E(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1}, LR2/H;->E(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/google/common/cache/CacheLoader$a;

    invoke-direct {v0, p0, p1}, Lcom/google/common/cache/CacheLoader$a;-><init>(Lcom/google/common/cache/CacheLoader;Ljava/util/concurrent/Executor;)V

    return-object v0
.end method

.method public static b(LR2/t;)Lcom/google/common/cache/CacheLoader;
    .locals 1
    .annotation runtime Ld3/b;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "LR2/t<",
            "TK;TV;>;)",
            "Lcom/google/common/cache/CacheLoader<",
            "TK;TV;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/cache/CacheLoader$b;

    invoke-direct {v0, p0}, Lcom/google/common/cache/CacheLoader$b;-><init>(LR2/t;)V

    return-object v0
.end method

.method public static c(LR2/Q;)Lcom/google/common/cache/CacheLoader;
    .locals 1
    .annotation runtime Ld3/b;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "LR2/Q<",
            "TV;>;)",
            "Lcom/google/common/cache/CacheLoader<",
            "Ljava/lang/Object;",
            "TV;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/cache/CacheLoader$c;

    invoke-direct {v0, p0}, Lcom/google/common/cache/CacheLoader$c;-><init>(LR2/Q;)V

    return-object v0
.end method


# virtual methods
.method public abstract d(Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public e(Ljava/lang/Iterable;)Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+TK;>;)",
            "Ljava/util/Map<",
            "TK;TV;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    new-instance p1, Lcom/google/common/cache/CacheLoader$UnsupportedLoadingOperationException;

    invoke-direct {p1}, Lcom/google/common/cache/CacheLoader$UnsupportedLoadingOperationException;-><init>()V

    throw p1
.end method

.method public f(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/util/concurrent/Z;
    .locals 0
    .annotation build LQ2/c;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)",
            "Lcom/google/common/util/concurrent/Z<",
            "TV;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-static {p1}, LR2/H;->E(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, LR2/H;->E(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0, p1}, Lcom/google/common/cache/CacheLoader;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lcom/google/common/util/concurrent/Q;->m(Ljava/lang/Object;)Lcom/google/common/util/concurrent/Z;

    move-result-object p1

    return-object p1
.end method
