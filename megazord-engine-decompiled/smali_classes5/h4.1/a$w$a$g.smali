.class public Lh4/a$w$a$g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lwd/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lh4/a$w$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lh4/a$w$a;


# direct methods
.method public constructor <init>(Lh4/a$w$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$1"
        }
    .end annotation

    iput-object p1, p0, Lh4/a$w$a$g;->a:Lh4/a$w$a;

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

    const/4 p1, 0x0

    const/4 v0, 0x1

    invoke-static {}, Lh4/a;->m()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v2, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UITouchTrigger;

    invoke-direct {v2}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UITouchTrigger;-><init>()V

    invoke-virtual {v2, v0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UITouchTrigger;->setMultiTouch(Z)V

    new-instance v3, Ljava/util/LinkedList;

    new-instance v4, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;

    const/16 v5, 0xaf

    invoke-direct {v4, v5, v5}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIRect;-><init>(II)V

    new-instance v5, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIPinchDetector;

    invoke-direct {v5}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIPinchDetector;-><init>()V

    const/4 v6, 0x3

    new-array v6, v6, [Lcom/itsmagic/engine/Engines/Engine/ImGUI/BaseComponents/ImGuiComponent;

    aput-object v4, v6, p1

    aput-object v5, v6, v0

    const/4 p1, 0x2

    aput-object v2, v6, p1

    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {v3, p1}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    const-string p1, "PinchDetector"

    invoke-static {p1, v1, v3}, Lf4/b;->g(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Ljava/util/List;)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    move-result-object p1

    new-instance v1, Lh4/a$w$a$g$a;

    invoke-direct {v1, p0, p1}, Lh4/a$w$a$g$a;-><init>(Lh4/a$w$a$g;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V

    invoke-static {v1}, Lc9/a;->I(Ljava/lang/Runnable;)V

    if-eqz p1, :cond_1

    iget-object v1, p0, Lh4/a$w$a$g;->a:Lh4/a$w$a;

    iget-object v1, v1, Lh4/a$w$a;->b:Lh4/a$w;

    iget-object v1, v1, Lh4/a$w;->b:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    if-eqz v1, :cond_1

    invoke-virtual {p1, v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->I1(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V

    iget-object p1, p0, Lh4/a$w$a$g;->a:Lh4/a$w$a;

    iget-object p1, p1, Lh4/a$w$a;->b:Lh4/a$w;

    iget-object p1, p1, Lh4/a$w;->b:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->getEditor()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/InspectorEditor;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/InspectorEditor;->i(Z)V

    goto :goto_0

    :cond_0
    :try_start_0
    invoke-static {}, Lf8/c;->o()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "UIController could not be found!"

    invoke-static {v0, v1, p1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

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
