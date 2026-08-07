.class public LQ5/j$l0$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LQ5/j$l0$a;->a(LI7/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:LI7/a;

.field public final synthetic c:LQ5/j$l0$a;


# direct methods
.method public constructor <init>(LQ5/j$l0$a;LI7/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$1",
            "val$loadingBarPanel"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, LQ5/j$l0$a$a;->c:LQ5/j$l0$a;

    iput-object p2, p0, LQ5/j$l0$a$a;->b:LI7/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, LQ5/j$l0$a$a;->c:LQ5/j$l0$a;

    iget-object v1, v1, LQ5/j$l0$a;->a:LQ5/j$l0;

    iget-object v1, v1, LQ5/j$l0;->a:Ljava/lang/String;

    invoke-static {v1}, Lmd/b;->O(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".meta/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, LQ5/j$l0$a$a;->c:LQ5/j$l0$a;

    iget-object v3, v3, LQ5/j$l0$a;->a:LQ5/j$l0;

    iget-object v3, v3, LQ5/j$l0;->b:Landroid/content/Context;

    invoke-static {v3}, Lcom/itsmagic/engine/Core/Components/ProjectController/a;->Q(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, LQ5/j$l0$a$a$a;

    invoke-direct {v0, p0}, LQ5/j$l0$a$a$a;-><init>(LQ5/j$l0$a$a;)V

    invoke-static {v1, v0}, LR8/a;->a(Ljava/io/File;LR8/b;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, LQ5/j$l0$a$a$b;

    invoke-direct {v0, p0}, LQ5/j$l0$a$a$b;-><init>(LQ5/j$l0$a$a;)V

    invoke-static {v0}, Lf8/c;->j0(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    const-string v0, "Failed"

    invoke-static {v0}, Lf8/c;->u0(Ljava/lang/String;)V

    iget-object v0, p0, LQ5/j$l0$a$a;->b:LI7/a;

    invoke-virtual {v0}, LI7/a;->o1()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, LQ5/j$l0$a$a;->b:LI7/a;

    invoke-virtual {v0}, LI7/a;->o1()V

    :goto_0
    return-void
.end method
