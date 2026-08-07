.class public LIi/l;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:LIi/d;

.field public final b:LIi/f;

.field public final c:LIi/h;

.field public final d:LIi/v;

.field public final e:LIi/p;

.field public final f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "[",
            "LIi/c;",
            ">;"
        }
    .end annotation
.end field

.field public final g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "LRi/p$b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "results"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "LRi/p$b;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, LIi/d;

    invoke-direct {v0}, LIi/d;-><init>()V

    iput-object v0, p0, LIi/l;->a:LIi/d;

    new-instance v0, LIi/f;

    invoke-direct {v0}, LIi/f;-><init>()V

    iput-object v0, p0, LIi/l;->b:LIi/f;

    new-instance v0, LIi/t;

    invoke-direct {v0}, LIi/t;-><init>()V

    iput-object v0, p0, LIi/l;->c:LIi/h;

    new-instance v0, LIi/v;

    invoke-direct {v0}, LIi/v;-><init>()V

    iput-object v0, p0, LIi/l;->d:LIi/v;

    new-instance v0, LIi/p;

    invoke-direct {v0}, LIi/p;-><init>()V

    iput-object v0, p0, LIi/l;->e:LIi/p;

    iput-object p1, p0, LIi/l;->g:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, LIi/k;

    invoke-direct {v0, p0}, LIi/k;-><init>(LIi/l;)V

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p1

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    iput-object p1, p0, LIi/l;->f:Ljava/util/List;

    return-void
.end method

.method public static synthetic a(LIi/l;LRi/p$b;)[LIi/c;
    .locals 0

    invoke-virtual {p0, p1}, LIi/l;->e(LRi/p$b;)[LIi/c;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public b(LIi/m;LIi/n;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "acfg",
            "type"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LIi/m;",
            "LIi/n;",
            ")",
            "Ljava/util/List<",
            "LIi/j;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    iget-object v3, p0, LIi/l;->g:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    iget-object v3, p0, LIi/l;->f:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [LIi/c;

    array-length v4, v3

    move v5, v1

    :goto_1
    if-ge v5, v4, :cond_0

    aget-object v6, v3, v5

    iget-object v7, p0, LIi/l;->g:Ljava/util/List;

    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, LRi/p$b;

    invoke-virtual {p0, p1, v7, p2, v6}, LIi/l;->f(LIi/m;LRi/p$b;LIi/n;LIi/c;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public final c(LIi/m;LIi/e;[LIi/o;)Ljava/util/List;
    .locals 21
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "acfg",
            "es",
            "jumpSegments"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LIi/m;",
            "LIi/e;",
            "[",
            "LIi/o;",
            ")",
            "Ljava/util/List<",
            "LIi/j;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    array-length v3, v1

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v3, :cond_1

    aget-object v6, v1, v5

    iget-object v7, v0, LIi/e;->a:LIi/i;

    iget-object v7, v7, LIi/i;->c:[LIi/g;

    iget v8, v6, LIi/o;->b:I

    aget-object v9, v7, v8

    iget-object v9, v9, LIi/g;->a:[F

    iget v10, v6, LIi/o;->c:I

    add-int/2addr v8, v10

    const/4 v10, 0x1

    sub-int/2addr v8, v10

    aget-object v7, v7, v8

    iget-object v7, v7, LIi/g;->a:[F

    iget-object v8, v0, LIi/e;->b:Ljava/util/List;

    iget v11, v6, LIi/o;->a:I

    invoke-interface {v8, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, LIi/i;

    iget-object v11, v8, LIi/i;->c:[LIi/g;

    iget v12, v6, LIi/o;->b:I

    aget-object v13, v11, v12

    iget-object v13, v13, LIi/g;->a:[F

    iget v14, v6, LIi/o;->c:I

    add-int/2addr v12, v14

    sub-int/2addr v12, v10

    aget-object v11, v11, v12

    iget-object v11, v11, LIi/g;->a:[F

    invoke-static {v9, v7}, LEi/g;->C([F[F)F

    move-result v12

    invoke-static {v13, v11}, LEi/g;->C([F[F)F

    move-result v14

    invoke-static {v12, v14}, Ljava/lang/Math;->min(FF)F

    move-result v12

    move-object/from16 v14, p1

    iget v15, v14, LIi/m;->d:F

    const/high16 v16, 0x40800000    # 4.0f

    mul-float v16, v16, v15

    mul-float v16, v16, v15

    cmpl-float v12, v12, v16

    if-ltz v12, :cond_0

    new-instance v12, LIi/j;

    invoke-direct {v12}, LIi/j;-><init>()V

    invoke-interface {v2, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v15, v0, LIi/e;->a:LIi/i;

    iget-object v15, v15, LIi/i;->c:[LIi/g;

    iget v10, v6, LIi/o;->b:I

    iget v4, v6, LIi/o;->c:I

    add-int/2addr v4, v10

    invoke-static {v15, v10, v4}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [LIi/g;

    iput-object v4, v12, LIi/j;->d:[LIi/g;

    iget-object v4, v8, LIi/i;->c:[LIi/g;

    iget v10, v6, LIi/o;->b:I

    iget v6, v6, LIi/o;->c:I

    add-int/2addr v6, v10

    invoke-static {v4, v10, v6}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [LIi/g;

    iput-object v4, v12, LIi/j;->e:[LIi/g;

    iget-object v4, v0, LIi/e;->a:LIi/i;

    iput-object v4, v12, LIi/j;->f:LIi/i;

    iput-object v8, v12, LIi/j;->g:LIi/i;

    iget-object v4, v0, LIi/e;->c:LIi/u;

    iput-object v4, v12, LIi/j;->h:LIi/u;

    const/4 v4, 0x0

    :goto_1
    const/16 v6, 0x8

    if-ge v4, v6, :cond_0

    int-to-float v6, v4

    const/4 v8, 0x7

    int-to-float v8, v8

    div-float/2addr v6, v8

    iget-object v8, v0, LIi/e;->c:LIi/u;

    invoke-interface {v8, v9, v13, v6}, LIi/u;->b([F[FF)[F

    move-result-object v8

    iget-object v10, v12, LIi/j;->b:[F

    mul-int/lit8 v15, v4, 0x3

    const/16 v17, 0x0

    aget v18, v8, v17

    aput v18, v10, v15

    add-int/lit8 v18, v15, 0x1

    const/16 v16, 0x1

    aget v19, v8, v16

    aput v19, v10, v18

    add-int/lit8 v19, v15, 0x2

    const/16 v20, 0x2

    aget v8, v8, v20

    aput v8, v10, v19

    iget-object v8, v0, LIi/e;->c:LIi/u;

    invoke-interface {v8, v7, v11, v6}, LIi/u;->b([F[FF)[F

    move-result-object v6

    iget-object v8, v12, LIi/j;->c:[F

    const/4 v10, 0x0

    aget v17, v6, v10

    aput v17, v8, v15

    const/4 v15, 0x1

    aget v16, v6, v15

    aput v16, v8, v18

    aget v6, v6, v20

    aput v6, v8, v19

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_0
    const/4 v10, 0x0

    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    :cond_1
    return-object v2
.end method

.method public d()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "[",
            "LIi/c;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, LIi/l;->f:Ljava/util/List;

    return-object v0
.end method

.method public final synthetic e(LRi/p$b;)[LIi/c;
    .locals 1

    iget-object v0, p0, LIi/l;->a:LIi/d;

    invoke-virtual {p1}, LRi/p$b;->c()LRi/k;

    move-result-object p1

    invoke-virtual {v0, p1}, LIi/d;->a(LRi/k;)[LIi/c;

    move-result-object p1

    return-object p1
.end method

.method public final f(LIi/m;LRi/p$b;LIi/n;LIi/c;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "acfg",
            "result",
            "type",
            "edge"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LIi/m;",
            "LRi/p$b;",
            "LIi/n;",
            "LIi/c;",
            ")",
            "Ljava/util/List<",
            "LIi/j;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, LIi/l;->b:LIi/f;

    invoke-virtual {v0, p1, p3, p4}, LIi/f;->a(LIi/m;LIi/n;LIi/c;)LIi/e;

    move-result-object p3

    iget-object p4, p0, LIi/l;->c:LIi/h;

    invoke-interface {p4, p1, p2, p3}, LIi/h;->a(LIi/m;LRi/p$b;LIi/e;)V

    iget-object p4, p0, LIi/l;->d:LIi/v;

    invoke-virtual {p2}, LRi/p$b;->e()LRi/h;

    move-result-object p2

    invoke-virtual {p4, p1, p2, p3}, LIi/v;->c(LIi/m;LRi/h;LIi/e;)V

    iget-object p2, p0, LIi/l;->e:LIi/p;

    invoke-virtual {p2, p1, p3}, LIi/p;->b(LIi/m;LIi/e;)[LIi/o;

    move-result-object p2

    invoke-virtual {p0, p1, p3, p2}, LIi/l;->c(LIi/m;LIi/e;[LIi/o;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method
