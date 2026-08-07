.class public LOi/u;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:LQi/f;

.field public b:LOi/v;

.field public c:LRi/p$b;

.field public d:LEi/q;

.field public final e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "LPi/d;",
            ">;"
        }
    .end annotation
.end field

.field public f:Z

.field public g:J


# direct methods
.method public constructor <init>(LQi/f;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "voxelTile"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, LOi/u;->e:Ljava/util/Map;

    const/4 v0, 0x1

    iput-boolean v0, p0, LOi/u;->f:Z

    iput-object p1, p0, LOi/u;->a:LQi/f;

    return-void
.end method

.method public static synthetic a(Ljava/util/Collection;LRi/h;LRi/N;Ljava/lang/Long;LPi/d;)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, LOi/u;->h(Ljava/util/Collection;LRi/h;LRi/N;Ljava/lang/Long;LPi/d;)V

    return-void
.end method

.method public static synthetic h(Ljava/util/Collection;LRi/h;LRi/N;Ljava/lang/Long;LPi/d;)V
    .locals 4

    invoke-interface {p0, p3}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    iget-object p0, p1, LRi/h;->d:[F

    const/4 p3, 0x1

    aget v0, p0, p3

    invoke-interface {p4}, LPi/d;->a()[F

    move-result-object v1

    const/4 v2, 0x4

    aget v1, v1, v2

    iget v2, p1, LRi/h;->f:F

    const/high16 v3, 0x40000000    # 2.0f

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    aput v0, p0, p3

    invoke-interface {p4, p1, p2}, LPi/d;->b(LRi/h;LRi/N;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public b(JLPi/d;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "cid",
            "collider"
        }
    .end annotation

    iget-object v0, p0, LOi/u;->e:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {v0, p1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x1

    iput-boolean p1, p0, LOi/u;->f:Z

    return-void
.end method

.method public c(LEi/v;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "navMesh"
        }
    .end annotation

    iget-object v0, p0, LOi/u;->d:LEi/q;

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v3, v1, v2}, LEi/v;->c(LEi/q;IJ)J

    move-result-wide v0

    iput-wide v0, p0, LOi/u;->g:J

    goto :goto_0

    :cond_0
    iget-wide v3, p0, LOi/u;->g:J

    invoke-virtual {p1, v3, v4}, LEi/v;->W(J)J

    iput-wide v1, p0, LOi/u;->g:J

    :goto_0
    return-void
.end method

.method public d(LRi/p;LOi/s;LRi/N;)Z
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "builder",
            "config",
            "telemetry"
        }
    .end annotation

    iget-boolean v0, p0, LOi/u;->f:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0, p2, p3}, LOi/u;->e(LOi/s;LRi/N;)LRi/h;

    move-result-object v4

    iget-object v3, p0, LOi/u;->a:LQi/f;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, LOi/u;->f(LRi/p;LOi/s;LQi/f;LRi/h;LRi/N;)LRi/p$b;

    move-result-object v7

    iget-object v0, p0, LOi/u;->a:LQi/f;

    iget v1, v0, LQi/f;->a:I

    iget v2, v0, LQi/f;->b:I

    iget v3, v0, LQi/f;->h:F

    iget v4, v0, LQi/f;->i:F

    move-object v0, p0

    move-object v5, p2

    move-object v6, v7

    invoke-virtual/range {v0 .. v6}, LOi/u;->i(IIFFLOi/s;LRi/p$b;)LEi/x;

    move-result-object v0

    invoke-static {v0}, LEi/w;->d(LEi/x;)LEi/q;

    move-result-object v0

    iput-object v0, p0, LOi/u;->d:LEi/q;

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final e(LOi/s;LRi/N;)LRi/h;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "config",
            "telemetry"
        }
    .end annotation

    iget-object v0, p0, LOi/u;->b:LOi/v;

    if-eqz v0, :cond_0

    iget-object v0, v0, LOi/v;->b:Ljava/util/Set;

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    :goto_0
    iget-object v1, p0, LOi/u;->b:LOi/v;

    if-eqz v1, :cond_1

    iget-object v1, v1, LOi/v;->a:LRi/h;

    goto :goto_1

    :cond_1
    iget-object v1, p0, LOi/u;->a:LQi/f;

    invoke-virtual {v1}, LQi/f;->a()LRi/h;

    move-result-object v1

    :goto_1
    iget-object v2, p0, LOi/u;->e:Ljava/util/Map;

    new-instance v3, LOi/t;

    invoke-direct {v3, v0, v1, p2}, LOi/t;-><init>(Ljava/util/Collection;LRi/h;LRi/N;)V

    invoke-interface {v2, v3}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    iget-boolean p1, p1, LOi/s;->v:Z

    if-eqz p1, :cond_2

    new-instance p1, LOi/v;

    new-instance p2, Ljava/util/HashSet;

    iget-object v0, p0, LOi/u;->e:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-direct {p2, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-direct {p1, v1, p2}, LOi/v;-><init>(LRi/h;Ljava/util/Set;)V

    iput-object p1, p0, LOi/u;->b:LOi/v;

    :cond_2
    return-object v1
.end method

.method public final f(LRi/p;LOi/s;LQi/f;LRi/h;LRi/N;)LRi/p$b;
    .locals 27
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "builder",
            "config",
            "vt",
            "heightfield",
            "telemetry"
        }
    .end annotation

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    new-instance v26, LRi/t;

    move-object/from16 v2, v26

    iget-boolean v3, v0, LOi/s;->a:Z

    iget v4, v0, LOi/s;->b:I

    iget v5, v0, LOi/s;->c:I

    iget v6, v1, LQi/f;->c:I

    iget-object v7, v0, LOi/s;->e:LRi/u$a;

    iget v8, v1, LQi/f;->h:F

    iget v9, v1, LQi/f;->i:F

    iget v10, v0, LOi/s;->h:F

    iget v14, v0, LOi/s;->g:F

    iget v15, v0, LOi/s;->i:F

    iget v11, v0, LOi/s;->j:F

    move/from16 v16, v11

    iget v11, v0, LOi/s;->k:F

    move/from16 v17, v11

    iget v11, v0, LOi/s;->l:F

    move/from16 v18, v11

    iget v11, v0, LOi/s;->m:F

    move/from16 v19, v11

    iget v11, v0, LOi/s;->n:F

    move/from16 v20, v11

    const/4 v11, 0x6

    iget v12, v0, LOi/s;->o:I

    invoke-static {v11, v12}, Ljava/lang/Math;->min(II)I

    move-result v21

    iget v11, v0, LOi/s;->q:F

    move/from16 v23, v11

    iget v11, v0, LOi/s;->r:F

    move/from16 v24, v11

    const/16 v25, 0x0

    const/4 v11, 0x1

    const/4 v12, 0x1

    const/4 v13, 0x1

    const/16 v22, 0x1

    invoke-direct/range {v2 .. v25}, LRi/t;-><init>(ZIIILRi/u$a;FFFZZZFFFFFFFIZFFLRi/a;)V

    iget v2, v1, LQi/f;->a:I

    iget v3, v1, LQi/f;->b:I

    const/4 v4, 0x0

    move-object/from16 v1, p1

    move-object/from16 v5, v26

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    invoke-virtual/range {v1 .. v7}, LRi/p;->b(IILSi/b;LRi/t;LRi/h;LRi/N;)LRi/p$b;

    move-result-object v1

    iget-boolean v0, v0, LOi/s;->w:Z

    if-eqz v0, :cond_0

    move-object/from16 v0, p0

    iput-object v1, v0, LOi/u;->c:LRi/p$b;

    goto :goto_0

    :cond_0
    move-object/from16 v0, p0

    :goto_0
    return-object v1
.end method

.method public g(J)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cid"
        }
    .end annotation

    iget-object v0, p0, LOi/u;->e:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final i(IIFFLOi/s;LRi/p$b;)LEi/x;
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "tilex",
            "tileZ",
            "cellSize",
            "cellHeight",
            "config",
            "rcResult"
        }
    .end annotation

    invoke-virtual {p6}, LRi/p$b;->c()LRi/k;

    move-result-object v0

    invoke-virtual {p6}, LRi/p$b;->d()LRi/l;

    move-result-object p6

    new-instance v1, LEi/x;

    invoke-direct {v1}, LEi/x;-><init>()V

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    iget v4, v0, LRi/k;->f:I

    const/4 v5, 0x1

    if-ge v3, v4, :cond_0

    iget-object v4, v0, LRi/k;->i:[I

    aput v5, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    iput p1, v1, LEi/x;->u:I

    iput p2, v1, LEi/x;->v:I

    iget-object p1, v0, LRi/k;->a:[I

    iput-object p1, v1, LEi/x;->a:[I

    iget p1, v0, LRi/k;->e:I

    iput p1, v1, LEi/x;->b:I

    iget-object p1, v0, LRi/k;->b:[I

    iput-object p1, v1, LEi/x;->c:[I

    iget-object p1, v0, LRi/k;->d:[I

    iput-object p1, v1, LEi/x;->e:[I

    iget-object p1, v0, LRi/k;->i:[I

    iput-object p1, v1, LEi/x;->d:[I

    iput v4, v1, LEi/x;->f:I

    iget p1, v0, LRi/k;->g:I

    iput p1, v1, LEi/x;->g:I

    if-eqz p6, :cond_1

    iget-object p1, p6, LRi/l;->a:[I

    iput-object p1, v1, LEi/x;->h:[I

    iget-object p1, p6, LRi/l;->b:[F

    iput-object p1, v1, LEi/x;->i:[F

    iget p1, p6, LRi/l;->e:I

    iput p1, v1, LEi/x;->j:I

    iget-object p1, p6, LRi/l;->c:[I

    iput-object p1, v1, LEi/x;->k:[I

    iget p1, p6, LRi/l;->f:I

    iput p1, v1, LEi/x;->l:I

    :cond_1
    iget p1, p5, LOi/s;->g:F

    iput p1, v1, LEi/x;->z:F

    iget p1, p5, LOi/s;->i:F

    iput p1, v1, LEi/x;->A:F

    iget p1, p5, LOi/s;->j:F

    iput p1, v1, LEi/x;->B:F

    iget-object p1, v0, LRi/k;->j:[F

    iput-object p1, v1, LEi/x;->x:[F

    iget-object p1, v0, LRi/k;->k:[F

    iput-object p1, v1, LEi/x;->y:[F

    iput p3, v1, LEi/x;->C:F

    iput p4, v1, LEi/x;->D:F

    iput-boolean v5, v1, LEi/x;->E:Z

    iput v2, v1, LEi/x;->s:I

    new-array p1, v2, [F

    iput-object p1, v1, LEi/x;->m:[F

    new-array p1, v2, [F

    iput-object p1, v1, LEi/x;->n:[F

    new-array p1, v2, [I

    iput-object p1, v1, LEi/x;->q:[I

    new-array p1, v2, [I

    iput-object p1, v1, LEi/x;->p:[I

    new-array p1, v2, [I

    iput-object p1, v1, LEi/x;->o:[I

    new-array p1, v2, [I

    iput-object p1, v1, LEi/x;->r:[I

    return-object v1
.end method

.method public j(J)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "colliderId"
        }
    .end annotation

    iget-object v0, p0, LOi/u;->e:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    iput-boolean p1, p0, LOi/u;->f:Z

    const/4 p1, 0x0

    iput-object p1, p0, LOi/u;->b:LOi/v;

    :cond_0
    return-void
.end method
