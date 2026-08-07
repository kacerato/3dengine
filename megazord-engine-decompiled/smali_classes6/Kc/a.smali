.class public LKc/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LKc/a$g;,
        LKc/a$e;,
        LKc/a$f;,
        LKc/a$d;
    }
.end annotation


# static fields
.field public static A:Z = false

.field public static B:Landroid/view/ScaleGestureDetector; = null

.field public static C:LLc/a; = null

.field public static D:Z = false

.field public static E:Ljava/util/concurrent/atomic/AtomicBoolean; = null

.field public static F:Z = false

.field public static final a:I = 0x12c

.field public static final b:F = 6.0f

.field public static final c:I = 0x5

.field public static final d:Ljava/lang/Object;

.field public static final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "LMc/a;",
            ">;"
        }
    .end annotation
.end field

.field public static final f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "LMc/a;",
            ">;"
        }
    .end annotation
.end field

.field public static final g:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "LMc/a;",
            ">;"
        }
    .end annotation
.end field

.field public static final h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "LMc/d;",
            ">;"
        }
    .end annotation
.end field

.field public static final i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "LMc/d;",
            ">;"
        }
    .end annotation
.end field

.field public static final j:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "LMc/d;",
            ">;"
        }
    .end annotation
.end field

.field public static final k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "LMc/h;",
            ">;"
        }
    .end annotation
.end field

.field public static final l:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "LMc/b;",
            ">;"
        }
    .end annotation
.end field

.field public static final m:Lcom/itsmagic/engine/Engines/Input/Key;

.field public static final n:LMc/d;

.field public static final o:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

.field public static p:LMc/i;

.field public static q:LMc/i;

.field public static final r:LKc/a$d;

.field public static final s:LKc/a$e;

.field public static final t:LKc/a$f;

.field public static final u:LKc/a$g;

.field public static final v:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lj9/b;",
            ">;"
        }
    .end annotation
.end field

.field public static final w:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lj9/b;",
            ">;"
        }
    .end annotation
.end field

.field public static final x:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/KeyEvent;",
            ">;"
        }
    .end annotation
.end field

.field public static final y:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/KeyEvent;",
            ">;"
        }
    .end annotation
.end field

.field public static z:Z


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, LKc/a;->d:Ljava/lang/Object;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v1, LKc/a;->e:Ljava/util/List;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v1, LKc/a;->f:Ljava/util/List;

    new-instance v1, Ljava/util/TreeMap;

    invoke-direct {v1}, Ljava/util/TreeMap;-><init>()V

    sput-object v1, LKc/a;->g:Ljava/util/Map;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v1, LKc/a;->h:Ljava/util/List;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    sput-object v2, LKc/a;->i:Ljava/util/List;

    new-instance v2, Ljava/util/TreeMap;

    invoke-direct {v2}, Ljava/util/TreeMap;-><init>()V

    sput-object v2, LKc/a;->j:Ljava/util/Map;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    sput-object v3, LKc/a;->k:Ljava/util/List;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    sput-object v3, LKc/a;->l:Ljava/util/List;

    new-instance v3, Lcom/itsmagic/engine/Engines/Input/Key;

    const-string v4, "android_back"

    invoke-direct {v3, v4}, Lcom/itsmagic/engine/Engines/Input/Key;-><init>(Ljava/lang/String;)V

    sput-object v3, LKc/a;->m:Lcom/itsmagic/engine/Engines/Input/Key;

    new-instance v4, LMc/d;

    invoke-direct {v4, v3}, LMc/d;-><init>(Lcom/itsmagic/engine/Engines/Input/Key;)V

    sput-object v4, LKc/a;->n:LMc/d;

    new-instance v5, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    invoke-direct {v5}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;-><init>()V

    sput-object v5, LKc/a;->o:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    monitor-enter v0

    :try_start_0
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Input/Key;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    sput-object v0, LKc/a;->p:LMc/i;

    sput-object v0, LKc/a;->q:LMc/i;

    new-instance v0, LKc/a$d;

    invoke-direct {v0}, LKc/a$d;-><init>()V

    sput-object v0, LKc/a;->r:LKc/a$d;

    new-instance v0, LKc/a$e;

    invoke-direct {v0}, LKc/a$e;-><init>()V

    sput-object v0, LKc/a;->s:LKc/a$e;

    new-instance v0, LKc/a$f;

    invoke-direct {v0}, LKc/a$f;-><init>()V

    sput-object v0, LKc/a;->t:LKc/a$f;

    new-instance v0, LKc/a$g;

    invoke-direct {v0}, LKc/a$g;-><init>()V

    sput-object v0, LKc/a;->u:LKc/a$g;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, LKc/a;->v:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, LKc/a;->w:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, LKc/a;->x:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, LKc/a;->y:Ljava/util/List;

    const/4 v0, 0x0

    sput-boolean v0, LKc/a;->z:Z

    sput-boolean v0, LKc/a;->A:Z

    sput-boolean v0, LKc/a;->D:Z

    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    sput-object v1, LKc/a;->E:Ljava/util/concurrent/atomic/AtomicBoolean;

    move v1, v0

    :goto_0
    const/16 v2, 0xa

    if-ge v1, v2, :cond_0

    sget-object v2, LKc/a;->k:Ljava/util/List;

    new-instance v3, LMc/h;

    invoke-direct {v3}, LMc/h;-><init>()V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v2, LKc/a;->l:Ljava/util/List;

    new-instance v3, LMc/b;

    invoke-direct {v3}, LMc/b;-><init>()V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    sput-boolean v0, LKc/a;->F:Z

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static A()V
    .locals 2

    const/4 v0, 0x0

    sput-object v0, LKc/a;->p:LMc/i;

    sget-object v0, LKc/a;->d:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, LKc/a;->x:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static B(Landroid/content/Context;)V
    .locals 11
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    sget-object p0, LKc/a;->q:LMc/i;

    if-eqz p0, :cond_0

    sput-object p0, LKc/a;->p:LMc/i;

    :cond_0
    sget-object p0, LKc/a;->d:Ljava/lang/Object;

    monitor-enter p0

    :try_start_0
    sget-object v0, LKc/a;->x:Ljava/util/List;

    sget-object v1, LKc/a;->y:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-interface {v1}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    sget-object v2, LKc/a;->x:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_3

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/KeyEvent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    sget-object v3, LKc/a;->y:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    move v3, v0

    :goto_1
    sget-object v4, LKc/a;->x:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-ge v3, v5, :cond_2

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/KeyEvent;

    if-eq v1, v3, :cond_1

    if-eq v2, v4, :cond_1

    invoke-virtual {v2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v5

    invoke-virtual {v4}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v6

    if-ne v5, v6, :cond_1

    invoke-virtual {v2}, Landroid/view/KeyEvent;->getAction()I

    move-result v5

    invoke-virtual {v4}, Landroid/view/KeyEvent;->getAction()I

    move-result v6

    if-eq v5, v6, :cond_1

    sget-object v5, LKc/a;->y:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    goto/16 :goto_15

    :catch_0
    move-exception v2

    goto :goto_3

    :cond_1
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :goto_3
    :try_start_2
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    sget-object v1, LKc/a;->y:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    move v1, v0

    :goto_4
    sget-object v2, LKc/a;->x:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    if-ge v1, v3, :cond_6

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/KeyEvent;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-virtual {v2}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_4

    invoke-static {v2}, LKc/a;->w(Landroid/view/KeyEvent;)Z

    goto :goto_6

    :catch_1
    move-exception v2

    goto :goto_5

    :cond_4
    invoke-virtual {v2}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-ne v3, v4, :cond_5

    invoke-static {v2}, LKc/a;->y(Landroid/view/KeyEvent;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_6

    :goto_5
    :try_start_4
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_5
    :goto_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_6
    invoke-interface {v2}, Ljava/util/List;->clear()V

    sget-object v1, LKc/a;->k:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LMc/h;

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LMc/h;

    move v3, v0

    :goto_7
    sget-object v5, LKc/a;->k:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    if-ge v3, v6, :cond_12

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, LMc/h;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    sget-object v6, LKc/a;->l:Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, LMc/b;

    invoke-virtual {v6}, LMc/b;->c()Z

    move-result v7

    invoke-virtual {v5, v7}, LMc/h;->F(Z)V

    invoke-virtual {v6}, LMc/b;->b()Z

    move-result v7

    invoke-virtual {v5, v7}, LMc/h;->y(Z)V

    invoke-virtual {v6}, LMc/b;->a()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    move-result-object v7

    invoke-virtual {v5, v7}, LMc/h;->E(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;)V

    invoke-virtual {v5}, LMc/h;->f()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    move-result-object v7

    iget v7, v7, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->x:F

    const/4 v8, 0x0

    cmpl-float v7, v7, v8

    if-ltz v7, :cond_7

    invoke-virtual {v6}, LMc/b;->a()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    move-result-object v7

    iget v7, v7, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->x:F

    invoke-virtual {v5}, LMc/h;->f()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    move-result-object v9

    iget v9, v9, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->x:F

    sub-float/2addr v7, v9

    invoke-virtual {v6}, LMc/b;->a()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    move-result-object v9

    iget v9, v9, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->y:F

    invoke-virtual {v5}, LMc/h;->f()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    move-result-object v10

    iget v10, v10, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->y:F

    sub-float/2addr v9, v10

    invoke-virtual {v5, v7, v9}, LMc/h;->G(FF)V

    goto :goto_8

    :catch_2
    move-exception v5

    goto/16 :goto_c

    :cond_7
    invoke-virtual {v5, v8, v8}, LMc/h;->G(FF)V

    :goto_8
    invoke-virtual {v5}, LMc/h;->f()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    move-result-object v7

    invoke-virtual {v5}, LMc/h;->g()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    move-result-object v9

    invoke-virtual {v7, v9}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->T0(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;)V

    invoke-virtual {v5}, LMc/h;->n()Z

    move-result v7

    if-nez v7, :cond_8

    invoke-virtual {v5}, LMc/h;->q()Z

    move-result v7

    if-eqz v7, :cond_9

    invoke-virtual {v5}, LMc/h;->o()Z

    move-result v7

    if-nez v7, :cond_9

    iget v7, v5, LMc/h;->o:F

    invoke-static {}, Lc9/d;->e()F

    move-result v9

    add-float/2addr v7, v9

    iput v7, v5, LMc/h;->o:F

    const v9, 0x3e99999a    # 0.3f

    cmpl-float v7, v7, v9

    if-ltz v7, :cond_9

    invoke-virtual {v5, v4}, LMc/h;->z(Z)V

    invoke-virtual {v5, v4}, LMc/h;->B(Z)V

    invoke-virtual {v5, v4}, LMc/h;->A(Z)V

    goto :goto_9

    :cond_8
    invoke-virtual {v5, v0}, LMc/h;->z(Z)V

    :cond_9
    :goto_9
    invoke-virtual {v5}, LMc/h;->k()Z

    move-result v7

    if-nez v7, :cond_a

    invoke-virtual {v5}, LMc/h;->q()Z

    move-result v7

    if-eqz v7, :cond_b

    invoke-virtual {v5}, LMc/h;->l()Z

    move-result v7

    if-nez v7, :cond_b

    invoke-virtual {v5, v4}, LMc/h;->x(Z)V

    invoke-virtual {v5, v4}, LMc/h;->v(Z)V

    invoke-virtual {v6}, LMc/b;->a()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    move-result-object v6

    invoke-virtual {v5, v6}, LMc/h;->w(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;)V

    goto :goto_a

    :cond_a
    invoke-virtual {v5, v0}, LMc/h;->v(Z)V

    :cond_b
    :goto_a
    invoke-virtual {v5}, LMc/h;->q()Z

    move-result v6

    if-nez v6, :cond_d

    invoke-virtual {v5}, LMc/h;->t()Z

    move-result v6

    if-nez v6, :cond_c

    invoke-virtual {v5}, LMc/h;->u()Z

    move-result v6

    if-nez v6, :cond_e

    invoke-virtual {v5, v4}, LMc/h;->J(Z)V

    invoke-virtual {v5, v4}, LMc/h;->K(Z)V

    goto :goto_b

    :cond_c
    invoke-virtual {v5, v0}, LMc/h;->J(Z)V

    iput-boolean v0, v5, LMc/h;->e:Z

    invoke-virtual {v5, v8, v8}, LMc/h;->G(FF)V

    const/high16 v6, -0x40800000    # -1.0f

    invoke-virtual {v5, v6, v6}, LMc/h;->C(FF)V

    goto :goto_b

    :cond_d
    invoke-virtual {v5, v0}, LMc/h;->K(Z)V

    :cond_e
    :goto_b
    invoke-virtual {v5}, LMc/h;->q()Z

    move-result v6

    if-nez v6, :cond_f

    invoke-virtual {v5}, LMc/h;->t()Z

    move-result v6

    if-nez v6, :cond_f

    invoke-virtual {v5, v0}, LMc/h;->x(Z)V

    invoke-virtual {v5, v0}, LMc/h;->B(Z)V

    iput v8, v5, LMc/h;->o:F

    invoke-virtual {v5, v0}, LMc/h;->A(Z)V

    invoke-virtual {v5, v0}, LMc/h;->z(Z)V

    :cond_f
    invoke-virtual {v5}, LMc/h;->q()Z

    move-result v6

    if-eqz v6, :cond_11

    iget-boolean v6, v5, LMc/h;->e:Z

    if-nez v6, :cond_11

    invoke-virtual {v5}, LMc/h;->g()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    move-result-object v6

    invoke-virtual {v5}, LMc/h;->a()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    move-result-object v7

    sget-object v9, LKc/a;->o:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    invoke-virtual {v6, v7, v9}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->N0(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    move-result-object v6

    invoke-virtual {v6}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->n0()F

    move-result v6

    const/high16 v7, 0x40c00000    # 6.0f

    invoke-static {v7}, Lgd/b;->k0(F)I

    move-result v7

    int-to-float v7, v7

    cmpl-float v6, v6, v7

    if-ltz v6, :cond_10

    iput-boolean v4, v5, LMc/h;->e:Z

    goto :goto_d

    :cond_10
    invoke-virtual {v5, v8, v8}, LMc/h;->G(FF)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_d

    :goto_c
    :try_start_6
    invoke-virtual {v5}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :cond_11
    :goto_d
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_7

    :cond_12
    :try_start_7
    invoke-virtual {v2}, LMc/h;->q()Z

    move-result v3

    const/4 v5, 0x0

    if-eqz v3, :cond_14

    iget-boolean v3, v2, LMc/h;->e:Z

    if-eqz v3, :cond_14

    invoke-virtual {v1}, LMc/h;->q()Z

    move-result v3

    if-eqz v3, :cond_13

    iget-boolean v3, v1, LMc/h;->e:Z

    if-eqz v3, :cond_13

    invoke-virtual {v2}, LMc/h;->i()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    move-result-object v2

    invoke-virtual {v1}, LMc/h;->i()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    move-result-object v1

    invoke-static {v2, v1}, LKc/a;->g(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;)V

    sput-boolean v4, LKc/a;->F:Z

    goto :goto_f

    :catch_3
    move-exception v1

    goto :goto_e

    :cond_13
    sput-object v5, LKc/a;->q:LMc/i;

    sput-boolean v0, LKc/a;->F:Z

    goto :goto_f

    :cond_14
    sput-object v5, LKc/a;->q:LMc/i;

    sput-boolean v0, LKc/a;->F:Z
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_f

    :goto_e
    :try_start_8
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_f
    sget-object v1, LKc/a;->s:LKc/a$e;

    invoke-virtual {v1}, LKc/a$e;->j()V

    sget-object v1, LKc/a;->t:LKc/a$f;

    invoke-virtual {v1}, LKc/a$f;->p()V

    sget-object v1, LKc/a;->r:LKc/a$d;

    invoke-virtual {v1}, LKc/a$d;->f()V

    sget-object v1, LKc/a;->u:LKc/a$g;

    invoke-virtual {v1}, LKc/a$g;->N()V

    monitor-exit p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    sget-object p0, LKc/a;->E:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p0

    sput-boolean p0, LKc/a;->D:Z

    move p0, v0

    :goto_10
    sget-object v1, LKc/a;->v:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-ge p0, v2, :cond_17

    invoke-interface {v1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lj9/b;

    :try_start_9
    invoke-virtual {v1}, Lj9/b;->b()Z

    move-result v2

    if-eqz v2, :cond_15

    invoke-virtual {v1}, Lj9/b;->a()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    move-result-object v2

    iget-object v2, v2, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    if-nez v2, :cond_16

    goto :goto_11

    :catch_4
    move-exception v1

    goto :goto_12

    :cond_15
    :goto_11
    sget-object v2, LKc/a;->w:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_4

    goto :goto_13

    :goto_12
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_16
    :goto_13
    add-int/lit8 p0, p0, 0x1

    goto :goto_10

    :cond_17
    sget-object p0, LKc/a;->w:Ljava/util/List;

    invoke-interface {v1, p0}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    invoke-interface {p0}, Ljava/util/List;->clear()V

    invoke-static {}, LKc/a;->f()Z

    move-result p0

    if-eqz p0, :cond_18

    sput-boolean v0, LKc/a;->z:Z

    sget-object p0, LKc/a;->E:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p0

    if-nez p0, :cond_19

    sget-boolean p0, LKc/a;->A:Z

    if-nez p0, :cond_19

    sput-boolean v4, LKc/a;->A:Z

    new-instance p0, LKc/a$c;

    invoke-direct {p0}, LKc/a$c;-><init>()V

    invoke-static {p0}, Lf8/c;->j0(Ljava/lang/Runnable;)V

    goto :goto_14

    :cond_18
    sput-boolean v0, LKc/a;->A:Z

    sget-boolean p0, LKc/a;->z:Z

    if-nez p0, :cond_19

    sput-boolean v4, LKc/a;->z:Z

    invoke-static {}, Lbd/i;->b()V

    :cond_19
    :goto_14
    return-void

    :goto_15
    :try_start_a
    monitor-exit p0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    throw v0
.end method

.method public static C(LUc/b;)Lcom/itsmagic/engine/Engines/Input/Axis;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "name"
        }
    .end annotation

    if-eqz p0, :cond_0

    invoke-virtual {p0}, LUc/b;->w0()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, LUc/b;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, LKc/a;->D(Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Input/Axis;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "name can\'t be empty or null"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static D(Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Input/Axis;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "name"
        }
    .end annotation

    if-eqz p0, :cond_1

    sget-object v0, LKc/a;->d:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-static {p0}, LKc/a;->i(Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Input/Axis;

    move-result-object v1

    if-nez v1, :cond_0

    new-instance v1, Lcom/itsmagic/engine/Engines/Input/Axis;

    invoke-direct {v1, p0}, Lcom/itsmagic/engine/Engines/Input/Axis;-><init>(Ljava/lang/String;)V

    new-instance v2, LMc/a;

    invoke-direct {v2, v1}, LMc/a;-><init>(Lcom/itsmagic/engine/Engines/Input/Axis;)V

    sget-object v3, LKc/a;->e:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v3, LKc/a;->g:Ljava/util/Map;

    invoke-interface {v3, p0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    return-object v1

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "axis can\'t be null"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static E(LUc/b;)Lcom/itsmagic/engine/Engines/Input/Key;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "name"
        }
    .end annotation

    if-eqz p0, :cond_0

    invoke-virtual {p0}, LUc/b;->w0()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/itsmagic/engine/Engines/Input/Key;

    invoke-virtual {p0}, LUc/b;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/itsmagic/engine/Engines/Input/Key;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, LKc/a;->F(Lcom/itsmagic/engine/Engines/Input/Key;)Lcom/itsmagic/engine/Engines/Input/Key;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "name can\'t be empty or null"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static F(Lcom/itsmagic/engine/Engines/Input/Key;)Lcom/itsmagic/engine/Engines/Input/Key;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "key"
        }
    .end annotation

    if-eqz p0, :cond_1

    sget-object v0, LKc/a;->d:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Input/Key;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, LKc/a;->k(Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Input/Key;

    move-result-object v1

    if-nez v1, :cond_0

    new-instance v1, LMc/d;

    invoke-direct {v1, p0}, LMc/d;-><init>(Lcom/itsmagic/engine/Engines/Input/Key;)V

    sget-object v2, LKc/a;->h:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v2, LKc/a;->j:Ljava/util/Map;

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Input/Key;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    move-object p0, v1

    :goto_0
    monitor-exit v0

    return-object p0

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "key can\'t be null"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static G(Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Input/Key;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "name"
        }
    .end annotation

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, LKc/a;->d:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-static {p0}, LKc/a;->k(Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Input/Key;

    move-result-object v1

    if-nez v1, :cond_0

    new-instance v1, Lcom/itsmagic/engine/Engines/Input/Key;

    invoke-direct {v1, p0}, Lcom/itsmagic/engine/Engines/Input/Key;-><init>(Ljava/lang/String;)V

    new-instance v2, LMc/d;

    invoke-direct {v2, v1}, LMc/d;-><init>(Lcom/itsmagic/engine/Engines/Input/Key;)V

    sget-object v3, LKc/a;->h:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v3, LKc/a;->j:Ljava/util/Map;

    invoke-interface {v3, p0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    return-object v1

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "name can\'t be empty or null"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static H(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "component"
        }
    .end annotation

    invoke-static {}, Lc9/a;->E()V

    if-eqz p0, :cond_2

    const/4 v0, 0x0

    :goto_0
    sget-object v1, LKc/a;->v:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lj9/b;

    invoke-virtual {v1}, Lj9/b;->b()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lj9/b;->a()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    move-result-object v2

    if-ne v2, p0, :cond_0

    sget-object v2, LKc/a;->w:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void

    :cond_2
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "Component can\'t be null"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static I(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "axisName",
            "value"
        }
    .end annotation

    sget-object v0, LKc/a;->d:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-static {p0}, LKc/a;->i(Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Input/Axis;

    move-result-object v1

    if-nez v1, :cond_0

    new-instance v1, Lcom/itsmagic/engine/Engines/Input/Axis;

    invoke-direct {v1, p0}, Lcom/itsmagic/engine/Engines/Input/Axis;-><init>(Ljava/lang/String;)V

    new-instance v2, LMc/a;

    invoke-direct {v2, v1}, LMc/a;-><init>(Lcom/itsmagic/engine/Engines/Input/Axis;)V

    sget-object v3, LKc/a;->e:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v3, LKc/a;->g:Ljava/util/Map;

    invoke-interface {v3, p0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    const-class p0, LKc/a;

    invoke-virtual {v1, p0, p1}, Lcom/itsmagic/engine/Engines/Input/Axis;->h(Ljava/lang/Object;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;)V

    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static J(Lcom/itsmagic/engine/Engines/Input/Key;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "key"
        }
    .end annotation

    if-eqz p0, :cond_1

    sget-object v0, LKc/a;->d:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, LKc/a;->j:Ljava/util/Map;

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Input/Key;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LMc/d;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, LMc/d;->c()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, LMc/d;->a()Lcom/itsmagic/engine/Engines/Input/Key;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/itsmagic/engine/Engines/Input/Key;->d(Lcom/itsmagic/engine/Engines/Input/Key;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    invoke-static {p0}, LKc/a;->F(Lcom/itsmagic/engine/Engines/Input/Key;)Lcom/itsmagic/engine/Engines/Input/Key;

    monitor-exit v0

    return-void

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "key can\'t be null"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static K(Ljava/lang/String;ZZZ)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "name",
            "down",
            "pressed",
            "up"
        }
    .end annotation

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, LKc/a;->d:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, LKc/a;->j:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LMc/d;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, LMc/d;->c()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, LMc/d;->a()Lcom/itsmagic/engine/Engines/Input/Key;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3}, Lcom/itsmagic/engine/Engines/Input/Key;->e(ZZZ)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    invoke-static {p0}, LKc/a;->G(Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Input/Key;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3}, Lcom/itsmagic/engine/Engines/Input/Key;->e(ZZZ)V

    monitor-exit v0

    return-void

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "key name can\'t be null or empty"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static L()I
    .locals 2

    sget-object v0, LKc/a;->d:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, LKc/a;->k:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static M(Lcom/itsmagic/engine/Engines/Input/Axis;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "axis"
        }
    .end annotation

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Input/Axis;->k()V

    return-void
.end method

.method public static synthetic a()Ljava/lang/Object;
    .locals 1

    sget-object v0, LKc/a;->d:Ljava/lang/Object;

    return-object v0
.end method

.method public static synthetic b()Ljava/util/List;
    .locals 1

    sget-object v0, LKc/a;->x:Ljava/util/List;

    return-object v0
.end method

.method public static synthetic c(Z)Z
    .locals 0

    sput-boolean p0, LKc/a;->A:Z

    return p0
.end method

.method public static synthetic d(I)Z
    .locals 0

    invoke-static {p0}, LKc/a;->r(I)Z

    move-result p0

    return p0
.end method

.method public static e(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "component"
        }
    .end annotation

    invoke-static {}, Lc9/a;->E()V

    if-eqz p0, :cond_2

    const/4 v0, 0x0

    :goto_0
    sget-object v1, LKc/a;->v:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lj9/b;

    invoke-virtual {v1}, Lj9/b;->b()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lj9/b;->a()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    move-result-object v1

    if-ne v1, p0, :cond_0

    return-void

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    new-instance v0, Lj9/b;

    invoke-direct {v0, p0}, Lj9/b;-><init>(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    :cond_2
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "Component can\'t be null"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static f()Z
    .locals 1

    sget-object v0, LKc/a;->v:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public static g(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "slide1",
            "slide2"
        }
    .end annotation

    new-instance v0, LMc/i;

    invoke-direct {v0, p0, p1}, LMc/i;-><init>(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;)V

    sput-object v0, LKc/a;->q:LMc/i;

    return-void
.end method

.method public static h(Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Input/Axis;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "axisName"
        }
    .end annotation

    sget-object v0, LKc/a;->d:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-static {p0}, LKc/a;->i(Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Input/Axis;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static i(Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Input/Axis;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "axisName"
        }
    .end annotation

    sget-object v0, LKc/a;->g:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, LMc/a;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, LMc/a;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, LMc/a;->a()Lcom/itsmagic/engine/Engines/Input/Axis;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static j(Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Input/Key;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "key"
        }
    .end annotation

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, LKc/a;->d:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-static {p0}, LKc/a;->k(Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Input/Key;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "key can\'t be empty"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "key can\'t be null"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static k(Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Input/Key;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "key"
        }
    .end annotation

    sget-object v0, LKc/a;->j:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, LMc/d;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, LMc/d;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, LMc/d;->a()Lcom/itsmagic/engine/Engines/Input/Key;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static l()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;
    .locals 8

    :try_start_0
    sget-object v0, LKc/a;->d:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    :try_start_1
    sget-object v5, LKc/a;->k:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    if-ge v4, v6, :cond_1

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, LMc/h;

    if-eqz v5, :cond_0

    iget-boolean v6, v5, LMc/h;->e:Z

    if-eqz v6, :cond_0

    invoke-virtual {v5}, LMc/h;->q()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {v5}, LMc/h;->i()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    move-result-object v6

    invoke-virtual {v6}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->b1()F

    move-result v6

    cmpl-float v7, v6, v2

    if-lez v7, :cond_0

    move v1, v4

    move-object v3, v5

    move v2, v6

    goto :goto_1

    :catchall_0
    move-exception v1

    goto :goto_2

    :cond_0
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-ltz v1, :cond_2

    if-eqz v3, :cond_2

    :try_start_2
    invoke-virtual {v3}, LMc/h;->i()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->K()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    move-result-object v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    goto :goto_3

    :goto_2
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :goto_3
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_2
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;-><init>()V

    return-object v0
.end method

.method public static m()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;
    .locals 9

    :try_start_0
    sget-object v0, LKc/a;->d:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x0

    const/4 v2, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    move v5, v1

    :goto_0
    :try_start_1
    sget-object v6, LKc/a;->k:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    if-ge v4, v7, :cond_1

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, LMc/h;

    if-eqz v6, :cond_0

    iget-boolean v7, v6, LMc/h;->e:Z

    if-eqz v7, :cond_0

    invoke-virtual {v6}, LMc/h;->q()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-virtual {v6}, LMc/h;->i()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    move-result-object v7

    invoke-virtual {v7}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->b1()F

    move-result v7

    cmpl-float v8, v7, v5

    if-lez v8, :cond_0

    move v2, v4

    move-object v3, v6

    move v5, v7

    goto :goto_1

    :catchall_0
    move-exception v1

    goto :goto_4

    :cond_0
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-ltz v2, :cond_4

    if-eqz v3, :cond_4

    :try_start_2
    invoke-virtual {v3}, LMc/h;->i()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->K()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    move-result-object v0

    iget v2, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->x:F

    cmpl-float v3, v2, v1

    if-lez v3, :cond_2

    invoke-static {}, Lc9/c;->b()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    iput v2, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->x:F

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_5

    :cond_2
    invoke-static {v2}, Lgd/b;->k(F)F

    move-result v2

    invoke-static {}, Lc9/c;->b()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    neg-float v2, v2

    iput v2, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->x:F

    :goto_2
    iget v2, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->y:F

    cmpl-float v1, v2, v1

    if-lez v1, :cond_3

    invoke-static {}, Lc9/c;->a()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v2, v1

    iput v2, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->y:F

    goto :goto_3

    :cond_3
    invoke-static {v2}, Lgd/b;->k(F)F

    move-result v1

    invoke-static {}, Lc9/c;->a()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    neg-float v1, v1

    iput v1, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->y:F
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :goto_3
    return-object v0

    :goto_4
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :goto_5
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_4
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;-><init>()V

    return-object v0
.end method

.method public static n(I)LMc/h;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "id"
        }
    .end annotation

    sget-object v0, LKc/a;->d:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, LKc/a;->k:Ljava/util/List;

    invoke-interface {v1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, LMc/h;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static o()V
    .locals 1

    new-instance v0, LKc/a$a;

    invoke-direct {v0}, LKc/a$a;-><init>()V

    invoke-static {v0}, Lf8/c;->j0(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static p()Z
    .locals 1

    sget-boolean v0, LKc/a;->D:Z

    return v0
.end method

.method public static q()Z
    .locals 1

    sget-object v0, LKc/a;->E:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public static r(I)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "sources"
        }
    .end annotation

    and-int/lit16 v0, p0, 0x2002

    const/16 v1, 0x2002

    if-eq v0, v1, :cond_1

    const v0, 0x20004

    and-int/2addr p0, v0

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static s()V
    .locals 5

    sget-object v0, LKc/a;->d:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    :try_start_0
    sget-object v3, LKc/a;->h:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_1

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LMc/d;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v3}, LMc/d;->c()Z

    move-result v4

    if-nez v4, :cond_0

    sget-object v4, LKc/a;->i:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v4, LKc/a;->j:Ljava/util/Map;

    invoke-virtual {v3}, LMc/d;->b()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v4, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v1

    goto :goto_4

    :catch_0
    move-exception v3

    :try_start_2
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    sget-object v2, LKc/a;->i:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2

    invoke-interface {v3, v2}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    invoke-interface {v2}, Ljava/util/List;->clear()V

    :cond_2
    :goto_2
    sget-object v2, LKc/a;->e:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_4

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LMc/a;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-virtual {v2}, LMc/a;->c()Z

    move-result v3

    if-nez v3, :cond_3

    sget-object v3, LKc/a;->f:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v3, LKc/a;->g:Ljava/util/Map;

    invoke-virtual {v2}, LMc/a;->b()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_3

    :catch_1
    move-exception v2

    :try_start_4
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_3
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_4
    sget-object v1, LKc/a;->f:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_5

    invoke-interface {v2, v1}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    invoke-interface {v1}, Ljava/util/List;->clear()V

    :cond_5
    monitor-exit v0

    return-void

    :goto_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v1
.end method

.method public static t(Lcom/itsmagic/engine/Engines/Input/Key;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "key"
        }
    .end annotation

    sget-object v0, Lcom/itsmagic/engine/Engines/Engine/World/a;->c:Lcom/itsmagic/engine/Engines/Engine/World/World;

    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Engine/World/World;->b:Ljava/util/List;

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-virtual {v2, p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->onKeyDown(Lcom/itsmagic/engine/Engines/Input/Key;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static u(Lcom/itsmagic/engine/Engines/Input/Key;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "key"
        }
    .end annotation

    sget-object v0, Lcom/itsmagic/engine/Engines/Engine/World/a;->c:Lcom/itsmagic/engine/Engines/Engine/World/World;

    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Engine/World/World;->b:Ljava/util/List;

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-virtual {v2, p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->onKeyPressed(Lcom/itsmagic/engine/Engines/Input/Key;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static v(Lcom/itsmagic/engine/Engines/Input/Key;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "key"
        }
    .end annotation

    sget-object v0, Lcom/itsmagic/engine/Engines/Engine/World/a;->c:Lcom/itsmagic/engine/Engines/Engine/World/World;

    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Engine/World/World;->b:Ljava/util/List;

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-virtual {v2, p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->onKeyUp(Lcom/itsmagic/engine/Engines/Input/Key;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static w(Landroid/view/KeyEvent;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "event"
        }
    .end annotation

    invoke-virtual {p0}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    invoke-static {v0, p0}, Lha/a;->n(ILandroid/view/KeyEvent;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    :try_start_0
    sget-object v0, LKc/a;->s:LKc/a$e;

    invoke-virtual {v0, p0, v1}, LKc/a$e;->h(Landroid/view/KeyEvent;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    sget-object v0, LKc/a;->t:LKc/a$f;

    invoke-virtual {v0, p0, v1}, LKc/a$f;->j(Landroid/view/KeyEvent;Z)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_2

    return v1

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public static x(Landroid/view/KeyEvent;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "event"
        }
    .end annotation

    invoke-static {}, LKc/a;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, LKc/a$b;

    invoke-direct {v0, p0}, LKc/a$b;-><init>(Landroid/view/KeyEvent;)V

    invoke-static {v0}, Lc9/a;->I(Ljava/lang/Runnable;)V

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static y(Landroid/view/KeyEvent;)Z
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "event"
        }
    .end annotation

    invoke-virtual {p0}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    invoke-static {v0, p0}, Lha/a;->o(ILandroid/view/KeyEvent;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    :try_start_0
    sget-object v2, LKc/a;->s:LKc/a$e;

    invoke-virtual {v2, p0, v0}, LKc/a$e;->h(Landroid/view/KeyEvent;Z)Z

    move-result v2

    if-eqz v2, :cond_1

    return v1

    :cond_1
    sget-object v2, LKc/a;->t:LKc/a$f;

    invoke-virtual {v2, p0, v0}, LKc/a$f;->j(Landroid/view/KeyEvent;Z)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_2

    return v1

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_2
    return v0
.end method

.method public static z(Landroid/view/MotionEvent;)V
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "event"
        }
    .end annotation

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-static {p0}, Lha/a;->q(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getDeviceId()I

    move-result v0

    invoke-static {v0}, Landroid/view/InputDevice;->getDevice(I)Landroid/view/InputDevice;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/InputDevice;->getSources()I

    move-result v0

    invoke-static {v0}, LKc/a;->r(I)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    const/16 v4, 0x8

    if-ne v3, v4, :cond_3

    return-void

    :cond_3
    sget-object v3, LKc/a;->B:Landroid/view/ScaleGestureDetector;

    if-eqz v3, :cond_4

    invoke-virtual {v3, p0}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    :cond_4
    sget-object v3, LKc/a;->C:LLc/a;

    if-eqz v3, :cond_5

    invoke-virtual {v3, p0}, LLc/a;->c(Landroid/view/MotionEvent;)Z

    :cond_5
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    and-int/lit16 v3, v3, 0xff

    if-eqz v3, :cond_a

    if-eq v3, v2, :cond_8

    const/4 v4, 0x2

    if-eq v3, v4, :cond_6

    const/4 v4, 0x5

    if-eq v3, v4, :cond_a

    const/4 v2, 0x6

    if-eq v3, v2, :cond_8

    goto/16 :goto_2

    :cond_6
    sget-object v3, LKc/a;->u:LKc/a$g;

    invoke-virtual {v3}, LKc/a$g;->q()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-virtual {v3}, LKc/a$g;->k()Z

    move-result v3

    if-nez v3, :cond_7

    return-void

    :cond_7
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v3

    :goto_1
    if-ge v1, v3, :cond_c

    invoke-virtual {p0, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v4

    invoke-virtual {p0, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v5

    invoke-virtual {p0, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v6

    sget-object v7, LKc/a;->d:Ljava/lang/Object;

    monitor-enter v7

    :try_start_0
    sget-object v8, LKc/a;->l:Ljava/util/List;

    invoke-interface {v8, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, LMc/b;

    invoke-virtual {v4, v5, v6}, LMc/b;->e(FF)V

    invoke-virtual {v4, v2}, LMc/b;->f(Z)V

    invoke-virtual {v4, v0}, LMc/b;->d(Z)V

    monitor-exit v7

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :catchall_0
    move-exception p0

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_8
    sget-object v2, LKc/a;->u:LKc/a$g;

    invoke-virtual {v2}, LKc/a$g;->q()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-virtual {v2}, LKc/a$g;->k()Z

    move-result v2

    if-nez v2, :cond_9

    return-void

    :cond_9
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    invoke-virtual {p0, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    invoke-virtual {p0, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result p0

    sget-object v5, LKc/a;->d:Ljava/lang/Object;

    monitor-enter v5

    :try_start_1
    sget-object v2, LKc/a;->l:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LMc/b;

    invoke-virtual {v2, v4, p0}, LMc/b;->e(FF)V

    invoke-virtual {v2, v1}, LMc/b;->f(Z)V

    invoke-virtual {v2, v0}, LMc/b;->d(Z)V

    monitor-exit v5

    goto :goto_2

    :catchall_1
    move-exception p0

    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p0

    :cond_a
    sget-object v1, LKc/a;->u:LKc/a$g;

    invoke-virtual {v1}, LKc/a$g;->q()Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-virtual {v1}, LKc/a$g;->k()Z

    move-result v1

    if-nez v1, :cond_b

    return-void

    :cond_b
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    invoke-virtual {p0, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    invoke-virtual {p0, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result p0

    sget-object v1, LKc/a;->d:Ljava/lang/Object;

    monitor-enter v1

    :try_start_2
    sget-object v5, LKc/a;->l:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LMc/b;

    invoke-virtual {v3, v4, p0}, LMc/b;->e(FF)V

    invoke-virtual {v3, v2}, LMc/b;->f(Z)V

    invoke-virtual {v3, v0}, LMc/b;->d(Z)V

    monitor-exit v1

    :cond_c
    :goto_2
    return-void

    :catchall_2
    move-exception p0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    throw p0
.end method
