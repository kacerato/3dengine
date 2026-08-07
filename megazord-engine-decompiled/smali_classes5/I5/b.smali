.class public LI5/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:I

.field public final b:F

.field public final c:Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Components/EditorCamera;

.field public d:LMb/n;

.field public e:LMb/n;

.field public f:LMb/n;

.field public g:Lsa/e;

.field public h:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final i:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

.field public final j:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

.field public k:Z

.field public final l:Ljava/lang/Object;

.field public m:Z

.field public n:LI5/a;

.field public o:F

.field public p:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Components/EditorCamera;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "editorCamera"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xc8

    iput v0, p0, LI5/b;->a:I

    const/4 v0, 0x0

    iput v0, p0, LI5/b;->b:F

    new-instance v1, Lsa/e;

    invoke-direct {v1}, Lsa/e;-><init>()V

    iput-object v1, p0, LI5/b;->g:Lsa/e;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lsa/e;->A(Z)V

    iget-object v1, p0, LI5/b;->g:Lsa/e;

    invoke-virtual {v1, v2}, Lsa/e;->B(Z)V

    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v1, p0, LI5/b;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    const/16 v3, 0xff

    const/4 v4, 0x0

    invoke-direct {v1, v4, v3, v4}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;-><init>(III)V

    iput-object v1, p0, LI5/b;->i:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    invoke-direct {v1, v4, v4, v4}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;-><init>(III)V

    iput-object v1, p0, LI5/b;->j:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, LI5/b;->l:Ljava/lang/Object;

    iput-boolean v2, p0, LI5/b;->m:Z

    iput v0, p0, LI5/b;->o:F

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>()V

    iput-object v0, p0, LI5/b;->p:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iput-object p1, p0, LI5/b;->c:Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Components/EditorCamera;

    return-void
.end method


# virtual methods
.method public a(Lmc/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cameraFBO"
        }
    .end annotation

    return-void
.end method

.method public b(Lmc/a;)V
    .locals 17
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cameraFBO"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lmc/a;->w(LMb/p;)V

    iget-object v3, v1, LI5/b;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_1

    iget-object v3, v1, LI5/b;->c:Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Components/EditorCamera;

    iget-object v3, v3, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    iget-object v3, v3, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    const-class v5, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-static {v5}, Lcom/itsmagic/engine/Engines/Engine/JavaPool/JP;->acquire(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v3, v5}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->I0(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object v3

    iget-object v5, v1, LI5/b;->p:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v3, v5}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->F0(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, v1, LI5/b;->p:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object v5, v1, LI5/b;->c:Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Components/EditorCamera;

    iget-object v5, v5, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    iget-object v5, v5, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    const-class v6, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-static {v6}, Lcom/itsmagic/engine/Engines/Engine/JavaPool/JP;->acquire(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v5, v6}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->I0(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->U1(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iput v4, v1, LI5/b;->o:F

    iput-object v2, v1, LI5/b;->f:LMb/n;

    goto :goto_0

    :cond_0
    iget v3, v1, LI5/b;->o:F

    invoke-static {}, Lc9/d;->e()F

    move-result v5

    add-float/2addr v3, v5

    iput v3, v1, LI5/b;->o:F

    :cond_1
    :goto_0
    iget v3, v1, LI5/b;->o:F

    const/high16 v5, 0x3f000000    # 0.5f

    cmpl-float v3, v3, v5

    if-ltz v3, :cond_f

    iget-object v3, v1, LI5/b;->l:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    iget-object v5, v1, LI5/b;->f:LMb/n;

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v5, :cond_2

    invoke-virtual {v5}, LMb/n;->W()Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, v1, LI5/b;->f:LMb/n;

    invoke-virtual {v0, v5}, Lmc/a;->w(LMb/p;)V

    iput-boolean v7, v1, LI5/b;->m:Z

    goto :goto_1

    :catchall_0
    move-exception v0

    goto/16 :goto_f

    :cond_2
    iput-boolean v6, v1, LI5/b;->m:Z

    :goto_1
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-boolean v0, v1, LI5/b;->m:Z

    if-eqz v0, :cond_f

    iget-object v0, v1, LI5/b;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v7, v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_f

    iput-boolean v7, v1, LI5/b;->m:Z

    iget-object v0, v1, LI5/b;->c:Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Components/EditorCamera;

    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->Q0()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    move-result-object v0

    const-class v3, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-static {v3}, Lcom/itsmagic/engine/Engines/Engine/JavaPool/JP;->acquire(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v0, v3}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->I0(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object v3

    new-instance v5, LUb/f;

    iget-object v0, v1, LI5/b;->c:Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Components/EditorCamera;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->getViewMatrix()[F

    move-result-object v0

    invoke-direct {v5, v0}, LUb/f;-><init>([F)V

    :try_start_1
    iget-boolean v0, v1, LI5/b;->k:Z

    if-eqz v0, :cond_3

    iget-object v0, v1, LI5/b;->d:LMb/n;

    goto :goto_2

    :catch_0
    move-exception v0

    goto/16 :goto_e

    :cond_3
    iget-object v0, v1, LI5/b;->e:LMb/n;

    :goto_2
    const/16 v8, 0xc8

    if-nez v0, :cond_5

    new-instance v0, LMb/n;

    invoke-direct {v0, v8, v8}, LMb/n;-><init>(II)V

    iget-boolean v9, v1, LI5/b;->k:Z

    if-eqz v9, :cond_4

    iput-object v0, v1, LI5/b;->d:LMb/n;

    goto :goto_3

    :cond_4
    iput-object v0, v1, LI5/b;->e:LMb/n;

    :cond_5
    :goto_3
    move-object v9, v0

    iget-boolean v0, v1, LI5/b;->k:Z

    xor-int/2addr v0, v6

    iput-boolean v0, v1, LI5/b;->k:Z

    iget-object v0, v1, LI5/b;->c:Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Components/EditorCamera;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->getFov()F

    move-result v0

    iget-object v10, v1, LI5/b;->c:Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Components/EditorCamera;

    invoke-virtual {v10}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->getImageRatio()F

    move-result v10

    float-to-double v11, v0

    invoke-static {v11, v12}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v11

    double-to-float v0, v11

    const/high16 v11, 0x40000000    # 2.0f

    div-float/2addr v0, v11

    float-to-double v12, v0

    invoke-static {v12, v13}, Ljava/lang/Math;->tan(D)D

    move-result-wide v12

    double-to-float v12, v12

    mul-float/2addr v10, v12

    iget-object v0, v1, LI5/b;->c:Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Components/EditorCamera;

    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->n0()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object v13

    iget-object v0, v1, LI5/b;->c:Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Components/EditorCamera;

    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->b3()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object v14

    iget-object v0, v1, LI5/b;->c:Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Components/EditorCamera;

    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->D4()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object v15

    iget-object v0, v1, LI5/b;->n:LI5/a;

    if-nez v0, :cond_6

    new-instance v0, LI5/a;

    invoke-direct {v0, v8}, LI5/a;-><init>(I)V

    iput-object v0, v1, LI5/b;->n:LI5/a;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_6
    :goto_4
    const/high16 v2, 0x3f800000    # 1.0f

    if-ge v7, v8, :cond_9

    const/4 v6, 0x0

    :goto_5
    if-ge v6, v8, :cond_8

    int-to-float v0, v7

    const/high16 v16, 0x43470000    # 199.0f

    div-float v0, v0, v16

    mul-float/2addr v0, v11

    sub-float/2addr v0, v2

    int-to-float v8, v6

    div-float v8, v8, v16

    mul-float/2addr v8, v11

    sub-float/2addr v8, v2

    neg-float v0, v0

    mul-float/2addr v0, v10

    mul-float/2addr v8, v12

    :try_start_2
    invoke-virtual {v14, v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->q1(F)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object v0

    invoke-virtual {v15, v8}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->q1(F)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object v8

    invoke-virtual {v0, v8}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->G(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object v0

    invoke-virtual {v0, v13}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->G(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->E1()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object v0

    new-instance v8, Lsa/c;

    new-instance v2, Lsa/d;

    invoke-direct {v2, v3, v0}, Lsa/d;-><init>(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V

    invoke-direct {v8, v2, v4}, Lsa/c;-><init>(Lsa/d;F)V

    iget-object v0, v1, LI5/b;->g:Lsa/e;

    const/4 v2, 0x1

    invoke-virtual {v0, v8, v2}, Lsa/e;->L(Lsa/c;Z)Lsa/a;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lsa/a;->s()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object v8

    invoke-virtual {v0}, Lsa/a;->v()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object v0

    iget-object v2, v1, LI5/b;->n:LI5/a;

    iget-object v4, v2, LI5/a;->b:[[Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    aget-object v4, v4, v7

    aput-object v0, v4, v6

    iget-object v0, v2, LI5/a;->a:[[Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    aget-object v0, v0, v7

    aput-object v8, v0, v6

    goto :goto_6

    :catch_1
    move-exception v0

    goto :goto_7

    :cond_7
    iget-object v0, v1, LI5/b;->n:LI5/a;

    iget-object v2, v0, LI5/a;->b:[[Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    aget-object v2, v2, v7

    const/4 v4, 0x0

    aput-object v4, v2, v6

    iget-object v0, v0, LI5/a;->a:[[Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    aget-object v0, v0, v7

    aput-object v4, v0, v6
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :goto_6
    const/4 v4, 0x0

    goto :goto_8

    :goto_7
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    iget-object v0, v1, LI5/b;->n:LI5/a;

    iget-object v2, v0, LI5/a;->b:[[Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    aget-object v2, v2, v7

    const/4 v4, 0x0

    aput-object v4, v2, v6

    iget-object v0, v0, LI5/a;->a:[[Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    aget-object v0, v0, v7

    aput-object v4, v0, v6

    :goto_8
    add-int/lit8 v6, v6, 0x1

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    const/16 v8, 0xc8

    goto :goto_5

    :cond_8
    const/4 v4, 0x0

    add-int/lit8 v7, v7, 0x1

    const/4 v4, 0x0

    const/4 v6, 0x1

    const/16 v8, 0xc8

    goto/16 :goto_4

    :cond_9
    move v2, v8

    const/4 v0, 0x0

    :goto_9
    if-ge v0, v2, :cond_c

    const/4 v4, 0x0

    :goto_a
    if-ge v4, v2, :cond_b

    iget-object v2, v1, LI5/b;->n:LI5/a;

    iget-object v6, v2, LI5/a;->b:[[Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    aget-object v6, v6, v0

    aget-object v6, v6, v4

    iget-object v7, v2, LI5/a;->a:[[Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    aget-object v7, v7, v0

    aget-object v7, v7, v4

    if-eqz v6, :cond_a

    invoke-virtual {v3, v6}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->D2(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object v2

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->C1()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object v2

    invoke-virtual {v7, v2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->x0(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)F

    move-result v2

    const v6, -0x41666666    # -0.3f

    invoke-static {v2, v6}, Lgd/b;->S0(FF)F

    move-result v2

    const v6, 0x3e99999a    # 0.3f

    add-float/2addr v2, v6

    div-float/2addr v2, v11

    invoke-virtual {v5, v7, v7}, LUb/f;->s0(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-virtual {v7, v6}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->C(F)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v7, v11}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->r0(F)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    new-instance v8, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    invoke-direct {v8}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;-><init>()V

    invoke-virtual {v7}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->W0()F

    move-result v10

    invoke-virtual {v7}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->X0()F

    move-result v12

    invoke-virtual {v7}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->Y0()F

    move-result v7

    invoke-virtual {v8, v10, v12, v7}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->d0(FFF)V

    invoke-static {}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->q()Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    move-result-object v7

    invoke-virtual {v7, v8, v2}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->s(Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;F)Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    move-result-object v2

    iget-object v7, v1, LI5/b;->n:LI5/a;

    iget-object v7, v7, LI5/a;->c:[[I

    aget-object v7, v7, v0

    iget v2, v2, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->intColor:I

    aput v2, v7, v4

    goto :goto_b

    :cond_a
    const/high16 v6, 0x3f800000    # 1.0f

    iget-object v2, v2, LI5/a;->c:[[I

    aget-object v2, v2, v0

    invoke-static {}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->q()Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    move-result-object v7

    iget v7, v7, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->intColor:I

    aput v7, v2, v4

    :goto_b
    add-int/lit8 v4, v4, 0x1

    const/16 v2, 0xc8

    goto :goto_a

    :cond_b
    const/high16 v6, 0x3f800000    # 1.0f

    add-int/lit8 v0, v0, 0x1

    const/16 v2, 0xc8

    goto :goto_9

    :cond_c
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;-><init>()V

    const/16 v2, 0xc8

    const/4 v3, 0x0

    :goto_c
    if-ge v3, v2, :cond_e

    const/4 v4, 0x0

    :goto_d
    if-ge v4, v2, :cond_d

    iget-object v5, v1, LI5/b;->n:LI5/a;

    iget-object v5, v5, LI5/a;->c:[[I

    aget-object v5, v5, v3

    aget v5, v5, v4

    invoke-virtual {v0, v5}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->V(I)Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    invoke-virtual {v9, v3, v4, v0}, LMb/n;->k0(IILcom/itsmagic/engine/Engines/Engine/Color/ColorINT;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_d

    :cond_d
    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    :cond_e
    invoke-virtual {v9}, LMb/n;->apply()V

    iget-object v2, v1, LI5/b;->l:Ljava/lang/Object;

    monitor-enter v2
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    :try_start_4
    iput-object v9, v1, LI5/b;->f:LMb/n;

    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    iget-object v0, v1, LI5/b;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_10

    :catchall_1
    move-exception v0

    :try_start_6
    monitor-exit v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    throw v0
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    :goto_e
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_10

    :goto_f
    :try_start_8
    monitor-exit v3
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    throw v0

    :cond_f
    :goto_10
    return-void
.end method
