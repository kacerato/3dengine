.class public LW5/h$G;
.super Lcom/itsmagic/engine/Activities/Editor/Utils/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LW5/h;->w(Landroid/widget/LinearLayout;Landroid/view/LayoutInflater;LW5/b;ILandroid/content/Context;LW5/n;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Landroid/widget/LinearLayout;

.field public final synthetic c:Landroid/widget/ToggleButton;

.field public final synthetic d:LW5/b;

.field public final synthetic e:LW5/n;

.field public final synthetic f:I


# direct methods
.method public constructor <init>(Landroid/widget/LinearLayout;Landroid/widget/ToggleButton;LW5/b;LW5/n;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "val$content",
            "val$OC",
            "val$entry",
            "val$upperCommunication",
            "val$positionInAdapter"
        }
    .end annotation

    iput-object p1, p0, LW5/h$G;->b:Landroid/widget/LinearLayout;

    iput-object p2, p0, LW5/h$G;->c:Landroid/widget/ToggleButton;

    iput-object p3, p0, LW5/h$G;->d:LW5/b;

    iput-object p4, p0, LW5/h$G;->e:LW5/n;

    iput p5, p0, LW5/h$G;->f:I

    invoke-direct {p0}, Lcom/itsmagic/engine/Activities/Editor/Utils/a;-><init>()V

    return-void
.end method


# virtual methods
.method public click(Landroid/view/View;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    :try_start_0
    iget-object p1, p0, LW5/h$G;->b:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v0, p0, LW5/h$G;->c:Landroid/widget/ToggleButton;

    invoke-virtual {v0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, -0x2

    iput v0, p1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_0
    iput v1, p1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    :goto_0
    iget-object v0, p0, LW5/h$G;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, LW5/h$G;->c:Landroid/widget/ToggleButton;

    invoke-virtual {p1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/ToggleButton;->setChecked(Z)V

    iget-object p1, p0, LW5/h$G;->d:LW5/b;

    iget-object p1, p1, LW5/b;->Q:LW5/a;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, LW5/a;->b()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/InspectorEditor;

    move-result-object p1

    iget-object v0, p0, LW5/h$G;->c:Landroid/widget/ToggleButton;

    invoke-virtual {v0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/InspectorEditor;->i(Z)V

    iget-object p1, p0, LW5/h$G;->c:Landroid/widget/ToggleButton;

    invoke-virtual {p1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result p1

    iget-object v0, p0, LW5/h$G;->d:LW5/b;

    iget-object v0, v0, LW5/b;->Q:LW5/a;

    iget-boolean v0, v0, LW5/a;->r:Z

    if-eq p1, v0, :cond_1

    iget-object p1, p0, LW5/h$G;->e:LW5/n;

    if-eqz p1, :cond_1

    iget v0, p0, LW5/h$G;->f:I

    invoke-interface {p1, v0}, LW5/n;->refresh(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    :goto_2
    return-void
.end method
