.class public LM8/c$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LAd/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LM8/c$a;->a(Lr7/g;Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lr7/g;

.field public final synthetic b:LM8/c$a;


# direct methods
.method public constructor <init>(LM8/c$a;Lr7/g;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$1",
            "val$popup"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, LM8/c$a$a;->b:LM8/c$a;

    iput-object p2, p0, LM8/c$a$a;->a:Lr7/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "result"
        }
    .end annotation

    invoke-static {p1}, LAd/c;->h(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const-string v0, "apktoken"

    invoke-static {p1, v0}, LAd/c;->g(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, LM8/c$a$a;->b:LM8/c$a;

    iget-object v1, v0, LM8/c$a;->c:LM8/c;

    iget-object v1, v1, LM8/c;->a:Lcom/itsmagic/engine/Core/Components/PackageBuilder/BuilderUtils/PendingCompilation;

    const/4 v2, 0x1

    iput v2, v1, Lcom/itsmagic/engine/Core/Components/PackageBuilder/BuilderUtils/PendingCompilation;->status:I

    iput-object p1, v1, Lcom/itsmagic/engine/Core/Components/PackageBuilder/BuilderUtils/PendingCompilation;->apkToken:Ljava/lang/String;

    iget-object p1, v0, LM8/c$a;->b:Lcom/itsmagic/engine/Activities/Editor/Panels/ExportProject/Utils/BuildConfigs;

    iget v0, p1, Lcom/itsmagic/engine/Activities/Editor/Panels/ExportProject/Utils/BuildConfigs;->buildType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    iget-object p1, p1, Lcom/itsmagic/engine/Activities/Editor/Panels/ExportProject/Utils/BuildConfigs;->keyStorePath:Ljava/lang/String;

    if-eqz p1, :cond_1

    new-instance p1, Ljava/io/File;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, LM8/c$a$a;->b:LM8/c$a;

    iget-object v1, v1, LM8/c$a;->a:Landroid/app/Activity;

    invoke-static {v1}, Lcom/itsmagic/engine/Core/Components/ProjectController/a;->Q(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, LM8/c$a$a;->b:LM8/c$a;

    iget-object v1, v1, LM8/c$a;->b:Lcom/itsmagic/engine/Activities/Editor/Panels/ExportProject/Utils/BuildConfigs;

    iget-object v1, v1, Lcom/itsmagic/engine/Activities/Editor/Panels/ExportProject/Utils/BuildConfigs;->keyStorePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lxd/j;

    new-instance v1, LM8/c$a$a$a;

    invoke-direct {v1, p0}, LM8/c$a$a$a;-><init>(LM8/c$a$a;)V

    invoke-direct {v0, v1}, Lxd/j;-><init>(LAd/d;)V

    new-instance v1, LAd/a;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    const-string v2, "backend/view/compiller/"

    const-string v3, "uploadKS.php"

    invoke-static {v2, v3}, LZ8/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "apktoken="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, LM8/c$a$a;->b:LM8/c$a;

    iget-object v4, v4, LM8/c$a;->c:LM8/c;

    iget-object v4, v4, LM8/c;->a:Lcom/itsmagic/engine/Core/Components/PackageBuilder/BuilderUtils/PendingCompilation;

    iget-object v4, v4, Lcom/itsmagic/engine/Core/Components/PackageBuilder/BuilderUtils/PendingCompilation;->apkToken:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v1, p1, v2, v3, v4}, LAd/a;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;LM8/d;)V

    filled-new-array {v1}, [LAd/a;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    :cond_0
    iget-object p1, p0, LM8/c$a$a;->a:Lr7/g;

    invoke-virtual {p1}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->Q0()V

    iget-object p1, p0, LM8/c$a$a;->b:LM8/c$a;

    iget-object v0, p1, LM8/c$a;->c:LM8/c;

    iget-object p1, p1, LM8/c$a;->b:Lcom/itsmagic/engine/Activities/Editor/Panels/ExportProject/Utils/BuildConfigs;

    iget-object p1, p1, Lcom/itsmagic/engine/Activities/Editor/Panels/ExportProject/Utils/BuildConfigs;->worldZero:Ljava/lang/String;

    invoke-virtual {v0, p1}, LM8/c;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, LM8/c$a$a;->a:Lr7/g;

    invoke-virtual {p1}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->Q0()V

    iget-object p1, p0, LM8/c$a$a;->b:LM8/c$a;

    iget-object v0, p1, LM8/c$a;->c:LM8/c;

    iget-object p1, p1, LM8/c$a;->b:Lcom/itsmagic/engine/Activities/Editor/Panels/ExportProject/Utils/BuildConfigs;

    iget-object p1, p1, Lcom/itsmagic/engine/Activities/Editor/Panels/ExportProject/Utils/BuildConfigs;->worldZero:Ljava/lang/String;

    invoke-virtual {v0, p1}, LM8/c;->a(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "result"
        }
    .end annotation

    new-instance v0, Lr7/d;

    invoke-direct {v0}, Lr7/d;-><init>()V

    iget-object v1, p0, LM8/c$a$a;->b:LM8/c$a;

    iget-object v1, v1, LM8/c$a;->a:Landroid/app/Activity;

    invoke-static {p1, v1, v0}, Lxd/f;->a(Ljava/lang/String;Landroid/content/Context;Lr7/d;)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    invoke-static {p1}, LAd/c;->h(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const-string v0, "error_code"

    invoke-static {p1, v0}, LAd/c;->g(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "error_message"

    invoke-static {p1, v1}, LAd/c;->g(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "0x0005"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string p1, "Ops!"

    const-string v0, "Invalid credentials"

    invoke-static {p1, v0}, Lr7/i;->x1(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v1, "0x0002"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "Sorry"

    if-eqz v1, :cond_1

    const-string p1, "Seems like you have not enough coins"

    invoke-static {v2, p1}, Lr7/i;->x1(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v1, "0x0004"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string p1, "Wait the pending compilation to finish"

    invoke-static {v2, p1}, Lr7/i;->x1(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string v1, "0x0007"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance p1, Lud/a;

    const-string v0, "Unsupported app version, please update"

    const-string v1, "Seu app n\u00e3o \u00e9 suportado, por favor atualize"

    invoke-direct {p1, v0, v1}, Lud/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lud/a;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lr7/i;->x1(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    invoke-static {v2, p1}, Lr7/i;->x1(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    :goto_0
    return-void
.end method
