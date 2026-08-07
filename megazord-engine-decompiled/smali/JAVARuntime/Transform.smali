.class public final LJAVARuntime/Transform;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime LJAVARuntime/ClassCategory;
    cat = {
        "Object"
    }
.end annotation


# static fields
.field public static final STATE_DYNAMIC:I = 0x0

.field public static final STATE_STATIC:I = 0x1


# instance fields
.field public transient transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;
    .annotation runtime LZ6/g;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    invoke-static {p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Profiler/MemoryProfiler/AllocatorWatcher;->notify(Ljava/lang/Object;)V

    .line 6
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;-><init>()V

    iput-object v0, p0, LJAVARuntime/Transform;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    return-void
.end method

.method public constructor <init>(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;)V
    .locals 0
    .annotation runtime LZ6/g;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "transform"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Profiler/MemoryProfiler/AllocatorWatcher;->notify(Ljava/lang/Object;)V

    .line 3
    iput-object p1, p0, LJAVARuntime/Transform;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    return-void
.end method


# virtual methods
.method public back()LJAVARuntime/Vector3;
    .locals 1

    .line 1
    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    .line 2
    iget-object v0, p0, LJAVARuntime/Transform;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->N()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->M2()LJAVARuntime/Vector3;

    move-result-object v0

    return-object v0
.end method

.method public back(LJAVARuntime/Vector3;)LJAVARuntime/Vector3;
    .locals 1
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "out"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "out"
        }
    .end annotation

    .line 3
    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    if-eqz p1, :cond_0

    .line 4
    iget-object v0, p0, LJAVARuntime/Transform;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    iget-object p1, p1, LJAVARuntime/Vector3;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->O(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object p1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->M2()LJAVARuntime/Vector3;

    move-result-object p1

    return-object p1

    .line 5
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "out vector can\'t be null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public down()LJAVARuntime/Vector3;
    .locals 1

    .line 1
    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    .line 2
    iget-object v0, p0, LJAVARuntime/Transform;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->d0()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->M2()LJAVARuntime/Vector3;

    move-result-object v0

    return-object v0
.end method

.method public down(LJAVARuntime/Vector3;)LJAVARuntime/Vector3;
    .locals 1
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "out"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "out"
        }
    .end annotation

    .line 3
    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    if-eqz p1, :cond_0

    .line 4
    iget-object v0, p0, LJAVARuntime/Transform;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    iget-object p1, p1, LJAVARuntime/Vector3;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->e0(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object p1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->M2()LJAVARuntime/Vector3;

    move-result-object p1

    return-object p1

    .line 5
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "out vector can\'t be null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public forward()LJAVARuntime/Vector3;
    .locals 1

    .line 1
    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    .line 2
    iget-object v0, p0, LJAVARuntime/Transform;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->n0()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->M2()LJAVARuntime/Vector3;

    move-result-object v0

    return-object v0
.end method

.method public forward(LJAVARuntime/Vector3;)LJAVARuntime/Vector3;
    .locals 1
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "out"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "out"
        }
    .end annotation

    .line 3
    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    if-eqz p1, :cond_0

    .line 4
    iget-object v0, p0, LJAVARuntime/Transform;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    iget-object p1, p1, LJAVARuntime/Vector3;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->o0(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object p1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->M2()LJAVARuntime/Vector3;

    move-result-object p1

    return-object p1

    .line 5
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "out vector can\'t be null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getGlobalMatrix()[F
    .locals 2

    .line 1
    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    .line 2
    iget-object v0, p0, LJAVARuntime/Transform;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    const/16 v1, 0x10

    new-array v1, v1, [F

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->F0([F)[F

    move-result-object v0

    invoke-static {v0}, Lgd/c;->a([F)[F

    move-result-object v0

    return-object v0
.end method

.method public getGlobalMatrix([F)[F
    .locals 1
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "out"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "out"
        }
    .end annotation

    .line 3
    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    .line 4
    iget-object v0, p0, LJAVARuntime/Transform;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->F0([F)[F

    move-result-object p1

    invoke-static {p1}, Lgd/c;->a([F)[F

    move-result-object p1

    return-object p1
.end method

.method public getGlobalPosition()LJAVARuntime/Vector3;
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .line 1
    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    .line 2
    iget-object v0, p0, LJAVARuntime/Transform;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->H0()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->M2()LJAVARuntime/Vector3;

    move-result-object v0

    return-object v0
.end method

.method public getGlobalPosition(LJAVARuntime/Vector3;)LJAVARuntime/Vector3;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "out"
        }
    .end annotation

    .line 3
    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    if-eqz p1, :cond_0

    .line 4
    iget-object v0, p0, LJAVARuntime/Transform;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    iget-object p1, p1, LJAVARuntime/Vector3;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->I0(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object p1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->M2()LJAVARuntime/Vector3;

    move-result-object p1

    return-object p1

    .line 5
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Out can\'t be null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getGlobalRotation()LJAVARuntime/Quaternion;
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .line 1
    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    .line 2
    iget-object v0, p0, LJAVARuntime/Transform;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->O0()Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->d1()LJAVARuntime/Quaternion;

    move-result-object v0

    return-object v0
.end method

.method public getGlobalRotation(LJAVARuntime/Quaternion;)LJAVARuntime/Quaternion;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "out"
        }
    .end annotation

    .line 3
    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    if-eqz p1, :cond_0

    .line 4
    iget-object v0, p0, LJAVARuntime/Transform;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    iget-object p1, p1, LJAVARuntime/Quaternion;->instance:Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->P0(Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;)Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    move-result-object p1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->d1()LJAVARuntime/Quaternion;

    move-result-object p1

    return-object p1

    .line 5
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Out can\'t be null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getGlobalScale()LJAVARuntime/Vector3;
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .line 1
    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    .line 2
    iget-object v0, p0, LJAVARuntime/Transform;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->W0()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->M2()LJAVARuntime/Vector3;

    move-result-object v0

    return-object v0
.end method

.method public getGlobalScale(LJAVARuntime/Vector3;)LJAVARuntime/Vector3;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "out"
        }
    .end annotation

    .line 3
    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    if-eqz p1, :cond_0

    .line 4
    iget-object v0, p0, LJAVARuntime/Transform;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    iget-object p1, p1, LJAVARuntime/Vector3;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->X0(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object p1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->M2()LJAVARuntime/Vector3;

    move-result-object p1

    return-object p1

    .line 5
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Out can\'t be null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getLocalMatrix()[F
    .locals 2

    .line 1
    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    .line 2
    iget-object v0, p0, LJAVARuntime/Transform;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    const/16 v1, 0x10

    new-array v1, v1, [F

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->h1([F)[F

    move-result-object v0

    invoke-static {v0}, Lgd/c;->a([F)[F

    move-result-object v0

    return-object v0
.end method

.method public getLocalMatrix([F)[F
    .locals 1
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "out"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "out"
        }
    .end annotation

    .line 3
    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    .line 4
    iget-object v0, p0, LJAVARuntime/Transform;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->h1([F)[F

    move-result-object p1

    invoke-static {p1}, Lgd/c;->a([F)[F

    move-result-object p1

    return-object p1
.end method

.method public getPosition()LJAVARuntime/Vector3;
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    iget-object v0, p0, LJAVARuntime/Transform;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->m1()LUb/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->M2()LJAVARuntime/Vector3;

    move-result-object v0

    return-object v0
.end method

.method public getRotation()LJAVARuntime/Quaternion;
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    iget-object v0, p0, LJAVARuntime/Transform;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->x1()Lcom/itsmagic/engine/Engines/Engine/Quaternion/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->d1()LJAVARuntime/Quaternion;

    move-result-object v0

    return-object v0
.end method

.method public getScale()LJAVARuntime/Vector3;
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    iget-object v0, p0, LJAVARuntime/Transform;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->C1()LUb/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->M2()LJAVARuntime/Vector3;

    move-result-object v0

    return-object v0
.end method

.method public getState()I
    .locals 3

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    sget-object v0, LJAVARuntime/Transform$1;->$SwitchMap$com$itsmagic$engine$Engines$Engine$ObjectOriented$Transform$Transform$State:[I

    iget-object v1, p0, LJAVARuntime/Transform;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->G1()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform$G;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    return v1

    :cond_0
    new-instance v0, LJAVARuntime/InvalidStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid state "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, LJAVARuntime/Transform;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->G1()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform$G;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, LJAVARuntime/InvalidStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public globalDistance(LJAVARuntime/SpatialObject;)F
    .locals 1
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "other"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "other"
        }
    .end annotation

    .line 1
    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    if-eqz p1, :cond_0

    .line 2
    iget-object v0, p0, LJAVARuntime/Transform;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    iget-object p1, p1, LJAVARuntime/SpatialObject;->instance:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->K1(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)F

    move-result p1

    return p1

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "other can\'t be null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public globalDistance(LJAVARuntime/Transform;)F
    .locals 1
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "other"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "other"
        }
    .end annotation

    .line 4
    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    if-eqz p1, :cond_0

    .line 5
    iget-object v0, p0, LJAVARuntime/Transform;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    iget-object p1, p1, LJAVARuntime/Transform;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->L1(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;)F

    move-result p1

    return p1

    .line 6
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "other can\'t be null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public globalDistance(LJAVARuntime/Vector3;)F
    .locals 1
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "other"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "other"
        }
    .end annotation

    .line 7
    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    if-eqz p1, :cond_0

    .line 8
    iget-object v0, p0, LJAVARuntime/Transform;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    iget-object p1, p1, LJAVARuntime/Vector3;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->M1(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)F

    move-result p1

    return p1

    .line 9
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "other can\'t be null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public globalSqrtDistance(LJAVARuntime/SpatialObject;)F
    .locals 1
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "other"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "other"
        }
    .end annotation

    .line 1
    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    if-eqz p1, :cond_0

    .line 2
    iget-object v0, p0, LJAVARuntime/Transform;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    iget-object p1, p1, LJAVARuntime/SpatialObject;->instance:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->O1(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)F

    move-result p1

    return p1

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "other can\'t be null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public globalSqrtDistance(LJAVARuntime/Transform;)F
    .locals 1
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "other"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "other"
        }
    .end annotation

    .line 4
    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    if-eqz p1, :cond_0

    .line 5
    iget-object v0, p0, LJAVARuntime/Transform;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    iget-object p1, p1, LJAVARuntime/Transform;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->P1(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;)F

    move-result p1

    return p1

    .line 6
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "other can\'t be null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public globalSqrtDistance(LJAVARuntime/Vector3;)F
    .locals 1
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "other"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "other"
        }
    .end annotation

    .line 7
    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    if-eqz p1, :cond_0

    .line 8
    iget-object v0, p0, LJAVARuntime/Transform;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    iget-object p1, p1, LJAVARuntime/Vector3;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->Q1(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)F

    move-result p1

    return p1

    .line 9
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "other can\'t be null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public inverseTransformDirection(LJAVARuntime/Vector3;)LJAVARuntime/Vector3;
    .locals 1
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "vector3"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "vector3"
        }
    .end annotation

    .line 1
    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    if-eqz p1, :cond_0

    .line 2
    iget-object v0, p0, LJAVARuntime/Transform;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    iget-object p1, p1, LJAVARuntime/Vector3;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->Z1(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object p1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->M2()LJAVARuntime/Vector3;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "vector can\'t be null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public inverseTransformDirection(LJAVARuntime/Vector3;LJAVARuntime/Vector3;)V
    .locals 1
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "vector3",
            "out"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "vector3",
            "out"
        }
    .end annotation

    .line 4
    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    .line 5
    iget-object v0, p0, LJAVARuntime/Transform;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    iget-object p1, p1, LJAVARuntime/Vector3;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object p2, p2, LJAVARuntime/Vector3;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v0, p1, p2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->a2(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object p1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->M2()LJAVARuntime/Vector3;

    return-void

    .line 6
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "out vector can\'t be null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 7
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "vector can\'t be null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public inverseTransformPoint(LJAVARuntime/Vector3;)LJAVARuntime/Vector3;
    .locals 1
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "vector3"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "vector3"
        }
    .end annotation

    .line 1
    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    if-eqz p1, :cond_0

    .line 2
    iget-object v0, p0, LJAVARuntime/Transform;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    iget-object p1, p1, LJAVARuntime/Vector3;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->b2(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object p1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->M2()LJAVARuntime/Vector3;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "vector can\'t be null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public inverseTransformPoint(LJAVARuntime/Vector3;LJAVARuntime/Vector3;)V
    .locals 1
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "vector3",
            "out"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "vector3",
            "out"
        }
    .end annotation

    .line 4
    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    .line 5
    iget-object v0, p0, LJAVARuntime/Transform;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    iget-object p1, p1, LJAVARuntime/Vector3;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object p2, p2, LJAVARuntime/Vector3;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v0, p1, p2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->c2(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object p1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->M2()LJAVARuntime/Vector3;

    return-void

    .line 6
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "out vector can\'t be null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 7
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "vector can\'t be null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public isIgnoreParent()Z
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/Transform;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->m4()V

    iget-object v0, p0, LJAVARuntime/Transform;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->f2()Z

    move-result v0

    return v0
.end method

.method public isStatic()Z
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/Transform;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->i2()Z

    move-result v0

    return v0
.end method

.method public left()LJAVARuntime/Vector3;
    .locals 1

    .line 1
    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    .line 2
    iget-object v0, p0, LJAVARuntime/Transform;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->k2()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->M2()LJAVARuntime/Vector3;

    move-result-object v0

    return-object v0
.end method

.method public left(LJAVARuntime/Vector3;)LJAVARuntime/Vector3;
    .locals 1
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "out"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "out"
        }
    .end annotation

    .line 3
    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    if-eqz p1, :cond_0

    .line 4
    iget-object v0, p0, LJAVARuntime/Transform;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    iget-object p1, p1, LJAVARuntime/Vector3;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->l2(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object p1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->M2()LJAVARuntime/Vector3;

    move-result-object p1

    return-object p1

    .line 5
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "out vector can\'t be null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public lerpLookTo(LJAVARuntime/SpatialObject;F)V
    .locals 1
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "other",
            "lerpSpeed"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "other",
            "lerpSpeed"
        }
    .end annotation

    .line 1
    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    .line 2
    iget-object v0, p0, LJAVARuntime/Transform;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->m4()V

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p1, LJAVARuntime/SpatialObject;->instance:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->Q0()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    move-result-object p1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->H0()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object p1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->M2()LJAVARuntime/Vector3;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, LJAVARuntime/Transform;->lerpLookTo(LJAVARuntime/Vector3;F)V

    return-void

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Other object can\'t be null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public lerpLookTo(LJAVARuntime/Vector3;F)V
    .locals 1
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "position",
            "lerpSpeed"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "other",
            "lerpSpeed"
        }
    .end annotation

    .line 5
    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    .line 6
    iget-object v0, p0, LJAVARuntime/Transform;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->m4()V

    if-eqz p1, :cond_1

    .line 7
    iget-object v0, p0, LJAVARuntime/Transform;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->getGameObject()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    move-result-object v0

    invoke-static {v0}, Lyb/e;->J(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8
    iget-object v0, p0, LJAVARuntime/Transform;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    iget-object p1, p1, LJAVARuntime/Vector3;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v0, p1, p2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->lerpLookTo(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;F)V

    :cond_0
    return-void

    .line 9
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Other object can\'t be null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public lerpLookToIgnoreY(LJAVARuntime/SpatialObject;F)V
    .locals 1
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "other",
            "lerpSpeed"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "other",
            "lerpSpeed"
        }
    .end annotation

    .line 1
    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    .line 2
    iget-object v0, p0, LJAVARuntime/Transform;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->m4()V

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p1, LJAVARuntime/SpatialObject;->instance:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->Q0()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    move-result-object p1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->H0()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object p1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->M2()LJAVARuntime/Vector3;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, LJAVARuntime/Transform;->lerpLookToIgnoreY(LJAVARuntime/Vector3;F)V

    return-void

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Other object can\'t be null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public lerpLookToIgnoreY(LJAVARuntime/Vector3;F)V
    .locals 3
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "position",
            "lerpSpeed"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "other",
            "lerpSpeed"
        }
    .end annotation

    .line 5
    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    .line 6
    iget-object v0, p0, LJAVARuntime/Transform;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->m4()V

    if-eqz p1, :cond_1

    .line 7
    iget-object v0, p0, LJAVARuntime/Transform;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->getGameObject()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    move-result-object v0

    invoke-static {v0}, Lyb/e;->J(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8
    iget-object v0, p0, LJAVARuntime/Transform;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->getGameObject()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->Q0()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->H0()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->M2()LJAVARuntime/Vector3;

    move-result-object v0

    const/4 v1, 0x0

    .line 9
    invoke-virtual {v0, v1}, LJAVARuntime/Vector3;->setY(F)V

    .line 10
    invoke-virtual {p1, v1}, LJAVARuntime/Vector3;->setY(F)V

    .line 11
    iget-object v1, p0, LJAVARuntime/Transform;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->s1()Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    move-result-object v1

    .line 12
    new-instance v2, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    invoke-direct {v2}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;-><init>()V

    .line 13
    iget-object v0, v0, LJAVARuntime/Vector3;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object p1, p1, LJAVARuntime/Vector3;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v2, v0, p1}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->m0(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V

    .line 14
    invoke-virtual {v1, v2, p2}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->s(Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;F)V

    .line 15
    iget-object p1, p0, LJAVARuntime/Transform;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    invoke-virtual {p1, v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->I3(Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;)V

    :cond_0
    return-void

    .line 16
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Other object can\'t be null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public lookTo(FFF)V
    .locals 1
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "x",
            "y",
            "z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "x",
            "y",
            "z"
        }
    .end annotation

    .line 7
    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    .line 8
    iget-object v0, p0, LJAVARuntime/Transform;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->m4()V

    .line 9
    iget-object v0, p0, LJAVARuntime/Transform;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    invoke-virtual {v0, p1, p2, p3}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->q2(FFF)V

    return-void
.end method

.method public lookTo(FFFZZ)V
    .locals 7
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "x",
            "y",
            "z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "x",
            "y",
            "z",
            "yaw",
            "pitch"
        }
    .end annotation

    .line 16
    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    .line 17
    iget-object v0, p0, LJAVARuntime/Transform;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->m4()V

    .line 18
    iget-object v1, p0, LJAVARuntime/Transform;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-virtual/range {v1 .. v6}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->r2(FFFZZ)V

    return-void
.end method

.method public lookTo(LJAVARuntime/SpatialObject;)V
    .locals 0
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "object"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "object"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, LJAVARuntime/SpatialObject;->getTransform()LJAVARuntime/Transform;

    move-result-object p1

    invoke-virtual {p1}, LJAVARuntime/Transform;->getGlobalPosition()LJAVARuntime/Vector3;

    move-result-object p1

    invoke-virtual {p0, p1}, LJAVARuntime/Transform;->lookTo(LJAVARuntime/Vector3;)V

    return-void
.end method

.method public lookTo(LJAVARuntime/SpatialObject;ZZ)V
    .locals 0
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "object"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "object",
            "yaw",
            "pitch"
        }
    .end annotation

    .line 10
    invoke-virtual {p1}, LJAVARuntime/SpatialObject;->getTransform()LJAVARuntime/Transform;

    move-result-object p1

    invoke-virtual {p1}, LJAVARuntime/Transform;->getGlobalPosition()LJAVARuntime/Vector3;

    move-result-object p1

    invoke-virtual {p0, p1, p2, p3}, LJAVARuntime/Transform;->lookTo(LJAVARuntime/Vector3;ZZ)V

    return-void
.end method

.method public lookTo(LJAVARuntime/Vector3;)V
    .locals 1
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "position"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "position"
        }
    .end annotation

    .line 2
    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    .line 3
    iget-object v0, p0, LJAVARuntime/Transform;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->m4()V

    if-eqz p1, :cond_0

    .line 4
    iget-object v0, p1, LJAVARuntime/Vector3;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->Q0()V

    .line 5
    iget-object v0, p0, LJAVARuntime/Transform;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    iget-object p1, p1, LJAVARuntime/Vector3;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->lookTo(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V

    return-void

    .line 6
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "The vector can\'t be null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public lookTo(LJAVARuntime/Vector3;ZZ)V
    .locals 1
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "position"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "position",
            "yaw",
            "pitch"
        }
    .end annotation

    .line 11
    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    .line 12
    iget-object v0, p0, LJAVARuntime/Transform;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->m4()V

    if-eqz p1, :cond_0

    .line 13
    iget-object v0, p1, LJAVARuntime/Vector3;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->Q0()V

    .line 14
    iget-object v0, p0, LJAVARuntime/Transform;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    iget-object p1, p1, LJAVARuntime/Vector3;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v0, p1, p2, p3}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->u2(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;ZZ)V

    return-void

    .line 15
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "The vector can\'t be null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public lookToIgnoreY(LJAVARuntime/SpatialObject;)V
    .locals 0
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "object"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "object"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, LJAVARuntime/SpatialObject;->getTransform()LJAVARuntime/Transform;

    move-result-object p1

    invoke-virtual {p1}, LJAVARuntime/Transform;->getGlobalPosition()LJAVARuntime/Vector3;

    move-result-object p1

    invoke-virtual {p0, p1}, LJAVARuntime/Transform;->lookToIgnoreY(LJAVARuntime/Vector3;)V

    return-void
.end method

.method public lookToIgnoreY(LJAVARuntime/Vector3;)V
    .locals 1
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "position"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "position"
        }
    .end annotation

    .line 2
    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    .line 3
    iget-object v0, p0, LJAVARuntime/Transform;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->m4()V

    if-eqz p1, :cond_0

    .line 4
    iget-object v0, p1, LJAVARuntime/Vector3;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->Q0()V

    .line 5
    iget-object v0, p0, LJAVARuntime/Transform;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    iget-object p1, p1, LJAVARuntime/Vector3;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->x2(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V

    return-void

    .line 6
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "The vector can\'t be null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public move(FFF)V
    .locals 1
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "x",
            "y",
            "z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "x",
            "y",
            "z"
        }
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/Transform;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->m4()V

    iget-object v0, p0, LJAVARuntime/Transform;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    invoke-static {p1}, Lbd/A;->b(F)F

    move-result p1

    invoke-static {p2}, Lbd/A;->b(F)F

    move-result p2

    invoke-static {p3}, Lbd/A;->b(F)F

    move-result p3

    invoke-virtual {v0, p1, p2, p3}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->A4(FFF)V

    return-void
.end method

.method public moveInSeconds(FFF)V
    .locals 2
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "x",
            "y",
            "z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "x",
            "y",
            "z"
        }
    .end annotation

    .line 1
    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    .line 2
    iget-object v0, p0, LJAVARuntime/Transform;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->m4()V

    .line 3
    iget-object v0, p0, LJAVARuntime/Transform;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    invoke-static {}, Lc9/d;->b()F

    move-result v1

    mul-float/2addr p1, v1

    invoke-static {p1}, Lbd/A;->b(F)F

    move-result p1

    invoke-static {}, Lc9/d;->b()F

    move-result v1

    mul-float/2addr p2, v1

    invoke-static {p2}, Lbd/A;->b(F)F

    move-result p2

    invoke-static {}, Lc9/d;->b()F

    move-result v1

    mul-float/2addr p3, v1

    invoke-static {p3}, Lbd/A;->b(F)F

    move-result p3

    invoke-virtual {v0, p1, p2, p3}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->A4(FFF)V

    return-void
.end method

.method public moveInSeconds(FFI)V
    .locals 2
    .annotation runtime LZ6/g;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "x",
            "y",
            "z"
        }
    .end annotation

    .line 40
    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    .line 41
    iget-object v0, p0, LJAVARuntime/Transform;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->m4()V

    .line 42
    iget-object v0, p0, LJAVARuntime/Transform;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    invoke-static {}, Lc9/d;->b()F

    move-result v1

    mul-float/2addr p1, v1

    invoke-static {p1}, Lbd/A;->b(F)F

    move-result p1

    .line 43
    invoke-static {}, Lc9/d;->b()F

    move-result v1

    mul-float/2addr p2, v1

    invoke-static {p2}, Lbd/A;->b(F)F

    move-result p2

    int-to-float p3, p3

    .line 44
    invoke-static {}, Lc9/d;->b()F

    move-result v1

    mul-float/2addr p3, v1

    invoke-static {p3}, Lbd/A;->b(F)F

    move-result p3

    .line 45
    invoke-virtual {v0, p1, p2, p3}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->A4(FFF)V

    return-void
.end method

.method public moveInSeconds(FIF)V
    .locals 2
    .annotation runtime LZ6/g;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "x",
            "y",
            "z"
        }
    .end annotation

    .line 34
    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    .line 35
    iget-object v0, p0, LJAVARuntime/Transform;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->m4()V

    .line 36
    iget-object v0, p0, LJAVARuntime/Transform;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    invoke-static {}, Lc9/d;->b()F

    move-result v1

    mul-float/2addr p1, v1

    invoke-static {p1}, Lbd/A;->b(F)F

    move-result p1

    int-to-float p2, p2

    .line 37
    invoke-static {}, Lc9/d;->b()F

    move-result v1

    mul-float/2addr p2, v1

    invoke-static {p2}, Lbd/A;->b(F)F

    move-result p2

    .line 38
    invoke-static {}, Lc9/d;->b()F

    move-result v1

    mul-float/2addr p3, v1

    invoke-static {p3}, Lbd/A;->b(F)F

    move-result p3

    .line 39
    invoke-virtual {v0, p1, p2, p3}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->A4(FFF)V

    return-void
.end method

.method public moveInSeconds(FII)V
    .locals 2
    .annotation runtime LZ6/g;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "x",
            "y",
            "z"
        }
    .end annotation

    .line 28
    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    .line 29
    iget-object v0, p0, LJAVARuntime/Transform;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->m4()V

    .line 30
    iget-object v0, p0, LJAVARuntime/Transform;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    invoke-static {}, Lc9/d;->b()F

    move-result v1

    mul-float/2addr p1, v1

    invoke-static {p1}, Lbd/A;->b(F)F

    move-result p1

    int-to-float p2, p2

    .line 31
    invoke-static {}, Lc9/d;->b()F

    move-result v1

    mul-float/2addr p2, v1

    invoke-static {p2}, Lbd/A;->b(F)F

    move-result p2

    int-to-float p3, p3

    .line 32
    invoke-static {}, Lc9/d;->b()F

    move-result v1

    mul-float/2addr p3, v1

    invoke-static {p3}, Lbd/A;->b(F)F

    move-result p3

    .line 33
    invoke-virtual {v0, p1, p2, p3}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->A4(FFF)V

    return-void
.end method

.method public moveInSeconds(IFF)V
    .locals 2
    .annotation runtime LZ6/g;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "x",
            "y",
            "z"
        }
    .end annotation

    .line 22
    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    .line 23
    iget-object v0, p0, LJAVARuntime/Transform;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->m4()V

    .line 24
    iget-object v0, p0, LJAVARuntime/Transform;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    int-to-float p1, p1

    invoke-static {}, Lc9/d;->b()F

    move-result v1

    mul-float/2addr p1, v1

    invoke-static {p1}, Lbd/A;->b(F)F

    move-result p1

    .line 25
    invoke-static {}, Lc9/d;->b()F

    move-result v1

    mul-float/2addr p2, v1

    invoke-static {p2}, Lbd/A;->b(F)F

    move-result p2

    .line 26
    invoke-static {}, Lc9/d;->b()F

    move-result v1

    mul-float/2addr p3, v1

    invoke-static {p3}, Lbd/A;->b(F)F

    move-result p3

    .line 27
    invoke-virtual {v0, p1, p2, p3}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->A4(FFF)V

    return-void
.end method

.method public moveInSeconds(IFI)V
    .locals 2
    .annotation runtime LZ6/g;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "x",
            "y",
            "z"
        }
    .end annotation

    .line 16
    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    .line 17
    iget-object v0, p0, LJAVARuntime/Transform;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->m4()V

    .line 18
    iget-object v0, p0, LJAVARuntime/Transform;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    int-to-float p1, p1

    invoke-static {}, Lc9/d;->b()F

    move-result v1

    mul-float/2addr p1, v1

    invoke-static {p1}, Lbd/A;->b(F)F

    move-result p1

    .line 19
    invoke-static {}, Lc9/d;->b()F

    move-result v1

    mul-float/2addr p2, v1

    invoke-static {p2}, Lbd/A;->b(F)F

    move-result p2

    int-to-float p3, p3

    .line 20
    invoke-static {}, Lc9/d;->b()F

    move-result v1

    mul-float/2addr p3, v1

    invoke-static {p3}, Lbd/A;->b(F)F

    move-result p3

    .line 21
    invoke-virtual {v0, p1, p2, p3}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->A4(FFF)V

    return-void
.end method

.method public moveInSeconds(IIF)V
    .locals 2
    .annotation runtime LZ6/g;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "x",
            "y",
            "z"
        }
    .end annotation

    .line 10
    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    .line 11
    iget-object v0, p0, LJAVARuntime/Transform;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->m4()V

    .line 12
    iget-object v0, p0, LJAVARuntime/Transform;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    int-to-float p1, p1

    invoke-static {}, Lc9/d;->b()F

    move-result v1

    mul-float/2addr p1, v1

    invoke-static {p1}, Lbd/A;->b(F)F

    move-result p1

    int-to-float p2, p2

    .line 13
    invoke-static {}, Lc9/d;->b()F

    move-result v1

    mul-float/2addr p2, v1

    invoke-static {p2}, Lbd/A;->b(F)F

    move-result p2

    .line 14
    invoke-static {}, Lc9/d;->b()F

    move-result v1

    mul-float/2addr p3, v1

    invoke-static {p3}, Lbd/A;->b(F)F

    move-result p3

    .line 15
    invoke-virtual {v0, p1, p2, p3}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->A4(FFF)V

    return-void
.end method

.method public moveInSeconds(III)V
    .locals 2
    .annotation runtime LZ6/g;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "x",
            "y",
            "z"
        }
    .end annotation

    .line 4
    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    .line 5
    iget-object v0, p0, LJAVARuntime/Transform;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->m4()V

    .line 6
    iget-object v0, p0, LJAVARuntime/Transform;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    int-to-float p1, p1

    invoke-static {}, Lc9/d;->b()F

    move-result v1

    mul-float/2addr p1, v1

    invoke-static {p1}, Lbd/A;->b(F)F

    move-result p1

    int-to-float p2, p2

    .line 7
    invoke-static {}, Lc9/d;->b()F

    move-result v1

    mul-float/2addr p2, v1

    invoke-static {p2}, Lbd/A;->b(F)F

    move-result p2

    int-to-float p3, p3

    .line 8
    invoke-static {}, Lc9/d;->b()F

    move-result v1

    mul-float/2addr p3, v1

    invoke-static {p3}, Lbd/A;->b(F)F

    move-result p3

    .line 9
    invoke-virtual {v0, p1, p2, p3}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->A4(FFF)V

    return-void
.end method

.method public mulGlobalVector3(LJAVARuntime/Vector3;)LJAVARuntime/Vector3;
    .locals 2
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "vector"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "vector3"
        }
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    new-instance v0, LUb/f;

    invoke-virtual {p0}, LJAVARuntime/Transform;->getGlobalMatrix()[F

    move-result-object v1

    invoke-direct {v0, v1}, LUb/f;-><init>([F)V

    iget-object p1, p1, LJAVARuntime/Vector3;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v0, p1}, LUb/f;->b0(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object p1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->M2()LJAVARuntime/Vector3;

    move-result-object p1

    return-object p1
.end method

.method public mulLocalVector3(LJAVARuntime/Vector3;)LJAVARuntime/Vector3;
    .locals 2
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "vector"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "vector3"
        }
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    new-instance v0, LUb/f;

    invoke-virtual {p0}, LJAVARuntime/Transform;->getLocalMatrix()[F

    move-result-object v1

    invoke-direct {v0, v1}, LUb/f;-><init>([F)V

    iget-object p1, p1, LJAVARuntime/Vector3;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v0, p1}, LUb/f;->b0(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object p1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->M2()LJAVARuntime/Vector3;

    move-result-object p1

    return-object p1
.end method

.method public recalculateMatrices()V
    .locals 1

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/Transform;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->m4()V

    iget-object v0, p0, LJAVARuntime/Transform;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->R2()V

    return-void
.end method

.method public right()LJAVARuntime/Vector3;
    .locals 1

    .line 1
    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    .line 2
    iget-object v0, p0, LJAVARuntime/Transform;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->b3()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->M2()LJAVARuntime/Vector3;

    move-result-object v0

    return-object v0
.end method

.method public right(LJAVARuntime/Vector3;)LJAVARuntime/Vector3;
    .locals 1
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "out"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "out"
        }
    .end annotation

    .line 3
    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    if-eqz p1, :cond_0

    .line 4
    iget-object v0, p0, LJAVARuntime/Transform;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    iget-object p1, p1, LJAVARuntime/Vector3;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->c3(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object p1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->M2()LJAVARuntime/Vector3;

    move-result-object p1

    return-object p1

    .line 5
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "out vector can\'t be null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public rotate(FFF)V
    .locals 1
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "x",
            "y",
            "z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "x",
            "y",
            "z"
        }
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/Transform;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->m4()V

    iget-object v0, p0, LJAVARuntime/Transform;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    invoke-static {p1}, Lbd/A;->b(F)F

    move-result p1

    invoke-static {p2}, Lbd/A;->b(F)F

    move-result p2

    invoke-static {p3}, Lbd/A;->b(F)F

    move-result p3

    invoke-virtual {v0, p1, p2, p3}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->d3(FFF)V

    return-void
.end method

.method public rotateInSeconds(FFF)V
    .locals 2
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "x",
            "y",
            "z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "x",
            "y",
            "z"
        }
    .end annotation

    .line 1
    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    .line 2
    iget-object v0, p0, LJAVARuntime/Transform;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->m4()V

    .line 3
    iget-object v0, p0, LJAVARuntime/Transform;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    invoke-static {}, Lc9/d;->b()F

    move-result v1

    mul-float/2addr p1, v1

    invoke-static {p1}, Lbd/A;->b(F)F

    move-result p1

    invoke-static {}, Lc9/d;->b()F

    move-result v1

    mul-float/2addr p2, v1

    invoke-static {p2}, Lbd/A;->b(F)F

    move-result p2

    invoke-static {}, Lc9/d;->b()F

    move-result v1

    mul-float/2addr p3, v1

    invoke-static {p3}, Lbd/A;->b(F)F

    move-result p3

    invoke-virtual {v0, p1, p2, p3}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->d3(FFF)V

    return-void
.end method

.method public rotateInSeconds(FFI)V
    .locals 2
    .annotation runtime LZ6/g;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "x",
            "y",
            "z"
        }
    .end annotation

    .line 40
    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    .line 41
    iget-object v0, p0, LJAVARuntime/Transform;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->m4()V

    .line 42
    iget-object v0, p0, LJAVARuntime/Transform;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    invoke-static {}, Lc9/d;->b()F

    move-result v1

    mul-float/2addr p1, v1

    invoke-static {p1}, Lbd/A;->b(F)F

    move-result p1

    .line 43
    invoke-static {}, Lc9/d;->b()F

    move-result v1

    mul-float/2addr p2, v1

    invoke-static {p2}, Lbd/A;->b(F)F

    move-result p2

    int-to-float p3, p3

    .line 44
    invoke-static {}, Lc9/d;->b()F

    move-result v1

    mul-float/2addr p3, v1

    invoke-static {p3}, Lbd/A;->b(F)F

    move-result p3

    .line 45
    invoke-virtual {v0, p1, p2, p3}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->d3(FFF)V

    return-void
.end method

.method public rotateInSeconds(FIF)V
    .locals 2
    .annotation runtime LZ6/g;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "x",
            "y",
            "z"
        }
    .end annotation

    .line 34
    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    .line 35
    iget-object v0, p0, LJAVARuntime/Transform;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->m4()V

    .line 36
    iget-object v0, p0, LJAVARuntime/Transform;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    invoke-static {}, Lc9/d;->b()F

    move-result v1

    mul-float/2addr p1, v1

    invoke-static {p1}, Lbd/A;->b(F)F

    move-result p1

    int-to-float p2, p2

    .line 37
    invoke-static {}, Lc9/d;->b()F

    move-result v1

    mul-float/2addr p2, v1

    invoke-static {p2}, Lbd/A;->b(F)F

    move-result p2

    .line 38
    invoke-static {}, Lc9/d;->b()F

    move-result v1

    mul-float/2addr p3, v1

    invoke-static {p3}, Lbd/A;->b(F)F

    move-result p3

    .line 39
    invoke-virtual {v0, p1, p2, p3}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->d3(FFF)V

    return-void
.end method

.method public rotateInSeconds(FII)V
    .locals 2
    .annotation runtime LZ6/g;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "x",
            "y",
            "z"
        }
    .end annotation

    .line 28
    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    .line 29
    iget-object v0, p0, LJAVARuntime/Transform;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->m4()V

    .line 30
    iget-object v0, p0, LJAVARuntime/Transform;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    invoke-static {}, Lc9/d;->b()F

    move-result v1

    mul-float/2addr p1, v1

    invoke-static {p1}, Lbd/A;->b(F)F

    move-result p1

    int-to-float p2, p2

    .line 31
    invoke-static {}, Lc9/d;->b()F

    move-result v1

    mul-float/2addr p2, v1

    invoke-static {p2}, Lbd/A;->b(F)F

    move-result p2

    int-to-float p3, p3

    .line 32
    invoke-static {}, Lc9/d;->b()F

    move-result v1

    mul-float/2addr p3, v1

    invoke-static {p3}, Lbd/A;->b(F)F

    move-result p3

    .line 33
    invoke-virtual {v0, p1, p2, p3}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->d3(FFF)V

    return-void
.end method

.method public rotateInSeconds(IFF)V
    .locals 2
    .annotation runtime LZ6/g;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "x",
            "y",
            "z"
        }
    .end annotation

    .line 22
    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    .line 23
    iget-object v0, p0, LJAVARuntime/Transform;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->m4()V

    .line 24
    iget-object v0, p0, LJAVARuntime/Transform;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    int-to-float p1, p1

    invoke-static {}, Lc9/d;->b()F

    move-result v1

    mul-float/2addr p1, v1

    invoke-static {p1}, Lbd/A;->b(F)F

    move-result p1

    .line 25
    invoke-static {}, Lc9/d;->b()F

    move-result v1

    mul-float/2addr p2, v1

    invoke-static {p2}, Lbd/A;->b(F)F

    move-result p2

    .line 26
    invoke-static {}, Lc9/d;->b()F

    move-result v1

    mul-float/2addr p3, v1

    invoke-static {p3}, Lbd/A;->b(F)F

    move-result p3

    .line 27
    invoke-virtual {v0, p1, p2, p3}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->d3(FFF)V

    return-void
.end method

.method public rotateInSeconds(IFI)V
    .locals 2
    .annotation runtime LZ6/g;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "x",
            "y",
            "z"
        }
    .end annotation

    .line 16
    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    .line 17
    iget-object v0, p0, LJAVARuntime/Transform;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->m4()V

    .line 18
    iget-object v0, p0, LJAVARuntime/Transform;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    int-to-float p1, p1

    invoke-static {}, Lc9/d;->b()F

    move-result v1

    mul-float/2addr p1, v1

    invoke-static {p1}, Lbd/A;->b(F)F

    move-result p1

    .line 19
    invoke-static {}, Lc9/d;->b()F

    move-result v1

    mul-float/2addr p2, v1

    invoke-static {p2}, Lbd/A;->b(F)F

    move-result p2

    int-to-float p3, p3

    .line 20
    invoke-static {}, Lc9/d;->b()F

    move-result v1

    mul-float/2addr p3, v1

    invoke-static {p3}, Lbd/A;->b(F)F

    move-result p3

    .line 21
    invoke-virtual {v0, p1, p2, p3}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->d3(FFF)V

    return-void
.end method

.method public rotateInSeconds(IIF)V
    .locals 2
    .annotation runtime LZ6/g;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "x",
            "y",
            "z"
        }
    .end annotation

    .line 10
    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    .line 11
    iget-object v0, p0, LJAVARuntime/Transform;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->m4()V

    .line 12
    iget-object v0, p0, LJAVARuntime/Transform;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    int-to-float p1, p1

    invoke-static {}, Lc9/d;->b()F

    move-result v1

    mul-float/2addr p1, v1

    invoke-static {p1}, Lbd/A;->b(F)F

    move-result p1

    int-to-float p2, p2

    .line 13
    invoke-static {}, Lc9/d;->b()F

    move-result v1

    mul-float/2addr p2, v1

    invoke-static {p2}, Lbd/A;->b(F)F

    move-result p2

    .line 14
    invoke-static {}, Lc9/d;->b()F

    move-result v1

    mul-float/2addr p3, v1

    invoke-static {p3}, Lbd/A;->b(F)F

    move-result p3

    .line 15
    invoke-virtual {v0, p1, p2, p3}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->d3(FFF)V

    return-void
.end method

.method public rotateInSeconds(III)V
    .locals 2
    .annotation runtime LZ6/g;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "x",
            "y",
            "z"
        }
    .end annotation

    .line 4
    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    .line 5
    iget-object v0, p0, LJAVARuntime/Transform;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->m4()V

    .line 6
    iget-object v0, p0, LJAVARuntime/Transform;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    int-to-float p1, p1

    invoke-static {}, Lc9/d;->b()F

    move-result v1

    mul-float/2addr p1, v1

    invoke-static {p1}, Lbd/A;->b(F)F

    move-result p1

    int-to-float p2, p2

    .line 7
    invoke-static {}, Lc9/d;->b()F

    move-result v1

    mul-float/2addr p2, v1

    invoke-static {p2}, Lbd/A;->b(F)F

    move-result p2

    int-to-float p3, p3

    .line 8
    invoke-static {}, Lc9/d;->b()F

    move-result v1

    mul-float/2addr p3, v1

    invoke-static {p3}, Lbd/A;->b(F)F

    move-result p3

    .line 9
    invoke-virtual {v0, p1, p2, p3}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->d3(FFF)V

    return-void
.end method

.method public setGlobalPosition(LJAVARuntime/Vector3;)V
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "position"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pos"
        }
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/Transform;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->m4()V

    iget-object v0, p0, LJAVARuntime/Transform;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    iget-object p1, p1, LJAVARuntime/Vector3;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->s3(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V

    return-void
.end method

.method public setGlobalRotation(LJAVARuntime/Quaternion;)V
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "rotation"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "rotation"
        }
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/Transform;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->m4()V

    iget-object v0, p0, LJAVARuntime/Transform;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    iget-object p1, p1, LJAVARuntime/Quaternion;->instance:Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->t3(Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;)V

    return-void
.end method

.method public setGlobalScale(LJAVARuntime/Vector3;)V
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "scale"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "scale"
        }
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/Transform;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->m4()V

    iget-object v0, p0, LJAVARuntime/Transform;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    iget-object p1, p1, LJAVARuntime/Vector3;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->u3(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V

    return-void
.end method

.method public setIgnoreParent(Z)V
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/Transform;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->m4()V

    iget-object v0, p0, LJAVARuntime/Transform;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->v3(Z)V

    return-void
.end method

.method public setPosition(FFF)V
    .locals 1
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "x",
            "y",
            "z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "x",
            "y",
            "z"
        }
    .end annotation

    .line 6
    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    .line 7
    iget-object v0, p0, LJAVARuntime/Transform;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->m4()V

    .line 8
    iget-object v0, p0, LJAVARuntime/Transform;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    invoke-static {p1}, Lbd/A;->b(F)F

    move-result p1

    invoke-static {p2}, Lbd/A;->b(F)F

    move-result p2

    invoke-static {p3}, Lbd/A;->b(F)F

    move-result p3

    invoke-virtual {v0, p1, p2, p3}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->setPosition(FFF)V

    return-void
.end method

.method public setPosition(LJAVARuntime/Vector3;)V
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "vector"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "vector"
        }
    .end annotation

    .line 1
    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    .line 2
    iget-object v0, p0, LJAVARuntime/Transform;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->m4()V

    if-eqz p1, :cond_0

    .line 3
    iget-object v0, p1, LJAVARuntime/Vector3;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->Q0()V

    .line 4
    iget-object v0, p0, LJAVARuntime/Transform;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    iget-object p1, p1, LJAVARuntime/Vector3;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->A3(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V

    return-void

    .line 5
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "The vector can\'t be null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setPositionX(F)V
    .locals 1
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "v"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/Transform;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->m4()V

    iget-object v0, p0, LJAVARuntime/Transform;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    invoke-static {p1}, Lbd/A;->b(F)F

    move-result p1

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->E3(F)V

    return-void
.end method

.method public setPositionY(F)V
    .locals 1
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "v"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/Transform;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->m4()V

    iget-object v0, p0, LJAVARuntime/Transform;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    invoke-static {p1}, Lbd/A;->b(F)F

    move-result p1

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->F3(F)V

    return-void
.end method

.method public setPositionZ(F)V
    .locals 1
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "v"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/Transform;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->m4()V

    iget-object v0, p0, LJAVARuntime/Transform;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    invoke-static {p1}, Lbd/A;->b(F)F

    move-result p1

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->G3(F)V

    return-void
.end method

.method public setRotation(FFF)V
    .locals 1
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "x",
            "y",
            "z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "x",
            "y",
            "z"
        }
    .end annotation

    .line 6
    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    .line 7
    iget-object v0, p0, LJAVARuntime/Transform;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->m4()V

    .line 8
    iget-object v0, p0, LJAVARuntime/Transform;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->s1()Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->I(FFF)V

    return-void
.end method

.method public setRotation(FFFF)V
    .locals 2
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "w",
            "x",
            "y",
            "z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "w",
            "x",
            "y",
            "z"
        }
    .end annotation

    .line 9
    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    .line 10
    iget-object v0, p0, LJAVARuntime/Transform;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->m4()V

    .line 11
    new-instance v0, LJAVARuntime/Quaternion;

    invoke-direct {v0}, LJAVARuntime/Quaternion;-><init>()V

    .line 12
    iget-object v1, v0, LJAVARuntime/Quaternion;->instance:Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    invoke-static {p1}, Lbd/A;->b(F)F

    move-result p1

    invoke-static {p2}, Lbd/A;->b(F)F

    move-result p2

    invoke-static {p3}, Lbd/A;->b(F)F

    move-result p3

    invoke-static {p4}, Lbd/A;->b(F)F

    move-result p4

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->G0(FFFF)V

    .line 13
    iget-object p1, v0, LJAVARuntime/Quaternion;->instance:Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->H()V

    .line 14
    iget-object p1, p0, LJAVARuntime/Transform;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    iget-object p2, v0, LJAVARuntime/Quaternion;->instance:Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    invoke-virtual {p1, p2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->I3(Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;)V

    return-void
.end method

.method public setRotation(LJAVARuntime/Quaternion;)V
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "quaternion"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "quaternion"
        }
    .end annotation

    .line 1
    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    .line 2
    iget-object v0, p0, LJAVARuntime/Transform;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->m4()V

    if-eqz p1, :cond_0

    .line 3
    iget-object v0, p1, LJAVARuntime/Quaternion;->instance:Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->H()V

    .line 4
    iget-object v0, p0, LJAVARuntime/Transform;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    iget-object p1, p1, LJAVARuntime/Quaternion;->instance:Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->I3(Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;)V

    return-void

    .line 5
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "The quaternion can\'t be null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setScale(F)V
    .locals 1
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "all"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "a"
        }
    .end annotation

    .line 9
    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    .line 10
    iget-object v0, p0, LJAVARuntime/Transform;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->m4()V

    .line 11
    iget-object v0, p0, LJAVARuntime/Transform;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    invoke-static {p1}, Lbd/A;->b(F)F

    move-result p1

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->setScale(F)V

    return-void
.end method

.method public setScale(FFF)V
    .locals 1
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "x",
            "y",
            "z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "x",
            "y",
            "z"
        }
    .end annotation

    .line 6
    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    .line 7
    iget-object v0, p0, LJAVARuntime/Transform;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->m4()V

    .line 8
    iget-object v0, p0, LJAVARuntime/Transform;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    invoke-static {p1}, Lbd/A;->b(F)F

    move-result p1

    invoke-static {p2}, Lbd/A;->b(F)F

    move-result p2

    invoke-static {p3}, Lbd/A;->b(F)F

    move-result p3

    invoke-virtual {v0, p1, p2, p3}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->setScale(FFF)V

    return-void
.end method

.method public setScale(LJAVARuntime/Vector3;)V
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "vector"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "vector"
        }
    .end annotation

    .line 1
    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    .line 2
    iget-object v0, p0, LJAVARuntime/Transform;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->m4()V

    if-eqz p1, :cond_0

    .line 3
    iget-object v0, p1, LJAVARuntime/Vector3;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->Q0()V

    .line 4
    iget-object v0, p0, LJAVARuntime/Transform;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    iget-object p1, p1, LJAVARuntime/Vector3;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->setScale(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V

    return-void

    .line 5
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "The vector can\'t be null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setState(I)V
    .locals 2
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "state"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    iget-object p1, p0, LJAVARuntime/Transform;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    sget-object v0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform$G;->STATIC:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform$G;

    invoke-virtual {p1, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->Z3(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform$G;)V

    goto :goto_0

    :cond_0
    new-instance v0, LJAVARuntime/InvalidStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " is not a valid state"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, LJAVARuntime/InvalidStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object p1, p0, LJAVARuntime/Transform;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    sget-object v0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform$G;->DYNAMIC:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform$G;

    invoke-virtual {p1, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->Z3(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform$G;)V

    :goto_0
    return-void
.end method

.method public setStatic(Z)V
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    if-eqz p1, :cond_0

    iget-object p1, p0, LJAVARuntime/Transform;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    sget-object v0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform$G;->STATIC:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform$G;

    invoke-virtual {p1, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->Z3(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform$G;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, LJAVARuntime/Transform;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    sget-object v0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform$G;->DYNAMIC:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform$G;

    invoke-virtual {p1, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->Z3(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform$G;)V

    :goto_0
    return-void
.end method

.method public smoothLookTo(LJAVARuntime/SpatialObject;F)V
    .locals 1
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "other",
            "lerpSpeed"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "other",
            "lerpSpeed"
        }
    .end annotation

    .line 1
    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    .line 2
    iget-object v0, p0, LJAVARuntime/Transform;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->m4()V

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p1, LJAVARuntime/SpatialObject;->instance:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->Q0()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    move-result-object p1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->H0()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object p1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->M2()LJAVARuntime/Vector3;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, LJAVARuntime/Transform;->lerpLookTo(LJAVARuntime/Vector3;F)V

    return-void

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Other object can\'t be null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public smoothLookTo(LJAVARuntime/Vector3;F)V
    .locals 1
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "position",
            "lerpSpeed"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "other",
            "lerpSpeed"
        }
    .end annotation

    .line 5
    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    .line 6
    iget-object v0, p0, LJAVARuntime/Transform;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->m4()V

    if-eqz p1, :cond_1

    .line 7
    iget-object v0, p0, LJAVARuntime/Transform;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->getGameObject()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    move-result-object v0

    invoke-static {v0}, Lyb/e;->J(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8
    iget-object v0, p0, LJAVARuntime/Transform;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    iget-object p1, p1, LJAVARuntime/Vector3;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v0, p1, p2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->lerpLookTo(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;F)V

    :cond_0
    return-void

    .line 9
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Other object can\'t be null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public teleportTo(LJAVARuntime/SpatialObject;)V
    .locals 0
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "object"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "object"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, LJAVARuntime/SpatialObject;->getTransform()LJAVARuntime/Transform;

    move-result-object p1

    invoke-virtual {p1}, LJAVARuntime/Transform;->getGlobalPosition()LJAVARuntime/Vector3;

    move-result-object p1

    invoke-virtual {p0, p1}, LJAVARuntime/Transform;->teleportTo(LJAVARuntime/Vector3;)V

    return-void
.end method

.method public teleportTo(LJAVARuntime/Vector3;)V
    .locals 1
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "position"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "position"
        }
    .end annotation

    .line 2
    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    .line 3
    iget-object v0, p0, LJAVARuntime/Transform;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->m4()V

    if-eqz p1, :cond_0

    .line 4
    iget-object v0, p1, LJAVARuntime/Vector3;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->Q0()V

    .line 5
    iget-object v0, p0, LJAVARuntime/Transform;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    iget-object p1, p1, LJAVARuntime/Vector3;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->A3(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V

    return-void

    .line 6
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "The vector can\'t be null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public transformDirection(LJAVARuntime/Vector3;)LJAVARuntime/Vector3;
    .locals 1
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "vector3"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "vector3"
        }
    .end annotation

    .line 1
    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    if-eqz p1, :cond_0

    .line 2
    iget-object v0, p0, LJAVARuntime/Transform;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    iget-object p1, p1, LJAVARuntime/Vector3;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->o4(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object p1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->M2()LJAVARuntime/Vector3;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "vector can\'t be null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public transformDirection(LJAVARuntime/Vector3;LJAVARuntime/Vector3;)V
    .locals 1
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "vector3",
            "out"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "vector3",
            "out"
        }
    .end annotation

    .line 4
    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    .line 5
    iget-object v0, p0, LJAVARuntime/Transform;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    iget-object p1, p1, LJAVARuntime/Vector3;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object p2, p2, LJAVARuntime/Vector3;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v0, p1, p2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->p4(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object p1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->M2()LJAVARuntime/Vector3;

    return-void

    .line 6
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "out vector can\'t be null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 7
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "vector can\'t be null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public transformPoint(LJAVARuntime/Vector3;)LJAVARuntime/Vector3;
    .locals 1
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "vector3"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "vector3"
        }
    .end annotation

    .line 1
    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    if-eqz p1, :cond_0

    .line 2
    iget-object v0, p0, LJAVARuntime/Transform;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    iget-object p1, p1, LJAVARuntime/Vector3;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->y4(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object p1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->M2()LJAVARuntime/Vector3;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "vector can\'t be null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public transformPoint(LJAVARuntime/Vector3;LJAVARuntime/Vector3;)V
    .locals 1
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "vector3",
            "out"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "vector3",
            "out"
        }
    .end annotation

    .line 4
    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    .line 5
    iget-object v0, p0, LJAVARuntime/Transform;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    iget-object p1, p1, LJAVARuntime/Vector3;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object p2, p2, LJAVARuntime/Vector3;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v0, p1, p2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->z4(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object p1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->M2()LJAVARuntime/Vector3;

    return-void

    .line 6
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "out vector can\'t be null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 7
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "vector can\'t be null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public translate(FFF)V
    .locals 1
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "x",
            "y",
            "z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "x",
            "y",
            "z"
        }
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/Transform;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->m4()V

    iget-object v0, p0, LJAVARuntime/Transform;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    invoke-static {p1}, Lbd/A;->b(F)F

    move-result p1

    invoke-static {p2}, Lbd/A;->b(F)F

    move-result p2

    invoke-static {p3}, Lbd/A;->b(F)F

    move-result p3

    invoke-virtual {v0, p1, p2, p3}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->A4(FFF)V

    return-void
.end method

.method public translateInSeconds(FFF)V
    .locals 2
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "x",
            "y",
            "z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "x",
            "y",
            "z"
        }
    .end annotation

    .line 1
    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    .line 2
    iget-object v0, p0, LJAVARuntime/Transform;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->m4()V

    .line 3
    iget-object v0, p0, LJAVARuntime/Transform;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    invoke-static {}, Lc9/d;->b()F

    move-result v1

    mul-float/2addr p1, v1

    invoke-static {p1}, Lbd/A;->b(F)F

    move-result p1

    invoke-static {}, Lc9/d;->b()F

    move-result v1

    mul-float/2addr p2, v1

    invoke-static {p2}, Lbd/A;->b(F)F

    move-result p2

    invoke-static {}, Lc9/d;->b()F

    move-result v1

    mul-float/2addr p3, v1

    invoke-static {p3}, Lbd/A;->b(F)F

    move-result p3

    invoke-virtual {v0, p1, p2, p3}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->A4(FFF)V

    return-void
.end method

.method public translateInSeconds(FFI)V
    .locals 2
    .annotation runtime LZ6/g;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "x",
            "y",
            "z"
        }
    .end annotation

    .line 40
    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    .line 41
    iget-object v0, p0, LJAVARuntime/Transform;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->m4()V

    .line 42
    iget-object v0, p0, LJAVARuntime/Transform;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    invoke-static {}, Lc9/d;->b()F

    move-result v1

    mul-float/2addr p1, v1

    invoke-static {p1}, Lbd/A;->b(F)F

    move-result p1

    .line 43
    invoke-static {}, Lc9/d;->b()F

    move-result v1

    mul-float/2addr p2, v1

    invoke-static {p2}, Lbd/A;->b(F)F

    move-result p2

    int-to-float p3, p3

    .line 44
    invoke-static {}, Lc9/d;->b()F

    move-result v1

    mul-float/2addr p3, v1

    invoke-static {p3}, Lbd/A;->b(F)F

    move-result p3

    .line 45
    invoke-virtual {v0, p1, p2, p3}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->A4(FFF)V

    return-void
.end method

.method public translateInSeconds(FIF)V
    .locals 2
    .annotation runtime LZ6/g;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "x",
            "y",
            "z"
        }
    .end annotation

    .line 34
    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    .line 35
    iget-object v0, p0, LJAVARuntime/Transform;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->m4()V

    .line 36
    iget-object v0, p0, LJAVARuntime/Transform;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    invoke-static {}, Lc9/d;->b()F

    move-result v1

    mul-float/2addr p1, v1

    invoke-static {p1}, Lbd/A;->b(F)F

    move-result p1

    int-to-float p2, p2

    .line 37
    invoke-static {}, Lc9/d;->b()F

    move-result v1

    mul-float/2addr p2, v1

    invoke-static {p2}, Lbd/A;->b(F)F

    move-result p2

    .line 38
    invoke-static {}, Lc9/d;->b()F

    move-result v1

    mul-float/2addr p3, v1

    invoke-static {p3}, Lbd/A;->b(F)F

    move-result p3

    .line 39
    invoke-virtual {v0, p1, p2, p3}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->A4(FFF)V

    return-void
.end method

.method public translateInSeconds(FII)V
    .locals 2
    .annotation runtime LZ6/g;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "x",
            "y",
            "z"
        }
    .end annotation

    .line 28
    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    .line 29
    iget-object v0, p0, LJAVARuntime/Transform;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->m4()V

    .line 30
    iget-object v0, p0, LJAVARuntime/Transform;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    invoke-static {}, Lc9/d;->b()F

    move-result v1

    mul-float/2addr p1, v1

    invoke-static {p1}, Lbd/A;->b(F)F

    move-result p1

    int-to-float p2, p2

    .line 31
    invoke-static {}, Lc9/d;->b()F

    move-result v1

    mul-float/2addr p2, v1

    invoke-static {p2}, Lbd/A;->b(F)F

    move-result p2

    int-to-float p3, p3

    .line 32
    invoke-static {}, Lc9/d;->b()F

    move-result v1

    mul-float/2addr p3, v1

    invoke-static {p3}, Lbd/A;->b(F)F

    move-result p3

    .line 33
    invoke-virtual {v0, p1, p2, p3}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->A4(FFF)V

    return-void
.end method

.method public translateInSeconds(IFF)V
    .locals 2
    .annotation runtime LZ6/g;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "x",
            "y",
            "z"
        }
    .end annotation

    .line 22
    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    .line 23
    iget-object v0, p0, LJAVARuntime/Transform;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->m4()V

    .line 24
    iget-object v0, p0, LJAVARuntime/Transform;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    int-to-float p1, p1

    invoke-static {}, Lc9/d;->b()F

    move-result v1

    mul-float/2addr p1, v1

    invoke-static {p1}, Lbd/A;->b(F)F

    move-result p1

    .line 25
    invoke-static {}, Lc9/d;->b()F

    move-result v1

    mul-float/2addr p2, v1

    invoke-static {p2}, Lbd/A;->b(F)F

    move-result p2

    .line 26
    invoke-static {}, Lc9/d;->b()F

    move-result v1

    mul-float/2addr p3, v1

    invoke-static {p3}, Lbd/A;->b(F)F

    move-result p3

    .line 27
    invoke-virtual {v0, p1, p2, p3}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->A4(FFF)V

    return-void
.end method

.method public translateInSeconds(IFI)V
    .locals 2
    .annotation runtime LZ6/g;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "x",
            "y",
            "z"
        }
    .end annotation

    .line 16
    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    .line 17
    iget-object v0, p0, LJAVARuntime/Transform;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->m4()V

    .line 18
    iget-object v0, p0, LJAVARuntime/Transform;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    int-to-float p1, p1

    invoke-static {}, Lc9/d;->b()F

    move-result v1

    mul-float/2addr p1, v1

    invoke-static {p1}, Lbd/A;->b(F)F

    move-result p1

    .line 19
    invoke-static {}, Lc9/d;->b()F

    move-result v1

    mul-float/2addr p2, v1

    invoke-static {p2}, Lbd/A;->b(F)F

    move-result p2

    int-to-float p3, p3

    .line 20
    invoke-static {}, Lc9/d;->b()F

    move-result v1

    mul-float/2addr p3, v1

    invoke-static {p3}, Lbd/A;->b(F)F

    move-result p3

    .line 21
    invoke-virtual {v0, p1, p2, p3}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->A4(FFF)V

    return-void
.end method

.method public translateInSeconds(IIF)V
    .locals 2
    .annotation runtime LZ6/g;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "x",
            "y",
            "z"
        }
    .end annotation

    .line 10
    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    .line 11
    iget-object v0, p0, LJAVARuntime/Transform;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->m4()V

    .line 12
    iget-object v0, p0, LJAVARuntime/Transform;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    int-to-float p1, p1

    invoke-static {}, Lc9/d;->b()F

    move-result v1

    mul-float/2addr p1, v1

    invoke-static {p1}, Lbd/A;->b(F)F

    move-result p1

    int-to-float p2, p2

    .line 13
    invoke-static {}, Lc9/d;->b()F

    move-result v1

    mul-float/2addr p2, v1

    invoke-static {p2}, Lbd/A;->b(F)F

    move-result p2

    .line 14
    invoke-static {}, Lc9/d;->b()F

    move-result v1

    mul-float/2addr p3, v1

    invoke-static {p3}, Lbd/A;->b(F)F

    move-result p3

    .line 15
    invoke-virtual {v0, p1, p2, p3}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->A4(FFF)V

    return-void
.end method

.method public translateInSeconds(III)V
    .locals 2
    .annotation runtime LZ6/g;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "x",
            "y",
            "z"
        }
    .end annotation

    .line 4
    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    .line 5
    iget-object v0, p0, LJAVARuntime/Transform;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->m4()V

    .line 6
    iget-object v0, p0, LJAVARuntime/Transform;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    int-to-float p1, p1

    invoke-static {}, Lc9/d;->b()F

    move-result v1

    mul-float/2addr p1, v1

    invoke-static {p1}, Lbd/A;->b(F)F

    move-result p1

    int-to-float p2, p2

    .line 7
    invoke-static {}, Lc9/d;->b()F

    move-result v1

    mul-float/2addr p2, v1

    invoke-static {p2}, Lbd/A;->b(F)F

    move-result p2

    int-to-float p3, p3

    .line 8
    invoke-static {}, Lc9/d;->b()F

    move-result v1

    mul-float/2addr p3, v1

    invoke-static {p3}, Lbd/A;->b(F)F

    move-result p3

    .line 9
    invoke-virtual {v0, p1, p2, p3}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->A4(FFF)V

    return-void
.end method

.method public up()LJAVARuntime/Vector3;
    .locals 1

    .line 1
    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    .line 2
    iget-object v0, p0, LJAVARuntime/Transform;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->D4()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->M2()LJAVARuntime/Vector3;

    move-result-object v0

    return-object v0
.end method

.method public up(LJAVARuntime/Vector3;)LJAVARuntime/Vector3;
    .locals 1
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "out"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "out"
        }
    .end annotation

    .line 3
    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    if-eqz p1, :cond_0

    .line 4
    iget-object v0, p0, LJAVARuntime/Transform;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    iget-object p1, p1, LJAVARuntime/Vector3;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->E4(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object p1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->M2()LJAVARuntime/Vector3;

    move-result-object p1

    return-object p1

    .line 5
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "out vector can\'t be null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
