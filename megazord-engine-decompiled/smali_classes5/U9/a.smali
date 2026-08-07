.class public final LU9/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lfd/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lfd/d<",
            "Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, LU9/a$a;

    invoke-direct {v0}, LU9/a$a;-><init>()V

    invoke-static {v0}, Lcom/itsmagic/engine/Core/Components/ProjectController/a;->g(LP8/b;)V

    new-instance v0, Lfd/d;

    invoke-direct {v0}, Lfd/d;-><init>()V

    sput-object v0, LU9/a;->a:Lfd/d;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a()Lfd/d;
    .locals 1

    sget-object v0, LU9/a;->a:Lfd/d;

    return-object v0
.end method

.method public static b(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "chunk"
        }
    .end annotation

    invoke-static {}, Lc9/a;->F()V

    if-eqz p0, :cond_0

    sget-object v0, LU9/a;->a:Lfd/d;

    invoke-virtual {v0, p0}, Lfd/d;->add(Ljava/lang/Object;)Z

    return-void

    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "chunk can\'t be null"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static c(I)Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "x"
        }
    .end annotation

    sget-object v0, LU9/a;->a:Lfd/d;

    invoke-virtual {v0, p0}, Lfd/d;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;

    return-object p0
.end method

.method public static d()I
    .locals 1

    sget-object v0, LU9/a;->a:Lfd/d;

    invoke-virtual {v0}, Lfd/d;->size()I

    move-result v0

    return v0
.end method

.method public static e(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "chunk"
        }
    .end annotation

    sget-object v0, LU9/a;->a:Lfd/d;

    invoke-virtual {v0, p0}, Lfd/d;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static f(III)I
    .locals 1
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

    invoke-static {p0, p1, p2}, LU9/a;->h(III)Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0, p1, p2}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;->getBlock(III)I

    move-result p0

    return p0

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method public static g(LJAVARuntime/Vector3;)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pos"
        }
    .end annotation

    invoke-virtual {p0}, LJAVARuntime/Vector3;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p0}, LJAVARuntime/Vector3;->getY()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p0}, LJAVARuntime/Vector3;->getZ()F

    move-result p0

    float-to-int p0, p0

    invoke-static {v0, v1, p0}, LU9/a;->f(III)I

    move-result p0

    return p0
.end method

.method public static h(III)Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;
    .locals 4
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

    sget-object v0, LU9/a;->a:Lfd/d;

    invoke-virtual {v0}, Lfd/d;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    sget-object v2, LU9/a;->a:Lfd/d;

    invoke-virtual {v2, v1}, Lfd/d;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;

    if-eqz v2, :cond_0

    iget-object v3, v2, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-static {v3}, Lyb/e;->J(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2, p0, p1, p2}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;->containsBlock(III)Z

    move-result v3

    if-eqz v3, :cond_0

    return-object v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static i(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "chunk"
        }
    .end annotation

    invoke-static {}, Lc9/a;->F()V

    if-eqz p0, :cond_0

    sget-object v0, LU9/a;->a:Lfd/d;

    invoke-virtual {v0, p0}, Lfd/d;->remove(Ljava/lang/Object;)Z

    return-void

    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "chunk can\'t be null"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
