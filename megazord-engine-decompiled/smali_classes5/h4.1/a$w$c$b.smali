.class public Lh4/a$w$c$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lwd/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lh4/a$w$c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lh4/a$w$c;


# direct methods
.method public constructor <init>(Lh4/a$w$c;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$1"
        }
    .end annotation

    iput-object p1, p0, Lh4/a$w$c$b;->a:Lh4/a$w$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSelected(Landroid/view/View;)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    const/4 p1, 0x1

    const/4 v0, 0x0

    invoke-static {}, Lh4/a;->m()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v2, Ljava/util/LinkedList;

    new-instance v3, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;

    invoke-direct {v3}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;-><init>()V

    new-instance v4, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Layouts/UIHorizontalLayout;

    invoke-direct {v4}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Layouts/UIHorizontalLayout;-><init>()V

    new-instance v5, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIImage;

    invoke-direct {v5}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIImage;-><init>()V

    const/4 v6, 0x3

    new-array v6, v6, [Lcom/itsmagic/engine/Engines/Engine/ImGUI/BaseComponents/ImGuiComponent;

    aput-object v3, v6, v0

    aput-object v4, v6, p1

    const/4 v0, 0x2

    aput-object v5, v6, v0

    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    const-string v0, "Horizontal layout"

    invoke-static {v0, v1, v2}, Lf4/b;->g(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Ljava/util/List;)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    move-result-object v0

    new-instance v1, Lh4/a$w$c$b$a;

    invoke-direct {v1, p0, v0}, Lh4/a$w$c$b$a;-><init>(Lh4/a$w$c$b;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V

    invoke-static {v1}, Lc9/a;->I(Ljava/lang/Runnable;)V

    if-eqz v0, :cond_1

    iget-object v1, p0, Lh4/a$w$c$b;->a:Lh4/a$w$c;

    iget-object v1, v1, Lh4/a$w$c;->b:Lh4/a$w;

    iget-object v1, v1, Lh4/a$w;->b:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    if-eqz v1, :cond_1

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->I1(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V

    iget-object v0, p0, Lh4/a$w$c$b;->a:Lh4/a$w$c;

    iget-object v0, v0, Lh4/a$w$c;->b:Lh4/a$w;

    iget-object v0, v0, Lh4/a$w;->b:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->getEditor()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/InspectorEditor;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/InspectorEditor;->i(Z)V

    goto :goto_0

    :cond_0
    :try_start_0
    invoke-static {}, Lf8/c;->o()Landroid/app/Activity;

    move-result-object p1

    const-string v1, "UIController could not be found!"

    invoke-static {p1, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method
