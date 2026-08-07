.class public Ln7/a;
.super Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;
.source "SourceFile"


# static fields
.field public static final j0:I = 0x12c

.field public static final k0:Ljava/lang/String; = "ConfirmEmailPanel"


# instance fields
.field public final X:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ln7/d;",
            ">;"
        }
    .end annotation
.end field

.field public Y:I

.field public Z:Landroid/widget/Button;

.field public a0:Landroid/widget/Button;

.field public b0:Landroid/widget/LinearLayout;

.field public c0:Landroid/view/View;

.field public d0:Landroid/view/View;

.field public e0:Landroid/widget/TextView;

.field public f0:Ln7/d;

.field public g0:Ljava/lang/String;

.field public h0:Z

.field public i0:Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "email"
        }
    .end annotation

    invoke-direct {p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;-><init>()V

    new-instance v0, Ln7/a$a;

    invoke-direct {v0, p0}, Ln7/a$a;-><init>(Ln7/a;)V

    iput-object v0, p0, Ln7/a;->X:Ljava/util/List;

    const/4 v0, 0x0

    iput v0, p0, Ln7/a;->Y:I

    iput-object p1, p0, Ln7/a;->g0:Ljava/lang/String;

    return-void
.end method

.method public static synthetic o1(Ln7/a;)I
    .locals 0

    iget p0, p0, Ln7/a;->Y:I

    return p0
.end method

.method public static synthetic p1(Ln7/a;I)I
    .locals 0

    iput p1, p0, Ln7/a;->Y:I

    return p1
.end method

.method public static synthetic q1(Ln7/a;)I
    .locals 2

    iget v0, p0, Ln7/a;->Y:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Ln7/a;->Y:I

    return v0
.end method

.method public static synthetic r1(Ln7/a;)I
    .locals 2

    iget v0, p0, Ln7/a;->Y:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Ln7/a;->Y:I

    return v0
.end method

.method public static synthetic s1(Ln7/a;)V
    .locals 0

    invoke-direct {p0}, Ln7/a;->v1()V

    return-void
.end method

.method public static synthetic t1(Ln7/a;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Ln7/a;->X:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic u1(Ln7/a;)Landroid/widget/Button;
    .locals 0

    iget-object p0, p0, Ln7/a;->a0:Landroid/widget/Button;

    return-object p0
.end method

.method private v1()V
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetTextI18n"
        }
    .end annotation

    iget-object v0, p0, Ln7/a;->f0:Ln7/d;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ln7/d;->g()V

    iget-object v0, p0, Ln7/a;->f0:Ln7/d;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ln7/d;->j(Ln7/c;)V

    iput-object v1, p0, Ln7/a;->f0:Ln7/d;

    :cond_0
    iget v0, p0, Ln7/a;->Y:I

    if-lez v0, :cond_1

    iget-object v0, p0, Ln7/a;->Z:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Ln7/a;->Z:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    iget-object v0, p0, Ln7/a;->b0:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    iget-object v0, p0, Ln7/a;->X:Ljava/util/List;

    iget v1, p0, Ln7/a;->Y:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ln7/d;

    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->A()Landroid/app/Activity;

    move-result-object v1

    new-instance v2, Ln7/a$f;

    invoke-direct {v2, p0, v1}, Ln7/a$f;-><init>(Ln7/a;Landroid/app/Activity;)V

    invoke-virtual {v0, v2}, Ln7/d;->j(Ln7/c;)V

    invoke-virtual {v0}, Ln7/d;->f()Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Ln7/a;->b0:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v1, p0, Ln7/a;->e0:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->ASSISTANCE_EXPORT_STAGE:LUc/b;

    invoke-static {v3}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LUc/b;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Ln7/a;->Y:I

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Ln7/a;->X:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iput-object v0, p0, Ln7/a;->f0:Ln7/d;

    return-void
.end method

.method public static x1(Ljava/lang/String;)Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "email"
        }
    .end annotation

    new-instance v0, Ln7/a;

    invoke-direct {v0, p0}, Ln7/a;-><init>(Ljava/lang/String;)V

    const/16 p0, 0x1c2

    invoke-static {p0}, Lf8/c;->g(I)F

    move-result p0

    const/16 v1, 0x12c

    invoke-static {v1}, Lf8/c;->f(I)F

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float v3, p0, v2

    const/high16 v4, 0x3f000000    # 0.5f

    sub-float v3, v4, v3

    div-float v2, v1, v2

    sub-float/2addr v4, v2

    invoke-static {v0, v3, v4, p0, v1}, LL4/a;->n(Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;FFFF)Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;

    move-result-object p0

    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->S()Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;

    iput-object p0, v0, Ln7/a;->i0:Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;

    return-object p0
.end method


# virtual methods
.method public B0()Landroid/view/View;
    .locals 3

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->j:Landroid/view/LayoutInflater;

    const v1, 0x7f0c005c

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f090159

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Ln7/a;->b0:Landroid/widget/LinearLayout;

    const v1, 0x7f0904a1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Ln7/a;->e0:Landroid/widget/TextView;

    const v1, 0x7f09052f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    sget-object v2, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->CONFIRM_EMAIL:LUc/b;

    invoke-static {v2}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LUc/b;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v1, 0x7f090533

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Ln7/a;->c0:Landroid/view/View;

    const v1, 0x7f0900e4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Ln7/a;->d0:Landroid/view/View;

    const v1, 0x7f0900c9

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Ln7/a;->Z:Landroid/widget/Button;

    new-instance v2, Ln7/a$b;

    invoke-direct {v2, p0}, Ln7/a$b;-><init>(Ln7/a;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Ln7/a;->Z:Landroid/widget/Button;

    sget-object v2, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->ASSISTANCE_EXPORT_BACK:LUc/b;

    invoke-static {v2}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LUc/b;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v1, 0x7f09033b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Ln7/a;->a0:Landroid/widget/Button;

    new-instance v2, Ln7/a$c;

    invoke-direct {v2, p0}, Ln7/a$c;-><init>(Ln7/a;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Ln7/a;->a0:Landroid/widget/Button;

    sget-object v2, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->ASSISTANCE_EXPORT_NEXT:LUc/b;

    invoke-static {v2}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LUc/b;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v1, 0x7f0900fc

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Ln7/a$d;

    invoke-direct {v2, p0}, Ln7/a$d;-><init>(Ln7/a;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v1, Ln7/a$e;

    invoke-direct {v1, p0}, Ln7/a$e;-><init>(Ln7/a;)V

    invoke-static {v1}, Lcom/itsmagic/engine/Activities/Editor/Utils/q$f;->a(Lcom/itsmagic/engine/Activities/Editor/Utils/q$f$k;)V

    return-object v0
.end method

.method public F0()V
    .locals 0

    invoke-super {p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->F0()V

    return-void
.end method

.method public m1()V
    .locals 3

    invoke-super {p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->m1()V

    iget-object v0, p0, Ln7/a;->f0:Ln7/d;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ln7/d;->k()V

    invoke-static {}, LKc/a;->q()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lf8/c;->D()Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;->u(Ljava/lang/Object;)V

    iget-object v0, p0, Ln7/a;->i0:Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;->H1(F)V

    iget-object v0, p0, Ln7/a;->c0:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Ln7/a;->d0:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_0
    invoke-static {}, Lf8/c;->D()Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;->r0(Ljava/lang/Object;)V

    const/16 v0, 0x12c

    invoke-static {v0}, Lf8/c;->f(I)F

    move-result v0

    iget-object v1, p0, Ln7/a;->i0:Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;

    invoke-virtual {v1, v0}, Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;->H1(F)V

    iget-object v1, p0, Ln7/a;->i0:Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v0, v2

    const/high16 v2, 0x3f000000    # 0.5f

    sub-float/2addr v2, v0

    invoke-virtual {v1, v2}, Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;->K1(F)V

    iget-object v0, p0, Ln7/a;->c0:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Ln7/a;->d0:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public n1()V
    .locals 1

    invoke-super {p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->n1()V

    iget-object v0, p0, Ln7/a;->f0:Ln7/d;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ln7/d;->l()V

    :cond_0
    return-void
.end method

.method public w1(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "id"
        }
    .end annotation

    iput p1, p0, Ln7/a;->Y:I

    invoke-direct {p0}, Ln7/a;->v1()V

    return-void
.end method

.method public z(LI4/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "engineUpdateData"
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->z(LI4/b;)V

    iget-object p1, p0, Ln7/a;->f0:Ln7/d;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ln7/d;->b()V

    :cond_0
    return-void
.end method
