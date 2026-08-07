.class public Lph/w;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lph/A;)Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "obj"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lph/A;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lph/o;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-interface {p0}, Lph/A;->j()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    invoke-interface {p0, v2}, Lph/A;->y(I)Lph/t;

    move-result-object v3

    invoke-interface {v3}, Lph/t;->getNumFaces()I

    move-result v4

    if-lez v4, :cond_0

    invoke-interface {v3}, Lph/t;->getName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {p0, v3, v5}, Lph/x;->g(Lph/A;Lph/t;Ljava/util/List;)Lph/o;

    move-result-object v3

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public static b(Lph/A;)Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "obj"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lph/A;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lph/o;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-interface {p0}, Lph/A;->o()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    invoke-interface {p0, v2}, Lph/A;->m(I)Lph/t;

    move-result-object v3

    invoke-interface {v3}, Lph/t;->getNumFaces()I

    move-result v4

    if-lez v4, :cond_0

    invoke-interface {v3}, Lph/t;->getName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {p0, v3, v5}, Lph/x;->g(Lph/A;Lph/t;Ljava/util/List;)Lph/o;

    move-result-object v3

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public static c(Lph/A;I)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "obj",
            "maxNumVertices"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lph/A;",
            "I)",
            "Ljava/util/List<",
            "Lph/o;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x3

    if-lt p1, v0, :cond_0

    new-instance v0, Lph/v;

    invoke-direct {v0, p1}, Lph/v;-><init>(I)V

    invoke-virtual {v0, p0}, Lph/v;->g(Lph/A;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "The given number of vertices must at least be 3"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
