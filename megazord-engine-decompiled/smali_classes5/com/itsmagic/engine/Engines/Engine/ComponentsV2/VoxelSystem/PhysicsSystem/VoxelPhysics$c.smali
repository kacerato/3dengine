.class public Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/PhysicsSystem/VoxelPhysics$c;
.super Lda/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/PhysicsSystem/VoxelPhysics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic f:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/PhysicsSystem/VoxelPhysics;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/PhysicsSystem/VoxelPhysics;ILda/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0
        }
        names = {
            "this$0",
            "framesPerSecond",
            "fixedFrameListener"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/PhysicsSystem/VoxelPhysics$c;->f:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/PhysicsSystem/VoxelPhysics;

    invoke-direct {p0, p2, p3}, Lda/b;-><init>(ILda/a;)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lda/b;->e(Z)Lda/b;

    return-void
.end method
