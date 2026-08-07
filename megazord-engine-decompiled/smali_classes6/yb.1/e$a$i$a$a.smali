.class public Lyb/e$a$i$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LJAVARuntime/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lyb/e$a$i$a;->a(Ljava/io/File;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Ljava/io/File;

.field public final synthetic c:Lyb/e$a$i$a;


# direct methods
.method public constructor <init>(Lyb/e$a$i$a;Ljava/io/File;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$2",
            "val$file"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lyb/e$a$i$a$a;->c:Lyb/e$a$i$a;

    iput-object p2, p0, Lyb/e$a$i$a$a;->b:Ljava/io/File;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lyb/e$a$i$a$a;->b:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/itsmagic/engine/Core/Components/ProjectController/a;->P()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, ""

    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lyb/e$a$i$a$a;->c:Lyb/e$a$i$a;

    iget-object v0, v0, Lyb/e$a$i$a;->a:Lyb/e$a$i;

    iget-object v0, v0, Lyb/e$a$i;->a:Lyb/e$a;

    iget-object v0, v0, Lyb/e$a;->b:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ".go"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmd/b;->o(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lyb/e$a$i$a$a;->c:Lyb/e$a$i$a;

    iget-object v1, v1, Lyb/e$a$i$a;->a:Lyb/e$a$i;

    iget-object v1, v1, Lyb/e$a$i;->a:Lyb/e$a;

    iget-object v1, v1, Lyb/e$a;->b:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    sget-object v2, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component$e;->ObjectLink:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component$e;

    invoke-virtual {v1, v2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->k0(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component$e;)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    move-result-object v1

    check-cast v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Link/ObjectLink;

    if-eqz v1, :cond_0

    invoke-virtual {v1, v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Link/ObjectLink;->setFile(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Link/ObjectLink;

    invoke-direct {v1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Link/ObjectLink;-><init>()V

    invoke-virtual {v1, v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Link/ObjectLink;->setFile(Ljava/lang/String;)V

    iget-object v2, p0, Lyb/e$a$i$a$a;->c:Lyb/e$a$i$a;

    iget-object v2, v2, Lyb/e$a$i$a;->a:Lyb/e$a$i;

    iget-object v2, v2, Lyb/e$a$i;->a:Lyb/e$a;

    iget-object v2, v2, Lyb/e$a;->b:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-virtual {v2, v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->D(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;)V

    :goto_0
    iget-object v1, p0, Lyb/e$a$i$a$a;->c:Lyb/e$a$i$a;

    iget-object v1, v1, Lyb/e$a$i$a;->a:Lyb/e$a$i;

    iget-object v1, v1, Lyb/e$a$i;->a:Lyb/e$a;

    iget-object v1, v1, Lyb/e$a;->b:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->A1()Lcom/google/gson/JsonElement;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lyb/e$a$i$a$a;->c:Lyb/e$a$i$a;

    iget-object v2, v2, Lyb/e$a$i$a;->a:Lyb/e$a$i;

    iget-object v2, v2, Lyb/e$a$i;->a:Lyb/e$a;

    iget-object v2, v2, Lyb/e$a;->d:Landroid/content/Context;

    invoke-static {v0, v1, v2}, Lp8/a;->b(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Z

    invoke-static {v0}, Lzb/c;->d(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Object "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lyb/e$a$i$a$a;->c:Lyb/e$a$i$a;

    iget-object v2, v2, Lyb/e$a$i$a;->a:Lyb/e$a$i;

    iget-object v2, v2, Lyb/e$a$i;->a:Lyb/e$a;

    iget-object v2, v2, Lyb/e$a;->b:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " exported to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lf8/c;->v0(Ljava/lang/String;Z)V

    invoke-static {}, Lu8/b;->l()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lo8/b;->h:Lt8/f;

    invoke-static {}, Lf8/c;->o()Landroid/app/Activity;

    move-result-object v1

    new-instance v2, Lyb/e$a$i$a$a$a;

    invoke-direct {v2, p0}, Lyb/e$a$i$a$a$a;-><init>(Lyb/e$a$i$a$a;)V

    invoke-virtual {v0, v1, v2}, Lt8/f;->g(Landroid/app/Activity;Lt8/g;)V

    :cond_1
    return-void
.end method
