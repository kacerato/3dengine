.class public LFi/e;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LFi/e$a;
    }
.end annotation


# static fields
.field public static final n:I = 0x4

.field public static final o:I = 0x8

.field public static final p:I = 0x10


# instance fields
.field public final a:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final b:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "LFi/f;",
            ">;"
        }
    .end annotation
.end field

.field public final c:LFi/r;

.field public final d:[LFi/n$a;

.field public final e:LFi/n;

.field public f:LFi/u;

.field public final g:[F

.field public final h:[LEi/L;

.field public i:LEi/A;

.field public j:LEi/v;

.field public final k:LFi/i;

.field public final l:LFi/l;

.field public m:I


# direct methods
.method public constructor <init>(LFi/i;LEi/v;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "config",
            "nav"
        }
    .end annotation

    .line 1
    new-instance v0, LFi/c;

    invoke-direct {v0}, LFi/c;-><init>()V

    invoke-direct {p0, p1, p2, v0}, LFi/e;-><init>(LFi/i;LEi/v;Ljava/util/function/IntFunction;)V

    return-void
.end method

.method public constructor <init>(LFi/i;LEi/v;Ljava/util/function/IntFunction;)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "config",
            "nav",
            "queryFilterFactory"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LFi/i;",
            "LEi/v;",
            "Ljava/util/function/IntFunction<",
            "LEi/L;",
            ">;)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, LFi/e;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    const/16 v0, 0x8

    .line 4
    new-array v1, v0, [LFi/n$a;

    iput-object v1, p0, LFi/e;->d:[LFi/n$a;

    const/4 v1, 0x3

    .line 5
    new-array v1, v1, [F

    iput-object v1, p0, LFi/e;->g:[F

    const/16 v2, 0x10

    .line 6
    new-array v3, v2, [LEi/L;

    iput-object v3, p0, LFi/e;->h:[LEi/L;

    .line 7
    new-instance v3, LFi/l;

    invoke-direct {v3}, LFi/l;-><init>()V

    iput-object v3, p0, LFi/e;->l:LFi/l;

    .line 8
    iput-object p1, p0, LFi/e;->k:LFi/i;

    .line 9
    iget v3, p1, LFi/i;->a:F

    const/high16 v4, 0x40000000    # 2.0f

    mul-float v5, v3, v4

    const/high16 v6, 0x3fc00000    # 1.5f

    mul-float/2addr v6, v3

    mul-float/2addr v3, v4

    invoke-static {v1, v5, v6, v3}, LEi/g;->U([FFFF)V

    .line 10
    new-instance v1, LFi/n;

    const/4 v3, 0x6

    invoke-direct {v1, v3, v0}, LFi/n;-><init>(II)V

    iput-object v1, p0, LFi/e;->e:LFi/n;

    const/4 v1, 0x0

    move v3, v1

    :goto_0
    if-ge v3, v2, :cond_0

    .line 11
    iget-object v4, p0, LFi/e;->h:[LEi/L;

    invoke-interface {p3, v3}, Ljava/util/function/IntFunction;->apply(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, LEi/L;

    aput-object v5, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    :goto_1
    if-ge v1, v0, :cond_1

    .line 12
    iget-object p3, p0, LFi/e;->d:[LFi/n$a;

    new-instance v2, LFi/n$a;

    invoke-direct {v2}, LFi/n$a;-><init>()V

    aput-object v2, p3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 13
    :cond_1
    new-instance p3, LFi/r;

    invoke-direct {p3, p1}, LFi/r;-><init>(LFi/i;)V

    iput-object p3, p0, LFi/e;->c:LFi/r;

    .line 14
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, LFi/e;->b:Ljava/util/Set;

    .line 15
    iput-object p2, p0, LFi/e;->j:LEi/v;

    .line 16
    new-instance p1, LEi/A;

    invoke-direct {p1, p2}, LEi/A;-><init>(LEi/v;)V

    iput-object p1, p0, LFi/e;->i:LEi/A;

    return-void
.end method

.method public static synthetic a(LFi/e$a;LFi/e$a;)I
    .locals 0

    invoke-static {p0, p1}, LFi/e;->u(LFi/e$a;LFi/e$a;)I

    move-result p0

    return p0
.end method

.method public static synthetic b(LFi/f;LFi/f;)I
    .locals 0

    invoke-static {p0, p1}, LFi/e;->w(LFi/f;LFi/f;)I

    move-result p0

    return p0
.end method

.method public static synthetic c(I)LEi/L;
    .locals 0

    invoke-static {p0}, LFi/e;->v(I)LEi/L;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic d(LFi/f;LFi/f;)I
    .locals 0

    invoke-static {p0, p1}, LFi/e;->x(LFi/f;LFi/f;)I

    move-result p0

    return p0
.end method

.method public static synthetic u(LFi/e$a;LFi/e$a;)I
    .locals 0

    iget p0, p0, LFi/e$a;->b:F

    iget p1, p1, LFi/e$a;->b:F

    invoke-static {p0, p1}, Ljava/lang/Float;->compare(FF)I

    move-result p0

    return p0
.end method

.method public static synthetic v(I)LEi/L;
    .locals 0

    new-instance p0, LEi/d;

    invoke-direct {p0}, LEi/d;-><init>()V

    return-object p0
.end method

.method public static synthetic w(LFi/f;LFi/f;)I
    .locals 0

    iget p1, p1, LFi/f;->u:F

    iget p0, p0, LFi/f;->u:F

    invoke-static {p1, p0}, Ljava/lang/Float;->compare(FF)I

    move-result p0

    return p0
.end method

.method public static synthetic x(LFi/f;LFi/f;)I
    .locals 0

    iget p1, p1, LFi/f;->f:F

    iget p0, p0, LFi/f;->f:F

    invoke-static {p1, p0}, Ljava/lang/Float;->compare(FF)I

    move-result p0

    return p0
.end method


# virtual methods
.method public A(LFi/f;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "agent"
        }
    .end annotation

    iget-object v0, p0, LFi/e;->b:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public B(LFi/f;J[F)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "agent",
            "ref",
            "pos"
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p1, p2, p3, p4}, LFi/f;->f(J[F)V

    iput-boolean v1, p1, LFi/f;->t:Z

    const/4 p1, 0x1

    return p1
.end method

.method public final C(LFi/f;J[F)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "ag",
            "ref",
            "pos"
        }
    .end annotation

    invoke-virtual {p1, p2, p3, p4}, LFi/f;->f(J[F)V

    const/4 p2, 0x1

    iput-boolean p2, p1, LFi/f;->t:Z

    return p2
.end method

.method public D(LFi/f;[F)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "agent",
            "vel"
        }
    .end annotation

    const-wide/16 v0, 0x0

    iput-wide v0, p1, LFi/f;->q:J

    iget-object v0, p1, LFi/f;->r:[F

    invoke-static {v0, p2}, LEi/g;->w([F[F)V

    const/4 p2, 0x0

    iput-object p2, p1, LFi/f;->s:LFi/q;

    const/4 p2, 0x0

    iput-boolean p2, p1, LFi/f;->t:Z

    sget-object p2, LFi/f$b;->DT_CROWDAGENT_TARGET_VELOCITY:LFi/f$b;

    iput-object p2, p1, LFi/f;->p:LFi/f$b;

    const/4 p1, 0x1

    return p1
.end method

.method public E(LFi/f;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "agent"
        }
    .end annotation

    const-wide/16 v0, 0x0

    iput-wide v0, p1, LFi/f;->q:J

    iget-object v0, p1, LFi/f;->r:[F

    const/4 v1, 0x0

    invoke-static {v0, v1, v1, v1}, LEi/g;->U([FFFF)V

    iget-object v0, p1, LFi/f;->k:[F

    invoke-static {v0, v1, v1, v1}, LEi/g;->U([FFFF)V

    const/4 v0, 0x0

    iput-object v0, p1, LFi/f;->s:LFi/q;

    const/4 v0, 0x0

    iput-boolean v0, p1, LFi/f;->t:Z

    sget-object v0, LFi/f$b;->DT_CROWDAGENT_TARGET_NONE:LFi/f$b;

    iput-object v0, p1, LFi/f;->p:LFi/f$b;

    const/4 p1, 0x1

    return p1
.end method

.method public F(LEi/v;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "nav"
        }
    .end annotation

    iput-object p1, p0, LFi/e;->j:LEi/v;

    new-instance v0, LEi/A;

    invoke-direct {v0, p1}, LEi/A;-><init>(LEi/v;)V

    iput-object v0, p0, LFi/e;->i:LEi/A;

    return-void
.end method

.method public G(ILFi/n$a;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "idx",
            "params"
        }
    .end annotation

    if-ltz p1, :cond_0

    const/16 v0, 0x8

    if-ge p1, v0, :cond_0

    iget-object v0, p0, LFi/e;->d:[LFi/n$a;

    new-instance v1, LFi/n$a;

    invoke-direct {v1, p2}, LFi/n$a;-><init>(LFi/n$a;)V

    aput-object v1, v0, p1

    :cond_0
    return-void
.end method

.method public H()LFi/l;
    .locals 1

    iget-object v0, p0, LFi/e;->l:LFi/l;

    return-object v0
.end method

.method public final I(Ljava/util/Collection;)V
    .locals 12
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "agents"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "LFi/f;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, LFi/e;->l:LFi/l;

    const-string v1, "triggerOffMeshConnections"

    invoke-virtual {v0, v1}, LFi/l;->k(Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LFi/f;

    iget-object v2, v0, LFi/f;->b:LFi/f$a;

    sget-object v3, LFi/f$a;->DT_CROWDAGENT_STATE_WALKING:LFi/f$a;

    if-eq v2, v3, :cond_1

    goto :goto_0

    :cond_1
    iget-object v2, v0, LFi/f;->p:LFi/f$b;

    sget-object v3, LFi/f$b;->DT_CROWDAGENT_TARGET_NONE:LFi/f$b;

    if-eq v2, v3, :cond_0

    sget-object v3, LFi/f$b;->DT_CROWDAGENT_TARGET_VELOCITY:LFi/f$b;

    if-ne v2, v3, :cond_2

    goto :goto_0

    :cond_2
    iget-object v2, v0, LFi/f;->n:LFi/h;

    iget v2, v2, LFi/h;->a:F

    const/high16 v3, 0x40100000    # 2.25f

    mul-float/2addr v2, v3

    invoke-virtual {v0, v2}, LFi/f;->e(F)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, v0, LFi/f;->w:LFi/g;

    const/4 v3, 0x2

    new-array v3, v3, [J

    iget-object v4, v0, LFi/f;->d:LFi/o;

    iget-object v5, v0, LFi/f;->o:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    const/4 v11, 0x1

    sub-int/2addr v6, v11

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, LEi/S;

    invoke-virtual {v5}, LEi/S;->c()J

    move-result-wide v5

    iget-object v8, v2, LFi/g;->c:[F

    iget-object v9, v2, LFi/g;->d:[F

    iget-object v10, p0, LFi/e;->i:LEi/A;

    move-object v7, v3

    invoke-virtual/range {v4 .. v10}, LFi/o;->m(J[J[F[FLEi/A;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, v2, LFi/g;->b:[F

    iget-object v5, v0, LFi/f;->i:[F

    invoke-static {v4, v5}, LEi/g;->w([F[F)V

    aget-wide v4, v3, v11

    iput-wide v4, v2, LFi/g;->e:J

    iput-boolean v11, v2, LFi/g;->a:Z

    const/4 v3, 0x0

    iput v3, v2, LFi/g;->f:F

    iget-object v3, v2, LFi/g;->c:[F

    iget-object v4, v2, LFi/g;->d:[F

    invoke-static {v3, v4}, LEi/g;->B([F[F)F

    move-result v3

    iget-object v4, v0, LFi/f;->n:LFi/h;

    iget v4, v4, LFi/h;->d:F

    div-float/2addr v3, v4

    const/high16 v4, 0x3f000000    # 0.5f

    mul-float/2addr v3, v4

    iput v3, v2, LFi/g;->g:F

    sget-object v2, LFi/f$a;->DT_CROWDAGENT_STATE_OFFMESH:LFi/f$a;

    iput-object v2, v0, LFi/f;->b:LFi/f$a;

    iget-object v2, v0, LFi/f;->o:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    iget-object v0, v0, LFi/f;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    goto/16 :goto_0

    :cond_3
    iget-object p1, p0, LFi/e;->l:LFi/l;

    invoke-virtual {p1, v1}, LFi/l;->l(Ljava/lang/String;)V

    return-void
.end method

.method public final J(FFF)F
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "t",
            "t0",
            "t1"
        }
    .end annotation

    sub-float/2addr p1, p2

    sub-float/2addr p3, p2

    div-float/2addr p1, p3

    const/4 p2, 0x0

    const/high16 p3, 0x3f800000    # 1.0f

    invoke-static {p1, p2, p3}, LEi/g;->a(FFF)F

    move-result p1

    return p1
.end method

.method public K(FLGi/a;)LFi/l;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "dt",
            "debug"
        }
    .end annotation

    const/4 v0, 0x0

    iput v0, p0, LFi/e;->m:I

    iget-object v0, p0, LFi/e;->l:LFi/l;

    invoke-virtual {v0}, LFi/l;->j()V

    invoke-virtual {p0}, LFi/e;->l()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, LFi/e;->i(Ljava/util/Collection;F)V

    invoke-virtual {p0, v0, p1}, LFi/e;->M(Ljava/util/Collection;F)V

    invoke-virtual {p0, v0, p1}, LFi/e;->O(Ljava/util/Collection;F)V

    invoke-virtual {p0, v0}, LFi/e;->g(Ljava/util/Collection;)V

    invoke-virtual {p0, v0}, LFi/e;->f(Ljava/util/Collection;)V

    invoke-virtual {p0, v0, p2}, LFi/e;->k(Ljava/util/Collection;LGi/a;)V

    invoke-virtual {p0, v0}, LFi/e;->I(Ljava/util/Collection;)V

    invoke-virtual {p0, v0}, LFi/e;->h(Ljava/util/Collection;)V

    invoke-virtual {p0, p2, v0}, LFi/e;->z(LGi/a;Ljava/util/Collection;)V

    invoke-virtual {p0, p1, v0}, LFi/e;->t(FLjava/util/Collection;)V

    invoke-virtual {p0, v0}, LFi/e;->s(Ljava/util/Collection;)V

    invoke-virtual {p0, v0}, LFi/e;->y(Ljava/util/Collection;)V

    invoke-virtual {p0, v0, p1}, LFi/e;->N(Ljava/util/Collection;F)V

    iget-object p1, p0, LFi/e;->l:LFi/l;

    return-object p1
.end method

.method public L(LFi/f;LFi/h;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "agent",
            "params"
        }
    .end annotation

    iput-object p2, p1, LFi/f;->n:LFi/h;

    return-void
.end method

.method public final M(Ljava/util/Collection;F)V
    .locals 20
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "agents",
            "dt"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "LFi/f;",
            ">;F)V"
        }
    .end annotation

    move-object/from16 v0, p0

    iget-object v1, v0, LFi/e;->l:LFi/l;

    const-string v2, "updateMoveRequest"

    invoke-virtual {v1, v2}, LFi/l;->k(Ljava/lang/String;)V

    new-instance v1, Ljava/util/PriorityQueue;

    new-instance v3, LFi/d;

    invoke-direct {v3}, LFi/d;-><init>()V

    invoke-direct {v1, v3}, Ljava/util/PriorityQueue;-><init>(Ljava/util/Comparator;)V

    invoke-interface/range {p1 .. p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const-string v5, "Empty path"

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-eqz v4, :cond_a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, LFi/f;

    iget-object v9, v4, LFi/f;->b:LFi/f$a;

    sget-object v10, LFi/f$a;->DT_CROWDAGENT_STATE_INVALID:LFi/f$a;

    if-ne v9, v10, :cond_1

    goto :goto_0

    :cond_1
    iget-object v9, v4, LFi/f;->p:LFi/f$b;

    sget-object v10, LFi/f$b;->DT_CROWDAGENT_TARGET_NONE:LFi/f$b;

    if-eq v9, v10, :cond_0

    sget-object v10, LFi/f$b;->DT_CROWDAGENT_TARGET_VELOCITY:LFi/f$b;

    if-ne v9, v10, :cond_2

    goto :goto_0

    :cond_2
    sget-object v10, LFi/f$b;->DT_CROWDAGENT_TARGET_REQUESTING:LFi/f$b;

    if-ne v9, v10, :cond_9

    iget-object v9, v4, LFi/f;->d:LFi/o;

    invoke-virtual {v9}, LFi/o;->e()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_8

    iget-object v11, v0, LFi/e;->i:LEi/A;

    invoke-interface {v9, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    iget-wide v14, v4, LFi/f;->q:J

    iget-object v5, v4, LFi/f;->i:[F

    iget-object v10, v4, LFi/f;->r:[F

    iget-object v6, v0, LFi/e;->h:[LEi/L;

    iget-object v7, v4, LFi/f;->n:LFi/h;

    iget v7, v7, LFi/h;->j:I

    aget-object v18, v6, v7

    const/16 v19, 0x0

    move-object/from16 v16, v5

    move-object/from16 v17, v10

    invoke-virtual/range {v11 .. v19}, LEi/A;->E(JJ[F[FLEi/L;I)LEi/Q;

    iget-object v5, v0, LFi/e;->i:LEi/A;

    iget-object v6, v0, LFi/e;->k:LFi/i;

    iget v6, v6, LFi/i;->d:I

    invoke-virtual {v5, v6}, LEi/A;->Q(I)LEi/O;

    iget-boolean v5, v4, LFi/f;->t:Z

    if-eqz v5, :cond_3

    iget-object v5, v0, LFi/e;->i:LEi/A;

    invoke-virtual {v5, v9}, LEi/A;->g(Ljava/util/List;)LEi/O;

    move-result-object v5

    goto :goto_1

    :cond_3
    iget-object v5, v0, LFi/e;->i:LEi/A;

    invoke-virtual {v5}, LEi/A;->f()LEi/O;

    move-result-object v5

    :goto_1
    iget-object v6, v5, LEi/O;->a:Ljava/lang/Object;

    check-cast v6, Ljava/util/List;

    const/4 v7, 0x3

    new-array v7, v7, [F

    invoke-virtual {v5}, LEi/O;->j()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v5

    sub-int/2addr v5, v8

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    iget-wide v11, v4, LFi/f;->q:J

    cmp-long v5, v9, v11

    if-eqz v5, :cond_5

    iget-object v5, v0, LFi/e;->i:LEi/A;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v9

    sub-int/2addr v9, v8

    invoke-interface {v6, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Long;

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    iget-object v11, v4, LFi/f;->r:[F

    invoke-virtual {v5, v9, v10, v11}, LEi/A;->d(J[F)LEi/O;

    move-result-object v5

    invoke-virtual {v5}, LEi/O;->j()Z

    move-result v9

    if-eqz v9, :cond_4

    iget-object v5, v5, LEi/O;->a:Ljava/lang/Object;

    check-cast v5, LEi/b;

    invoke-virtual {v5}, LEi/b;->a()[F

    move-result-object v7

    goto :goto_2

    :cond_4
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    :goto_2
    const/4 v5, 0x0

    goto :goto_3

    :cond_5
    iget-object v5, v4, LFi/f;->r:[F

    invoke-static {v7, v5}, LEi/g;->w([F[F)V

    goto :goto_2

    :cond_6
    iget-object v5, v4, LFi/f;->i:[F

    invoke-static {v7, v5}, LEi/g;->w([F[F)V

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    const/4 v5, 0x0

    invoke-interface {v9, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Long;

    invoke-interface {v6, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_3
    iget-object v9, v4, LFi/f;->d:LFi/o;

    invoke-virtual {v9, v7, v6}, LFi/o;->s([FLjava/util/List;)V

    iget-object v7, v4, LFi/f;->e:LFi/m;

    invoke-virtual {v7}, LFi/m;->f()V

    iput-boolean v5, v4, LFi/f;->c:Z

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v5

    sub-int/2addr v5, v8

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    iget-wide v7, v4, LFi/f;->q:J

    cmp-long v5, v5, v7

    if-nez v5, :cond_7

    sget-object v5, LFi/f$b;->DT_CROWDAGENT_TARGET_VALID:LFi/f$b;

    iput-object v5, v4, LFi/f;->p:LFi/f$b;

    const/4 v5, 0x0

    iput v5, v4, LFi/f;->u:F

    goto :goto_4

    :cond_7
    const/4 v5, 0x0

    sget-object v6, LFi/f$b;->DT_CROWDAGENT_TARGET_WAITING_FOR_QUEUE:LFi/f$b;

    iput-object v6, v4, LFi/f;->p:LFi/f$b;

    :goto_4
    iput v5, v4, LFi/f;->v:F

    goto :goto_5

    :cond_8
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_9
    :goto_5
    iget-object v5, v4, LFi/f;->p:LFi/f$b;

    sget-object v6, LFi/f$b;->DT_CROWDAGENT_TARGET_WAITING_FOR_QUEUE:LFi/f$b;

    if-ne v5, v6, :cond_0

    invoke-virtual {v1, v4}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_a
    :goto_6
    invoke-virtual {v1}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_c

    invoke-virtual {v1}, Ljava/util/PriorityQueue;->poll()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LFi/f;

    iget-object v9, v0, LFi/e;->c:LFi/r;

    iget-object v4, v3, LFi/f;->d:LFi/o;

    invoke-virtual {v4}, LFi/o;->d()J

    move-result-wide v10

    iget-wide v12, v3, LFi/f;->q:J

    iget-object v4, v3, LFi/f;->d:LFi/o;

    invoke-virtual {v4}, LFi/o;->h()[F

    move-result-object v14

    iget-object v15, v3, LFi/f;->r:[F

    iget-object v4, v0, LFi/e;->h:[LEi/L;

    iget-object v6, v3, LFi/f;->n:LFi/h;

    iget v6, v6, LFi/h;->j:I

    aget-object v16, v4, v6

    invoke-virtual/range {v9 .. v16}, LFi/r;->a(JJ[F[FLEi/L;)LFi/q;

    move-result-object v4

    iput-object v4, v3, LFi/f;->s:LFi/q;

    if-eqz v4, :cond_b

    sget-object v4, LFi/f$b;->DT_CROWDAGENT_TARGET_WAITING_FOR_PATH:LFi/f$b;

    iput-object v4, v3, LFi/f;->p:LFi/f$b;

    goto :goto_6

    :cond_b
    iget-object v4, v0, LFi/e;->l:LFi/l;

    iget v6, v3, LFi/f;->v:F

    invoke-virtual {v4, v6}, LFi/l;->h(F)V

    iget v4, v3, LFi/f;->v:F

    add-float v4, v4, p2

    iput v4, v3, LFi/f;->v:F

    goto :goto_6

    :cond_c
    iget-object v1, v0, LFi/e;->l:LFi/l;

    const-string v3, "pathQueueUpdate"

    invoke-virtual {v1, v3}, LFi/l;->k(Ljava/lang/String;)V

    iget-object v1, v0, LFi/e;->c:LFi/r;

    iget-object v4, v0, LFi/e;->j:LEi/v;

    invoke-virtual {v1, v4}, LFi/r;->b(LEi/v;)V

    iget-object v1, v0, LFi/e;->l:LFi/l;

    invoke-virtual {v1, v3}, LFi/l;->l(Ljava/lang/String;)V

    invoke-interface/range {p1 .. p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_d
    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LFi/f;

    iget-object v4, v3, LFi/f;->p:LFi/f$b;

    sget-object v6, LFi/f$b;->DT_CROWDAGENT_TARGET_NONE:LFi/f$b;

    if-eq v4, v6, :cond_d

    sget-object v6, LFi/f$b;->DT_CROWDAGENT_TARGET_VELOCITY:LFi/f$b;

    if-ne v4, v6, :cond_e

    goto :goto_7

    :cond_e
    sget-object v6, LFi/f$b;->DT_CROWDAGENT_TARGET_WAITING_FOR_PATH:LFi/f$b;

    if-ne v4, v6, :cond_1e

    iget-object v4, v3, LFi/f;->s:LFi/q;

    iget-object v4, v4, LFi/q;->a:LEi/Q;

    if-eqz v4, :cond_10

    invoke-virtual {v4}, LEi/Q;->b()Z

    move-result v6

    if-eqz v6, :cond_10

    const/4 v4, 0x0

    iput-object v4, v3, LFi/f;->s:LFi/q;

    iget-wide v6, v3, LFi/f;->q:J

    const-wide/16 v9, 0x0

    cmp-long v4, v6, v9

    if-eqz v4, :cond_f

    sget-object v4, LFi/f$b;->DT_CROWDAGENT_TARGET_REQUESTING:LFi/f$b;

    iput-object v4, v3, LFi/f;->p:LFi/f$b;

    :goto_8
    const/4 v4, 0x0

    goto :goto_9

    :cond_f
    sget-object v4, LFi/f$b;->DT_CROWDAGENT_TARGET_FAILED:LFi/f$b;

    iput-object v4, v3, LFi/f;->p:LFi/f$b;

    goto :goto_8

    :goto_9
    iput v4, v3, LFi/f;->u:F

    move v6, v4

    const/4 v4, 0x0

    goto/16 :goto_12

    :cond_10
    if-eqz v4, :cond_1d

    invoke-virtual {v4}, LEi/Q;->e()Z

    move-result v6

    if-eqz v6, :cond_1d

    iget-object v6, v3, LFi/f;->d:LFi/o;

    invoke-virtual {v6}, LFi/o;->e()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_1c

    iget-object v7, v3, LFi/f;->r:[F

    iget-object v9, v3, LFi/f;->s:LFi/q;

    iget-object v9, v9, LFi/q;->b:Ljava/util/List;

    invoke-virtual {v4}, LEi/Q;->b()Z

    move-result v10

    if-nez v10, :cond_12

    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_11

    goto :goto_a

    :cond_11
    move v10, v8

    goto :goto_b

    :cond_12
    :goto_a
    const/4 v10, 0x0

    :goto_b
    invoke-virtual {v4}, LEi/Q;->d()Z

    move-result v4

    if-eqz v4, :cond_13

    iput-boolean v8, v3, LFi/f;->c:Z

    const/4 v4, 0x0

    goto :goto_c

    :cond_13
    const/4 v4, 0x0

    iput-boolean v4, v3, LFi/f;->c:Z

    :goto_c
    if-eqz v10, :cond_14

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v11

    sub-int/2addr v11, v8

    invoke-interface {v6, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Long;

    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    invoke-interface {v9, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Long;

    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    move-result-wide v13

    cmp-long v11, v11, v13

    if-eqz v11, :cond_14

    move v10, v4

    :cond_14
    if-eqz v10, :cond_1a

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v11

    if-le v11, v8, :cond_16

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v11

    sub-int/2addr v11, v8

    invoke-interface {v6, v11}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    invoke-interface {v6, v9}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    move v9, v8

    :goto_d
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v11

    sub-int/2addr v11, v8

    if-ge v9, v11, :cond_17

    add-int/lit8 v11, v9, -0x1

    if-ltz v11, :cond_15

    add-int/lit8 v12, v9, 0x1

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v13

    if-ge v12, v13, :cond_15

    invoke-interface {v6, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Long;

    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v13

    invoke-interface {v6, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Long;

    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v15

    cmp-long v11, v13, v15

    if-nez v11, :cond_15

    invoke-interface {v6, v12}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    invoke-interface {v6, v9}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    add-int/lit8 v9, v9, -0x2

    :cond_15
    add-int/2addr v9, v8

    goto :goto_d

    :cond_16
    move-object v6, v9

    :cond_17
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v9

    sub-int/2addr v9, v8

    invoke-interface {v6, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Long;

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    iget-wide v13, v3, LFi/f;->q:J

    cmp-long v9, v11, v13

    if-eqz v9, :cond_18

    iget-object v9, v0, LFi/e;->i:LEi/A;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v11

    sub-int/2addr v11, v8

    invoke-interface {v6, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Long;

    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    invoke-virtual {v9, v11, v12, v7}, LEi/A;->d(J[F)LEi/O;

    move-result-object v9

    invoke-virtual {v9}, LEi/O;->j()Z

    move-result v11

    if-eqz v11, :cond_19

    iget-object v7, v9, LEi/O;->a:Ljava/lang/Object;

    check-cast v7, LEi/b;

    invoke-virtual {v7}, LEi/b;->a()[F

    move-result-object v7

    :cond_18
    :goto_e
    move-object v9, v6

    goto :goto_f

    :cond_19
    move v10, v4

    goto :goto_e

    :cond_1a
    :goto_f
    if-eqz v10, :cond_1b

    iget-object v6, v3, LFi/f;->d:LFi/o;

    invoke-virtual {v6, v7, v9}, LFi/o;->s([FLjava/util/List;)V

    iget-object v6, v3, LFi/f;->e:LFi/m;

    invoke-virtual {v6}, LFi/m;->f()V

    sget-object v6, LFi/f$b;->DT_CROWDAGENT_TARGET_VALID:LFi/f$b;

    iput-object v6, v3, LFi/f;->p:LFi/f$b;

    :goto_10
    const/4 v6, 0x0

    goto :goto_11

    :cond_1b
    sget-object v6, LFi/f$b;->DT_CROWDAGENT_TARGET_FAILED:LFi/f$b;

    iput-object v6, v3, LFi/f;->p:LFi/f$b;

    goto :goto_10

    :goto_11
    iput v6, v3, LFi/f;->u:F

    goto :goto_12

    :cond_1c
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1d
    const/4 v4, 0x0

    const/4 v6, 0x0

    :goto_12
    iget-object v7, v0, LFi/e;->l:LFi/l;

    iget v9, v3, LFi/f;->v:F

    invoke-virtual {v7, v9}, LFi/l;->i(F)V

    iget v7, v3, LFi/f;->v:F

    add-float v7, v7, p2

    iput v7, v3, LFi/f;->v:F

    goto/16 :goto_7

    :cond_1e
    const/4 v4, 0x0

    const/4 v6, 0x0

    goto/16 :goto_7

    :cond_1f
    iget-object v1, v0, LFi/e;->l:LFi/l;

    invoke-virtual {v1, v2}, LFi/l;->l(Ljava/lang/String;)V

    return-void
.end method

.method public final N(Ljava/util/Collection;F)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "agents",
            "dt"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "LFi/f;",
            ">;F)V"
        }
    .end annotation

    iget-object v0, p0, LFi/e;->l:LFi/l;

    const-string v1, "updateOffMeshConnections"

    invoke-virtual {v0, v1}, LFi/l;->k(Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LFi/f;

    iget-object v2, v0, LFi/f;->w:LFi/g;

    iget-boolean v3, v2, LFi/g;->a:Z

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    iget v3, v2, LFi/g;->f:F

    add-float/2addr v3, p2

    iput v3, v2, LFi/g;->f:F

    iget v4, v2, LFi/g;->g:F

    cmpl-float v5, v3, v4

    if-lez v5, :cond_1

    const/4 v3, 0x0

    iput-boolean v3, v2, LFi/g;->a:Z

    sget-object v2, LFi/f$a;->DT_CROWDAGENT_STATE_WALKING:LFi/f$a;

    iput-object v2, v0, LFi/f;->b:LFi/f$a;

    goto :goto_0

    :cond_1
    const v5, 0x3e19999a    # 0.15f

    mul-float/2addr v5, v4

    cmpg-float v6, v3, v5

    const/4 v7, 0x0

    if-gez v6, :cond_2

    invoke-virtual {p0, v3, v7, v5}, LFi/e;->J(FFF)F

    move-result v3

    iget-object v4, v2, LFi/g;->b:[F

    iget-object v2, v2, LFi/g;->c:[F

    invoke-static {v4, v2, v3}, LEi/g;->N([F[FF)[F

    move-result-object v2

    iput-object v2, v0, LFi/f;->i:[F

    goto :goto_1

    :cond_2
    invoke-virtual {p0, v3, v5, v4}, LFi/e;->J(FFF)F

    move-result v3

    iget-object v4, v2, LFi/g;->c:[F

    iget-object v2, v2, LFi/g;->d:[F

    invoke-static {v4, v2, v3}, LEi/g;->N([F[FF)[F

    move-result-object v2

    iput-object v2, v0, LFi/f;->i:[F

    :goto_1
    iget-object v2, v0, LFi/f;->m:[F

    invoke-static {v2, v7, v7, v7}, LEi/g;->U([FFFF)V

    iget-object v0, v0, LFi/f;->k:[F

    invoke-static {v0, v7, v7, v7}, LEi/g;->U([FFFF)V

    goto :goto_0

    :cond_3
    iget-object p1, p0, LFi/e;->l:LFi/l;

    invoke-virtual {p1, v1}, LFi/l;->l(Ljava/lang/String;)V

    return-void
.end method

.method public final O(Ljava/util/Collection;F)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "agents",
            "dt"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "LFi/f;",
            ">;F)V"
        }
    .end annotation

    iget-object v0, p0, LFi/e;->l:LFi/l;

    const-string v1, "updateTopologyOptimization"

    invoke-virtual {v0, v1}, LFi/l;->k(Ljava/lang/String;)V

    new-instance v0, Ljava/util/PriorityQueue;

    new-instance v2, LFi/a;

    invoke-direct {v2}, LFi/a;-><init>()V

    invoke-direct {v0, v2}, Ljava/util/PriorityQueue;-><init>(Ljava/util/Comparator;)V

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LFi/f;

    iget-object v3, v2, LFi/f;->b:LFi/f$a;

    sget-object v4, LFi/f$a;->DT_CROWDAGENT_STATE_WALKING:LFi/f$a;

    if-eq v3, v4, :cond_1

    goto :goto_0

    :cond_1
    iget-object v3, v2, LFi/f;->p:LFi/f$b;

    sget-object v4, LFi/f$b;->DT_CROWDAGENT_TARGET_NONE:LFi/f$b;

    if-eq v3, v4, :cond_0

    sget-object v4, LFi/f$b;->DT_CROWDAGENT_TARGET_VELOCITY:LFi/f$b;

    if-ne v3, v4, :cond_2

    goto :goto_0

    :cond_2
    iget-object v3, v2, LFi/f;->n:LFi/h;

    iget v3, v3, LFi/h;->h:I

    and-int/lit8 v3, v3, 0x10

    if-nez v3, :cond_3

    goto :goto_0

    :cond_3
    iget v3, v2, LFi/f;->f:F

    add-float/2addr v3, p2

    iput v3, v2, LFi/f;->f:F

    iget-object v4, p0, LFi/e;->k:LFi/i;

    iget v4, v4, LFi/i;->e:F

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_0

    invoke-virtual {v0, v2}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    :goto_1
    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_5

    invoke-virtual {v0}, Ljava/util/PriorityQueue;->poll()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LFi/f;

    iget-object p2, p1, LFi/f;->d:LFi/o;

    iget-object v2, p0, LFi/e;->i:LEi/A;

    iget-object v3, p0, LFi/e;->h:[LEi/L;

    iget-object v4, p1, LFi/f;->n:LFi/h;

    iget v4, v4, LFi/h;->j:I

    aget-object v3, v3, v4

    iget-object v4, p0, LFi/e;->k:LFi/i;

    iget v4, v4, LFi/i;->h:I

    invoke-virtual {p2, v2, v3, v4}, LFi/o;->p(LEi/A;LEi/L;I)Z

    const/4 p2, 0x0

    iput p2, p1, LFi/f;->f:F

    goto :goto_1

    :cond_5
    iget-object p1, p0, LFi/e;->l:LFi/l;

    invoke-virtual {p1, v1}, LFi/l;->l(Ljava/lang/String;)V

    return-void
.end method

.method public e([FLFi/h;)LFi/f;
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "pos",
            "params"
        }
    .end annotation

    new-instance v0, LFi/f;

    iget-object v1, p0, LFi/e;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v1

    invoke-direct {v0, v1}, LFi/f;-><init>(I)V

    iget-object v1, p0, LFi/e;->b:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, v0, p2}, LFi/e;->L(LFi/f;LFi/h;)V

    iget-object p2, p0, LFi/e;->i:LEi/A;

    iget-object v1, p0, LFi/e;->g:[F

    iget-object v2, p0, LFi/e;->h:[LEi/L;

    iget-object v3, v0, LFi/f;->n:LFi/h;

    iget v3, v3, LFi/h;->j:I

    aget-object v2, v2, v3

    invoke-virtual {p2, p1, v1, v2}, LEi/A;->j([F[FLEi/L;)LEi/O;

    move-result-object p2

    invoke-virtual {p2}, LEi/O;->j()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object p1, p2, LEi/O;->a:Ljava/lang/Object;

    check-cast p1, LEi/k;

    invoke-virtual {p1}, LEi/k;->a()[F

    move-result-object p1

    :cond_0
    invoke-virtual {p2}, LEi/O;->j()Z

    move-result v1

    const-wide/16 v2, 0x0

    if-eqz v1, :cond_1

    iget-object p2, p2, LEi/O;->a:Ljava/lang/Object;

    check-cast p2, LEi/k;

    invoke-virtual {p2}, LEi/k;->b()J

    move-result-wide v4

    goto :goto_0

    :cond_1
    move-wide v4, v2

    :goto_0
    iget-object p2, v0, LFi/f;->d:LFi/o;

    invoke-virtual {p2, v4, v5, p1}, LFi/o;->r(J[F)V

    iget-object p2, v0, LFi/f;->e:LFi/m;

    invoke-virtual {p2}, LFi/m;->f()V

    const/4 p2, 0x0

    iput-boolean p2, v0, LFi/f;->c:Z

    const/4 p2, 0x0

    iput p2, v0, LFi/f;->f:F

    iput p2, v0, LFi/f;->u:F

    iget-object v1, v0, LFi/f;->k:[F

    invoke-static {v1, p2, p2, p2}, LEi/g;->U([FFFF)V

    iget-object v1, v0, LFi/f;->l:[F

    invoke-static {v1, p2, p2, p2}, LEi/g;->U([FFFF)V

    iget-object v1, v0, LFi/f;->m:[F

    invoke-static {v1, p2, p2, p2}, LEi/g;->U([FFFF)V

    iget-object v1, v0, LFi/f;->i:[F

    invoke-static {v1, p1}, LEi/g;->w([F[F)V

    iput p2, v0, LFi/f;->h:F

    cmp-long p1, v4, v2

    if-eqz p1, :cond_2

    sget-object p1, LFi/f$a;->DT_CROWDAGENT_STATE_WALKING:LFi/f$a;

    iput-object p1, v0, LFi/f;->b:LFi/f$a;

    goto :goto_1

    :cond_2
    sget-object p1, LFi/f$a;->DT_CROWDAGENT_STATE_INVALID:LFi/f$a;

    iput-object p1, v0, LFi/f;->b:LFi/f$a;

    :goto_1
    sget-object p1, LFi/f$b;->DT_CROWDAGENT_TARGET_NONE:LFi/f$b;

    iput-object p1, v0, LFi/f;->p:LFi/f$b;

    return-object v0
.end method

.method public final f(Ljava/util/Collection;)V
    .locals 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "agents"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "LFi/f;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, LFi/e;->l:LFi/l;

    const-string v1, "buildNeighbours"

    invoke-virtual {v0, v1}, LFi/l;->k(Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LFi/f;

    iget-object v2, v0, LFi/f;->b:LFi/f$a;

    sget-object v3, LFi/f$a;->DT_CROWDAGENT_STATE_WALKING:LFi/f$a;

    if-eq v2, v3, :cond_0

    goto :goto_0

    :cond_0
    iget-object v2, v0, LFi/f;->n:LFi/h;

    iget v2, v2, LFi/h;->e:F

    const/high16 v3, 0x3e800000    # 0.25f

    mul-float/2addr v2, v3

    iget-object v3, v0, LFi/f;->i:[F

    iget-object v4, v0, LFi/f;->e:LFi/m;

    invoke-virtual {v4}, LFi/m;->b()[F

    move-result-object v4

    invoke-static {v3, v4}, LEi/g;->C([F[F)F

    move-result v3

    invoke-static {v2}, LEi/g;->s(F)F

    move-result v2

    cmpl-float v2, v3, v2

    if-gtz v2, :cond_1

    iget-object v2, v0, LFi/f;->e:LFi/m;

    iget-object v3, p0, LFi/e;->i:LEi/A;

    iget-object v4, p0, LFi/e;->h:[LEi/L;

    iget-object v5, v0, LFi/f;->n:LFi/h;

    iget v5, v5, LFi/h;->j:I

    aget-object v4, v4, v5

    invoke-virtual {v2, v3, v4}, LFi/m;->e(LEi/A;LEi/L;)Z

    move-result v2

    if-nez v2, :cond_2

    :cond_1
    iget-object v3, v0, LFi/f;->e:LFi/m;

    iget-object v2, v0, LFi/f;->d:LFi/o;

    invoke-virtual {v2}, LFi/o;->c()J

    move-result-wide v4

    iget-object v6, v0, LFi/f;->i:[F

    iget-object v2, v0, LFi/f;->n:LFi/h;

    iget v7, v2, LFi/h;->e:F

    iget-object v8, p0, LFi/e;->i:LEi/A;

    iget-object v9, p0, LFi/e;->h:[LEi/L;

    iget v2, v2, LFi/h;->j:I

    aget-object v9, v9, v2

    invoke-virtual/range {v3 .. v9}, LFi/m;->g(J[FFLEi/A;LEi/L;)V

    :cond_2
    iget-object v3, v0, LFi/f;->i:[F

    iget-object v2, v0, LFi/f;->n:LFi/h;

    iget v4, v2, LFi/h;->b:F

    iget v5, v2, LFi/h;->e:F

    iget-object v7, p0, LFi/e;->f:LFi/u;

    move-object v2, p0

    move-object v6, v0

    invoke-virtual/range {v2 .. v7}, LFi/e;->o([FFFLFi/f;LFi/u;)Ljava/util/List;

    move-result-object v2

    iput-object v2, v0, LFi/f;->g:Ljava/util/List;

    goto :goto_0

    :cond_3
    iget-object p1, p0, LFi/e;->l:LFi/l;

    invoke-virtual {p1, v1}, LFi/l;->l(Ljava/lang/String;)V

    return-void
.end method

.method public final g(Ljava/util/Collection;)V
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "agents"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "LFi/f;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, LFi/e;->l:LFi/l;

    const-string v1, "buildProximityGrid"

    invoke-virtual {v0, v1}, LFi/l;->k(Ljava/lang/String;)V

    new-instance v0, LFi/u;

    iget-object v2, p0, LFi/e;->k:LFi/i;

    iget v2, v2, LFi/i;->a:F

    const/high16 v3, 0x40400000    # 3.0f

    mul-float/2addr v2, v3

    invoke-direct {v0, v2}, LFi/u;-><init>(F)V

    iput-object v0, p0, LFi/e;->f:LFi/u;

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, LFi/f;

    iget-object v0, v3, LFi/f;->i:[F

    iget-object v2, v3, LFi/f;->n:LFi/h;

    iget v2, v2, LFi/h;->a:F

    iget-object v4, p0, LFi/e;->f:LFi/u;

    const/4 v5, 0x0

    aget v5, v0, v5

    sub-float v6, v5, v2

    const/4 v7, 0x2

    aget v0, v0, v7

    sub-float v7, v0, v2

    add-float v8, v5, v2

    add-float/2addr v0, v2

    move-object v2, v4

    move v4, v6

    move v5, v7

    move v6, v8

    move v7, v0

    invoke-virtual/range {v2 .. v7}, LFi/u;->c(LFi/f;FFFF)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, LFi/e;->l:LFi/l;

    invoke-virtual {p1, v1}, LFi/l;->l(Ljava/lang/String;)V

    return-void
.end method

.method public final h(Ljava/util/Collection;)V
    .locals 17
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "agents"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "LFi/f;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    iget-object v1, v0, LFi/e;->l:LFi/l;

    const-string v2, "calculateSteering"

    invoke-virtual {v1, v2}, LFi/l;->k(Ljava/lang/String;)V

    invoke-interface/range {p1 .. p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LFi/f;

    iget-object v4, v3, LFi/f;->b:LFi/f$a;

    sget-object v5, LFi/f$a;->DT_CROWDAGENT_STATE_WALKING:LFi/f$a;

    if-eq v4, v5, :cond_0

    goto :goto_0

    :cond_0
    iget-object v4, v3, LFi/f;->p:LFi/f$b;

    sget-object v5, LFi/f$b;->DT_CROWDAGENT_TARGET_NONE:LFi/f$b;

    if-ne v4, v5, :cond_1

    goto :goto_0

    :cond_1
    const/4 v5, 0x3

    new-array v6, v5, [F

    sget-object v7, LFi/f$b;->DT_CROWDAGENT_TARGET_VELOCITY:LFi/f$b;

    const/4 v8, 0x1

    if-ne v4, v7, :cond_2

    iget-object v4, v3, LFi/f;->r:[F

    invoke-static {v6, v4}, LEi/g;->w([F[F)V

    iget-object v4, v3, LFi/f;->r:[F

    invoke-static {v4}, LEi/g;->K([F)F

    move-result v4

    iput v4, v3, LFi/f;->h:F

    goto :goto_2

    :cond_2
    iget-object v4, v3, LFi/f;->n:LFi/h;

    iget v4, v4, LFi/h;->h:I

    and-int/2addr v4, v8

    if-eqz v4, :cond_3

    invoke-virtual {v3}, LFi/f;->a()[F

    move-result-object v4

    goto :goto_1

    :cond_3
    invoke-virtual {v3}, LFi/f;->b()[F

    move-result-object v4

    :goto_1
    iget-object v6, v3, LFi/f;->n:LFi/h;

    iget v6, v6, LFi/h;->a:F

    const/high16 v7, 0x40000000    # 2.0f

    mul-float/2addr v6, v7

    invoke-virtual {v3, v6}, LFi/f;->c(F)F

    move-result v7

    div-float/2addr v7, v6

    iget-object v6, v3, LFi/f;->n:LFi/h;

    iget v6, v6, LFi/h;->d:F

    iput v6, v3, LFi/f;->h:F

    mul-float/2addr v6, v7

    invoke-static {v4, v6}, LEi/g;->T([FF)[F

    move-result-object v6

    :goto_2
    iget-object v4, v3, LFi/f;->n:LFi/h;

    iget v7, v4, LFi/h;->h:I

    and-int/lit8 v7, v7, 0x4

    if-eqz v7, :cond_7

    iget v7, v4, LFi/h;->e:F

    const/high16 v9, 0x3f800000    # 1.0f

    div-float v10, v9, v7

    iget v4, v4, LFi/h;->g:F

    new-array v5, v5, [F

    const/4 v11, 0x0

    const/4 v12, 0x0

    move v13, v11

    :goto_3
    iget-object v14, v3, LFi/f;->g:Ljava/util/List;

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v14

    if-ge v12, v14, :cond_6

    iget-object v14, v3, LFi/f;->g:Ljava/util/List;

    invoke-interface {v14, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, LFi/e$a;

    iget-object v14, v14, LFi/e$a;->a:LFi/f;

    iget-object v15, v3, LFi/f;->i:[F

    iget-object v14, v14, LFi/f;->i:[F

    invoke-static {v15, v14}, LEi/g;->W([F[F)[F

    move-result-object v14

    aput v11, v14, v8

    invoke-static {v14}, LEi/g;->L([F)F

    move-result v15

    const v16, 0x3727c5ac    # 1.0E-5f

    cmpg-float v16, v15, v16

    if-gez v16, :cond_4

    goto :goto_4

    :cond_4
    invoke-static {v7}, LEi/g;->s(F)F

    move-result v16

    cmpl-float v16, v15, v16

    if-lez v16, :cond_5

    :goto_4
    move/from16 v16, v12

    goto :goto_5

    :cond_5
    move/from16 v16, v12

    float-to-double v11, v15

    invoke-static {v11, v12}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v11

    double-to-float v11, v11

    mul-float v12, v11, v10

    invoke-static {v12}, LEi/g;->s(F)F

    move-result v12

    sub-float v12, v9, v12

    mul-float/2addr v12, v4

    div-float/2addr v12, v11

    invoke-static {v5, v14, v12}, LEi/g;->O([F[FF)[F

    move-result-object v5

    add-float/2addr v13, v9

    :goto_5
    add-int/lit8 v12, v16, 0x1

    const/4 v11, 0x0

    goto :goto_3

    :cond_6
    const v4, 0x38d1b717    # 1.0E-4f

    cmpl-float v4, v13, v4

    if-lez v4, :cond_7

    div-float/2addr v9, v13

    invoke-static {v6, v5, v9}, LEi/g;->O([F[FF)[F

    move-result-object v6

    invoke-static {v6}, LEi/g;->L([F)F

    move-result v4

    iget v5, v3, LFi/f;->h:F

    invoke-static {v5}, LEi/g;->s(F)F

    move-result v5

    cmpl-float v7, v4, v5

    if-lez v7, :cond_7

    div-float/2addr v5, v4

    invoke-static {v6, v5}, LEi/g;->T([FF)[F

    move-result-object v6

    :cond_7
    iget-object v3, v3, LFi/f;->k:[F

    invoke-static {v3, v6}, LEi/g;->w([F[F)V

    goto/16 :goto_0

    :cond_8
    iget-object v1, v0, LFi/e;->l:LFi/l;

    invoke-virtual {v1, v2}, LFi/l;->l(Ljava/lang/String;)V

    return-void
.end method

.method public final i(Ljava/util/Collection;F)V
    .locals 16
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "agents",
            "dt"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "LFi/f;",
            ">;F)V"
        }
    .end annotation

    move-object/from16 v0, p0

    iget-object v1, v0, LFi/e;->l:LFi/l;

    const-string v2, "checkPathValidity"

    invoke-virtual {v1, v2}, LFi/l;->k(Ljava/lang/String;)V

    invoke-interface/range {p1 .. p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LFi/f;

    iget-object v4, v3, LFi/f;->b:LFi/f$a;

    sget-object v5, LFi/f$a;->DT_CROWDAGENT_STATE_WALKING:LFi/f$a;

    if-eq v4, v5, :cond_1

    goto :goto_0

    :cond_1
    iget v4, v3, LFi/f;->u:F

    add-float v4, v4, p2

    iput v4, v3, LFi/f;->u:F

    const/4 v4, 0x3

    new-array v4, v4, [F

    iget-object v5, v3, LFi/f;->d:LFi/o;

    invoke-virtual {v5}, LFi/o;->c()J

    move-result-wide v5

    iget-object v7, v3, LFi/f;->i:[F

    invoke-static {v4, v7}, LEi/g;->w([F[F)V

    iget-object v7, v0, LFi/e;->i:LEi/A;

    iget-object v8, v0, LFi/e;->h:[LEi/L;

    iget-object v9, v3, LFi/f;->n:LFi/h;

    iget v9, v9, LFi/h;->j:I

    aget-object v8, v8, v9

    invoke-virtual {v7, v5, v6, v8}, LEi/A;->J(JLEi/L;)Z

    move-result v7

    const/4 v8, 0x0

    const-wide/16 v10, 0x0

    if-nez v7, :cond_5

    iget-object v5, v0, LFi/e;->i:LEi/A;

    iget-object v6, v3, LFi/f;->i:[F

    iget-object v7, v0, LFi/e;->g:[F

    iget-object v12, v0, LFi/e;->h:[LEi/L;

    iget-object v13, v3, LFi/f;->n:LFi/h;

    iget v13, v13, LFi/h;->j:I

    aget-object v12, v12, v13

    invoke-virtual {v5, v6, v7, v12}, LEi/A;->j([F[FLEi/L;)LEi/O;

    move-result-object v5

    invoke-virtual {v5}, LEi/O;->j()Z

    move-result v6

    if-eqz v6, :cond_2

    iget-object v6, v5, LEi/O;->a:Ljava/lang/Object;

    check-cast v6, LEi/k;

    invoke-virtual {v6}, LEi/k;->b()J

    move-result-wide v6

    goto :goto_1

    :cond_2
    move-wide v6, v10

    :goto_1
    invoke-virtual {v5}, LEi/O;->j()Z

    move-result v12

    if-eqz v12, :cond_3

    iget-object v5, v5, LEi/O;->a:Ljava/lang/Object;

    check-cast v5, LEi/k;

    invoke-virtual {v5}, LEi/k;->a()[F

    move-result-object v5

    invoke-static {v4, v5}, LEi/g;->w([F[F)V

    :cond_3
    cmp-long v5, v6, v10

    if-nez v5, :cond_4

    iget-object v5, v3, LFi/f;->d:LFi/o;

    invoke-virtual {v5, v10, v11, v4}, LFi/o;->r(J[F)V

    iput-boolean v8, v3, LFi/f;->c:Z

    iget-object v4, v3, LFi/f;->e:LFi/m;

    invoke-virtual {v4}, LFi/m;->f()V

    sget-object v4, LFi/f$a;->DT_CROWDAGENT_STATE_INVALID:LFi/f$a;

    iput-object v4, v3, LFi/f;->b:LFi/f$a;

    goto/16 :goto_0

    :cond_4
    iget-object v5, v3, LFi/f;->d:LFi/o;

    invoke-virtual {v5, v6, v7, v4}, LFi/o;->b(J[F)V

    iget-object v5, v3, LFi/f;->e:LFi/m;

    invoke-virtual {v5}, LFi/m;->f()V

    iget-object v5, v3, LFi/f;->i:[F

    invoke-static {v5, v4}, LEi/g;->w([F[F)V

    move-wide v5, v6

    const/4 v7, 0x1

    goto :goto_2

    :cond_5
    move v7, v8

    :goto_2
    iget-object v12, v3, LFi/f;->p:LFi/f$b;

    sget-object v13, LFi/f$b;->DT_CROWDAGENT_TARGET_NONE:LFi/f$b;

    if-eq v12, v13, :cond_0

    sget-object v14, LFi/f$b;->DT_CROWDAGENT_TARGET_VELOCITY:LFi/f$b;

    if-ne v12, v14, :cond_6

    goto/16 :goto_0

    :cond_6
    if-eq v12, v13, :cond_a

    sget-object v14, LFi/f$b;->DT_CROWDAGENT_TARGET_FAILED:LFi/f$b;

    if-eq v12, v14, :cond_a

    iget-object v12, v0, LFi/e;->i:LEi/A;

    iget-wide v14, v3, LFi/f;->q:J

    iget-object v9, v0, LFi/e;->h:[LEi/L;

    iget-object v8, v3, LFi/f;->n:LFi/h;

    iget v8, v8, LFi/h;->j:I

    aget-object v8, v9, v8

    invoke-virtual {v12, v14, v15, v8}, LEi/A;->J(JLEi/L;)Z

    move-result v8

    if-nez v8, :cond_9

    iget-object v7, v0, LFi/e;->i:LEi/A;

    iget-object v8, v3, LFi/f;->r:[F

    iget-object v9, v0, LFi/e;->g:[F

    iget-object v12, v0, LFi/e;->h:[LEi/L;

    iget-object v14, v3, LFi/f;->n:LFi/h;

    iget v14, v14, LFi/h;->j:I

    aget-object v12, v12, v14

    invoke-virtual {v7, v8, v9, v12}, LEi/A;->j([F[FLEi/L;)LEi/O;

    move-result-object v7

    invoke-virtual {v7}, LEi/O;->j()Z

    move-result v8

    if-eqz v8, :cond_7

    iget-object v8, v7, LEi/O;->a:Ljava/lang/Object;

    check-cast v8, LEi/k;

    invoke-virtual {v8}, LEi/k;->b()J

    move-result-wide v8

    goto :goto_3

    :cond_7
    move-wide v8, v10

    :goto_3
    iput-wide v8, v3, LFi/f;->q:J

    invoke-virtual {v7}, LEi/O;->j()Z

    move-result v8

    if-eqz v8, :cond_8

    iget-object v8, v3, LFi/f;->r:[F

    iget-object v7, v7, LEi/O;->a:Ljava/lang/Object;

    check-cast v7, LEi/k;

    invoke-virtual {v7}, LEi/k;->a()[F

    move-result-object v7

    invoke-static {v8, v7}, LEi/g;->w([F[F)V

    :cond_8
    const/4 v7, 0x1

    :cond_9
    iget-wide v8, v3, LFi/f;->q:J

    cmp-long v8, v8, v10

    if-nez v8, :cond_a

    iget-object v8, v3, LFi/f;->d:LFi/o;

    invoke-virtual {v8, v5, v6, v4}, LFi/o;->r(J[F)V

    const/4 v4, 0x0

    iput-boolean v4, v3, LFi/f;->c:Z

    iput-object v13, v3, LFi/f;->p:LFi/f$b;

    :cond_a
    iget-object v4, v3, LFi/f;->d:LFi/o;

    iget-object v5, v0, LFi/e;->k:LFi/i;

    iget v5, v5, LFi/i;->f:I

    iget-object v6, v0, LFi/e;->i:LEi/A;

    iget-object v8, v0, LFi/e;->h:[LEi/L;

    iget-object v9, v3, LFi/f;->n:LFi/h;

    iget v9, v9, LFi/h;->j:I

    aget-object v8, v8, v9

    invoke-virtual {v4, v5, v6, v8}, LFi/o;->i(ILEi/A;LEi/L;)Z

    move-result v4

    if-nez v4, :cond_b

    const/4 v7, 0x1

    :cond_b
    iget-object v4, v3, LFi/f;->p:LFi/f$b;

    sget-object v5, LFi/f$b;->DT_CROWDAGENT_TARGET_VALID:LFi/f$b;

    if-ne v4, v5, :cond_c

    iget v4, v3, LFi/f;->u:F

    iget-object v5, v0, LFi/e;->k:LFi/i;

    iget v5, v5, LFi/i;->g:F

    cmpl-float v4, v4, v5

    if-lez v4, :cond_c

    iget-object v4, v3, LFi/f;->d:LFi/o;

    invoke-virtual {v4}, LFi/o;->f()I

    move-result v4

    iget-object v5, v0, LFi/e;->k:LFi/i;

    iget v5, v5, LFi/i;->f:I

    if-ge v4, v5, :cond_c

    iget-object v4, v3, LFi/f;->d:LFi/o;

    invoke-virtual {v4}, LFi/o;->d()J

    move-result-wide v4

    iget-wide v8, v3, LFi/f;->q:J

    cmp-long v4, v4, v8

    if-eqz v4, :cond_c

    const/4 v9, 0x1

    goto :goto_4

    :cond_c
    move v9, v7

    :goto_4
    if-eqz v9, :cond_0

    iget-object v4, v3, LFi/f;->p:LFi/f$b;

    if-eq v4, v13, :cond_0

    iget-wide v4, v3, LFi/f;->q:J

    iget-object v6, v3, LFi/f;->r:[F

    invoke-virtual {v0, v3, v4, v5, v6}, LFi/e;->C(LFi/f;J[F)Z

    goto/16 :goto_0

    :cond_d
    iget-object v1, v0, LFi/e;->l:LFi/l;

    invoke-virtual {v1, v2}, LFi/l;->l(Ljava/lang/String;)V

    return-void
.end method

.method public j()LFi/i;
    .locals 1

    iget-object v0, p0, LFi/e;->k:LFi/i;

    return-object v0
.end method

.method public final k(Ljava/util/Collection;LGi/a;)V
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "agents",
            "debug"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "LFi/f;",
            ">;",
            "LGi/a;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, LFi/e;->l:LFi/l;

    const-string v1, "findCorners"

    invoke-virtual {v0, v1}, LFi/l;->k(Ljava/lang/String;)V

    if-eqz p2, :cond_0

    iget-object v0, p2, LGi/a;->a:LFi/f;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LFi/f;

    iget-object v3, v2, LFi/f;->b:LFi/f$a;

    sget-object v4, LFi/f$a;->DT_CROWDAGENT_STATE_WALKING:LFi/f$a;

    if-eq v3, v4, :cond_2

    goto :goto_1

    :cond_2
    iget-object v3, v2, LFi/f;->p:LFi/f$b;

    sget-object v4, LFi/f$b;->DT_CROWDAGENT_TARGET_NONE:LFi/f$b;

    if-eq v3, v4, :cond_1

    sget-object v4, LFi/f$b;->DT_CROWDAGENT_TARGET_VELOCITY:LFi/f$b;

    if-ne v3, v4, :cond_3

    goto :goto_1

    :cond_3
    iget-object v3, v2, LFi/f;->d:LFi/o;

    iget-object v4, p0, LFi/e;->i:LEi/A;

    iget-object v5, p0, LFi/e;->h:[LEi/L;

    iget-object v6, v2, LFi/f;->n:LFi/h;

    iget v6, v6, LFi/h;->j:I

    aget-object v5, v5, v6

    const/4 v6, 0x4

    invoke-virtual {v3, v6, v4, v5}, LFi/o;->a(ILEi/A;LEi/L;)Ljava/util/List;

    move-result-object v3

    iput-object v3, v2, LFi/f;->o:Ljava/util/List;

    iget-object v4, v2, LFi/f;->n:LFi/h;

    iget v4, v4, LFi/h;->h:I

    and-int/lit8 v4, v4, 0x8

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_4

    iget-object v3, v2, LFi/f;->o:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    invoke-static {v5, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LEi/S;

    invoke-virtual {v3}, LEi/S;->b()[F

    move-result-object v3

    iget-object v4, v2, LFi/f;->d:LFi/o;

    iget-object v5, v2, LFi/f;->n:LFi/h;

    iget v6, v5, LFi/h;->f:F

    iget-object v7, p0, LFi/e;->i:LEi/A;

    iget-object v8, p0, LFi/e;->h:[LEi/L;

    iget v5, v5, LFi/h;->j:I

    aget-object v5, v8, v5

    invoke-virtual {v4, v3, v6, v7, v5}, LFi/o;->q([FFLEi/A;LEi/L;)V

    if-ne v0, v2, :cond_1

    iget-object v4, p2, LGi/a;->b:[F

    iget-object v2, v2, LFi/f;->d:LFi/o;

    invoke-virtual {v2}, LFi/o;->g()[F

    move-result-object v2

    invoke-static {v4, v2}, LEi/g;->w([F[F)V

    iget-object v2, p2, LGi/a;->c:[F

    invoke-static {v2, v3}, LEi/g;->w([F[F)V

    goto :goto_1

    :cond_4
    if-ne v0, v2, :cond_1

    iget-object v2, p2, LGi/a;->b:[F

    const/4 v3, 0x0

    invoke-static {v2, v3, v3, v3}, LEi/g;->U([FFFF)V

    iget-object v2, p2, LGi/a;->c:[F

    invoke-static {v2, v3, v3, v3}, LEi/g;->U([FFFF)V

    goto/16 :goto_1

    :cond_5
    iget-object p1, p0, LFi/e;->l:LFi/l;

    invoke-virtual {p1, v1}, LFi/l;->l(Ljava/lang/String;)V

    return-void
.end method

.method public l()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "LFi/f;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, LFi/e;->b:Ljava/util/Set;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public m(I)LEi/L;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "i"
        }
    .end annotation

    if-ltz p1, :cond_0

    const/16 v0, 0x10

    if-ge p1, v0, :cond_0

    iget-object v0, p0, LFi/e;->h:[LEi/L;

    aget-object p1, v0, p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public n()LFi/u;
    .locals 1

    iget-object v0, p0, LFi/e;->f:LFi/u;

    return-object v0
.end method

.method public final o([FFFLFi/f;LFi/u;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "pos",
            "height",
            "range",
            "skip",
            "grid"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([FFF",
            "LFi/f;",
            "LFi/u;",
            ")",
            "Ljava/util/List<",
            "LFi/e$a;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    aget v1, p1, v1

    sub-float v2, v1, p3

    const/4 v3, 0x2

    aget v3, p1, v3

    sub-float v4, v3, p3

    add-float/2addr v1, p3

    add-float/2addr v3, p3

    invoke-virtual {p5, v2, v4, v1, v3}, LFi/u;->i(FFFF)Ljava/util/Set;

    move-result-object p5

    invoke-interface {p5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p5

    :goto_0
    invoke-interface {p5}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LFi/f;

    if-ne v1, p4, :cond_0

    goto :goto_0

    :cond_0
    iget-object v2, v1, LFi/f;->i:[F

    invoke-static {p1, v2}, LEi/g;->W([F[F)[F

    move-result-object v2

    const/4 v3, 0x1

    aget v4, v2, v3

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    iget-object v5, v1, LFi/f;->n:LFi/h;

    iget v5, v5, LFi/h;->b:F

    add-float/2addr v5, p2

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    cmpl-float v4, v4, v5

    if-ltz v4, :cond_1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    aput v4, v2, v3

    invoke-static {v2}, LEi/g;->L([F)F

    move-result v2

    invoke-static {p3}, LEi/g;->s(F)F

    move-result v3

    cmpl-float v3, v2, v3

    if-lez v3, :cond_2

    goto :goto_0

    :cond_2
    new-instance v3, LFi/e$a;

    invoke-direct {v3, p0, v1, v2}, LFi/e$a;-><init>(LFi/e;LFi/f;F)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    new-instance p1, LFi/b;

    invoke-direct {p1}, LFi/b;-><init>()V

    invoke-static {v0, p1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-object v0
.end method

.method public p(I)LFi/n$a;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "idx"
        }
    .end annotation

    if-ltz p1, :cond_0

    const/16 v0, 0x8

    if-ge p1, v0, :cond_0

    iget-object v0, p0, LFi/e;->d:[LFi/n$a;

    aget-object p1, v0, p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public q()LFi/r;
    .locals 1

    iget-object v0, p0, LFi/e;->c:LFi/r;

    return-object v0
.end method

.method public r()[F
    .locals 1

    iget-object v0, p0, LFi/e;->g:[F

    return-object v0
.end method

.method public final s(Ljava/util/Collection;)V
    .locals 16
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "agents"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "LFi/f;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    iget-object v1, v0, LFi/e;->l:LFi/l;

    const-string v2, "handleCollisions"

    invoke-virtual {v1, v2}, LFi/l;->k(Ljava/lang/String;)V

    const/4 v3, 0x0

    :goto_0
    const/4 v4, 0x4

    if-ge v3, v4, :cond_9

    invoke-interface/range {p1 .. p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, LFi/f;

    iget-wide v6, v5, LFi/f;->a:J

    iget-object v8, v5, LFi/f;->b:LFi/f$a;

    sget-object v9, LFi/f$a;->DT_CROWDAGENT_STATE_WALKING:LFi/f$a;

    if-eq v8, v9, :cond_1

    goto :goto_1

    :cond_1
    iget-object v8, v5, LFi/f;->j:[F

    const/4 v9, 0x0

    invoke-static {v8, v9, v9, v9}, LEi/g;->U([FFFF)V

    move v10, v9

    const/4 v8, 0x0

    :goto_2
    iget-object v11, v5, LFi/f;->g:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    if-ge v8, v11, :cond_5

    iget-object v11, v5, LFi/f;->g:Ljava/util/List;

    invoke-interface {v11, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, LFi/e$a;

    iget-object v11, v11, LFi/e$a;->a:LFi/f;

    iget-wide v14, v11, LFi/f;->a:J

    iget-object v13, v5, LFi/f;->i:[F

    iget-object v1, v11, LFi/f;->i:[F

    invoke-static {v13, v1}, LEi/g;->W([F[F)[F

    move-result-object v1

    const/4 v13, 0x1

    aput v9, v1, v13

    invoke-static {v1}, LEi/g;->L([F)F

    move-result v13

    iget-object v9, v5, LFi/f;->n:LFi/h;

    iget v9, v9, LFi/h;->a:F

    iget-object v12, v11, LFi/f;->n:LFi/h;

    iget v12, v12, LFi/h;->a:F

    add-float/2addr v9, v12

    invoke-static {v9}, LEi/g;->s(F)F

    move-result v9

    cmpl-float v9, v13, v9

    if-lez v9, :cond_2

    const/4 v13, 0x0

    const/4 v14, 0x0

    goto :goto_5

    :cond_2
    float-to-double v12, v13

    invoke-static {v12, v13}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v12

    double-to-float v9, v12

    iget-object v12, v5, LFi/f;->n:LFi/h;

    iget v12, v12, LFi/h;->a:F

    iget-object v11, v11, LFi/f;->n:LFi/h;

    iget v11, v11, LFi/h;->a:F

    add-float/2addr v12, v11

    sub-float/2addr v12, v9

    const v11, 0x38d1b717    # 1.0E-4f

    cmpg-float v11, v9, v11

    if-gez v11, :cond_4

    cmp-long v9, v6, v14

    const/4 v11, 0x2

    if-lez v9, :cond_3

    iget-object v9, v5, LFi/f;->k:[F

    aget v11, v9, v11

    neg-float v11, v11

    const/4 v13, 0x0

    aget v9, v9, v13

    const/4 v14, 0x0

    invoke-static {v1, v11, v14, v9}, LEi/g;->U([FFFF)V

    goto :goto_3

    :cond_3
    const/4 v13, 0x0

    const/4 v14, 0x0

    iget-object v9, v5, LFi/f;->k:[F

    aget v11, v9, v11

    aget v9, v9, v13

    neg-float v9, v9

    invoke-static {v1, v11, v14, v9}, LEi/g;->U([FFFF)V

    :goto_3
    const v9, 0x3c23d70a    # 0.01f

    const/high16 v11, 0x3f800000    # 1.0f

    goto :goto_4

    :cond_4
    const/high16 v11, 0x3f800000    # 1.0f

    const/4 v13, 0x0

    const/4 v14, 0x0

    div-float v9, v11, v9

    const/high16 v15, 0x3f000000    # 0.5f

    mul-float/2addr v12, v15

    mul-float/2addr v9, v12

    iget-object v12, v0, LFi/e;->k:LFi/i;

    iget v12, v12, LFi/i;->i:F

    mul-float/2addr v9, v12

    :goto_4
    iget-object v12, v5, LFi/f;->j:[F

    invoke-static {v12, v1, v9}, LEi/g;->O([F[FF)[F

    move-result-object v1

    iput-object v1, v5, LFi/f;->j:[F

    add-float/2addr v10, v11

    :goto_5
    add-int/lit8 v8, v8, 0x1

    move v9, v14

    goto/16 :goto_2

    :cond_5
    const v1, 0x38d1b717    # 1.0E-4f

    const/high16 v11, 0x3f800000    # 1.0f

    const/4 v13, 0x0

    cmpl-float v1, v10, v1

    if-lez v1, :cond_0

    div-float v1, v11, v10

    iget-object v6, v5, LFi/f;->j:[F

    invoke-static {v6, v1}, LEi/g;->T([FF)[F

    move-result-object v1

    iput-object v1, v5, LFi/f;->j:[F

    goto/16 :goto_1

    :cond_6
    const/4 v13, 0x0

    invoke-interface/range {p1 .. p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, LFi/f;

    iget-object v5, v4, LFi/f;->b:LFi/f$a;

    sget-object v6, LFi/f$a;->DT_CROWDAGENT_STATE_WALKING:LFi/f$a;

    if-eq v5, v6, :cond_7

    goto :goto_6

    :cond_7
    iget-object v5, v4, LFi/f;->i:[F

    iget-object v6, v4, LFi/f;->j:[F

    invoke-static {v5, v6}, LEi/g;->v([F[F)[F

    move-result-object v5

    iput-object v5, v4, LFi/f;->i:[F

    goto :goto_6

    :cond_8
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_9
    iget-object v1, v0, LFi/e;->l:LFi/l;

    invoke-virtual {v1, v2}, LFi/l;->l(Ljava/lang/String;)V

    return-void
.end method

.method public final t(FLjava/util/Collection;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "dt",
            "agents"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F",
            "Ljava/util/Collection<",
            "LFi/f;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, LFi/e;->l:LFi/l;

    const-string v1, "integrate"

    invoke-virtual {v0, v1}, LFi/l;->k(Ljava/lang/String;)V

    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LFi/f;

    iget-object v2, v0, LFi/f;->b:LFi/f$a;

    sget-object v3, LFi/f$a;->DT_CROWDAGENT_STATE_WALKING:LFi/f$a;

    if-eq v2, v3, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, LFi/f;->d(F)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, LFi/e;->l:LFi/l;

    invoke-virtual {p1, v1}, LFi/l;->l(Ljava/lang/String;)V

    return-void
.end method

.method public final y(Ljava/util/Collection;)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "agents"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "LFi/f;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, LFi/e;->l:LFi/l;

    const-string v1, "moveAgents"

    invoke-virtual {v0, v1}, LFi/l;->k(Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LFi/f;

    iget-object v2, v0, LFi/f;->b:LFi/f$a;

    sget-object v3, LFi/f$a;->DT_CROWDAGENT_STATE_WALKING:LFi/f$a;

    if-eq v2, v3, :cond_1

    goto :goto_0

    :cond_1
    iget-object v2, v0, LFi/f;->d:LFi/o;

    iget-object v3, v0, LFi/f;->i:[F

    iget-object v4, p0, LFi/e;->i:LEi/A;

    iget-object v5, p0, LFi/e;->h:[LEi/L;

    iget-object v6, v0, LFi/f;->n:LFi/h;

    iget v6, v6, LFi/h;->j:I

    aget-object v5, v5, v6

    invoke-virtual {v2, v3, v4, v5}, LFi/o;->n([FLEi/A;LEi/L;)Z

    iget-object v2, v0, LFi/f;->i:[F

    iget-object v3, v0, LFi/f;->d:LFi/o;

    invoke-virtual {v3}, LFi/o;->g()[F

    move-result-object v3

    invoke-static {v2, v3}, LEi/g;->w([F[F)V

    iget-object v2, v0, LFi/f;->p:LFi/f$b;

    sget-object v3, LFi/f$b;->DT_CROWDAGENT_TARGET_NONE:LFi/f$b;

    if-eq v2, v3, :cond_2

    sget-object v3, LFi/f$b;->DT_CROWDAGENT_TARGET_VELOCITY:LFi/f$b;

    if-ne v2, v3, :cond_0

    :cond_2
    iget-object v2, v0, LFi/f;->d:LFi/o;

    invoke-virtual {v2}, LFi/o;->c()J

    move-result-wide v3

    iget-object v5, v0, LFi/f;->i:[F

    invoke-virtual {v2, v3, v4, v5}, LFi/o;->r(J[F)V

    const/4 v2, 0x0

    iput-boolean v2, v0, LFi/f;->c:Z

    goto :goto_0

    :cond_3
    iget-object p1, p0, LFi/e;->l:LFi/l;

    invoke-virtual {p1, v1}, LFi/l;->l(Ljava/lang/String;)V

    return-void
.end method

.method public final z(LGi/a;Ljava/util/Collection;)V
    .locals 13
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "debug",
            "agents"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LGi/a;",
            "Ljava/util/Collection<",
            "LFi/f;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, LFi/e;->l:LFi/l;

    const-string v1, "planVelocity"

    invoke-virtual {v0, v1}, LFi/l;->k(Ljava/lang/String;)V

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    iget-object v2, p1, LGi/a;->a:LFi/f;

    goto :goto_0

    :cond_0
    move-object v2, v0

    :goto_0
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LFi/f;

    iget-object v4, v3, LFi/f;->b:LFi/f$a;

    sget-object v5, LFi/f$a;->DT_CROWDAGENT_STATE_WALKING:LFi/f$a;

    if-eq v4, v5, :cond_1

    goto :goto_1

    :cond_1
    iget-object v4, v3, LFi/f;->n:LFi/h;

    iget v4, v4, LFi/h;->h:I

    and-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_6

    iget-object v4, p0, LFi/e;->e:LFi/n;

    invoke-virtual {v4}, LFi/n;->l()V

    const/4 v4, 0x0

    move v5, v4

    :goto_2
    iget-object v6, v3, LFi/f;->g:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_2

    iget-object v6, v3, LFi/f;->g:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, LFi/e$a;

    iget-object v6, v6, LFi/e$a;->a:LFi/f;

    iget-object v7, p0, LFi/e;->e:LFi/n;

    iget-object v8, v6, LFi/f;->i:[F

    iget-object v9, v6, LFi/f;->n:LFi/h;

    iget v9, v9, LFi/h;->a:F

    iget-object v10, v6, LFi/f;->m:[F

    iget-object v6, v6, LFi/f;->k:[F

    invoke-virtual {v7, v8, v9, v10, v6}, LFi/n;->a([FF[F[F)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_2
    :goto_3
    iget-object v5, v3, LFi/f;->e:LFi/m;

    invoke-virtual {v5}, LFi/m;->d()I

    move-result v5

    if-ge v4, v5, :cond_4

    iget-object v5, v3, LFi/f;->e:LFi/m;

    invoke-virtual {v5, v4}, LFi/m;->c(I)[F

    move-result-object v5

    const/4 v6, 0x3

    const/4 v7, 0x6

    invoke-static {v5, v6, v7}, Ljava/util/Arrays;->copyOfRange([FII)[F

    move-result-object v6

    iget-object v7, v3, LFi/f;->i:[F

    invoke-static {v7, v5, v6}, LEi/g;->u([F[F[F)F

    move-result v7

    const/4 v8, 0x0

    cmpg-float v7, v7, v8

    if-gez v7, :cond_3

    goto :goto_4

    :cond_3
    iget-object v7, p0, LFi/e;->e:LFi/n;

    invoke-virtual {v7, v5, v6}, LFi/n;->b([F[F)V

    :goto_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_4
    if-ne v2, v3, :cond_5

    iget-object v4, p1, LGi/a;->d:LGi/b;

    move-object v12, v4

    goto :goto_5

    :cond_5
    move-object v12, v0

    :goto_5
    iget-object v4, p0, LFi/e;->d:[LFi/n$a;

    iget-object v5, v3, LFi/f;->n:LFi/h;

    iget v6, v5, LFi/h;->i:I

    aget-object v11, v4, v6

    iget-object v4, p0, LFi/e;->e:LFi/n;

    iget-object v6, v3, LFi/f;->i:[F

    iget v7, v5, LFi/h;->a:F

    iget v8, v3, LFi/f;->h:F

    iget-object v9, v3, LFi/f;->m:[F

    iget-object v10, v3, LFi/f;->k:[F

    move-object v5, v4

    invoke-virtual/range {v5 .. v12}, LFi/n;->m([FFF[F[FLFi/n$a;LGi/b;)LEi/U;

    move-result-object v4

    iget-object v5, v4, LEi/U;->a:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iget-object v4, v4, LEi/U;->b:Ljava/lang/Object;

    check-cast v4, [F

    iput-object v4, v3, LFi/f;->l:[F

    iget v3, p0, LFi/e;->m:I

    add-int/2addr v3, v5

    iput v3, p0, LFi/e;->m:I

    goto/16 :goto_1

    :cond_6
    iget-object v4, v3, LFi/f;->l:[F

    iget-object v3, v3, LFi/f;->k:[F

    invoke-static {v4, v3}, LEi/g;->w([F[F)V

    goto/16 :goto_1

    :cond_7
    iget-object p1, p0, LFi/e;->l:LFi/l;

    invoke-virtual {p1, v1}, LFi/l;->l(Ljava/lang/String;)V

    return-void
.end method
