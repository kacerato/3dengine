.class public LGd/e$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LQ8/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LGd/e;->g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLQ8/b;Landroid/content/Context;LGd/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Z

.field public final synthetic c:Landroid/content/Context;

.field public final synthetic d:Ljava/lang/String;

.field public final synthetic e:LGd/a;

.field public final synthetic f:Ljava/lang/String;

.field public final synthetic g:LQ8/b;


# direct methods
.method public constructor <init>(Ljava/lang/String;ZLandroid/content/Context;Ljava/lang/String;LGd/a;Ljava/lang/String;LQ8/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "val$outputFolder",
            "val$searchDependency",
            "val$context",
            "val$projectFolder",
            "val$exportInterface",
            "val$zipName",
            "val$listener"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, LGd/e$a;->a:Ljava/lang/String;

    iput-boolean p2, p0, LGd/e$a;->b:Z

    iput-object p3, p0, LGd/e$a;->c:Landroid/content/Context;

    iput-object p4, p0, LGd/e$a;->d:Ljava/lang/String;

    iput-object p5, p0, LGd/e$a;->e:LGd/a;

    iput-object p6, p0, LGd/e$a;->f:Ljava/lang/String;

    iput-object p7, p0, LGd/e$a;->g:LQ8/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, LGd/e$a;->g:LQ8/b;

    if-eqz v0, :cond_0

    invoke-interface {v0}, LQ8/b;->a()V

    :cond_0
    return-void
.end method

.method public b()V
    .locals 0

    return-void
.end method

.method public onSuccess()V
    .locals 8

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, LGd/e$a;->a:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :cond_0
    iget-boolean v0, p0, LGd/e$a;->b:Z

    const/4 v1, 0x0

    const-string v2, "/"

    const-string v3, "/_TEMP/"

    if-eqz v0, :cond_5

    new-instance v0, Lbd/k;

    invoke-direct {v0}, Lbd/k;-><init>()V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, LGd/e$a;->c:Landroid/content/Context;

    invoke-static {v5}, Lcom/itsmagic/engine/Core/Components/ProjectController/a;->Q(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, LGd/e$a;->d:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "//"

    invoke-virtual {v4, v5, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-virtual {v5}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v4

    if-eqz v4, :cond_6

    array-length v5, v4

    :goto_0
    if-ge v1, v5, :cond_2

    aget-object v6, v4, v1

    invoke-virtual {v6}, Ljava/io/File;->isDirectory()Z

    move-result v7

    if-eqz v7, :cond_1

    iget-object v7, p0, LGd/e$a;->c:Landroid/content/Context;

    invoke-static {v0, v6, v7}, LGd/e;->h(Lbd/k;Ljava/io/File;Landroid/content/Context;)V

    goto :goto_1

    :cond_1
    iget-object v7, p0, LGd/e$a;->c:Landroid/content/Context;

    invoke-static {v7, v0, v6}, LGd/e;->a(Landroid/content/Context;Lbd/k;Ljava/io/File;)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    iget-object v0, v0, Lbd/k;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    new-instance v4, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, LGd/e$a;->c:Landroid/content/Context;

    invoke-static {v6}, Lcom/itsmagic/engine/Core/Components/ProjectController/a;->Q(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v5, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, LGd/e$a;->c:Landroid/content/Context;

    invoke-static {v7}, Lcom/itsmagic/engine/Core/Components/ProjectController/a;->Q(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lmd/b;->u(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_4

    invoke-virtual {v5}, Ljava/io/File;->mkdirs()Z

    :cond_4
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_3

    new-instance v5, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, LGd/e$a;->c:Landroid/content/Context;

    invoke-static {v7}, Lcom/itsmagic/engine/Core/Components/ProjectController/a;->Q(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v5, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-static {v5, v4, v1}, LQ8/a;->c(Ljava/io/File;Ljava/io/File;LQ8/b;)Z

    goto :goto_2

    :cond_5
    :try_start_0
    iget-object v0, p0, LGd/e$a;->c:Landroid/content/Context;

    const-string v4, "Dependencies ignored."

    invoke-static {v0, v4, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_6
    iget-object v0, p0, LGd/e$a;->e:LGd/a;

    if-eqz v0, :cond_7

    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lo8/b;->b:Lcom/itsmagic/engine/Core/Components/ProjectController/a;

    iget-object v4, p0, LGd/e$a;->c:Landroid/content/Context;

    invoke-static {v4}, Lcom/itsmagic/engine/Core/Components/ProjectController/a;->Q(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, LGd/e$a;->d:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, p0, LGd/e$a;->e:LGd/a;

    invoke-static {v0, v1}, LGd/e;->b(Ljava/io/File;LGd/a;)V

    :cond_7
    new-instance v0, LGd/f;

    invoke-direct {v0}, LGd/f;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lo8/b;->b:Lcom/itsmagic/engine/Core/Components/ProjectController/a;

    iget-object v4, p0, LGd/e$a;->c:Landroid/content/Context;

    invoke-static {v4}, Lcom/itsmagic/engine/Core/Components/ProjectController/a;->Q(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, LGd/e$a;->a:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, LGd/e$a;->f:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, LGd/f;->m(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, LGd/e$a;->c:Landroid/content/Context;

    invoke-static {v2}, Lcom/itsmagic/engine/Core/Components/ProjectController/a;->Q(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, LGd/e$a$a;

    invoke-direct {v2, p0}, LGd/e$a$a;-><init>(LGd/e$a;)V

    invoke-static {v1, v2}, LR8/a;->c(Ljava/lang/String;LR8/b;)V

    iget-object v1, p0, LGd/e$a;->g:LQ8/b;

    if-eqz v1, :cond_9

    if-eqz v0, :cond_8

    invoke-interface {v1}, LQ8/b;->onSuccess()V

    goto :goto_3

    :cond_8
    invoke-interface {v1}, LQ8/b;->a()V

    :cond_9
    :goto_3
    return-void
.end method
