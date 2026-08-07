.class public Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/PhysicsSystem/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/PhysicsSystem/a$a;
    }
.end annotation


# instance fields
.field public a:I

.field public b:F

.field public c:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/PhysicsSystem/a$a;

.field public d:F

.field public e:F

.field public f:F

.field public g:F

.field public final h:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

.field public final i:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/PhysicsSystem/a$a;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/PhysicsSystem/a;->a:I

    const/high16 v0, 0x3f000000    # 0.5f

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/PhysicsSystem/a;->b:F

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/PhysicsSystem/a;->h:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/PhysicsSystem/a;->i:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/PhysicsSystem/a;->c:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/PhysicsSystem/a$a;

    return-void
.end method


# virtual methods
.method public a(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pos"
        }
    .end annotation

    const/4 v0, 0x0

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/PhysicsSystem/a;->f:F

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/PhysicsSystem/a;->g:F

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/PhysicsSystem/a;->d:F

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/PhysicsSystem/a;->e:F

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/PhysicsSystem/a;->c(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/PhysicsSystem/a;->h(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/PhysicsSystem/a;->j(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/PhysicsSystem/a;->e(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/PhysicsSystem/a;->g(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/PhysicsSystem/a;->f(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/PhysicsSystem/a;->i(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/PhysicsSystem/a;->b(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V

    return-void
.end method

.method public b(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pos"
        }
    .end annotation

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/PhysicsSystem/a;->b:F

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    neg-float v1, v0

    iget v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/PhysicsSystem/a;->a:I

    int-to-float v2, v2

    invoke-virtual {p0, p1, v1, v2, v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/PhysicsSystem/a;->k(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;FFF)I

    move-result v2

    if-lez v2, :cond_1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->Y0()F

    move-result v2

    add-float/2addr v2, v0

    invoke-static {v2}, LJAVARuntime/Math;->floor(F)F

    move-result v2

    float-to-int v2, v2

    int-to-float v2, v2

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->Y0()F

    move-result v3

    add-float/2addr v3, v0

    sub-float/2addr v2, v3

    neg-float v0, v2

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->W0()F

    move-result v2

    add-float/2addr v2, v1

    invoke-static {v2}, LJAVARuntime/Math;->floor(F)F

    move-result v2

    float-to-int v2, v2

    add-int/lit8 v2, v2, 0x1

    int-to-float v2, v2

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->W0()F

    move-result p1

    add-float/2addr p1, v1

    sub-float/2addr v2, p1

    cmpg-float p1, v0, v2

    const/4 v1, 0x0

    if-gtz p1, :cond_0

    iget p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/PhysicsSystem/a;->g:F

    cmpl-float v1, p1, v1

    if-nez v1, :cond_1

    add-float/2addr p1, v0

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/PhysicsSystem/a;->g:F

    goto :goto_0

    :cond_0
    iget p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/PhysicsSystem/a;->d:F

    cmpl-float v0, p1, v1

    if-nez v0, :cond_1

    add-float/2addr p1, v2

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/PhysicsSystem/a;->d:F

    :cond_1
    :goto_0
    return-void
.end method

.method public c(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pos"
        }
    .end annotation

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/PhysicsSystem/a;->b:F

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/PhysicsSystem/a;->a:I

    int-to-float v1, v1

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v2, v1, v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/PhysicsSystem/a;->k(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;FFF)I

    move-result v1

    if-lez v1, :cond_0

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->Y0()F

    move-result v1

    add-float/2addr v1, v0

    invoke-static {v1}, LJAVARuntime/Math;->floor(F)F

    move-result v1

    float-to-int v1, v1

    int-to-float v1, v1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->Y0()F

    move-result p1

    add-float/2addr p1, v0

    sub-float/2addr v1, p1

    neg-float p1, v1

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/PhysicsSystem/a;->g:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/PhysicsSystem/a;->g:F

    :cond_0
    return-void
.end method

.method public final d(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;FFFLcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "vec",
            "xd",
            "yd",
            "zd",
            "out"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/PhysicsSystem/a;->c:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/PhysicsSystem/a$a;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/PhysicsSystem/a$a;->a(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;FFFLcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object p1

    return-object p1
.end method

.method public e(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pos"
        }
    .end annotation

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/PhysicsSystem/a;->b:F

    neg-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/PhysicsSystem/a;->a:I

    int-to-float v1, v1

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v2, v1, v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/PhysicsSystem/a;->k(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;FFF)I

    move-result v1

    if-lez v1, :cond_0

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->Y0()F

    move-result v1

    add-float/2addr v1, v0

    invoke-static {v1}, LJAVARuntime/Math;->floor(F)F

    move-result v1

    float-to-int v1, v1

    int-to-float v1, v1

    const/high16 v2, 0x3f800000    # 1.0f

    add-float/2addr v1, v2

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->Y0()F

    move-result p1

    add-float/2addr p1, v0

    sub-float/2addr v1, p1

    iget p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/PhysicsSystem/a;->f:F

    add-float/2addr p1, v1

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/PhysicsSystem/a;->f:F

    :cond_0
    return-void
.end method

.method public f(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pos"
        }
    .end annotation

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/PhysicsSystem/a;->b:F

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/PhysicsSystem/a;->a:I

    int-to-float v1, v1

    neg-float v2, v0

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/PhysicsSystem/a;->k(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;FFF)I

    move-result v1

    if-lez v1, :cond_1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->Y0()F

    move-result v1

    add-float/2addr v1, v2

    invoke-static {v1}, LJAVARuntime/Math;->floor(F)F

    move-result v1

    float-to-int v1, v1

    int-to-float v1, v1

    const/high16 v3, 0x3f800000    # 1.0f

    add-float/2addr v1, v3

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->Y0()F

    move-result v3

    add-float/2addr v3, v2

    sub-float/2addr v1, v3

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->W0()F

    move-result v2

    add-float/2addr v2, v0

    invoke-static {v2}, LJAVARuntime/Math;->floor(F)F

    move-result v2

    float-to-int v2, v2

    int-to-float v2, v2

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->W0()F

    move-result p1

    add-float/2addr p1, v0

    sub-float/2addr v2, p1

    neg-float p1, v2

    cmpg-float v0, v1, p1

    const/4 v2, 0x0

    if-gtz v0, :cond_0

    iget p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/PhysicsSystem/a;->f:F

    cmpl-float v0, p1, v2

    if-nez v0, :cond_1

    add-float/2addr p1, v1

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/PhysicsSystem/a;->f:F

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/PhysicsSystem/a;->e:F

    cmpl-float v1, v0, v2

    if-nez v1, :cond_1

    add-float/2addr v0, p1

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/PhysicsSystem/a;->e:F

    :cond_1
    :goto_0
    return-void
.end method

.method public g(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pos"
        }
    .end annotation

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/PhysicsSystem/a;->b:F

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    neg-float v0, v0

    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/PhysicsSystem/a;->a:I

    int-to-float v1, v1

    invoke-virtual {p0, p1, v0, v1, v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/PhysicsSystem/a;->k(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;FFF)I

    move-result v1

    if-lez v1, :cond_1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->W0()F

    move-result v1

    add-float/2addr v1, v0

    invoke-static {v1}, LJAVARuntime/Math;->floor(F)F

    move-result v1

    float-to-int v1, v1

    add-int/lit8 v1, v1, 0x1

    int-to-float v1, v1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->W0()F

    move-result v2

    add-float/2addr v2, v0

    sub-float/2addr v1, v2

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->Y0()F

    move-result v2

    add-float/2addr v2, v0

    invoke-static {v2}, LJAVARuntime/Math;->floor(F)F

    move-result v2

    float-to-int v2, v2

    int-to-float v2, v2

    const/high16 v3, 0x3f800000    # 1.0f

    add-float/2addr v2, v3

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->Y0()F

    move-result p1

    add-float/2addr p1, v0

    sub-float/2addr v2, p1

    cmpg-float p1, v1, v2

    const/4 v0, 0x0

    if-gtz p1, :cond_0

    iget p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/PhysicsSystem/a;->d:F

    cmpl-float v0, p1, v0

    if-nez v0, :cond_1

    add-float/2addr p1, v1

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/PhysicsSystem/a;->d:F

    goto :goto_0

    :cond_0
    iget p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/PhysicsSystem/a;->f:F

    cmpl-float v0, p1, v0

    if-nez v0, :cond_1

    add-float/2addr p1, v2

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/PhysicsSystem/a;->f:F

    :cond_1
    :goto_0
    return-void
.end method

.method public h(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pos"
        }
    .end annotation

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/PhysicsSystem/a;->b:F

    neg-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/PhysicsSystem/a;->a:I

    int-to-float v1, v1

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/PhysicsSystem/a;->k(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;FFF)I

    move-result v1

    if-lez v1, :cond_0

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->W0()F

    move-result v1

    add-float/2addr v1, v0

    invoke-static {v1}, LJAVARuntime/Math;->floor(F)F

    move-result v1

    float-to-int v1, v1

    int-to-float v1, v1

    const/high16 v2, 0x3f800000    # 1.0f

    add-float/2addr v1, v2

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->W0()F

    move-result p1

    add-float/2addr p1, v0

    sub-float/2addr v1, p1

    iget p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/PhysicsSystem/a;->d:F

    add-float/2addr p1, v1

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/PhysicsSystem/a;->d:F

    :cond_0
    return-void
.end method

.method public i(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pos"
        }
    .end annotation

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/PhysicsSystem/a;->b:F

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/PhysicsSystem/a;->a:I

    int-to-float v1, v1

    invoke-virtual {p0, p1, v0, v1, v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/PhysicsSystem/a;->k(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;FFF)I

    move-result v1

    if-lez v1, :cond_1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->W0()F

    move-result v1

    add-float/2addr v1, v0

    invoke-static {v1}, LJAVARuntime/Math;->floor(F)F

    move-result v1

    float-to-int v1, v1

    int-to-float v1, v1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->W0()F

    move-result v2

    add-float/2addr v2, v0

    sub-float/2addr v1, v2

    neg-float v1, v1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->Y0()F

    move-result v2

    add-float/2addr v2, v0

    invoke-static {v2}, LJAVARuntime/Math;->floor(F)F

    move-result v2

    float-to-int v2, v2

    int-to-float v2, v2

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->Y0()F

    move-result p1

    add-float/2addr p1, v0

    sub-float/2addr v2, p1

    neg-float p1, v2

    cmpg-float v0, v1, p1

    const/4 v2, 0x0

    if-gtz v0, :cond_0

    iget p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/PhysicsSystem/a;->e:F

    cmpl-float v0, p1, v2

    if-nez v0, :cond_1

    add-float/2addr p1, v1

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/PhysicsSystem/a;->e:F

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/PhysicsSystem/a;->g:F

    cmpl-float v1, v0, v2

    if-nez v1, :cond_1

    add-float/2addr v0, p1

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/PhysicsSystem/a;->g:F

    :cond_1
    :goto_0
    return-void
.end method

.method public j(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pos"
        }
    .end annotation

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/PhysicsSystem/a;->b:F

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/PhysicsSystem/a;->a:I

    int-to-float v1, v1

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/PhysicsSystem/a;->k(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;FFF)I

    move-result v1

    if-lez v1, :cond_0

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->W0()F

    move-result v1

    add-float/2addr v1, v0

    invoke-static {v1}, LJAVARuntime/Math;->floor(F)F

    move-result v1

    float-to-int v1, v1

    int-to-float v1, v1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->W0()F

    move-result p1

    add-float/2addr p1, v0

    sub-float/2addr v1, p1

    neg-float p1, v1

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/PhysicsSystem/a;->e:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/PhysicsSystem/a;->e:F

    :cond_0
    return-void
.end method

.method public final k(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;FFF)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "vec",
            "xd",
            "yd",
            "zd"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/PhysicsSystem/a;->c:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/PhysicsSystem/a$a;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/PhysicsSystem/a$a;->b(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;FFF)I

    move-result p1

    return p1
.end method

.method public l()F
    .locals 1

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/PhysicsSystem/a;->b:F

    return v0
.end method

.method public m()Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/PhysicsSystem/a$a;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/PhysicsSystem/a;->c:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/PhysicsSystem/a$a;

    return-object v0
.end method

.method public n()I
    .locals 1

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/PhysicsSystem/a;->a:I

    return v0
.end method

.method public o(F)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "horizontalSize"
        }
    .end annotation

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/PhysicsSystem/a;->b:F

    return-void
.end method

.method public p(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/PhysicsSystem/a$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/PhysicsSystem/a;->c:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/PhysicsSystem/a$a;

    return-void
.end method

.method public q(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "yoff"
        }
    .end annotation

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/PhysicsSystem/a;->a:I

    return-void
.end method
