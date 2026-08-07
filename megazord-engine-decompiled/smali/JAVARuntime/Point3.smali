.class public final LJAVARuntime/Point3;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime LJAVARuntime/ClassCategory;
    cat = {
        "Vector"
    }
.end annotation


# instance fields
.field public transient vector:LUb/h;
    .annotation runtime LZ6/g;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    invoke-static {p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Profiler/MemoryProfiler/AllocatorWatcher;->notify(Ljava/lang/Object;)V

    .line 7
    new-instance v0, LUb/h;

    invoke-direct {v0}, LUb/h;-><init>()V

    iput-object v0, p0, LJAVARuntime/Point3;->vector:LUb/h;

    .line 8
    invoke-virtual {v0, p0}, LUb/h;->p0(LJAVARuntime/Point3;)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "a"
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
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    invoke-static {p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Profiler/MemoryProfiler/AllocatorWatcher;->notify(Ljava/lang/Object;)V

    .line 11
    new-instance v0, LUb/h;

    invoke-direct {v0, p1}, LUb/h;-><init>(I)V

    iput-object v0, p0, LJAVARuntime/Point3;->vector:LUb/h;

    .line 12
    invoke-virtual {v0, p0}, LUb/h;->p0(LJAVARuntime/Point3;)V

    return-void
.end method

.method public constructor <init>(III)V
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

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    invoke-static {p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Profiler/MemoryProfiler/AllocatorWatcher;->notify(Ljava/lang/Object;)V

    .line 15
    new-instance v0, LUb/h;

    invoke-direct {v0, p1, p2, p3}, LUb/h;-><init>(III)V

    iput-object v0, p0, LJAVARuntime/Point3;->vector:LUb/h;

    .line 16
    invoke-virtual {v0, p0}, LUb/h;->p0(LJAVARuntime/Point3;)V

    return-void
.end method

.method public constructor <init>(LUb/h;)V
    .locals 0
    .annotation runtime LZ6/g;
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
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Profiler/MemoryProfiler/AllocatorWatcher;->notify(Ljava/lang/Object;)V

    .line 3
    iput-object p1, p0, LJAVARuntime/Point3;->vector:LUb/h;

    if-eqz p1, :cond_0

    .line 4
    invoke-virtual {p1, p0}, LUb/h;->p0(LJAVARuntime/Point3;)V

    :cond_0
    return-void
.end method

.method public static inspectorController()Lh9/h;
    .locals 3
    .annotation runtime LZ6/g;
    .end annotation

    new-instance v0, Lh9/h;

    new-instance v1, LJAVARuntime/Point3$1;

    const-class v2, LJAVARuntime/Point3;

    invoke-direct {v1, v2}, LJAVARuntime/Point3$1;-><init>(Ljava/lang/Class;)V

    invoke-direct {v0, v1}, Lh9/h;-><init>(Lh9/i;)V

    return-object v0
.end method

.method public static zero()LJAVARuntime/Point3;
    .locals 1

    new-instance v0, LJAVARuntime/Point3;

    invoke-direct {v0}, LJAVARuntime/Point3;-><init>()V

    return-object v0
.end method


# virtual methods
.method public blend(II)V
    .locals 1
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "a",
            "blend"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "blend"
        }
    .end annotation

    .line 5
    iget-object v0, p0, LJAVARuntime/Point3;->vector:LUb/h;

    if-nez v0, :cond_0

    new-instance v0, LUb/h;

    invoke-direct {v0}, LUb/h;-><init>()V

    iput-object v0, p0, LJAVARuntime/Point3;->vector:LUb/h;

    .line 6
    :cond_0
    iget-object v0, p0, LJAVARuntime/Point3;->vector:LUb/h;

    int-to-float p1, p1

    int-to-float p2, p2

    invoke-virtual {v0, p1, p2}, LUb/h;->y(FF)LUb/h;

    return-void
.end method

.method public blend(IIII)V
    .locals 1
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "x",
            "y",
            "z",
            "blend"
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
            "x",
            "y",
            "z",
            "blend"
        }
    .end annotation

    .line 3
    iget-object v0, p0, LJAVARuntime/Point3;->vector:LUb/h;

    if-nez v0, :cond_0

    new-instance v0, LUb/h;

    invoke-direct {v0}, LUb/h;-><init>()V

    iput-object v0, p0, LJAVARuntime/Point3;->vector:LUb/h;

    .line 4
    :cond_0
    iget-object v0, p0, LJAVARuntime/Point3;->vector:LUb/h;

    int-to-float p1, p1

    int-to-float p2, p2

    int-to-float p3, p3

    int-to-float p4, p4

    invoke-virtual {v0, p1, p2, p3, p4}, LUb/h;->z(FFFF)LUb/h;

    return-void
.end method

.method public blend(LJAVARuntime/Point3;I)V
    .locals 1
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "value",
            "blend"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "vector3",
            "blend"
        }
    .end annotation

    .line 1
    iget-object v0, p0, LJAVARuntime/Point3;->vector:LUb/h;

    if-nez v0, :cond_0

    new-instance v0, LUb/h;

    invoke-direct {v0}, LUb/h;-><init>()V

    iput-object v0, p0, LJAVARuntime/Point3;->vector:LUb/h;

    .line 2
    :cond_0
    iget-object v0, p0, LJAVARuntime/Point3;->vector:LUb/h;

    iget-object p1, p1, LJAVARuntime/Point3;->vector:LUb/h;

    int-to-float p2, p2

    invoke-virtual {v0, p1, p2}, LUb/h;->A(LUb/h;F)LUb/h;

    return-void
.end method

.method public copy()LJAVARuntime/Point3;
    .locals 2

    iget-object v0, p0, LJAVARuntime/Point3;->vector:LUb/h;

    if-nez v0, :cond_0

    new-instance v0, LUb/h;

    invoke-direct {v0}, LUb/h;-><init>()V

    iput-object v0, p0, LJAVARuntime/Point3;->vector:LUb/h;

    :cond_0
    new-instance v0, LJAVARuntime/Point3;

    iget-object v1, p0, LJAVARuntime/Point3;->vector:LUb/h;

    invoke-virtual {v1}, LUb/h;->B()LUb/h;

    move-result-object v1

    invoke-direct {v0, v1}, LJAVARuntime/Point3;-><init>(LUb/h;)V

    return-object v0
.end method

.method public cross(III)LJAVARuntime/Vector3;
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

    .line 3
    iget-object v0, p0, LJAVARuntime/Point3;->vector:LUb/h;

    if-nez v0, :cond_0

    new-instance v0, LUb/h;

    invoke-direct {v0}, LUb/h;-><init>()V

    iput-object v0, p0, LJAVARuntime/Point3;->vector:LUb/h;

    .line 4
    :cond_0
    iget-object v0, p0, LJAVARuntime/Point3;->vector:LUb/h;

    invoke-virtual {v0, p1, p2, p3}, LUb/h;->D(III)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object p1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->M2()LJAVARuntime/Vector3;

    move-result-object p1

    return-object p1
.end method

.method public cross(LJAVARuntime/Point3;)LJAVARuntime/Vector3;
    .locals 1
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

    .line 1
    iget-object v0, p0, LJAVARuntime/Point3;->vector:LUb/h;

    if-nez v0, :cond_0

    new-instance v0, LUb/h;

    invoke-direct {v0}, LUb/h;-><init>()V

    iput-object v0, p0, LJAVARuntime/Point3;->vector:LUb/h;

    .line 2
    :cond_0
    iget-object v0, p0, LJAVARuntime/Point3;->vector:LUb/h;

    iget-object p1, p1, LJAVARuntime/Point3;->vector:LUb/h;

    invoke-virtual {v0, p1}, LUb/h;->E(LUb/h;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object p1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->M2()LJAVARuntime/Vector3;

    move-result-object p1

    return-object p1
.end method

.method public distance(LJAVARuntime/Point3;)F
    .locals 1
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
            "vector3"
        }
    .end annotation

    iget-object v0, p0, LJAVARuntime/Point3;->vector:LUb/h;

    if-nez v0, :cond_0

    new-instance v0, LUb/h;

    invoke-direct {v0}, LUb/h;-><init>()V

    iput-object v0, p0, LJAVARuntime/Point3;->vector:LUb/h;

    :cond_0
    iget-object v0, p0, LJAVARuntime/Point3;->vector:LUb/h;

    iget-object p1, p1, LJAVARuntime/Point3;->vector:LUb/h;

    invoke-virtual {v0, p1}, LUb/h;->F(LUb/h;)F

    move-result p1

    return p1
.end method

.method public div(I)LJAVARuntime/Point3;
    .locals 2
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "a"
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

    .line 4
    iget-object v0, p0, LJAVARuntime/Point3;->vector:LUb/h;

    if-nez v0, :cond_0

    new-instance v0, LUb/h;

    invoke-direct {v0}, LUb/h;-><init>()V

    iput-object v0, p0, LJAVARuntime/Point3;->vector:LUb/h;

    .line 5
    :cond_0
    new-instance v0, LJAVARuntime/Point3;

    iget-object v1, p0, LJAVARuntime/Point3;->vector:LUb/h;

    invoke-virtual {v1, p1}, LUb/h;->G(I)LUb/h;

    move-result-object p1

    invoke-direct {v0, p1}, LJAVARuntime/Point3;-><init>(LUb/h;)V

    return-object v0
.end method

.method public div(III)LJAVARuntime/Point3;
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

    .line 2
    iget-object v0, p0, LJAVARuntime/Point3;->vector:LUb/h;

    if-nez v0, :cond_0

    new-instance v0, LUb/h;

    invoke-direct {v0}, LUb/h;-><init>()V

    iput-object v0, p0, LJAVARuntime/Point3;->vector:LUb/h;

    .line 3
    :cond_0
    new-instance v0, LJAVARuntime/Point3;

    iget-object v1, p0, LJAVARuntime/Point3;->vector:LUb/h;

    invoke-virtual {v1, p1, p2, p3}, LUb/h;->H(III)LUb/h;

    move-result-object p1

    invoke-direct {v0, p1}, LJAVARuntime/Point3;-><init>(LUb/h;)V

    return-object v0
.end method

.method public div(LJAVARuntime/Point3;)LJAVARuntime/Point3;
    .locals 2
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

    .line 1
    new-instance v0, LJAVARuntime/Point3;

    iget-object v1, p0, LJAVARuntime/Point3;->vector:LUb/h;

    iget-object p1, p1, LJAVARuntime/Point3;->vector:LUb/h;

    invoke-virtual {v1, p1}, LUb/h;->I(LUb/h;)LUb/h;

    move-result-object p1

    invoke-direct {v0, p1}, LJAVARuntime/Point3;-><init>(LUb/h;)V

    return-object v0
.end method

.method public divLocal(F)V
    .locals 1
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "a"
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

    .line 4
    iget-object v0, p0, LJAVARuntime/Point3;->vector:LUb/h;

    invoke-virtual {v0, p1}, LUb/h;->J(F)LUb/h;

    return-void
.end method

.method public divLocal(FFF)V
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

    .line 3
    iget-object v0, p0, LJAVARuntime/Point3;->vector:LUb/h;

    invoke-virtual {v0, p1, p2, p3}, LUb/h;->K(FFF)LUb/h;

    return-void
.end method

.method public divLocal(LJAVARuntime/Point3;)V
    .locals 1
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

    .line 2
    iget-object v0, p0, LJAVARuntime/Point3;->vector:LUb/h;

    iget-object p1, p1, LJAVARuntime/Point3;->vector:LUb/h;

    invoke-virtual {v0, p1}, LUb/h;->L(LUb/h;)LUb/h;

    return-void
.end method

.method public divLocal(LJAVARuntime/Vector3;)V
    .locals 1
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

    .line 1
    iget-object v0, p0, LJAVARuntime/Point3;->vector:LUb/h;

    iget-object p1, p1, LJAVARuntime/Vector3;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v0, p1}, LUb/h;->M(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)LUb/h;

    return-void
.end method

.method public dot(I)F
    .locals 1
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "a"
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

    .line 5
    iget-object v0, p0, LJAVARuntime/Point3;->vector:LUb/h;

    if-nez v0, :cond_0

    new-instance v0, LUb/h;

    invoke-direct {v0}, LUb/h;-><init>()V

    iput-object v0, p0, LJAVARuntime/Point3;->vector:LUb/h;

    .line 6
    :cond_0
    iget-object v0, p0, LJAVARuntime/Point3;->vector:LUb/h;

    invoke-virtual {v0, p1}, LUb/h;->P(I)F

    move-result p1

    return p1
.end method

.method public dot(III)F
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

    .line 3
    iget-object v0, p0, LJAVARuntime/Point3;->vector:LUb/h;

    if-nez v0, :cond_0

    new-instance v0, LUb/h;

    invoke-direct {v0}, LUb/h;-><init>()V

    iput-object v0, p0, LJAVARuntime/Point3;->vector:LUb/h;

    .line 4
    :cond_0
    iget-object v0, p0, LJAVARuntime/Point3;->vector:LUb/h;

    invoke-virtual {v0, p1, p2, p3}, LUb/h;->Q(III)F

    move-result p1

    return p1
.end method

.method public dot(LJAVARuntime/Point3;)F
    .locals 1
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
            "vector3"
        }
    .end annotation

    .line 1
    iget-object v0, p0, LJAVARuntime/Point3;->vector:LUb/h;

    if-nez v0, :cond_0

    new-instance v0, LUb/h;

    invoke-direct {v0}, LUb/h;-><init>()V

    iput-object v0, p0, LJAVARuntime/Point3;->vector:LUb/h;

    .line 2
    :cond_0
    iget-object v0, p0, LJAVARuntime/Point3;->vector:LUb/h;

    iget-object p1, p1, LJAVARuntime/Point3;->vector:LUb/h;

    invoke-virtual {v0, p1}, LUb/h;->R(LUb/h;)F

    move-result p1

    return p1
.end method

.method public equals(I)Z
    .locals 1
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "a"
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

    .line 5
    iget-object v0, p0, LJAVARuntime/Point3;->vector:LUb/h;

    if-nez v0, :cond_0

    new-instance v0, LUb/h;

    invoke-direct {v0}, LUb/h;-><init>()V

    iput-object v0, p0, LJAVARuntime/Point3;->vector:LUb/h;

    .line 6
    :cond_0
    iget-object v0, p0, LJAVARuntime/Point3;->vector:LUb/h;

    invoke-virtual {v0, p1}, LUb/h;->S(I)Z

    move-result p1

    return p1
.end method

.method public equals(III)Z
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

    .line 3
    iget-object v0, p0, LJAVARuntime/Point3;->vector:LUb/h;

    if-nez v0, :cond_0

    new-instance v0, LUb/h;

    invoke-direct {v0}, LUb/h;-><init>()V

    iput-object v0, p0, LJAVARuntime/Point3;->vector:LUb/h;

    .line 4
    :cond_0
    iget-object v0, p0, LJAVARuntime/Point3;->vector:LUb/h;

    invoke-virtual {v0, p1, p2, p3}, LUb/h;->T(III)Z

    move-result p1

    return p1
.end method

.method public equals(LJAVARuntime/Point3;)Z
    .locals 1
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
            "vector"
        }
    .end annotation

    .line 1
    iget-object v0, p0, LJAVARuntime/Point3;->vector:LUb/h;

    if-nez v0, :cond_0

    new-instance v0, LUb/h;

    invoke-direct {v0}, LUb/h;-><init>()V

    iput-object v0, p0, LJAVARuntime/Point3;->vector:LUb/h;

    :cond_0
    if-eqz p1, :cond_1

    .line 2
    iget-object v0, p0, LJAVARuntime/Point3;->vector:LUb/h;

    iget-object p1, p1, LJAVARuntime/Point3;->vector:LUb/h;

    invoke-virtual {v0, p1}, LUb/h;->U(LUb/h;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public getX()I
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    iget-object v0, p0, LJAVARuntime/Point3;->vector:LUb/h;

    if-nez v0, :cond_0

    new-instance v0, LUb/h;

    invoke-direct {v0}, LUb/h;-><init>()V

    iput-object v0, p0, LJAVARuntime/Point3;->vector:LUb/h;

    :cond_0
    iget-object v0, p0, LJAVARuntime/Point3;->vector:LUb/h;

    invoke-virtual {v0}, LUb/h;->V()I

    move-result v0

    return v0
.end method

.method public getY()I
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    iget-object v0, p0, LJAVARuntime/Point3;->vector:LUb/h;

    if-nez v0, :cond_0

    new-instance v0, LUb/h;

    invoke-direct {v0}, LUb/h;-><init>()V

    iput-object v0, p0, LJAVARuntime/Point3;->vector:LUb/h;

    :cond_0
    iget-object v0, p0, LJAVARuntime/Point3;->vector:LUb/h;

    invoke-virtual {v0}, LUb/h;->W()I

    move-result v0

    return v0
.end method

.method public getZ()I
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    iget-object v0, p0, LJAVARuntime/Point3;->vector:LUb/h;

    if-nez v0, :cond_0

    new-instance v0, LUb/h;

    invoke-direct {v0}, LUb/h;-><init>()V

    iput-object v0, p0, LJAVARuntime/Point3;->vector:LUb/h;

    :cond_0
    iget-object v0, p0, LJAVARuntime/Point3;->vector:LUb/h;

    invoke-virtual {v0}, LUb/h;->X()I

    move-result v0

    return v0
.end method

.method public length()F
    .locals 1

    iget-object v0, p0, LJAVARuntime/Point3;->vector:LUb/h;

    if-nez v0, :cond_0

    new-instance v0, LUb/h;

    invoke-direct {v0}, LUb/h;-><init>()V

    iput-object v0, p0, LJAVARuntime/Point3;->vector:LUb/h;

    :cond_0
    iget-object v0, p0, LJAVARuntime/Point3;->vector:LUb/h;

    invoke-virtual {v0}, LUb/h;->Z()F

    move-result v0

    return v0
.end method

.method public lerp(II)V
    .locals 1
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "a",
            "speed"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "speed"
        }
    .end annotation

    .line 5
    iget-object v0, p0, LJAVARuntime/Point3;->vector:LUb/h;

    if-nez v0, :cond_0

    new-instance v0, LUb/h;

    invoke-direct {v0}, LUb/h;-><init>()V

    iput-object v0, p0, LJAVARuntime/Point3;->vector:LUb/h;

    .line 6
    :cond_0
    iget-object v0, p0, LJAVARuntime/Point3;->vector:LUb/h;

    int-to-float p1, p1

    int-to-float p2, p2

    invoke-virtual {v0, p1, p2}, LUb/h;->a0(FF)LUb/h;

    return-void
.end method

.method public lerp(IIII)V
    .locals 1
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "x",
            "y",
            "z",
            "speed"
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
            "x",
            "y",
            "z",
            "speed"
        }
    .end annotation

    .line 3
    iget-object v0, p0, LJAVARuntime/Point3;->vector:LUb/h;

    if-nez v0, :cond_0

    new-instance v0, LUb/h;

    invoke-direct {v0}, LUb/h;-><init>()V

    iput-object v0, p0, LJAVARuntime/Point3;->vector:LUb/h;

    .line 4
    :cond_0
    iget-object v0, p0, LJAVARuntime/Point3;->vector:LUb/h;

    int-to-float p1, p1

    int-to-float p2, p2

    int-to-float p3, p3

    int-to-float p4, p4

    invoke-virtual {v0, p1, p2, p3, p4}, LUb/h;->b0(FFFF)LUb/h;

    return-void
.end method

.method public lerp(LJAVARuntime/Point3;I)V
    .locals 1
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "value",
            "speed"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "vector3",
            "speed"
        }
    .end annotation

    .line 1
    iget-object v0, p0, LJAVARuntime/Point3;->vector:LUb/h;

    if-nez v0, :cond_0

    new-instance v0, LUb/h;

    invoke-direct {v0}, LUb/h;-><init>()V

    iput-object v0, p0, LJAVARuntime/Point3;->vector:LUb/h;

    .line 2
    :cond_0
    iget-object v0, p0, LJAVARuntime/Point3;->vector:LUb/h;

    iget-object p1, p1, LJAVARuntime/Point3;->vector:LUb/h;

    int-to-float p2, p2

    invoke-virtual {v0, p1, p2}, LUb/h;->c0(LUb/h;F)LUb/h;

    return-void
.end method

.method public lerpInSeconds(II)V
    .locals 2
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "a",
            "speed"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "speed"
        }
    .end annotation

    .line 4
    iget-object v0, p0, LJAVARuntime/Point3;->vector:LUb/h;

    if-nez v0, :cond_0

    new-instance v0, LUb/h;

    invoke-direct {v0}, LUb/h;-><init>()V

    iput-object v0, p0, LJAVARuntime/Point3;->vector:LUb/h;

    .line 5
    :cond_0
    iget-object v0, p0, LJAVARuntime/Point3;->vector:LUb/h;

    int-to-float p1, p1

    int-to-float p2, p2

    invoke-static {}, Lc9/d;->b()F

    move-result v1

    mul-float/2addr p2, v1

    invoke-virtual {v0, p1, p2}, LUb/h;->a0(FF)LUb/h;

    return-void
.end method

.method public lerpInSeconds(IIII)V
    .locals 2
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "x",
            "y",
            "z",
            "speed"
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
            "x",
            "y",
            "z",
            "speed"
        }
    .end annotation

    .line 2
    iget-object v0, p0, LJAVARuntime/Point3;->vector:LUb/h;

    if-nez v0, :cond_0

    new-instance v0, LUb/h;

    invoke-direct {v0}, LUb/h;-><init>()V

    iput-object v0, p0, LJAVARuntime/Point3;->vector:LUb/h;

    .line 3
    :cond_0
    iget-object v0, p0, LJAVARuntime/Point3;->vector:LUb/h;

    int-to-float p1, p1

    int-to-float p2, p2

    int-to-float p3, p3

    int-to-float p4, p4

    invoke-static {}, Lc9/d;->b()F

    move-result v1

    mul-float/2addr p4, v1

    invoke-virtual {v0, p1, p2, p3, p4}, LUb/h;->b0(FFFF)LUb/h;

    return-void
.end method

.method public lerpInSeconds(LJAVARuntime/Point3;I)V
    .locals 2
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "value",
            "speed"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "vector3",
            "speed"
        }
    .end annotation

    .line 1
    iget-object v0, p0, LJAVARuntime/Point3;->vector:LUb/h;

    iget-object p1, p1, LJAVARuntime/Point3;->vector:LUb/h;

    int-to-float p2, p2

    invoke-static {}, Lc9/d;->b()F

    move-result v1

    mul-float/2addr p2, v1

    invoke-virtual {v0, p1, p2}, LUb/h;->c0(LUb/h;F)LUb/h;

    return-void
.end method

.method public mul(I)LJAVARuntime/Point3;
    .locals 2
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "a"
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

    .line 5
    iget-object v0, p0, LJAVARuntime/Point3;->vector:LUb/h;

    if-nez v0, :cond_0

    new-instance v0, LUb/h;

    invoke-direct {v0}, LUb/h;-><init>()V

    iput-object v0, p0, LJAVARuntime/Point3;->vector:LUb/h;

    .line 6
    :cond_0
    new-instance v0, LJAVARuntime/Point3;

    iget-object v1, p0, LJAVARuntime/Point3;->vector:LUb/h;

    invoke-virtual {v1, p1}, LUb/h;->d0(I)LUb/h;

    move-result-object p1

    invoke-direct {v0, p1}, LJAVARuntime/Point3;-><init>(LUb/h;)V

    return-object v0
.end method

.method public mul(III)LJAVARuntime/Point3;
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

    .line 3
    iget-object v0, p0, LJAVARuntime/Point3;->vector:LUb/h;

    if-nez v0, :cond_0

    new-instance v0, LUb/h;

    invoke-direct {v0}, LUb/h;-><init>()V

    iput-object v0, p0, LJAVARuntime/Point3;->vector:LUb/h;

    .line 4
    :cond_0
    new-instance v0, LJAVARuntime/Point3;

    iget-object v1, p0, LJAVARuntime/Point3;->vector:LUb/h;

    invoke-virtual {v1, p1, p2, p3}, LUb/h;->e0(III)LUb/h;

    move-result-object p1

    invoke-direct {v0, p1}, LJAVARuntime/Point3;-><init>(LUb/h;)V

    return-object v0
.end method

.method public mul(LJAVARuntime/Point3;)LJAVARuntime/Point3;
    .locals 2
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

    .line 1
    iget-object v0, p0, LJAVARuntime/Point3;->vector:LUb/h;

    if-nez v0, :cond_0

    new-instance v0, LUb/h;

    invoke-direct {v0}, LUb/h;-><init>()V

    iput-object v0, p0, LJAVARuntime/Point3;->vector:LUb/h;

    .line 2
    :cond_0
    new-instance v0, LJAVARuntime/Point3;

    iget-object v1, p0, LJAVARuntime/Point3;->vector:LUb/h;

    iget-object p1, p1, LJAVARuntime/Point3;->vector:LUb/h;

    invoke-virtual {v1, p1}, LUb/h;->f0(LUb/h;)LUb/h;

    move-result-object p1

    invoke-direct {v0, p1}, LJAVARuntime/Point3;-><init>(LUb/h;)V

    return-object v0
.end method

.method public mulLocal(F)V
    .locals 1
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "a"
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

    .line 5
    iget-object v0, p0, LJAVARuntime/Point3;->vector:LUb/h;

    if-nez v0, :cond_0

    new-instance v0, LUb/h;

    invoke-direct {v0}, LUb/h;-><init>()V

    iput-object v0, p0, LJAVARuntime/Point3;->vector:LUb/h;

    .line 6
    :cond_0
    iget-object v0, p0, LJAVARuntime/Point3;->vector:LUb/h;

    invoke-virtual {v0, p1}, LUb/h;->g0(F)LUb/h;

    return-void
.end method

.method public mulLocal(FFF)V
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

    .line 3
    iget-object v0, p0, LJAVARuntime/Point3;->vector:LUb/h;

    if-nez v0, :cond_0

    new-instance v0, LUb/h;

    invoke-direct {v0}, LUb/h;-><init>()V

    iput-object v0, p0, LJAVARuntime/Point3;->vector:LUb/h;

    .line 4
    :cond_0
    iget-object v0, p0, LJAVARuntime/Point3;->vector:LUb/h;

    invoke-virtual {v0, p1, p2, p3}, LUb/h;->h0(FFF)LUb/h;

    return-void
.end method

.method public mulLocal(LJAVARuntime/Point3;)V
    .locals 1
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

    .line 2
    iget-object v0, p0, LJAVARuntime/Point3;->vector:LUb/h;

    iget-object p1, p1, LJAVARuntime/Point3;->vector:LUb/h;

    invoke-virtual {v0, p1}, LUb/h;->i0(LUb/h;)LUb/h;

    return-void
.end method

.method public mulLocal(LJAVARuntime/Vector3;)V
    .locals 1
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

    .line 1
    iget-object v0, p0, LJAVARuntime/Point3;->vector:LUb/h;

    iget-object p1, p1, LJAVARuntime/Vector3;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v0, p1}, LUb/h;->j0(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)LUb/h;

    return-void
.end method

.method public normalize()LJAVARuntime/Point3;
    .locals 2

    iget-object v0, p0, LJAVARuntime/Point3;->vector:LUb/h;

    if-nez v0, :cond_0

    new-instance v0, LUb/h;

    invoke-direct {v0}, LUb/h;-><init>()V

    iput-object v0, p0, LJAVARuntime/Point3;->vector:LUb/h;

    :cond_0
    new-instance v0, LJAVARuntime/Point3;

    iget-object v1, p0, LJAVARuntime/Point3;->vector:LUb/h;

    invoke-virtual {v1}, LUb/h;->B()LUb/h;

    move-result-object v1

    invoke-virtual {v1}, LUb/h;->k0()LUb/h;

    move-result-object v1

    invoke-direct {v0, v1}, LJAVARuntime/Point3;-><init>(LUb/h;)V

    return-object v0
.end method

.method public normalizeLocal()V
    .locals 1

    iget-object v0, p0, LJAVARuntime/Point3;->vector:LUb/h;

    if-nez v0, :cond_0

    new-instance v0, LUb/h;

    invoke-direct {v0}, LUb/h;-><init>()V

    iput-object v0, p0, LJAVARuntime/Point3;->vector:LUb/h;

    :cond_0
    iget-object v0, p0, LJAVARuntime/Point3;->vector:LUb/h;

    invoke-virtual {v0}, LUb/h;->l0()LUb/h;

    return-void
.end method

.method public set(I)V
    .locals 1
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "a"
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

    .line 5
    iget-object v0, p0, LJAVARuntime/Point3;->vector:LUb/h;

    if-nez v0, :cond_0

    new-instance v0, LUb/h;

    invoke-direct {v0}, LUb/h;-><init>()V

    iput-object v0, p0, LJAVARuntime/Point3;->vector:LUb/h;

    .line 6
    :cond_0
    iget-object v0, p0, LJAVARuntime/Point3;->vector:LUb/h;

    invoke-virtual {v0, p1}, LUb/h;->m0(I)LUb/h;

    return-void
.end method

.method public set(III)V
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

    .line 3
    iget-object v0, p0, LJAVARuntime/Point3;->vector:LUb/h;

    if-nez v0, :cond_0

    new-instance v0, LUb/h;

    invoke-direct {v0}, LUb/h;-><init>()V

    iput-object v0, p0, LJAVARuntime/Point3;->vector:LUb/h;

    .line 4
    :cond_0
    iget-object v0, p0, LJAVARuntime/Point3;->vector:LUb/h;

    invoke-virtual {v0, p1, p2, p3}, LUb/h;->n0(III)LUb/h;

    return-void
.end method

.method public set(LJAVARuntime/Point3;)V
    .locals 1
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
            "vector3"
        }
    .end annotation

    .line 1
    iget-object v0, p0, LJAVARuntime/Point3;->vector:LUb/h;

    if-nez v0, :cond_0

    new-instance v0, LUb/h;

    invoke-direct {v0}, LUb/h;-><init>()V

    iput-object v0, p0, LJAVARuntime/Point3;->vector:LUb/h;

    .line 2
    :cond_0
    iget-object v0, p0, LJAVARuntime/Point3;->vector:LUb/h;

    iget-object p1, p1, LJAVARuntime/Point3;->vector:LUb/h;

    invoke-virtual {v0, p1}, LUb/h;->o0(LUb/h;)LUb/h;

    return-void
.end method

.method public setX(I)V
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

    iget-object v0, p0, LJAVARuntime/Point3;->vector:LUb/h;

    if-nez v0, :cond_0

    new-instance v0, LUb/h;

    invoke-direct {v0}, LUb/h;-><init>()V

    iput-object v0, p0, LJAVARuntime/Point3;->vector:LUb/h;

    :cond_0
    iget-object v0, p0, LJAVARuntime/Point3;->vector:LUb/h;

    invoke-virtual {v0, p1}, LUb/h;->q0(I)I

    return-void
.end method

.method public setY(I)V
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

    iget-object v0, p0, LJAVARuntime/Point3;->vector:LUb/h;

    if-nez v0, :cond_0

    new-instance v0, LUb/h;

    invoke-direct {v0}, LUb/h;-><init>()V

    iput-object v0, p0, LJAVARuntime/Point3;->vector:LUb/h;

    :cond_0
    iget-object v0, p0, LJAVARuntime/Point3;->vector:LUb/h;

    invoke-virtual {v0, p1}, LUb/h;->r0(I)I

    return-void
.end method

.method public setZ(I)V
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

    iget-object v0, p0, LJAVARuntime/Point3;->vector:LUb/h;

    if-nez v0, :cond_0

    new-instance v0, LUb/h;

    invoke-direct {v0}, LUb/h;-><init>()V

    iput-object v0, p0, LJAVARuntime/Point3;->vector:LUb/h;

    :cond_0
    iget-object v0, p0, LJAVARuntime/Point3;->vector:LUb/h;

    invoke-virtual {v0, p1}, LUb/h;->s0(I)I

    return-void
.end method

.method public sqrDistance(LJAVARuntime/Point3;)F
    .locals 1
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
            "vector3"
        }
    .end annotation

    iget-object v0, p0, LJAVARuntime/Point3;->vector:LUb/h;

    if-nez v0, :cond_0

    new-instance v0, LUb/h;

    invoke-direct {v0}, LUb/h;-><init>()V

    iput-object v0, p0, LJAVARuntime/Point3;->vector:LUb/h;

    :cond_0
    iget-object v0, p0, LJAVARuntime/Point3;->vector:LUb/h;

    iget-object p1, p1, LJAVARuntime/Point3;->vector:LUb/h;

    invoke-virtual {v0, p1}, LUb/h;->t0(LUb/h;)F

    move-result p1

    return p1
.end method

.method public sqrLength()F
    .locals 1

    iget-object v0, p0, LJAVARuntime/Point3;->vector:LUb/h;

    if-nez v0, :cond_0

    new-instance v0, LUb/h;

    invoke-direct {v0}, LUb/h;-><init>()V

    iput-object v0, p0, LJAVARuntime/Point3;->vector:LUb/h;

    :cond_0
    iget-object v0, p0, LJAVARuntime/Point3;->vector:LUb/h;

    invoke-virtual {v0}, LUb/h;->u0()F

    move-result v0

    return v0
.end method

.method public sub(I)LJAVARuntime/Point3;
    .locals 2
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "a"
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

    .line 5
    iget-object v0, p0, LJAVARuntime/Point3;->vector:LUb/h;

    if-nez v0, :cond_0

    new-instance v0, LUb/h;

    invoke-direct {v0}, LUb/h;-><init>()V

    iput-object v0, p0, LJAVARuntime/Point3;->vector:LUb/h;

    .line 6
    :cond_0
    new-instance v0, LJAVARuntime/Point3;

    iget-object v1, p0, LJAVARuntime/Point3;->vector:LUb/h;

    invoke-virtual {v1, p1}, LUb/h;->v0(I)LUb/h;

    move-result-object p1

    invoke-direct {v0, p1}, LJAVARuntime/Point3;-><init>(LUb/h;)V

    return-object v0
.end method

.method public sub(III)LJAVARuntime/Point3;
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

    .line 3
    iget-object v0, p0, LJAVARuntime/Point3;->vector:LUb/h;

    if-nez v0, :cond_0

    new-instance v0, LUb/h;

    invoke-direct {v0}, LUb/h;-><init>()V

    iput-object v0, p0, LJAVARuntime/Point3;->vector:LUb/h;

    .line 4
    :cond_0
    new-instance v0, LJAVARuntime/Point3;

    iget-object v1, p0, LJAVARuntime/Point3;->vector:LUb/h;

    invoke-virtual {v1, p1, p2, p3}, LUb/h;->w0(III)LUb/h;

    move-result-object p1

    invoke-direct {v0, p1}, LJAVARuntime/Point3;-><init>(LUb/h;)V

    return-object v0
.end method

.method public sub(LJAVARuntime/Point3;)LJAVARuntime/Point3;
    .locals 2
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

    .line 1
    iget-object v0, p0, LJAVARuntime/Point3;->vector:LUb/h;

    if-nez v0, :cond_0

    new-instance v0, LUb/h;

    invoke-direct {v0}, LUb/h;-><init>()V

    iput-object v0, p0, LJAVARuntime/Point3;->vector:LUb/h;

    .line 2
    :cond_0
    new-instance v0, LJAVARuntime/Point3;

    iget-object v1, p0, LJAVARuntime/Point3;->vector:LUb/h;

    iget-object p1, p1, LJAVARuntime/Point3;->vector:LUb/h;

    invoke-virtual {v1, p1}, LUb/h;->x0(LUb/h;)LUb/h;

    move-result-object p1

    invoke-direct {v0, p1}, LJAVARuntime/Point3;-><init>(LUb/h;)V

    return-object v0
.end method

.method public subLocal(F)V
    .locals 1
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "a"
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

    .line 7
    iget-object v0, p0, LJAVARuntime/Point3;->vector:LUb/h;

    if-nez v0, :cond_0

    new-instance v0, LUb/h;

    invoke-direct {v0}, LUb/h;-><init>()V

    iput-object v0, p0, LJAVARuntime/Point3;->vector:LUb/h;

    .line 8
    :cond_0
    iget-object v0, p0, LJAVARuntime/Point3;->vector:LUb/h;

    invoke-virtual {v0, p1}, LUb/h;->y0(F)LUb/h;

    return-void
.end method

.method public subLocal(FFF)V
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

    .line 5
    iget-object v0, p0, LJAVARuntime/Point3;->vector:LUb/h;

    if-nez v0, :cond_0

    new-instance v0, LUb/h;

    invoke-direct {v0}, LUb/h;-><init>()V

    iput-object v0, p0, LJAVARuntime/Point3;->vector:LUb/h;

    .line 6
    :cond_0
    iget-object v0, p0, LJAVARuntime/Point3;->vector:LUb/h;

    invoke-virtual {v0, p1, p2, p3}, LUb/h;->z0(FFF)LUb/h;

    return-void
.end method

.method public subLocal(LJAVARuntime/Point3;)V
    .locals 1
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

    .line 3
    iget-object v0, p0, LJAVARuntime/Point3;->vector:LUb/h;

    if-nez v0, :cond_0

    new-instance v0, LUb/h;

    invoke-direct {v0}, LUb/h;-><init>()V

    iput-object v0, p0, LJAVARuntime/Point3;->vector:LUb/h;

    .line 4
    :cond_0
    iget-object v0, p0, LJAVARuntime/Point3;->vector:LUb/h;

    iget-object p1, p1, LJAVARuntime/Point3;->vector:LUb/h;

    invoke-virtual {v0, p1}, LUb/h;->A0(LUb/h;)LUb/h;

    return-void
.end method

.method public subLocal(LJAVARuntime/Vector3;)V
    .locals 1
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

    .line 1
    iget-object v0, p0, LJAVARuntime/Point3;->vector:LUb/h;

    if-nez v0, :cond_0

    new-instance v0, LUb/h;

    invoke-direct {v0}, LUb/h;-><init>()V

    iput-object v0, p0, LJAVARuntime/Point3;->vector:LUb/h;

    .line 2
    :cond_0
    iget-object v0, p0, LJAVARuntime/Point3;->vector:LUb/h;

    iget-object p1, p1, LJAVARuntime/Vector3;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v0, p1}, LUb/h;->B0(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)LUb/h;

    return-void
.end method

.method public sum(I)LJAVARuntime/Point3;
    .locals 2
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "a"
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

    .line 5
    iget-object v0, p0, LJAVARuntime/Point3;->vector:LUb/h;

    if-nez v0, :cond_0

    new-instance v0, LUb/h;

    invoke-direct {v0}, LUb/h;-><init>()V

    iput-object v0, p0, LJAVARuntime/Point3;->vector:LUb/h;

    .line 6
    :cond_0
    new-instance v0, LJAVARuntime/Point3;

    iget-object v1, p0, LJAVARuntime/Point3;->vector:LUb/h;

    invoke-virtual {v1, p1}, LUb/h;->q(I)LUb/h;

    move-result-object p1

    invoke-direct {v0, p1}, LJAVARuntime/Point3;-><init>(LUb/h;)V

    return-object v0
.end method

.method public sum(III)LJAVARuntime/Point3;
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

    .line 3
    iget-object v0, p0, LJAVARuntime/Point3;->vector:LUb/h;

    if-nez v0, :cond_0

    new-instance v0, LUb/h;

    invoke-direct {v0}, LUb/h;-><init>()V

    iput-object v0, p0, LJAVARuntime/Point3;->vector:LUb/h;

    .line 4
    :cond_0
    new-instance v0, LJAVARuntime/Point3;

    iget-object v1, p0, LJAVARuntime/Point3;->vector:LUb/h;

    invoke-virtual {v1, p1, p2, p3}, LUb/h;->r(III)LUb/h;

    move-result-object p1

    invoke-direct {v0, p1}, LJAVARuntime/Point3;-><init>(LUb/h;)V

    return-object v0
.end method

.method public sum(LJAVARuntime/Point3;)LJAVARuntime/Point3;
    .locals 2
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

    .line 1
    iget-object v0, p0, LJAVARuntime/Point3;->vector:LUb/h;

    if-nez v0, :cond_0

    new-instance v0, LUb/h;

    invoke-direct {v0}, LUb/h;-><init>()V

    iput-object v0, p0, LJAVARuntime/Point3;->vector:LUb/h;

    .line 2
    :cond_0
    new-instance v0, LJAVARuntime/Point3;

    iget-object v1, p0, LJAVARuntime/Point3;->vector:LUb/h;

    iget-object p1, p1, LJAVARuntime/Point3;->vector:LUb/h;

    invoke-virtual {v1, p1}, LUb/h;->s(LUb/h;)LUb/h;

    move-result-object p1

    invoke-direct {v0, p1}, LJAVARuntime/Point3;-><init>(LUb/h;)V

    return-object v0
.end method

.method public sumLocal(F)V
    .locals 1
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "a"
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

    .line 7
    iget-object v0, p0, LJAVARuntime/Point3;->vector:LUb/h;

    if-nez v0, :cond_0

    new-instance v0, LUb/h;

    invoke-direct {v0}, LUb/h;-><init>()V

    iput-object v0, p0, LJAVARuntime/Point3;->vector:LUb/h;

    .line 8
    :cond_0
    iget-object v0, p0, LJAVARuntime/Point3;->vector:LUb/h;

    invoke-virtual {v0, p1}, LUb/h;->u(F)LUb/h;

    return-void
.end method

.method public sumLocal(FFF)V
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

    .line 5
    iget-object v0, p0, LJAVARuntime/Point3;->vector:LUb/h;

    if-nez v0, :cond_0

    new-instance v0, LUb/h;

    invoke-direct {v0}, LUb/h;-><init>()V

    iput-object v0, p0, LJAVARuntime/Point3;->vector:LUb/h;

    .line 6
    :cond_0
    iget-object v0, p0, LJAVARuntime/Point3;->vector:LUb/h;

    invoke-virtual {v0, p1, p2, p3}, LUb/h;->v(FFF)LUb/h;

    return-void
.end method

.method public sumLocal(LJAVARuntime/Point3;)V
    .locals 1
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

    .line 3
    iget-object v0, p0, LJAVARuntime/Point3;->vector:LUb/h;

    if-nez v0, :cond_0

    new-instance v0, LUb/h;

    invoke-direct {v0}, LUb/h;-><init>()V

    iput-object v0, p0, LJAVARuntime/Point3;->vector:LUb/h;

    .line 4
    :cond_0
    iget-object v0, p0, LJAVARuntime/Point3;->vector:LUb/h;

    iget-object p1, p1, LJAVARuntime/Point3;->vector:LUb/h;

    invoke-virtual {v0, p1}, LUb/h;->w(LUb/h;)LUb/h;

    return-void
.end method

.method public sumLocal(LJAVARuntime/Vector3;)V
    .locals 1
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

    .line 1
    iget-object v0, p0, LJAVARuntime/Point3;->vector:LUb/h;

    if-nez v0, :cond_0

    new-instance v0, LUb/h;

    invoke-direct {v0}, LUb/h;-><init>()V

    iput-object v0, p0, LJAVARuntime/Point3;->vector:LUb/h;

    .line 2
    :cond_0
    iget-object v0, p0, LJAVARuntime/Point3;->vector:LUb/h;

    iget-object p1, p1, LJAVARuntime/Vector3;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v0, p1}, LUb/h;->x(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)LUb/h;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, LJAVARuntime/Point3;->vector:LUb/h;

    if-nez v0, :cond_0

    new-instance v0, LUb/h;

    invoke-direct {v0}, LUb/h;-><init>()V

    iput-object v0, p0, LJAVARuntime/Point3;->vector:LUb/h;

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "( "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, LJAVARuntime/Point3;->vector:LUb/h;

    invoke-virtual {v1}, LUb/h;->V()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " , "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, LJAVARuntime/Point3;->vector:LUb/h;

    invoke-virtual {v2}, LUb/h;->W()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, LJAVARuntime/Point3;->vector:LUb/h;

    invoke-virtual {v1}, LUb/h;->X()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " )"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
