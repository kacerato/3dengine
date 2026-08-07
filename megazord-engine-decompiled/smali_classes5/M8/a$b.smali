.class public LM8/a$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LM8/a;->e(LM8/d;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public b:I

.field public final c:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final synthetic d:Ljava/io/File;

.field public final synthetic e:LM8/d;

.field public final synthetic f:Ljava/io/File;

.field public final synthetic g:LM8/a;


# direct methods
.method public constructor <init>(LM8/a;Ljava/io/File;LM8/d;Ljava/io/File;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$shaderCacheFolder",
            "val$serviceListener",
            "val$avBin"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, LM8/a$b;->g:LM8/a;

    iput-object p2, p0, LM8/a$b;->d:Ljava/io/File;

    iput-object p3, p0, LM8/a$b;->e:LM8/d;

    iput-object p4, p0, LM8/a$b;->f:Ljava/io/File;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object p1, p0, LM8/a$b;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    invoke-static {}, Lf8/c;->t()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, LM8/a$b;->d:Ljava/io/File;

    invoke-static {v0, v1}, LFc/k;->d(Landroid/content/Context;Ljava/io/File;)V

    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/itsmagic/engine/Core/Components/ProjectController/a;->P()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/_VULKAN/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, LM8/a$b;->d:Ljava/io/File;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, LQ8/a;->c(Ljava/io/File;Ljava/io/File;LQ8/b;)Z

    :cond_0
    sget-object v0, Lhc/a$b;->a:Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Dictionary/ShaderTemplates;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Dictionary/ShaderTemplates;->g()Lga/a;

    move-result-object v0

    iget v1, p0, LM8/a$b;->b:I

    invoke-virtual {v0}, Lga/a;->size()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p0, LM8/a$b;->b:I

    iget-object v1, p0, LM8/a$b;->d:Ljava/io/File;

    new-instance v2, LM8/a$b$a;

    invoke-direct {v2, p0}, LM8/a$b$a;-><init>(LM8/a$b;)V

    invoke-static {v1, v2}, LFc/f;->c(Ljava/io/File;LFc/f$c;)V

    iget-object v1, p0, LM8/a$b;->d:Ljava/io/File;

    invoke-static {v1}, Lxc/b;->n(Ljava/io/File;)V

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0}, Lga/a;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-virtual {v0, v1}, Lga/a;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Dictionary/ShaderTemplates$a;

    iget-object v3, v2, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Dictionary/ShaderTemplates$a;->c:Lxc/h;

    iget-object v2, v2, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Dictionary/ShaderTemplates$a;->d:Lxc/i;

    invoke-virtual {v3, v2}, Lxc/h;->C(Lxc/i;)Z

    iget-object v2, p0, LM8/a$b;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    new-instance v2, LM8/a$b$b;

    invoke-direct {v2, p0}, LM8/a$b$b;-><init>(LM8/a$b;)V

    invoke-static {v2}, Lf8/c;->j0(Ljava/lang/Runnable;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-static {}, Lxc/b;->b()V

    invoke-static {}, Lxc/h;->h()V

    iget-object v0, p0, LM8/a$b;->f:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, LM8/a$b;->f:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_2
    new-instance v0, LM8/a$b$c;

    invoke-direct {v0, p0}, LM8/a$b$c;-><init>(LM8/a$b;)V

    invoke-static {v0}, Lf8/c;->j0(Ljava/lang/Runnable;)V

    return-void
.end method
