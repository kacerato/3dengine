.class public Lcom/itsmagic/engine/Activities/Editor/Panels/Files/FilesPanel$e;
.super Lcom/itsmagic/engine/Activities/Editor/Utils/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itsmagic/engine/Activities/Editor/Panels/Files/FilesPanel;->B0()Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/itsmagic/engine/Activities/Editor/Panels/Files/FilesPanel;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Activities/Editor/Panels/Files/FilesPanel;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Files/FilesPanel$e;->b:Lcom/itsmagic/engine/Activities/Editor/Panels/Files/FilesPanel;

    invoke-direct {p0}, Lcom/itsmagic/engine/Activities/Editor/Utils/a;-><init>()V

    return-void
.end method


# virtual methods
.method public click(Landroid/view/View;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    iget-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Files/FilesPanel$e;->b:Lcom/itsmagic/engine/Activities/Editor/Panels/Files/FilesPanel;

    invoke-static {p1}, Lcom/itsmagic/engine/Activities/Editor/Panels/Files/FilesPanel;->o1(Lcom/itsmagic/engine/Activities/Editor/Panels/Files/FilesPanel;)Landroid/view/View;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    invoke-static {}, LI7/a;->q1()LI7/a;

    move-result-object p1

    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/itsmagic/engine/Core/Components/ProjectController/a;->P()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Files/FilesPanel$e;->b:Lcom/itsmagic/engine/Activities/Editor/Panels/Files/FilesPanel;

    invoke-static {v2}, Lcom/itsmagic/engine/Activities/Editor/Panels/Files/FilesPanel;->p1(Lcom/itsmagic/engine/Activities/Editor/Panels/Files/FilesPanel;)Lz7/d;

    move-result-object v2

    invoke-virtual {v2}, Lz7/d;->l()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sget-object v1, LQ5/j;->a:Ljava/io/File;

    if-eqz v1, :cond_2

    new-instance v1, Ljava/io/File;

    sget-object v2, LQ5/j;->a:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    :try_start_0
    sget-object v0, LQ5/j;->a:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lud/a;

    const-string v2, "Cannot copy to the same location"

    const-string v3, "Nao \u00e9 poss\u00edvel copiar para o mesmo local"

    invoke-direct {v0, v2, v3}, Lud/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lf8/c;->w0(Lud/a;)V

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, LQ5/e;

    invoke-direct {v0, p1}, LQ5/e;-><init>(LI7/a;)V

    invoke-static {v0}, Lf8/c;->c0(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    sget-object v0, LQ5/j;->a:Ljava/io/File;

    invoke-static {v0, v1}, LBd/a;->a(Ljava/io/File;Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    sput-object v0, LQ5/j;->a:Ljava/io/File;

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->SOMETHING_WENT_WRONG:LUc/b;

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LUc/b;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lf8/c;->u0(Ljava/lang/String;)V

    :goto_0
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, LQ5/e;

    invoke-direct {v0, p1}, LQ5/e;-><init>(LI7/a;)V

    invoke-static {v0}, Lf8/c;->c0(Ljava/lang/Runnable;)V

    goto :goto_1

    :cond_2
    sget-object v1, LQ5/j;->b:Ljava/io/File;

    if-eqz v1, :cond_4

    new-instance v1, Ljava/io/File;

    sget-object v2, LQ5/j;->b:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    :try_start_1
    sget-object v0, LQ5/j;->b:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Lud/a;

    const-string v2, "Cannot move to the same location"

    const-string v3, "Nao \u00e9 poss\u00edvel mover para o mesmo local"

    invoke-direct {v0, v2, v3}, Lud/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lf8/c;->w0(Lud/a;)V

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, LQ5/e;

    invoke-direct {v0, p1}, LQ5/e;-><init>(LI7/a;)V

    invoke-static {v0}, Lf8/c;->c0(Ljava/lang/Runnable;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return-void

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_3
    sget-object v0, LQ5/j;->b:Ljava/io/File;

    new-instance v2, Lcom/itsmagic/engine/Activities/Editor/Panels/Files/FilesPanel$e$a;

    invoke-direct {v2, p0, p1}, Lcom/itsmagic/engine/Activities/Editor/Panels/Files/FilesPanel$e$a;-><init>(Lcom/itsmagic/engine/Activities/Editor/Panels/Files/FilesPanel$e;LI7/a;)V

    invoke-static {v0, v1, v2}, Lj4/e;->b(Ljava/io/File;Ljava/io/File;Lj4/a;)V

    :cond_4
    :goto_1
    return-void
.end method
