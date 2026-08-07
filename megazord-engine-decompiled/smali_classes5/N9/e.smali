.class public LN9/e;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final F:F = 1.5f

.field public static final G:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "LUb/f;",
            ">;"
        }
    .end annotation
.end field

.field public static final H:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public A:Z

.field public B:Z

.field public C:I

.field public D:LR9/f;

.field public E:LR9/f;

.field public final a:I

.field public final b:I

.field public final c:I

.field public final d:I

.field public final e:I

.field public final f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "LR9/e;",
            ">;"
        }
    .end annotation
.end field

.field public final g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public final h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "LN9/d;",
            ">;"
        }
    .end annotation
.end field

.field public final i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/List<",
            "LN9/c;",
            ">;>;"
        }
    .end annotation
.end field

.field public final j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "LN9/c;",
            ">;"
        }
    .end annotation
.end field

.field public final k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentVertexBuffer;",
            ">;"
        }
    .end annotation
.end field

.field public final l:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lkc/d;",
            ">;"
        }
    .end annotation
.end field

.field public m:LN9/a;

.field public n:LN9/a;

.field public final o:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public p:LSc/a;

.field public q:Lcom/jme3/bullet/collision/shapes/MeshCollisionShape;

.field public r:F

.field public s:F

.field public t:Z

.field public u:Z

.field public v:F

.field public w:F

.field public x:F

.field public final y:[F

.field public final z:[F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, LN9/e$a;

    invoke-direct {v0}, LN9/e$a;-><init>()V

    sput-object v0, LN9/e;->G:Ljava/lang/ThreadLocal;

    new-instance v0, LN9/e$b;

    invoke-direct {v0}, LN9/e$b;-><init>()V

    sput-object v0, LN9/e;->H:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>(IIIII)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "heightMapStartX",
            "heightMapStartY",
            "heightMapResolution",
            "textureMapStartX",
            "textureMapStartY"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, LN9/e;->f:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, LN9/e;->g:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, LN9/e;->h:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, LN9/e;->i:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, LN9/e;->j:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, LN9/e;->k:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, LN9/e;->l:Ljava/util/List;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, LN9/e;->o:Ljava/util/concurrent/atomic/AtomicBoolean;

    const v0, -0x383cb080    # -99999.0f

    iput v0, p0, LN9/e;->r:F

    const v0, 0x497423f0    # 999999.0f

    iput v0, p0, LN9/e;->s:F

    const/4 v0, 0x0

    iput-boolean v0, p0, LN9/e;->t:Z

    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, LN9/e;->x:F

    const/16 v0, 0x10

    new-array v1, v0, [F

    iput-object v1, p0, LN9/e;->y:[F

    new-array v0, v0, [F

    iput-object v0, p0, LN9/e;->z:[F

    const/4 v0, -0x1

    iput v0, p0, LN9/e;->C:I

    iput p1, p0, LN9/e;->a:I

    iput p2, p0, LN9/e;->b:I

    iput p3, p0, LN9/e;->c:I

    iput p4, p0, LN9/e;->d:I

    iput p5, p0, LN9/e;->e:I

    return-void
.end method

.method public static synthetic a(LN9/e;)I
    .locals 0

    iget p0, p0, LN9/e;->c:I

    return p0
.end method

.method public static synthetic b(LN9/e;)I
    .locals 0

    iget p0, p0, LN9/e;->a:I

    return p0
.end method

.method public static synthetic c(LN9/e;)I
    .locals 0

    iget p0, p0, LN9/e;->b:I

    return p0
.end method

.method public static synthetic d(LN9/e;)LR9/f;
    .locals 0

    iget-object p0, p0, LN9/e;->D:LR9/f;

    return-object p0
.end method

.method public static synthetic e(LN9/e;)LR9/f;
    .locals 0

    iget-object p0, p0, LN9/e;->E:LR9/f;

    return-object p0
.end method

.method public static synthetic f(LN9/e;Z)Z
    .locals 0

    iput-boolean p1, p0, LN9/e;->A:Z

    return p1
.end method


# virtual methods
.method public A()I
    .locals 1

    iget v0, p0, LN9/e;->c:I

    return v0
.end method

.method public B()F
    .locals 1

    iget v0, p0, LN9/e;->v:F

    return v0
.end method

.method public C()F
    .locals 1

    iget v0, p0, LN9/e;->w:F

    return v0
.end method

.method public D()[F
    .locals 1

    iget-object v0, p0, LN9/e;->y:[F

    return-object v0
.end method

.method public E()Z
    .locals 1

    iget-object v0, p0, LN9/e;->m:LN9/a;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public F(II)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "x",
            "z"
        }
    .end annotation

    iget v0, p0, LN9/e;->a:I

    if-lt p1, v0, :cond_0

    iget v1, p0, LN9/e;->c:I

    add-int/2addr v0, v1

    if-ge p1, v0, :cond_0

    iget p1, p0, LN9/e;->b:I

    if-lt p2, p1, :cond_0

    add-int/2addr p1, v1

    if-ge p2, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public G(IILR9/n;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "x",
            "z",
            "resolutions"
        }
    .end annotation

    iget p3, p3, LR9/n;->c:I

    iget v0, p0, LN9/e;->d:I

    if-lt p1, v0, :cond_0

    add-int/2addr v0, p3

    if-ge p1, v0, :cond_0

    iget p1, p0, LN9/e;->e:I

    if-lt p2, p1, :cond_0

    add-int/2addr p1, p3

    if-ge p2, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final H(I)Z
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "lodLevel"
        }
    .end annotation

    invoke-virtual {p0, p1}, LN9/e;->I(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    if-ltz p1, :cond_5

    iget-object v0, p0, LN9/e;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_1

    goto :goto_1

    :cond_1
    iget-object v0, p0, LN9/e;->h:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LN9/d;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, LN9/d;->l()Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    iget-object v0, p0, LN9/e;->i:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    move v0, v1

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_4

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LN9/c;

    invoke-virtual {v2}, LN9/c;->s()Z

    move-result v2

    if-nez v2, :cond_3

    return v1

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    const/4 p1, 0x1

    return p1

    :cond_5
    :goto_1
    return v1
.end method

.method public final I(I)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "lodLevel"
        }
    .end annotation

    const/4 v0, 0x0

    if-ltz p1, :cond_1

    iget-object v1, p0, LN9/e;->f:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt p1, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, LN9/e;->f:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LR9/e;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, LR9/e;->s()Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    :cond_1
    :goto_0
    return v0
.end method

.method public J(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;LR9/n;FF)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "terrain",
            "resolutions",
            "terrainWidth",
            "chunkWidth"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;->getTable()LR9/f;

    move-result-object v0

    iput-object v0, p0, LN9/e;->D:LR9/f;

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;->getLeveledTable()LR9/f;

    move-result-object v0

    iput-object v0, p0, LN9/e;->E:LR9/f;

    iget v6, p1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;->maxHeight:F

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v1 .. v6}, LN9/e;->U(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;LR9/n;FFF)V

    invoke-virtual {p0, p1}, LN9/e;->L(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;)V

    return-void
.end method

.method public K(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;LR9/n;FF)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "terrain",
            "resolutions",
            "terrainWidth",
            "chunkWidth"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;->getTable()LR9/f;

    move-result-object v0

    iput-object v0, p0, LN9/e;->D:LR9/f;

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;->getLeveledTable()LR9/f;

    move-result-object v0

    iput-object v0, p0, LN9/e;->E:LR9/f;

    iget v6, p1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;->maxHeight:F

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v1 .. v6}, LN9/e;->U(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;LR9/n;FFF)V

    invoke-virtual {p0, p1}, LN9/e;->L(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;)V

    return-void
.end method

.method public final L(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "terrain"
        }
    .end annotation

    invoke-virtual {p0, p1}, LN9/e;->t(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;)V

    iget-boolean v0, p0, LN9/e;->t:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-nez v0, :cond_0

    iget-object v0, p0, LN9/e;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, LN9/e;->f:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_4

    :cond_0
    const/4 v0, -0x1

    move v4, v3

    :goto_0
    iget-object v5, p0, LN9/e;->f:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_3

    invoke-virtual {p0, v4, v0}, LN9/e;->p(II)I

    move-result v0

    iget-object v5, p0, LN9/e;->f:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, LR9/e;

    iget-object v6, p0, LN9/e;->g:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {p0, v0}, LN9/e;->o(I)LR9/i;

    move-result-object v7

    if-eqz v5, :cond_2

    if-eq v6, v0, :cond_1

    goto :goto_1

    :cond_1
    :try_start_0
    invoke-virtual {v5, v7}, LR9/e;->y(LR9/i;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v5

    invoke-virtual {v5}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2

    :cond_2
    :goto_1
    new-instance v5, LR9/e;

    invoke-direct {v5, v0, v7}, LR9/e;-><init>(ILR9/i;)V

    iget-object v6, p0, LN9/e;->f:Ljava/util/List;

    invoke-interface {v6, v4, v5}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    iget-object v5, p0, LN9/e;->g:Ljava/util/List;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v4, v6}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    iget-object v5, p0, LN9/e;->k:Ljava/util/List;

    invoke-interface {v5, v4, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    iget-object v5, p0, LN9/e;->l:Ljava/util/List;

    invoke-interface {v5, v4, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    iput-boolean v3, p0, LN9/e;->t:Z

    iput-boolean v1, p0, LN9/e;->u:Z

    :cond_4
    iget-object v0, p0, LN9/e;->m:LN9/a;

    if-nez v0, :cond_5

    iput-boolean v1, p0, LN9/e;->A:Z

    :cond_5
    iget-boolean v0, p1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;->enableCollision:Z

    if-eqz v0, :cond_9

    invoke-static {}, Lu8/b;->k()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-virtual {p0}, LN9/e;->y()LR9/e;

    move-result-object v0

    iget-boolean v1, p0, LN9/e;->A:Z

    if-eqz v1, :cond_6

    if-eqz v0, :cond_6

    :try_start_1
    iget-object v1, p0, LN9/e;->D:LR9/f;

    invoke-virtual {p0, v1, p1, v0}, LN9/e;->n(LR9/f;Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;LR9/e;)V

    iput-boolean v3, p0, LN9/e;->A:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_5

    :catch_1
    move-exception v0

    goto :goto_3

    :catch_2
    move-exception v0

    goto :goto_4

    :goto_3
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    invoke-static {}, Ljava/lang/System;->gc()V

    new-instance v0, LN9/e$d;

    invoke-direct {v0, p0}, LN9/e$d;-><init>(LN9/e;)V

    const/16 v1, 0xf

    invoke-static {v1, v0}, Lc9/a;->h(ILjava/lang/Runnable;)V

    goto :goto_5

    :goto_4
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_6
    :goto_5
    iget-object v0, p0, LN9/e;->o:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v0

    :try_start_2
    iget-object v1, p0, LN9/e;->o:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_8

    iget-object v1, p0, LN9/e;->m:LN9/a;

    if-eqz v1, :cond_7

    invoke-virtual {p1, v1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;->removeCollider(LN9/a;)V

    iput-object v2, p0, LN9/e;->m:LN9/a;

    goto :goto_6

    :catchall_0
    move-exception p1

    goto :goto_7

    :cond_7
    :goto_6
    iget-object v1, p0, LN9/e;->n:LN9/a;

    invoke-virtual {p1, v1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;->addCollider(LN9/a;)V

    iget-object p1, p0, LN9/e;->n:LN9/a;

    iput-object p1, p0, LN9/e;->m:LN9/a;

    iput-object v2, p0, LN9/e;->n:LN9/a;

    iget-object p1, p0, LN9/e;->o:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_8
    monitor-exit v0

    goto :goto_8

    :goto_7
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1

    :cond_9
    :goto_8
    return-void
.end method

.method public M(I)LN9/c;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "i"
        }
    .end annotation

    iget-object v0, p0, LN9/e;->i:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LN9/c;

    return-object p1
.end method

.method public N()I
    .locals 2

    iget-object v0, p0, LN9/e;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, LN9/e;->i:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public O(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "terrain"
        }
    .end annotation

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, LN9/e;->h:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    iget-object v2, p0, LN9/e;->h:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LN9/d;

    if-eqz v2, :cond_0

    invoke-virtual {v2, p1}, LN9/d;->m(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;)V

    :cond_0
    iget-object v2, p0, LN9/e;->i:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    move v3, v0

    :goto_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, LN9/c;

    invoke-virtual {v4, p1}, LN9/c;->u(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public P(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;LR9/n;FF)V
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "terrain",
            "resolutions",
            "terrainWidth",
            "chunkWidth"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;->getTable()LR9/f;

    move-result-object p3

    iput-object p3, p0, LN9/e;->D:LR9/f;

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;->getLeveledTable()LR9/f;

    move-result-object p3

    iput-object p3, p0, LN9/e;->E:LR9/f;

    invoke-virtual {p0, p1}, LN9/e;->t(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;)V

    iget-boolean p3, p0, LN9/e;->B:Z

    const/4 p4, 0x0

    if-eqz p3, :cond_2

    iput-boolean p4, p0, LN9/e;->B:Z

    move p3, p4

    :goto_0
    iget-object v0, p0, LN9/e;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p3, v0, :cond_2

    iget-object v0, p0, LN9/e;->h:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LN9/d;

    if-eqz v0, :cond_0

    iget-object v1, p0, LN9/e;->y:[F

    invoke-virtual {v0, v1}, LN9/d;->g([F)V

    :cond_0
    iget-object v0, p0, LN9/e;->i:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    move v1, p4

    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LN9/c;

    iget-object v3, p0, LN9/e;->y:[F

    invoke-virtual {v2, v3}, LN9/c;->l([F)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_2
    iget-object p3, p0, LN9/e;->f:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    if-nez p3, :cond_3

    return-void

    :cond_3
    invoke-virtual {p0, p1, p3}, LN9/e;->R(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;I)I

    move-result v0

    iget v1, p0, LN9/e;->C:I

    if-ltz v1, :cond_4

    if-lt v1, p3, :cond_5

    :cond_4
    invoke-virtual {p0}, LN9/e;->u()I

    move-result v1

    iput v1, p0, LN9/e;->C:I

    :cond_5
    iget v1, p0, LN9/e;->C:I

    if-eq v1, v0, :cond_8

    invoke-virtual {p0, p1, p2, v0}, LN9/e;->Q(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;LR9/n;I)V

    invoke-virtual {p0, v0}, LN9/e;->H(I)Z

    move-result v1

    if-eqz v1, :cond_8

    iget v1, p0, LN9/e;->C:I

    if-ltz v1, :cond_7

    if-ge v1, p3, :cond_7

    iget-object v2, p0, LN9/e;->h:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LN9/d;

    if-eqz v1, :cond_6

    invoke-virtual {v1, p1}, LN9/d;->j(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;)V

    :cond_6
    iget-object v1, p0, LN9/e;->i:Ljava/util/List;

    iget v2, p0, LN9/e;->C:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    move v2, p4

    :goto_2
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_7

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LN9/c;

    invoke-virtual {v3, p1}, LN9/c;->p(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_7
    iput v0, p0, LN9/e;->C:I

    :cond_8
    iget v0, p0, LN9/e;->C:I

    if-ltz v0, :cond_d

    if-lt v0, p3, :cond_9

    goto/16 :goto_4

    :cond_9
    iget-object p3, p0, LN9/e;->f:Ljava/util/List;

    invoke-interface {p3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, LR9/e;

    iget-object v0, p0, LN9/e;->h:Ljava/util/List;

    iget v1, p0, LN9/e;->C:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, LN9/d;

    iget-object v0, p0, LN9/e;->i:Ljava/util/List;

    iget v1, p0, LN9/e;->C:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Ljava/util/List;

    if-eqz p3, :cond_a

    if-eqz v7, :cond_a

    iget-object v4, p0, LN9/e;->y:[F

    const/4 v6, 0x1

    move-object v0, v7

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p0

    invoke-virtual/range {v0 .. v6}, LN9/d;->o(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;LR9/n;LR9/e;[FLN9/e;Z)V

    :cond_a
    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, v8

    invoke-virtual/range {v0 .. v5}, LN9/e;->T(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;LR9/n;LR9/e;Ljava/util/List;Z)V

    iget-boolean p1, p0, LN9/e;->u:Z

    if-eqz p1, :cond_d

    iput-boolean p4, p0, LN9/e;->u:Z

    if-eqz p3, :cond_d

    invoke-virtual {p3}, LR9/e;->s()Z

    move-result p1

    if-eqz p1, :cond_d

    invoke-virtual {p3}, LR9/e;->m()Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentVertexBuffer;

    move-result-object p1

    invoke-virtual {p3}, LR9/e;->i()Lkc/d;

    move-result-object p2

    if-eqz p1, :cond_d

    if-eqz p2, :cond_d

    iget-object v0, p0, LN9/e;->k:Ljava/util/List;

    iget v1, p0, LN9/e;->C:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentVertexBuffer;

    iget-object v1, p0, LN9/e;->l:Ljava/util/List;

    iget v2, p0, LN9/e;->C:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkc/d;

    if-ne p1, v0, :cond_b

    if-eq p2, v1, :cond_d

    :cond_b
    iget-object v0, p0, LN9/e;->k:Ljava/util/List;

    iget v1, p0, LN9/e;->C:I

    invoke-interface {v0, v1, p1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, LN9/e;->l:Ljava/util/List;

    iget v0, p0, LN9/e;->C:I

    invoke-interface {p1, v0, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    if-eqz v7, :cond_c

    invoke-virtual {v7, p3}, LN9/d;->p(LR9/e;)V

    :cond_c
    :goto_3
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result p1

    if-ge p4, p1, :cond_d

    invoke-interface {v8, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LN9/c;

    invoke-virtual {p1, p3}, LN9/c;->y(LR9/e;)V

    add-int/lit8 p4, p4, 0x1

    goto :goto_3

    :cond_d
    :goto_4
    return-void
.end method

.method public final Q(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;LR9/n;I)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "terrain",
            "resolutions",
            "lodLevel"
        }
    .end annotation

    if-ltz p3, :cond_3

    iget-object v0, p0, LN9/e;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p3, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, LN9/e;->f:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LR9/e;

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v1, p0, LN9/e;->h:Ljava/util/List;

    invoke-interface {v1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LN9/d;

    if-eqz v1, :cond_2

    iget-object v5, p0, LN9/e;->y:[F

    const/4 v7, 0x0

    move-object v2, p1

    move-object v3, p2

    move-object v4, v0

    move-object v6, p0

    invoke-virtual/range {v1 .. v7}, LN9/d;->o(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;LR9/n;LR9/e;[FLN9/e;Z)V

    :cond_2
    iget-object v1, p0, LN9/e;->i:Ljava/util/List;

    invoke-interface {v1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    move-object v5, p3

    check-cast v5, Ljava/util/List;

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, v0

    invoke-virtual/range {v1 .. v6}, LN9/e;->T(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;LR9/n;LR9/e;Ljava/util/List;Z)V

    :cond_3
    :goto_0
    return-void
.end method

.method public final R(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;I)I
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "terrain",
            "lodCount"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;->getLodLevels()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_5

    const/4 v0, 0x1

    if-le p2, v0, :cond_5

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;->hasLodReferencePosition()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;->getLodReferencePosition()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object v2

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;->getCachedGlobalPositionX()F

    move-result v3

    iget v4, p0, LN9/e;->v:F

    add-float/2addr v3, v4

    iget v4, p0, LN9/e;->x:F

    const/high16 v5, 0x3f000000    # 0.5f

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;->getCachedGlobalPositionY()F

    move-result v4

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;->getCachedGlobalPositionZ()F

    move-result v6

    iget v7, p0, LN9/e;->w:F

    add-float/2addr v6, v7

    iget v7, p0, LN9/e;->x:F

    mul-float/2addr v7, v5

    add-float/2addr v6, v7

    invoke-virtual {v2, v3, v4, v6}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->p2(FFF)F

    move-result v2

    iget v3, p0, LN9/e;->x:F

    const/high16 v4, 0x3fc00000    # 1.5f

    mul-float/2addr v3, v4

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;->getLodMaxDistance()F

    move-result p1

    cmpg-float v4, p1, v3

    if-gtz v4, :cond_1

    const p1, 0x3a83126f    # 0.001f

    add-float/2addr p1, v3

    :cond_1
    mul-float/2addr v3, v3

    mul-float/2addr p1, p1

    cmpg-float v4, p1, v3

    if-gtz v4, :cond_2

    return v1

    :cond_2
    cmpg-float v4, v2, v3

    if-gtz v4, :cond_3

    return v1

    :cond_3
    cmpl-float v1, v2, p1

    if-ltz v1, :cond_4

    sub-int/2addr p2, v0

    return p2

    :cond_4
    sub-float/2addr v2, v3

    sub-float/2addr p1, v3

    div-float/2addr v2, p1

    sub-int/2addr p2, v0

    int-to-float p1, p2

    mul-float/2addr v2, p1

    invoke-static {v2}, Lgd/b;->w0(F)F

    move-result p1

    float-to-int p1, p1

    add-int/2addr p1, v0

    invoke-static {v0, p1, p2}, Lgd/b;->F(III)I

    move-result p1

    return p1

    :cond_5
    :goto_0
    return v1
.end method

.method public final S(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;LR9/e;)Z
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "terrain",
            "chunkSurface"
        }
    .end annotation

    iget-object v0, p0, LN9/e;->p:LSc/a;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, LSc/a;->a()I

    move-result v0

    invoke-virtual {p2}, LR9/e;->o()LSc/a;

    move-result-object v1

    invoke-virtual {v1}, LSc/a;->a()I

    move-result v1

    if-eq v0, v1, :cond_1

    :cond_0
    new-instance v0, LSc/a;

    invoke-virtual {p2}, LR9/e;->o()LSc/a;

    move-result-object v1

    invoke-virtual {v1}, LSc/a;->a()I

    move-result v1

    invoke-direct {v0, v1}, LSc/a;-><init>(I)V

    iput-object v0, p0, LN9/e;->p:LSc/a;

    :cond_1
    iget-object v0, p0, LN9/e;->p:LSc/a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, LSc/a;->E(I)V

    iget-object v4, p1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;->n1:LR9/n;

    iget v5, p1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;->width:F

    iget v6, p0, LN9/e;->x:F

    iget v7, p1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;->maxHeight:F

    move-object v2, p0

    move-object v3, p1

    invoke-virtual/range {v2 .. v7}, LN9/e;->U(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;LR9/n;FFF)V

    sget-object p1, LN9/e;->G:Ljava/lang/ThreadLocal;

    invoke-virtual {p1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LUb/f;

    iget-object v0, p0, LN9/e;->z:[F

    monitor-enter v0

    :try_start_0
    iget-object v2, p0, LN9/e;->z:[F

    invoke-virtual {p1, v2}, LUb/f;->L0([F)V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object v0, LN9/e;->H:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move v2, v1

    move v3, v2

    :goto_0
    invoke-virtual {p2}, LR9/e;->p()I

    move-result v4

    if-ge v2, v4, :cond_4

    invoke-virtual {p2, v2, v0}, LR9/e;->n(ILcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {p1, v0, v0}, LUb/f;->B0(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V

    iget-object v4, p0, LN9/e;->p:LSc/a;

    invoke-virtual {v4, v0}, LSc/a;->L(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->X0()F

    move-result v4

    iget v5, p0, LN9/e;->r:F

    cmpl-float v4, v4, v5

    const/4 v5, 0x1

    if-lez v4, :cond_2

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->X0()F

    move-result v3

    iget v4, p0, LN9/e;->r:F

    invoke-static {v3, v4}, Lgd/b;->S0(FF)F

    move-result v3

    iput v3, p0, LN9/e;->r:F

    move v3, v5

    :cond_2
    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->X0()F

    move-result v4

    iget v6, p0, LN9/e;->s:F

    cmpg-float v4, v4, v6

    if-gez v4, :cond_3

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->X0()F

    move-result v3

    iget v4, p0, LN9/e;->s:F

    invoke-static {v3, v4}, Lgd/b;->X0(FF)F

    move-result v3

    iput v3, p0, LN9/e;->s:F

    move v3, v5

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    iget-object p1, p0, LN9/e;->p:LSc/a;

    invoke-virtual {p1, v1}, LSc/a;->E(I)V

    return v3

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final T(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;LR9/n;LR9/e;Ljava/util/List;Z)V
    .locals 13
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "terrain",
            "resolutions",
            "chunkSurface",
            "layerMapList",
            "allowSceneAttach"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;",
            "LR9/n;",
            "LR9/e;",
            "Ljava/util/List<",
            "LN9/c;",
            ">;Z)V"
        }
    .end annotation

    move-object v9, p0

    move-object v10, p1

    move-object/from16 v11, p4

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;->layersCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-virtual {p1, v1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;->layerAt(I)Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Layer/TerrainLayer;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;->layerDataFor(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Layer/TerrainLayer;)LP9/a;

    move-result-object v3

    invoke-virtual {p0, v11, v2}, LN9/e;->v(Ljava/util/List;Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Layer/TerrainLayer;)LN9/c;

    move-result-object v4

    if-nez v4, :cond_0

    invoke-virtual {p0, v11, v2, v3}, LN9/e;->g(Ljava/util/List;Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Layer/TerrainLayer;LP9/a;)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    move v1, v0

    :goto_1
    invoke-interface/range {p4 .. p4}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_4

    invoke-interface {v11, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LN9/c;

    move v3, v0

    :goto_2
    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;->layersCount()I

    move-result v4

    if-ge v3, v4, :cond_3

    invoke-virtual {p1, v3}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;->layerAt(I)Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Layer/TerrainLayer;

    move-result-object v4

    invoke-virtual {v2, v4}, LN9/c;->r(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Layer/TerrainLayer;)Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_3

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_3
    iget-object v3, v9, LN9/e;->j:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    iget-object v1, v9, LN9/e;->j:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_6

    move v1, v0

    :goto_4
    iget-object v2, v9, LN9/e;->j:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_5

    iget-object v2, v9, LN9/e;->j:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LN9/c;

    invoke-interface {v11, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    invoke-virtual {v2, p1}, LN9/c;->q(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_5
    iget-object v1, v9, LN9/e;->j:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    :cond_6
    if-eqz p3, :cond_7

    move v12, v0

    :goto_5
    invoke-interface/range {p4 .. p4}, Ljava/util/List;->size()I

    move-result v0

    if-ge v12, v0, :cond_7

    invoke-interface {v11, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LN9/c;

    iget-object v4, v9, LN9/e;->y:[F

    move-object v1, p1

    move-object v2, p2

    move-object/from16 v3, p3

    move-object v5, p0

    move v6, v12

    move-object/from16 v7, p4

    move/from16 v8, p5

    invoke-virtual/range {v0 .. v8}, LN9/c;->x(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;LR9/n;LR9/e;[FLN9/e;ILjava/util/List;Z)V

    add-int/lit8 v12, v12, 0x1

    goto :goto_5

    :cond_7
    return-void
.end method

.method public final U(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;LR9/n;FFF)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "terrain",
            "resolutions",
            "terrainWidth",
            "chunkWidth",
            "terrainMaxHeight"
        }
    .end annotation

    iget v0, p0, LN9/e;->x:F

    cmpl-float v0, v0, p4

    if-eqz v0, :cond_0

    iput p4, p0, LN9/e;->x:F

    iget v0, p0, LN9/e;->a:I

    int-to-float v0, v0

    iget p2, p2, LR9/n;->a:I

    int-to-float v1, p2

    div-float/2addr v0, v1

    mul-float/2addr v0, p3

    iget v1, p0, LN9/e;->b:I

    int-to-float v1, v1

    int-to-float p2, p2

    div-float/2addr v1, p2

    mul-float/2addr v1, p3

    iput v0, p0, LN9/e;->v:F

    iput v1, p0, LN9/e;->w:F

    iget-object p2, p0, LN9/e;->y:[F

    monitor-enter p2

    :try_start_0
    iget-object p3, p0, LN9/e;->y:[F

    const/4 v0, 0x0

    invoke-static {p3, v0}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    iget-object p3, p0, LN9/e;->y:[F

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;->getCachedGlobalPositionX()F

    move-result v1

    iget v2, p0, LN9/e;->v:F

    add-float/2addr v1, v2

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;->getCachedGlobalPositionZ()F

    move-result p1

    iget v2, p0, LN9/e;->w:F

    add-float/2addr p1, v2

    const/4 v2, 0x0

    invoke-static {p3, v0, v1, v2, p1}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    iget-object p1, p0, LN9/e;->y:[F

    invoke-static {p1, p4, p5, p4}, Lgd/c;->p([FFFF)V

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    iget-object p1, p0, LN9/e;->z:[F

    monitor-enter p1

    :try_start_1
    iget-object p2, p0, LN9/e;->y:[F

    iget-object p3, p0, LN9/e;->z:[F

    array-length p4, p2

    invoke-static {p2, v0, p3, v0, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 p1, 0x1

    iput-boolean p1, p0, LN9/e;->B:Z

    goto :goto_0

    :catchall_0
    move-exception p2

    :try_start_2
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p2

    :catchall_1
    move-exception p1

    :try_start_3
    monitor-exit p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p1

    :cond_0
    :goto_0
    return-void
.end method

.method public final g(Ljava/util/List;Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Layer/TerrainLayer;LP9/a;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "layerMapList",
            "layer",
            "data"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "LN9/c;",
            ">;",
            "Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Layer/TerrainLayer;",
            "LP9/a;",
            ")V"
        }
    .end annotation

    new-instance v0, LN9/c;

    iget v1, p0, LN9/e;->d:I

    iget v2, p0, LN9/e;->e:I

    invoke-direct {v0, v1, v2, p2, p3}, LN9/c;-><init>(IILcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Layer/TerrainLayer;LP9/a;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public h()V
    .locals 5

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, LN9/e;->i:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, LN9/e;->i:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    move v3, v0

    :goto_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, LN9/c;

    invoke-virtual {v4}, LN9/c;->v()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public i(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "terrain"
        }
    .end annotation

    const/4 p1, 0x1

    iput-boolean p1, p0, LN9/e;->A:Z

    return-void
.end method

.method public j(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "terrain"
        }
    .end annotation

    const/4 v0, 0x1

    iput-boolean v0, p0, LN9/e;->t:Z

    invoke-virtual {p0, p1}, LN9/e;->i(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;)V

    return-void
.end method

.method public k(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Layer/TerrainLayer;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "layer"
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, LN9/e;->i:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, LN9/e;->i:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-virtual {p0, v1, p1}, LN9/e;->v(Ljava/util/List;Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Layer/TerrainLayer;)LN9/c;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, LN9/c;->v()V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public l()V
    .locals 0

    invoke-virtual {p0}, LN9/e;->h()V

    return-void
.end method

.method public m(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "terrain"
        }
    .end annotation

    const/4 v4, 0x0

    iput v4, p0, LN9/e;->x:F

    iget-object v2, p1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;->n1:LR9/n;

    iget v3, p1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;->width:F

    iget v5, p1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;->maxHeight:F

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, LN9/e;->U(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;LR9/n;FFF)V

    return-void
.end method

.method public final n(LR9/f;Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;LR9/e;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "table",
            "terrain",
            "colliderSurface"
        }
    .end annotation

    if-eqz p3, :cond_1

    const p1, -0x383cb080    # -99999.0f

    iput p1, p0, LN9/e;->r:F

    const p1, 0x497423f0    # 999999.0f

    iput p1, p0, LN9/e;->s:F

    invoke-virtual {p0, p2, p3}, LN9/e;->S(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;LR9/e;)Z

    invoke-virtual {p3}, LR9/e;->j()LSc/b;

    move-result-object p1

    invoke-virtual {p1}, LSc/b;->b()I

    move-result p1

    div-int/lit8 p1, p1, 0x3

    const p2, 0x1ffffe

    if-le p1, p2, :cond_0

    invoke-static {}, Ld5/d;->D1()V

    const-string p1, "Terrain collider have more than 2097150 triangles which is not supported"

    invoke-static {p1}, Ld5/d;->L1(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/jme3/bullet/collision/shapes/MeshCollisionShape;

    iget-object p2, p0, LN9/e;->p:LSc/a;

    invoke-virtual {p3}, LR9/e;->j()LSc/b;

    move-result-object p3

    invoke-static {p2, p3}, Lo9/a;->a(LSc/a;LSc/b;)Lcom/jme3/scene/Mesh;

    move-result-object p2

    filled-new-array {p2}, [Lcom/jme3/scene/Mesh;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/jme3/bullet/collision/shapes/MeshCollisionShape;-><init>([Lcom/jme3/scene/Mesh;)V

    iput-object p1, p0, LN9/e;->q:Lcom/jme3/bullet/collision/shapes/MeshCollisionShape;

    iget-object p1, p0, LN9/e;->o:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter p1

    :try_start_0
    iget-object p2, p0, LN9/e;->o:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p3, 0x1

    invoke-virtual {p2, p3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    new-instance p2, LN9/a;

    iget-object p3, p0, LN9/e;->q:Lcom/jme3/bullet/collision/shapes/MeshCollisionShape;

    invoke-direct {p2, p3}, LN9/a;-><init>(Lcom/jme3/bullet/collision/shapes/MeshCollisionShape;)V

    iput-object p2, p0, LN9/e;->n:LN9/a;

    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2

    :cond_1
    :goto_0
    return-void
.end method

.method public final o(I)LR9/i;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "surfaceResolution"
        }
    .end annotation

    new-instance v0, LN9/e$c;

    invoke-direct {v0, p0, p1}, LN9/e$c;-><init>(LN9/e;I)V

    return-object v0
.end method

.method public final p(II)I
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "lodLevel",
            "previousResolution"
        }
    .end annotation

    iget v0, p0, LN9/e;->c:I

    add-int/lit8 v0, v0, 0x1

    int-to-double v0, v0

    const-wide/high16 v2, 0x3ff8000000000000L    # 1.5

    int-to-double v4, p1

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    div-double/2addr v0, v2

    double-to-float p1, v0

    invoke-static {p1}, Lgd/b;->w0(F)F

    move-result p1

    float-to-int p1, p1

    const/4 v0, 0x2

    invoke-static {v0, p1}, Lgd/b;->N(II)I

    move-result p1

    if-lez p2, :cond_0

    if-lt p1, p2, :cond_0

    add-int/lit8 p2, p2, -0x1

    invoke-static {v0, p2}, Lgd/b;->N(II)I

    move-result p1

    :cond_0
    return p1
.end method

.method public q(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "terrain"
        }
    .end annotation

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, LN9/e;->i:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, LN9/e;->i:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    move v3, v0

    :goto_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, LN9/c;

    invoke-virtual {v4, p1}, LN9/c;->q(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_0
    invoke-interface {v2}, Ljava/util/List;->clear()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_2
    iget-object v1, p0, LN9/e;->h:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    iget-object v1, p0, LN9/e;->h:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LN9/d;

    if-eqz v1, :cond_2

    invoke-virtual {v1, p1}, LN9/d;->k(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;)V

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    iget-object v0, p0, LN9/e;->m:LN9/a;

    if-eqz v0, :cond_4

    invoke-virtual {p1, v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;->removeCollider(LN9/a;)V

    const/4 p1, 0x0

    iput-object p1, p0, LN9/e;->m:LN9/a;

    :cond_4
    return-void
.end method

.method public r()V
    .locals 1

    iget-object v0, p0, LN9/e;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, LN9/e;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, LN9/e;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, LN9/e;->l:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, -0x1

    iput v0, p0, LN9/e;->C:I

    return-void
.end method

.method public s(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "terrain"
        }
    .end annotation

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, LN9/e;->h:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    iget-object v2, p0, LN9/e;->h:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LN9/d;

    if-eqz v2, :cond_0

    invoke-virtual {v2, p1}, LN9/d;->j(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;)V

    :cond_0
    iget-object v2, p0, LN9/e;->i:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    move v3, v0

    :goto_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, LN9/c;

    invoke-virtual {v4, p1}, LN9/c;->p(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final t(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "terrain"
        }
    .end annotation

    invoke-virtual {p0, p1}, LN9/e;->z(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;)I

    move-result v0

    :goto_0
    iget-object v1, p0, LN9/e;->f:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    if-ge v1, v0, :cond_0

    iget-object v1, p0, LN9/e;->f:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, LN9/e;->g:Ljava/util/List;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, LN9/e;->h:Ljava/util/List;

    new-instance v2, LN9/d;

    invoke-direct {v2}, LN9/d;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, LN9/e;->i:Ljava/util/List;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, LN9/e;->k:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, LN9/e;->l:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    :goto_1
    iget-object v1, p0, LN9/e;->f:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, v0, :cond_3

    iget-object v1, p0, LN9/e;->f:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    iget-object v3, p0, LN9/e;->h:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LN9/d;

    if-eqz v3, :cond_1

    invoke-virtual {v3, p1}, LN9/d;->k(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;)V

    :cond_1
    iget-object v3, p0, LN9/e;->i:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    move v4, v2

    :goto_2
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_2

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, LN9/c;

    invoke-virtual {v5, p1}, LN9/c;->q(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_2
    invoke-interface {v3}, Ljava/util/List;->clear()V

    iget-object v3, p0, LN9/e;->f:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    iget-object v3, p0, LN9/e;->g:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    iget-object v3, p0, LN9/e;->k:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    iget-object v3, p0, LN9/e;->l:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_1

    :cond_3
    return-void
.end method

.method public final u()I
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, LN9/e;->f:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-virtual {p0, v1}, LN9/e;->I(I)Z

    move-result v2

    if-eqz v2, :cond_0

    return v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public final v(Ljava/util/List;Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Layer/TerrainLayer;)LN9/c;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "layerMapList",
            "layer"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "LN9/c;",
            ">;",
            "Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Layer/TerrainLayer;",
            ")",
            "LN9/c;"
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LN9/c;

    invoke-virtual {v1, p2}, LN9/c;->r(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Layer/TerrainLayer;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public w()LR9/e;
    .locals 2

    iget-object v0, p0, LN9/e;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, p0, LN9/e;->f:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LR9/e;

    return-object v0
.end method

.method public x()F
    .locals 1

    iget v0, p0, LN9/e;->x:F

    return v0
.end method

.method public final y()LR9/e;
    .locals 2

    iget-object v0, p0, LN9/e;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, p0, LN9/e;->f:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LR9/e;

    return-object v0
.end method

.method public final z(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "terrain"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;->getLodLevels()I

    move-result p1

    const/4 v0, 0x1

    if-gtz p1, :cond_0

    return v0

    :cond_0
    const/16 v1, 0x10

    invoke-static {v0, p1, v1}, Lgd/b;->F(III)I

    move-result p1

    return p1
.end method
