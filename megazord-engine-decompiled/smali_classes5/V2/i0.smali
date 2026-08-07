.class public final LV2/i0;
.super LV2/i;
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
        "LV2/i<",
        "TN;TE;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "TE;TN;>;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, LV2/i;-><init>(Ljava/util/Map;)V

    return-void
.end method

.method public static m()LV2/i0;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<N:",
            "Ljava/lang/Object;",
            "E:",
            "Ljava/lang/Object;",
            ">()",
            "LV2/i0<",
            "TN;TE;>;"
        }
    .end annotation

    new-instance v0, LV2/i0;

    const/4 v1, 0x2

    invoke-static {v1}, Lcom/google/common/collect/U0;->j(I)Lcom/google/common/collect/U0;

    move-result-object v1

    invoke-direct {v0, v1}, LV2/i0;-><init>(Ljava/util/Map;)V

    return-object v0
.end method

.method public static n(Ljava/util/Map;)LV2/i0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<N:",
            "Ljava/lang/Object;",
            "E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "TE;TN;>;)",
            "LV2/i0<",
            "TN;TE;>;"
        }
    .end annotation

    new-instance v0, LV2/i0;

    invoke-static {p0}, Lcom/google/common/collect/a1;->O(Ljava/util/Map;)Lcom/google/common/collect/a1;

    move-result-object p0

    invoke-direct {v0, p0}, LV2/i0;-><init>(Ljava/util/Map;)V

    return-object v0
.end method


# virtual methods
.method public c()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TN;>;"
        }
    .end annotation

    iget-object v0, p0, LV2/i;->a:Ljava/util/Map;

    check-cast v0, Lcom/google/common/collect/w;

    invoke-interface {v0}, Lcom/google/common/collect/w;->values()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public l(Ljava/lang/Object;)Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;)",
            "Ljava/util/Set<",
            "TE;>;"
        }
    .end annotation

    new-instance v0, LV2/r;

    iget-object v1, p0, LV2/i;->a:Ljava/util/Map;

    check-cast v1, Lcom/google/common/collect/w;

    invoke-interface {v1}, Lcom/google/common/collect/w;->gd()Lcom/google/common/collect/w;

    move-result-object v1

    invoke-direct {v0, v1, p1}, LV2/r;-><init>(Ljava/util/Map;Ljava/lang/Object;)V

    return-object v0
.end method
