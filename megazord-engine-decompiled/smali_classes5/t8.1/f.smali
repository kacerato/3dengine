.class public Lt8/f;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Lt8/b;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public b:Lt8/a;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public b(Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "fileName"
        }
    .end annotation

    invoke-static {}, Lf8/c;->o()Landroid/app/Activity;

    move-result-object v0

    sput-object p1, LU7/c;->d:Ljava/lang/String;

    invoke-static {}, Lu8/b;->l()Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    :try_start_0
    new-instance v1, Lud/a;

    const-string v2, "This file was downloaded from the marketplace in another project, to prevent copyright issues the terms and conditions of the marketplace do not allow re-licensing of the file, please re-download the package in this project. Don\'t copy files download from marketplace to another project."

    const-string v3, "Esse arquivo foi baixado da marketplace em outro projeto, para previnir problemas de direitos autorais os termos e condi\u00e7\u00f5es da marketplace n\u00e3o permite re-licenciamento do arquivo, por favor baixe novamente o pacote nesse projeto, n\u00e3o copie arquivos baixados da marketplace de um projeto para outro."

    invoke-direct {v1, v2, v3}, Lud/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Lud/a;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, LU7/d;->c(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Landroid/content/Intent;

    const-class v1, LU7/c;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "tittle",
            "message"
        }
    .end annotation

    if-eqz p1, :cond_0

    :try_start_0
    invoke-static {p2, p3}, LU7/d;->c(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p2, Landroid/content/Intent;

    const-class p3, LU7/c;

    invoke-direct {p2, p1, p3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public d(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;LU7/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "tittle",
            "message",
            "listener"
        }
    .end annotation

    if-eqz p1, :cond_0

    :try_start_0
    invoke-static {p2, p3}, LU7/d;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p4}, LU7/c;->b(LU7/b;)V

    new-instance p2, Landroid/content/Intent;

    const-class p3, LU7/c;

    invoke-direct {p2, p1, p3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public e(Ljava/lang/String;Landroid/app/Activity;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "url",
            "activity"
        }
    .end annotation

    if-eqz p2, :cond_1

    const-string v0, "http://"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "https://"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p2, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_1
    const-string p1, "Trying to open address, but there\'s not an activity"

    invoke-static {p1}, Ld5/d;->a2(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public f(Landroid/app/Activity;Lt8/g;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "activity",
            "saveListener"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lt8/f;->g(Landroid/app/Activity;Lt8/g;)V

    return-void
.end method

.method public g(Landroid/app/Activity;Lt8/g;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "activity",
            "saveListener"
        }
    .end annotation

    invoke-static {}, Lcom/itsmagic/engine/Engines/Engine/World/a;->A()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lud/a;

    const-string v1, "Can\'t save project while world is loading."

    const-string v2, "O mundo n\u00e3o pode ser salvo enquanto o mundo estiver carregando."

    invoke-direct {v0, v1, v2}, Lud/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lf8/c;->w0(Lud/a;)V

    new-instance v0, Lt8/f$a;

    invoke-direct {v0, p0, p2, p1}, Lt8/f$a;-><init>(Lt8/f;Lt8/g;Landroid/app/Activity;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    invoke-static {}, Lv8/j;->W()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lud/a;

    const-string v1, "Can\'t save project while scripts are compiling."

    const-string v2, "O mundo n\u00e3o pode ser salvo enquanto os scripts estiverem compilando."

    invoke-direct {v0, v1, v2}, Lud/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lf8/c;->w0(Lud/a;)V

    new-instance v0, Lt8/f$b;

    invoke-direct {v0, p0, p2, p1}, Lt8/f$b;-><init>(Lt8/f;Lt8/g;Landroid/app/Activity;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_1
    invoke-static {}, Lu8/b;->l()Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/itsmagic/engine/Engines/Engine/World/a;->c:Lcom/itsmagic/engine/Engines/Engine/World/World;

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/itsmagic/engine/Engines/Engine/World/World;->c:Z

    new-instance v1, Lt8/f$c;

    invoke-direct {v1, p0, p1, p2}, Lt8/f$c;-><init>(Lt8/f;Landroid/app/Activity;Lt8/g;)V

    iput-object v1, v0, Lcom/itsmagic/engine/Engines/Engine/World/World;->d:Lec/g;

    goto :goto_0

    :cond_2
    if-eqz p2, :cond_4

    invoke-interface {p2, p1}, Lt8/g;->a(Landroid/app/Activity;)V

    goto :goto_0

    :cond_3
    new-instance v0, Lud/a;

    const-string v1, "Can\'t save project while playing."

    const-string v2, "O mundo n\u00e3o pode ser salvo durante a execu\u00e7\u00e3o do jogo"

    invoke-direct {v0, v1, v2}, Lud/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lf8/c;->w0(Lud/a;)V

    new-instance v0, Lt8/f$d;

    invoke-direct {v0, p0, p2, p1}, Lt8/f$d;-><init>(Lt8/f;Lt8/g;Landroid/app/Activity;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_4
    :goto_0
    return-void
.end method

.method public h(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "gameObject"
        }
    .end annotation

    sget-object v0, Lo8/b;->i:Ls8/a;

    iget-object v0, v0, Ls8/a;->a:Ls8/b;

    iget-object v0, v0, Ls8/b;->a:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    const/4 v1, 0x1

    if-eq p1, v0, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz v0, :cond_1

    if-eqz v2, :cond_1

    invoke-static {}, Lf8/c;->t()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->deflateTopbarElements(Landroid/content/Context;)V

    :cond_1
    if-eqz p1, :cond_2

    iget-object v0, p1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->k:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    if-eqz v0, :cond_2

    move-object p1, v0

    :cond_2
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->O0()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    move-result-object v0

    :goto_1
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->getEditor()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/InspectorEditor;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/InspectorEditor;->i(Z)V

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->O0()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    move-result-object v0

    goto :goto_1

    :cond_3
    sget-object v0, Lo8/b;->i:Ls8/a;

    iget-object v1, v0, Ls8/a;->a:Ls8/b;

    iput-object p1, v1, Ls8/b;->a:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    if-eqz p1, :cond_5

    if-eqz v2, :cond_4

    invoke-static {}, Lf8/c;->t()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->inflateTopbarElements(Landroid/content/Context;)V

    :cond_4
    iget-object v1, v0, Ls8/a;->a:Ls8/b;

    sget-object v2, Ls8/b$a;->GameObject:Ls8/b$a;

    invoke-virtual {v1, v2}, Ls8/b;->d(Ls8/b$a;)V

    goto :goto_2

    :cond_5
    sget-object v2, Ls8/b$a;->Empty:Ls8/b$a;

    invoke-virtual {v1, v2}, Ls8/b;->d(Ls8/b$a;)V

    :goto_2
    iget-object v0, v0, Ls8/a;->a:Ls8/b;

    invoke-virtual {v0}, Ls8/b;->b()Ls8/b$a;

    move-result-object v0

    sget-object v1, Ls8/b$a;->Empty:Ls8/b$a;

    if-ne v0, v1, :cond_6

    invoke-static {}, LU5/a;->A1()V

    goto :goto_3

    :cond_6
    invoke-static {p1}, LU5/a;->y1(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V

    :goto_3
    return-void
.end method
