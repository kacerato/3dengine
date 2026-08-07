.class public Lcom/itsmagic/engine/Engines/Engine/World/World$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LGb/b$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itsmagic/engine/Engines/Engine/World/World;->t(Lcom/itsmagic/engine/Engines/Engine/World/World$c;Lec/a;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lec/a;

.field public final synthetic b:Lcom/itsmagic/engine/Engines/Engine/World/World$c;

.field public final synthetic c:I

.field public final synthetic d:Ljava/util/concurrent/CountDownLatch;

.field public final synthetic e:Lcom/itsmagic/engine/Engines/Engine/World/World;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Engines/Engine/World/World;Lec/a;Lcom/itsmagic/engine/Engines/Engine/World/World$c;ILjava/util/concurrent/CountDownLatch;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$listener",
            "val$bundle",
            "val$totalMaterials",
            "val$latch"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/World/World$b;->e:Lcom/itsmagic/engine/Engines/Engine/World/World;

    iput-object p2, p0, Lcom/itsmagic/engine/Engines/Engine/World/World$b;->a:Lec/a;

    iput-object p3, p0, Lcom/itsmagic/engine/Engines/Engine/World/World$b;->b:Lcom/itsmagic/engine/Engines/Engine/World/World$c;

    iput p4, p0, Lcom/itsmagic/engine/Engines/Engine/World/World$b;->c:I

    iput-object p5, p0, Lcom/itsmagic/engine/Engines/Engine/World/World$b;->d:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()Z
    .locals 6

    invoke-static {}, LTb/f;->m()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    invoke-static {}, LTb/f;->p()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/World/World$b;->a:Lec/a;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Textures: preparing "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Lec/a;->b(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/World/World$b;->a:Lec/a;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Textures: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, LTb/f;->k()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, LTb/f;->r()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lec/a;->b(Ljava/lang/String;)V

    :goto_0
    return v1

    :cond_1
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/World/World$b;->b:Lcom/itsmagic/engine/Engines/Engine/World/World$c;

    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Engine/World/World$c;->c:Ljava/util/Set;

    monitor-enter v0

    :try_start_0
    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/World/World$b;->b:Lcom/itsmagic/engine/Engines/Engine/World/World$c;

    iget-object v2, v2, Lcom/itsmagic/engine/Engines/Engine/World/World$c;->c:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    move v4, v3

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/itsmagic/engine/Engines/Engine/Material/Material;

    if-eqz v5, :cond_2

    invoke-virtual {v5}, Lcom/itsmagic/engine/Engines/Engine/Material/Material;->Q()Z

    move-result v5

    if-nez v5, :cond_2

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :catchall_0
    move-exception v1

    goto :goto_2

    :cond_3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lez v4, :cond_4

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/World/World$b;->a:Lec/a;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Shaders: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/itsmagic/engine/Engines/Engine/World/World$b;->c:I

    sub-int/2addr v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/itsmagic/engine/Engines/Engine/World/World$b;->c:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lec/a;->b(Ljava/lang/String;)V

    return v1

    :cond_4
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/World/World$b$a;

    invoke-direct {v0, p0}, Lcom/itsmagic/engine/Engines/Engine/World/World$b$a;-><init>(Lcom/itsmagic/engine/Engines/Engine/World/World$b;)V

    invoke-static {v0}, Lc9/a;->A(Ljava/lang/Runnable;)V

    return v3

    :goto_2
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
