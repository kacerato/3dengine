.class public LY7/e;
.super LY7/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LY7/e$c;,
        LY7/e$d;
    }
.end annotation


# instance fields
.field public final a:LY7/e$c;


# direct methods
.method public constructor <init>(LY7/e$c;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    invoke-direct {p0}, LY7/a;-><init>()V

    iput-object p1, p0, LY7/e;->a:LY7/e$c;

    return-void
.end method

.method public static synthetic b(Lcom/itsmagic/engine/Activities/Editor/Utils/UIComponents/CustomCheckBox/CustomDualModeCheckBox$b;)LY7/e$d;
    .locals 0

    invoke-static {p0}, LY7/e;->d(Lcom/itsmagic/engine/Activities/Editor/Utils/UIComponents/CustomCheckBox/CustomDualModeCheckBox$b;)LY7/e$d;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(LY7/e;)LY7/e$c;
    .locals 0

    iget-object p0, p0, LY7/e;->a:LY7/e$c;

    return-object p0
.end method

.method public static d(Lcom/itsmagic/engine/Activities/Editor/Utils/UIComponents/CustomCheckBox/CustomDualModeCheckBox$b;)LY7/e$d;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation

    if-nez p0, :cond_0

    sget-object p0, LY7/e$d;->Unselected:LY7/e$d;

    return-object p0

    :cond_0
    sget-object v0, LY7/e$b;->a:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    sget-object p0, LY7/e$d;->Unselected:LY7/e$d;

    return-object p0

    :cond_1
    sget-object p0, LY7/e$d;->FullSelected:LY7/e$d;

    return-object p0

    :cond_2
    sget-object p0, LY7/e$d;->PartiallySelected:LY7/e$d;

    return-object p0
.end method

.method public static e(LY7/e$d;)Lcom/itsmagic/engine/Activities/Editor/Utils/UIComponents/CustomCheckBox/CustomDualModeCheckBox$b;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation

    if-nez p0, :cond_0

    sget-object p0, Lcom/itsmagic/engine/Activities/Editor/Utils/UIComponents/CustomCheckBox/CustomDualModeCheckBox$b;->Unselected:Lcom/itsmagic/engine/Activities/Editor/Utils/UIComponents/CustomCheckBox/CustomDualModeCheckBox$b;

    return-object p0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    sget-object p0, Lcom/itsmagic/engine/Activities/Editor/Utils/UIComponents/CustomCheckBox/CustomDualModeCheckBox$b;->Unselected:Lcom/itsmagic/engine/Activities/Editor/Utils/UIComponents/CustomCheckBox/CustomDualModeCheckBox$b;

    return-object p0

    :cond_1
    sget-object p0, Lcom/itsmagic/engine/Activities/Editor/Utils/UIComponents/CustomCheckBox/CustomDualModeCheckBox$b;->FullSelected:Lcom/itsmagic/engine/Activities/Editor/Utils/UIComponents/CustomCheckBox/CustomDualModeCheckBox$b;

    return-object p0

    :cond_2
    sget-object p0, Lcom/itsmagic/engine/Activities/Editor/Utils/UIComponents/CustomCheckBox/CustomDualModeCheckBox$b;->PartiallySelected:Lcom/itsmagic/engine/Activities/Editor/Utils/UIComponents/CustomCheckBox/CustomDualModeCheckBox$b;

    return-object p0
.end method


# virtual methods
.method public a(Landroid/view/LayoutInflater;Landroid/content/Context;Landroid/widget/LinearLayout;I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "layoutInflater",
            "context",
            "parent",
            "height"
        }
    .end annotation

    const p2, 0x7f0c009f

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f09053d

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/itsmagic/engine/Activities/Editor/Utils/UIComponents/CustomCheckBox/CustomDualModeCheckBox;

    invoke-virtual {p3, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p3

    check-cast p3, Landroid/widget/LinearLayout$LayoutParams;

    iput p4, p3, Landroid/widget/LinearLayout$LayoutParams;->height:I

    iput p4, p3, Landroid/widget/LinearLayout$LayoutParams;->width:I

    iget-object p4, p0, LY7/e;->a:LY7/e$c;

    invoke-interface {p4}, LY7/e$c;->getState()LY7/e$d;

    move-result-object p4

    invoke-static {p4}, LY7/e;->e(LY7/e$d;)Lcom/itsmagic/engine/Activities/Editor/Utils/UIComponents/CustomCheckBox/CustomDualModeCheckBox$b;

    move-result-object p4

    invoke-virtual {p2, p4}, Lcom/itsmagic/engine/Activities/Editor/Utils/UIComponents/CustomCheckBox/CustomDualModeCheckBox;->setState(Lcom/itsmagic/engine/Activities/Editor/Utils/UIComponents/CustomCheckBox/CustomDualModeCheckBox$b;)V

    new-instance p4, LY7/e$a;

    invoke-direct {p4, p0}, LY7/e$a;-><init>(LY7/e;)V

    invoke-virtual {p2, p4}, Lcom/itsmagic/engine/Activities/Editor/Utils/UIComponents/CustomCheckBox/CustomDualModeCheckBox;->setOnStateChangeListener(Lcom/itsmagic/engine/Activities/Editor/Utils/UIComponents/CustomCheckBox/CustomDualModeCheckBox$a;)V

    invoke-virtual {p1, p3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
