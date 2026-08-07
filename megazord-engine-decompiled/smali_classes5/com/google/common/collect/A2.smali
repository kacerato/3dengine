.class public interface abstract Lcom/google/common/collect/A2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/collect/S2;


# annotations
.annotation build LQ2/b;
.end annotation

.annotation runtime Lcom/google/common/collect/X;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        "C:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/common/collect/S2<",
        "TR;TC;TV;>;"
    }
.end annotation


# virtual methods
.method public bridge synthetic t()Ljava/util/Set;
    .locals 1

    .line 1
    invoke-interface {p0}, Lcom/google/common/collect/A2;->t()Ljava/util/SortedSet;

    move-result-object v0

    return-object v0
.end method

.method public abstract t()Ljava/util/SortedSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/SortedSet<",
            "TR;>;"
        }
    .end annotation
.end method

.method public bridge synthetic v()Ljava/util/Map;
    .locals 1

    .line 1
    invoke-interface {p0}, Lcom/google/common/collect/A2;->v()Ljava/util/SortedMap;

    move-result-object v0

    return-object v0
.end method

.method public abstract v()Ljava/util/SortedMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/SortedMap<",
            "TR;",
            "Ljava/util/Map<",
            "TC;TV;>;>;"
        }
    .end annotation
.end method
