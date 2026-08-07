.class public Lorg/ITsMagic/ModelImporter/NativeModelImporter$i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/ITsMagic/ModelImporter/NativeModelImporter;->_onError(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lnh/a;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Lnh/b;


# direct methods
.method public constructor <init>(Lnh/a;Ljava/lang/String;Lnh/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "val$listener",
            "val$text",
            "val$queue"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lorg/ITsMagic/ModelImporter/NativeModelImporter$i;->b:Lnh/a;

    iput-object p2, p0, Lorg/ITsMagic/ModelImporter/NativeModelImporter$i;->c:Ljava/lang/String;

    iput-object p3, p0, Lorg/ITsMagic/ModelImporter/NativeModelImporter$i;->d:Lnh/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lorg/ITsMagic/ModelImporter/NativeModelImporter$i;->b:Lnh/a;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lorg/ITsMagic/ModelImporter/NativeModelImporter$i;->c:Ljava/lang/String;

    invoke-interface {v0, v1}, Lnh/a;->a(Ljava/lang/String;)V

    :cond_0
    invoke-static {}, Lorg/ITsMagic/ModelImporter/NativeModelImporter;->access$400()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lorg/ITsMagic/ModelImporter/NativeModelImporter;->access$000()Lnh/b;

    move-result-object v1

    iget-object v2, p0, Lorg/ITsMagic/ModelImporter/NativeModelImporter$i;->d:Lnh/b;

    if-ne v1, v2, :cond_1

    const/4 v1, 0x0

    invoke-static {v1}, Lorg/ITsMagic/ModelImporter/NativeModelImporter;->access$002(Lnh/b;)Lnh/b;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_1
    :goto_0
    invoke-static {}, Lorg/ITsMagic/ModelImporter/NativeModelImporter;->access$500()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
