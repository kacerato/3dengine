.class public Lad/c$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lad/c;->r(Ljava/lang/String;Ljava/io/File;Lad/c$d;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/itsmagic/engine/Engines/Sound/Imported/d$b;

.field public final synthetic c:Lad/c$f;

.field public final synthetic d:Lad/c$d;

.field public final synthetic e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Engines/Sound/Imported/d$b;Lad/c$f;Lad/c$d;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "val$preparedAudio",
            "val$entry",
            "val$listener",
            "val$logicalPath"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lad/c$c;->b:Lcom/itsmagic/engine/Engines/Sound/Imported/d$b;

    iput-object p2, p0, Lad/c$c;->c:Lad/c$f;

    iput-object p3, p0, Lad/c$c;->d:Lad/c$d;

    iput-object p4, p0, Lad/c$c;->e:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    :try_start_0
    iget-object v0, p0, Lad/c$c;->b:Lcom/itsmagic/engine/Engines/Sound/Imported/d$b;

    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Sound/Imported/f;->a(Lcom/itsmagic/engine/Engines/Sound/Imported/d$b;)Lcom/itsmagic/engine/Engines/Sound/Imported/f$a;

    move-result-object v0

    iget-object v1, p0, Lad/c$c;->c:Lad/c$f;

    invoke-static {v1}, Lad/c$f;->a(Lad/c$f;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v2, p0, Lad/c$c;->c:Lad/c$f;

    new-instance v3, Lad/c$e;

    const/4 v4, 0x0

    invoke-direct {v3, v0, v4}, Lad/c$e;-><init>(Lcom/itsmagic/engine/Engines/Sound/Imported/f$a;Lad/c$a;)V

    invoke-static {v2, v3}, Lad/c$f;->c(Lad/c$f;Lad/c$e;)Lad/c$e;

    iget-object v0, p0, Lad/c$c;->c:Lad/c$f;

    sget-object v2, Lad/c$g;->Done:Lad/c$g;

    invoke-static {v0, v2}, Lad/c$f;->e(Lad/c$f;Lad/c$g;)Lad/c$g;

    iget-object v0, p0, Lad/c$c;->c:Lad/c$f;

    invoke-static {v0}, Lad/c$f;->a(Lad/c$f;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    iget-object v0, p0, Lad/c$c;->d:Lad/c$d;

    iget-object v2, p0, Lad/c$c;->c:Lad/c$f;

    iget-object v3, p0, Lad/c$c;->e:Ljava/lang/String;

    invoke-static {v2, v3}, Lad/c;->c(Lad/c$f;Ljava/lang/String;)LYc/b;

    move-result-object v2

    invoke-interface {v0, v2}, Lad/c$d;->a(LYc/a;)V

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception v0

    iget-object v1, p0, Lad/c$c;->c:Lad/c$f;

    invoke-static {v1}, Lad/c$f;->a(Lad/c$f;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_3
    iget-object v2, p0, Lad/c$c;->c:Lad/c$f;

    invoke-static {v2, v0}, Lad/c$f;->i(Lad/c$f;Ljava/lang/Throwable;)Ljava/lang/Throwable;

    iget-object v2, p0, Lad/c$c;->c:Lad/c$f;

    sget-object v3, Lad/c$g;->Garbage:Lad/c$g;

    invoke-static {v2, v3}, Lad/c$f;->e(Lad/c$f;Lad/c$g;)Lad/c$g;

    iget-object v2, p0, Lad/c$c;->c:Lad/c$f;

    invoke-static {v2}, Lad/c$f;->a(Lad/c$f;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    iget-object v1, p0, Lad/c$c;->d:Lad/c$d;

    invoke-interface {v1, v0}, Lad/c$d;->onError(Ljava/lang/Throwable;)V

    :goto_0
    return-void

    :catchall_2
    move-exception v0

    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw v0
.end method
