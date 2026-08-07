.class public LQ5/j$e$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LQ5/j$e$a;->a(Lcom/itsmagic/engine/Engines/Sound/Imported/AudioConfig;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/itsmagic/engine/Engines/Sound/Imported/AudioConfig;

.field public final synthetic c:LI7/a;

.field public final synthetic d:LQ5/j$e$a;


# direct methods
.method public constructor <init>(LQ5/j$e$a;Lcom/itsmagic/engine/Engines/Sound/Imported/AudioConfig;LI7/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            "this$1",
            "val$audioConfig",
            "val$loading"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, LQ5/j$e$a$a;->d:LQ5/j$e$a;

    iput-object p2, p0, LQ5/j$e$a$a;->b:Lcom/itsmagic/engine/Engines/Sound/Imported/AudioConfig;

    iput-object p3, p0, LQ5/j$e$a$a;->c:LI7/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    :try_start_0
    iget-object v0, p0, LQ5/j$e$a$a;->d:LQ5/j$e$a;

    iget-object v0, v0, LQ5/j$e$a;->a:LQ5/j$e;

    iget-object v0, v0, LQ5/j$e;->b:Ljava/io/File;

    iget-object v1, p0, LQ5/j$e$a$a;->b:Lcom/itsmagic/engine/Engines/Sound/Imported/AudioConfig;

    invoke-static {v0, v1}, Lcom/itsmagic/engine/Engines/Sound/Imported/AudioConfig;->g(Ljava/io/File;Lcom/itsmagic/engine/Engines/Sound/Imported/AudioConfig;)Z

    iget-object v0, p0, LQ5/j$e$a$a;->d:LQ5/j$e$a;

    iget-object v0, v0, LQ5/j$e$a;->a:LQ5/j$e;

    iget-object v0, v0, LQ5/j$e;->b:Ljava/io/File;

    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Sound/Imported/d;->l(Ljava/io/File;)Lcom/itsmagic/engine/Engines/Sound/Imported/d$b;

    iget-object v0, p0, LQ5/j$e$a$a;->d:LQ5/j$e$a;

    iget-object v0, v0, LQ5/j$e$a;->a:LQ5/j$e;

    iget-object v0, v0, LQ5/j$e;->b:Ljava/io/File;

    invoke-static {v0}, Lad/c;->i(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    iget-object v0, p0, LQ5/j$e$a$a;->c:LI7/a;

    invoke-virtual {v0}, LI7/a;->o1()V

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_0
    move-exception v0

    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lf8/c;->u0(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :goto_1
    return-void

    :goto_2
    iget-object v1, p0, LQ5/j$e$a$a;->c:LI7/a;

    invoke-virtual {v1}, LI7/a;->o1()V

    throw v0
.end method
