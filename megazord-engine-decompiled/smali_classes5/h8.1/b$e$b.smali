.class public Lh8/b$e$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lh8/b$j;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lh8/b$e;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/util/HashSet;

.field public final synthetic b:Lbd/a;

.field public final synthetic c:Lh8/b$e;


# direct methods
.method public constructor <init>(Lh8/b$e;Ljava/util/HashSet;Lbd/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            "this$1",
            "val$searchIds",
            "val$phaser"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lh8/b$e$b;->c:Lh8/b$e;

    iput-object p2, p0, Lh8/b$e$b;->a:Ljava/util/HashSet;

    iput-object p3, p0, Lh8/b$e$b;->b:Lbd/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/io/File;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "file"
        }
    .end annotation

    iget-object v0, p0, Lh8/b$e$b;->c:Lh8/b$e;

    iget-object v0, v0, Lh8/b$e;->d:Lh8/b;

    invoke-static {v0}, Lh8/b;->g(Lh8/b;)Ln8/c;

    move-result-object v0

    invoke-interface {v0, p1}, Ln8/c;->a(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lh8/b$e$b;->c:Lh8/b$e;

    iget-object v1, v1, Lh8/b$e;->d:Lh8/b;

    invoke-static {v1}, Lh8/b;->e(Lh8/b;)Ln8/d;

    move-result-object v1

    invoke-virtual {v1}, Ln8/d;->f()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lh8/b$e$b;->c:Lh8/b$e;

    iget-object v1, v1, Lh8/b$e;->d:Lh8/b;

    invoke-static {v1}, Lh8/b;->e(Lh8/b;)Ln8/d;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Ln8/d;->g(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lh8/b$e$b;->a:Ljava/util/HashSet;

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lh8/b$e$b;->a:Ljava/util/HashSet;

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_1
    iget-object v0, p0, Lh8/b$e$b;->b:Lbd/a;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/Phaser;->bulkRegister(I)I

    iget-object v0, p0, Lh8/b$e$b;->c:Lh8/b$e;

    iget-object v0, v0, Lh8/b$e;->d:Lh8/b;

    iget-object v1, p0, Lh8/b$e$b;->b:Lbd/a;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lz7/c;

    invoke-direct {v2, v1}, Lz7/c;-><init>(Lbd/a;)V

    invoke-static {v0, p1, v2}, Lh8/b;->h(Lh8/b;Ljava/io/File;Ljava/lang/Runnable;)V

    iget-object p1, p0, Lh8/b$e$b;->b:Lbd/a;

    const-wide/16 v0, 0x2710

    invoke-virtual {p1, v0, v1}, Lbd/a;->b(J)V

    :cond_2
    return-void
.end method
