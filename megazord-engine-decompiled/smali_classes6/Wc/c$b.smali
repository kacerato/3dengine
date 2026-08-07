.class public LWc/c$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LWc/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:LWc/c;


# direct methods
.method public constructor <init>(LWc/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, LWc/c$b;->b:LWc/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    :try_start_0
    sget-object v0, Lc9/a;->L:Lbd/N;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbd/N;->e(Ljava/lang/Object;)V

    invoke-static {}, Lu8/b;->j()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-static {}, Lu8/b;->i()Z

    move-result v0

    if-nez v0, :cond_a

    const-class v0, Lz9/a;

    invoke-static {v0}, Lj9/f;->h(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    invoke-static {}, Lc9/d;->b()F

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    cmpg-float v2, v1, v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-gez v2, :cond_4

    const/4 v2, 0x0

    cmpl-float v5, v1, v2

    if-lez v5, :cond_4

    const v5, 0x3d3c6a7f    # 0.046f

    invoke-static {v2, v1, v5}, Lgd/b;->E(FFF)F

    move-result v1

    iget-object v2, p0, LWc/c$b;->b:LWc/c;

    invoke-static {v2}, LWc/c;->a(LWc/c;)Lcom/itsmagic/engine/Engines/Engine/World/World;

    move-result-object v2

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/World/World;->r()Lcom/itsmagic/engine/Engines/Engine/World/Settings/PhysicsSettings;

    move-result-object v2

    invoke-static {}, LI6/d;->D1()Z

    move-result v5

    if-eqz v5, :cond_0

    const-string v5, "Sync"

    invoke-static {v5}, LI6/d;->K1(Ljava/lang/String;)LI6/g;

    move-result-object v5

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_f

    :cond_0
    move-object v5, v4

    :goto_0
    move v6, v3

    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ge v6, v7, :cond_2

    :try_start_1
    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    check-cast v7, Lz9/a;

    invoke-interface {v7}, Lz9/a;->isActiveForPhysics()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v7}, Lz9/a;->updatePhysics()V

    goto :goto_3

    :catch_0
    move-exception v7

    goto :goto_2

    :cond_1
    invoke-interface {v7}, Lz9/a;->disabledUpdatePhysics()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    :goto_2
    :try_start_2
    invoke-virtual {v7}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_2
    invoke-static {v5}, LI6/d;->I1(LI6/g;)V

    invoke-static {}, LI6/d;->D1()Z

    move-result v5

    if-eqz v5, :cond_3

    const-string v5, "Physics simulation"

    invoke-static {v5}, LI6/d;->K1(Ljava/lang/String;)LI6/g;

    move-result-object v5

    goto :goto_4

    :cond_3
    move-object v5, v4

    :goto_4
    sget-object v6, LWc/c;->i:Ljava/lang/Object;

    monitor-enter v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    iget-object v7, p0, LWc/c$b;->b:LWc/c;

    iget-object v7, v7, LWc/c;->c:Lcom/jme3/bullet/PhysicsSpace;

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/World/Settings/PhysicsSettings;->c()I

    move-result v2

    invoke-virtual {v7, v2}, Lcom/jme3/bullet/PhysicsSpace;->setSolverNumIterations(I)V

    iget-object v2, p0, LWc/c$b;->b:LWc/c;

    iget-object v2, v2, LWc/c;->c:Lcom/jme3/bullet/PhysicsSpace;

    invoke-virtual {v2, v1}, Lcom/jme3/bullet/PhysicsSpace;->update(F)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/Error; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_6

    :catchall_1
    move-exception v0

    goto :goto_7

    :catch_1
    move-exception v1

    goto :goto_5

    :catch_2
    move-exception v1

    :goto_5
    :try_start_4
    invoke-static {}, Ld5/d;->D1()V

    invoke-static {v1}, Ld5/d;->b2(Ljava/lang/Throwable;)V

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_6
    monitor-exit v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    invoke-static {v5}, LI6/d;->I1(LI6/g;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_8

    :goto_7
    :try_start_6
    monitor-exit v6
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    throw v0

    :cond_4
    :goto_8
    sget-object v1, LWc/c;->i:Ljava/lang/Object;

    monitor-enter v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :try_start_8
    invoke-static {}, LI6/d;->D1()Z

    move-result v2

    if-eqz v2, :cond_5

    const-string v2, "Distribute"

    invoke-static {v2}, LI6/d;->K1(Ljava/lang/String;)LI6/g;

    move-result-object v4

    goto :goto_9

    :catchall_2
    move-exception v0

    goto :goto_d

    :cond_5
    :goto_9
    move v2, v3

    :goto_a
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    if-ge v2, v5, :cond_7

    :try_start_9
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    check-cast v5, Lz9/a;

    invoke-interface {v5}, Lz9/a;->isActiveForPhysics()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v5}, Lz9/a;->beforeCollisionEvents()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_3
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    goto :goto_b

    :catch_3
    move-exception v5

    :try_start_a
    invoke-virtual {v5}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_6
    :goto_b
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    :cond_7
    iget-object v2, p0, LWc/c$b;->b:LWc/c;

    iget-object v2, v2, LWc/c;->c:Lcom/jme3/bullet/PhysicsSpace;

    invoke-virtual {v2}, Lcom/jme3/bullet/PhysicsSpace;->distributeEvents()V

    :goto_c
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v3, v2, :cond_9

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    check-cast v2, Lz9/a;

    invoke-interface {v2}, Lz9/a;->isActiveForPhysics()Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-interface {v2}, Lz9/a;->onPhysicsGetTransformations()V

    :cond_8
    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    :cond_9
    invoke-static {v4}, LI6/d;->I1(LI6/g;)V

    monitor-exit v1

    goto :goto_e

    :goto_d
    monitor-exit v1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    :try_start_b
    throw v0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    :cond_a
    :goto_e
    sget-object v0, LWc/c;->i:Ljava/lang/Object;

    monitor-enter v0

    :try_start_c
    iget-object v1, p0, LWc/c$b;->b:LWc/c;

    invoke-static {v1}, LWc/c;->b(LWc/c;)Lbd/a;

    move-result-object v1

    invoke-virtual {v1}, Lbd/a;->e()V

    monitor-exit v0

    return-void

    :catchall_3
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    throw v1

    :goto_f
    sget-object v1, LWc/c;->i:Ljava/lang/Object;

    monitor-enter v1

    :try_start_d
    iget-object v2, p0, LWc/c$b;->b:LWc/c;

    invoke-static {v2}, LWc/c;->b(LWc/c;)Lbd/a;

    move-result-object v2

    invoke-virtual {v2}, Lbd/a;->e()V

    monitor-exit v1
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    throw v0

    :catchall_4
    move-exception v0

    :try_start_e
    monitor-exit v1
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_4

    throw v0
.end method
