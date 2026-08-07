.class public LW5/c$b;
.super Lcom/itsmagic/engine/Activities/Editor/Utils/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LW5/c;->q(LW5/c$i;ILandroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:LW5/d;

.field public final synthetic c:LW5/c$i;

.field public final synthetic d:I

.field public final synthetic e:LW5/c;


# direct methods
.method public constructor <init>(LW5/c;LW5/d;LW5/c$i;I)V
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
            "val$item",
            "val$holder",
            "val$position"
        }
    .end annotation

    iput-object p1, p0, LW5/c$b;->e:LW5/c;

    iput-object p2, p0, LW5/c$b;->b:LW5/d;

    iput-object p3, p0, LW5/c$b;->c:LW5/c$i;

    iput p4, p0, LW5/c$b;->d:I

    invoke-direct {p0}, Lcom/itsmagic/engine/Activities/Editor/Utils/a;-><init>()V

    return-void
.end method


# virtual methods
.method public click(Landroid/view/View;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    iget-object p1, p0, LW5/c$b;->b:LW5/d;

    iget-object p1, p1, LW5/d;->d:LW5/a;

    if-eqz p1, :cond_1

    iget-object p1, p0, LW5/c$b;->c:LW5/c$i;

    iget-object p1, p1, LW5/c$i;->d:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v0, p0, LW5/c$b;->c:LW5/c$i;

    iget-object v0, v0, LW5/c$i;->c:Landroid/widget/ToggleButton;

    invoke-virtual {v0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, -0x2

    iput v0, p1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    iput v0, p1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    :goto_0
    iget-object v0, p0, LW5/c$b;->c:LW5/c$i;

    iget-object v0, v0, LW5/c$i;->d:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, LW5/c$b;->c:LW5/c$i;

    iget-object p1, p1, LW5/c$i;->c:Landroid/widget/ToggleButton;

    invoke-virtual {p1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/ToggleButton;->setChecked(Z)V

    iget-object p1, p0, LW5/c$b;->b:LW5/d;

    iget-object p1, p1, LW5/d;->d:LW5/a;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, LW5/a;->b()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/InspectorEditor;

    move-result-object p1

    iget-object v0, p0, LW5/c$b;->c:LW5/c$i;

    iget-object v0, v0, LW5/c$i;->c:Landroid/widget/ToggleButton;

    invoke-virtual {v0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/InspectorEditor;->i(Z)V

    iget-object p1, p0, LW5/c$b;->b:LW5/d;

    iget-object p1, p1, LW5/d;->d:LW5/a;

    iget-boolean p1, p1, LW5/a;->r:Z

    iget-object v0, p0, LW5/c$b;->c:LW5/c$i;

    iget-object v0, v0, LW5/c$i;->c:Landroid/widget/ToggleButton;

    invoke-virtual {v0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    if-eq p1, v0, :cond_1

    :try_start_0
    iget-object p1, p0, LW5/c$b;->e:LW5/c;

    iget v0, p0, LW5/c$b;->d:I

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    return-void
.end method
