.class public LX9/d$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le9/a$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LX9/d;->a(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;FLX9/d$c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

.field public final synthetic b:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

.field public final synthetic c:F

.field public final synthetic d:LX9/d$c;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;FLX9/d$c;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "val$pos",
            "val$dir",
            "val$length",
            "val$listener"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, LX9/d$b;->a:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iput-object p2, p0, LX9/d$b;->b:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iput p3, p0, LX9/d$b;->c:F

    iput-object p4, p0, LX9/d$b;->d:LX9/d$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Ljava/util/concurrent/atomic/AtomicBoolean;LX9/d$d;I)V
    .locals 0

    invoke-static {p0, p1, p2}, LX9/d$b;->b(Ljava/util/concurrent/atomic/AtomicBoolean;LX9/d$d;I)V

    return-void
.end method

.method public static synthetic b(Ljava/util/concurrent/atomic/AtomicBoolean;LX9/d$d;I)V
    .locals 1

    :try_start_0
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v0, :cond_0

    :try_start_1
    invoke-static {p2}, LU9/a;->c(I)Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;->isReady()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;->S:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    if-eqz v0, :cond_0

    invoke-static {p1, p2, v0}, LX9/d;->b(LX9/d$d;Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;)Lsa/a;

    move-result-object p2

    if-eqz p2, :cond_0

    iget-object v0, p1, LX9/d$d;->b:Ljava/util/List;

    monitor-enter v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Error; {:try_start_1 .. :try_end_1} :catch_0

    :try_start_2
    iget-object p1, p1, LX9/d$d;->b:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw p1
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Error; {:try_start_3 .. :try_end_3} :catch_0

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    :try_start_4
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/Error; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_1

    :catch_2
    move-exception p1

    :goto_0
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_0
    :goto_1
    return-void
.end method


# virtual methods
.method public onBackground(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "obj"
        }
    .end annotation

    new-instance p1, LX9/d$d;

    invoke-direct {p1}, LX9/d$d;-><init>()V

    new-instance v0, Lsa/c;

    iget-object v1, p0, LX9/d$b;->a:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object v2, p0, LX9/d$b;->b:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget v3, p0, LX9/d$b;->c:F

    invoke-direct {v0, v1, v2, v3}, Lsa/c;-><init>(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;F)V

    iput-object v0, p1, LX9/d$d;->a:Lsa/c;

    iget-object v0, p1, LX9/d$d;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    invoke-static {}, LU9/a;->d()I

    move-result v0

    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    invoke-static {v2, v0}, Ljava/util/stream/IntStream;->range(II)Ljava/util/stream/IntStream;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/stream/IntStream;->parallel()Ljava/util/stream/IntStream;

    move-result-object v0

    new-instance v3, LX9/e;

    invoke-direct {v3, v1, p1}, LX9/e;-><init>(Ljava/util/concurrent/atomic/AtomicBoolean;LX9/d$d;)V

    invoke-interface {v0, v3}, Ljava/util/stream/IntStream;->forEach(Ljava/util/function/IntConsumer;)V

    iget-object v0, p1, LX9/d$d;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    iget-object v0, p1, LX9/d$d;->b:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsa/a;

    const/4 v1, 0x1

    :goto_0
    iget-object v2, p1, LX9/d$d;->b:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    iget-object v2, p1, LX9/d$d;->b:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lsa/a;

    invoke-virtual {v2}, Lsa/a;->getDistance()F

    move-result v3

    invoke-virtual {v0}, Lsa/a;->getDistance()F

    move-result v4

    cmpg-float v3, v3, v4

    if-gtz v3, :cond_1

    move-object v0, v2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public onEngine(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "obj"
        }
    .end annotation

    if-eqz p1, :cond_0

    check-cast p1, Lsa/a;

    iget-object v0, p0, LX9/d$b;->d:LX9/d$c;

    invoke-interface {v0, p1}, LX9/d$c;->a(Lsa/a;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, LX9/d$b;->d:LX9/d$c;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, LX9/d$c;->a(Lsa/a;)V

    :goto_0
    return-void
.end method
