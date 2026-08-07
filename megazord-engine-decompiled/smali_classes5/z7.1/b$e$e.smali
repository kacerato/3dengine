.class public Lz7/b$e$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lz7/b$e;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lbd/a;

.field public final synthetic c:Lz7/b$e;


# direct methods
.method public constructor <init>(Lz7/b$e;Lbd/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$1",
            "val$phaser"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lz7/b$e$e;->c:Lz7/b$e;

    iput-object p2, p0, Lz7/b$e$e;->b:Lbd/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const/4 v0, 0x0

    :goto_0
    :try_start_0
    iget-object v1, p0, Lz7/b$e$e;->c:Lz7/b$e;

    iget-object v1, v1, Lz7/b$e;->d:Lz7/b;

    invoke-static {v1}, Lz7/b;->d(Lz7/b;)LA7/a;

    move-result-object v1

    invoke-virtual {v1}, LA7/a;->getItemCount()I

    move-result v1

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Lz7/b$e$e;->c:Lz7/b$e;

    iget-object v1, v1, Lz7/b$e;->d:Lz7/b;

    invoke-static {v1}, Lz7/b;->v(Lz7/b;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lz7/b$e$e;->c:Lz7/b$e;

    iget-object v2, v2, Lz7/b$e;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    :goto_1
    iget-object v0, p0, Lz7/b$e$e;->b:Lbd/a;

    invoke-virtual {v0}, Lbd/a;->e()V

    return-void

    :cond_0
    :try_start_1
    iget-object v1, p0, Lz7/b$e$e;->c:Lz7/b$e;

    iget-object v1, v1, Lz7/b$e;->d:Lz7/b;

    invoke-static {v1}, Lz7/b;->d(Lz7/b;)LA7/a;

    move-result-object v1

    invoke-virtual {v1, v0}, LA7/a;->m(I)LB7/b;

    move-result-object v1

    invoke-virtual {v1}, LB7/b;->u()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lz7/b$e$e;->c:Lz7/b$e;

    iget-object v3, v3, Lz7/b$e;->d:Lz7/b;

    invoke-static {v3}, Lz7/b;->k(Lz7/b;)Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v0, p0, Lz7/b$e$e;->c:Lz7/b$e;

    iget-object v0, v0, Lz7/b$e;->d:Lz7/b;

    invoke-static {v0}, Lz7/b;->d(Lz7/b;)LA7/a;

    move-result-object v0

    invoke-virtual {v0, v1}, LA7/a;->x(LB7/b;)V

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lz7/b$e$e;->c:Lz7/b$e;

    iget-object v0, v0, Lz7/b$e;->d:Lz7/b;

    invoke-static {v0}, Lz7/b;->d(Lz7/b;)LA7/a;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, LA7/a;->x(LB7/b;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v0, p0, Lz7/b$e$e;->b:Lbd/a;

    invoke-virtual {v0}, Lbd/a;->e()V

    return-void

    :goto_2
    iget-object v1, p0, Lz7/b$e$e;->b:Lbd/a;

    invoke-virtual {v1}, Lbd/a;->e()V

    throw v0
.end method
