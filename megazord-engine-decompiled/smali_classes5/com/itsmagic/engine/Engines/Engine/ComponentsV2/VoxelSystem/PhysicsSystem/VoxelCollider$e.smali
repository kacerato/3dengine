.class public Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/PhysicsSystem/VoxelCollider$e;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/PhysicsSystem/VoxelCollider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "e"
.end annotation


# instance fields
.field public a:F

.field public b:F

.field public c:F

.field public d:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 2
    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/PhysicsSystem/VoxelCollider$e;->c:F

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/PhysicsSystem/VoxelCollider$e;->d:F

    return-void
.end method

.method public synthetic constructor <init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/PhysicsSystem/VoxelCollider$a;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/PhysicsSystem/VoxelCollider$e;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/PhysicsSystem/VoxelCollider$e;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "RectB"
        }
    .end annotation

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/PhysicsSystem/VoxelCollider$e;->a:F

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/PhysicsSystem/VoxelCollider$e;->c()F

    move-result v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/PhysicsSystem/VoxelCollider$e;->c()F

    move-result v0

    iget v1, p1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/PhysicsSystem/VoxelCollider$e;->a:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/PhysicsSystem/VoxelCollider$e;->b:F

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/PhysicsSystem/VoxelCollider$e;->d()F

    move-result v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/PhysicsSystem/VoxelCollider$e;->d()F

    move-result v0

    iget p1, p1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/PhysicsSystem/VoxelCollider$e;->b:F

    cmpl-float p1, v0, p1

    if-lez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public b(FFFF)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "x",
            "z",
            "sx",
            "sz"
        }
    .end annotation

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/PhysicsSystem/VoxelCollider$e;->a:F

    iput p2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/PhysicsSystem/VoxelCollider$e;->b:F

    iput p3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/PhysicsSystem/VoxelCollider$e;->c:F

    iput p4, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/PhysicsSystem/VoxelCollider$e;->d:F

    return-void
.end method

.method public c()F
    .locals 2

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/PhysicsSystem/VoxelCollider$e;->a:F

    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/PhysicsSystem/VoxelCollider$e;->c:F

    add-float/2addr v0, v1

    return v0
.end method

.method public d()F
    .locals 2

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/PhysicsSystem/VoxelCollider$e;->b:F

    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/PhysicsSystem/VoxelCollider$e;->d:F

    add-float/2addr v0, v1

    return v0
.end method
