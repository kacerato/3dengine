.class public Lr7/e;
.super Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lr7/e$i;,
        Lr7/e$j;
    }
.end annotation


# static fields
.field public static final f0:Ljava/lang/String; = "FloatingFloatSliderPopup"


# instance fields
.field public final X:Ljava/lang/String;

.field public final Y:Lr7/e$i;

.field public Z:Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;

.field public final a0:F

.field public final b0:F

.field public final c0:F

.field public d0:F

.field public e0:Lcom/itsmagic/engine/Activities/Editor/Utils/E;


# direct methods
.method public constructor <init>(Ljava/lang/String;FFFLr7/e$i;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "tittle",
            "defaultValue",
            "min",
            "max",
            "listener"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lr7/e;->X:Ljava/lang/String;

    iput p2, p0, Lr7/e;->a0:F

    iput p2, p0, Lr7/e;->d0:F

    iput p3, p0, Lr7/e;->b0:F

    iput p4, p0, Lr7/e;->c0:F

    iput-object p5, p0, Lr7/e;->Y:Lr7/e$i;

    if-eqz p5, :cond_0

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "listener can\'t be null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static A1(Ljava/lang/String;FFFLr7/e$i;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "tittle",
            "defaultValue",
            "min",
            "max",
            "listener"
        }
    .end annotation

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    invoke-static/range {v0 .. v5}, Lr7/e;->B1(Ljava/lang/String;FFFLr7/e$i;Lr7/e$j;)V

    return-void
.end method

.method public static B1(Ljava/lang/String;FFFLr7/e$i;Lr7/e$j;)V
    .locals 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "tittle",
            "defaultValue",
            "min",
            "max",
            "listener",
            "showListener"
        }
    .end annotation

    if-eqz p4, :cond_0

    const/16 v0, 0xdc

    invoke-static {v0}, Lf8/c;->g(I)F

    move-result v7

    const/16 v0, 0x82

    invoke-static {v0}, Lf8/c;->f(I)F

    move-result v8

    new-instance v0, Lr7/e$b;

    move-object v1, v0

    move-object v2, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move-object v6, p4

    move-object v9, p5

    invoke-direct/range {v1 .. v9}, Lr7/e$b;-><init>(Ljava/lang/String;FFFLr7/e$i;FFLr7/e$j;)V

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Utils/E;->r1(Lcom/itsmagic/engine/Activities/Editor/Utils/E$e;)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "listener can\'t be null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic o1(Lr7/e;Lcom/itsmagic/engine/Activities/Editor/Utils/E;)Lcom/itsmagic/engine/Activities/Editor/Utils/E;
    .locals 0

    iput-object p1, p0, Lr7/e;->e0:Lcom/itsmagic/engine/Activities/Editor/Utils/E;

    return-object p1
.end method

.method public static synthetic p1(Lr7/e;Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;)Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;
    .locals 0

    iput-object p1, p0, Lr7/e;->Z:Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;

    return-object p1
.end method

.method public static synthetic q1(Lr7/e;)F
    .locals 0

    iget p0, p0, Lr7/e;->d0:F

    return p0
.end method

.method public static synthetic r1(Lr7/e;F)F
    .locals 0

    iput p1, p0, Lr7/e;->d0:F

    return p1
.end method

.method public static synthetic s1(Lr7/e;)F
    .locals 0

    iget p0, p0, Lr7/e;->b0:F

    return p0
.end method

.method public static synthetic t1(Lr7/e;)F
    .locals 0

    iget p0, p0, Lr7/e;->c0:F

    return p0
.end method

.method public static synthetic u1(Lr7/e;)F
    .locals 0

    iget p0, p0, Lr7/e;->a0:F

    return p0
.end method

.method public static synthetic v1(Lr7/e;)Lr7/e$i;
    .locals 0

    iget-object p0, p0, Lr7/e;->Y:Lr7/e$i;

    return-object p0
.end method

.method public static synthetic w1(Lr7/e;)V
    .locals 0

    invoke-virtual {p0}, Lr7/e;->x1()V

    return-void
.end method

.method public static y1(Landroid/view/View;LL4/a$e;Ljava/lang/String;FFFLr7/e$i;)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "anchor",
            "anchorSide",
            "tittle",
            "defaultValue",
            "min",
            "max",
            "listener"
        }
    .end annotation

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    invoke-static/range {v0 .. v7}, Lr7/e;->z1(Landroid/view/View;LL4/a$e;Ljava/lang/String;FFFLr7/e$i;Lr7/e$j;)V

    return-void
.end method

.method public static z1(Landroid/view/View;LL4/a$e;Ljava/lang/String;FFFLr7/e$i;Lr7/e$j;)V
    .locals 12
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "anchor",
            "anchorSide",
            "tittle",
            "defaultValue",
            "min",
            "max",
            "listener",
            "showListener"
        }
    .end annotation

    if-eqz p0, :cond_1

    if-eqz p6, :cond_0

    const/16 v0, 0xdc

    invoke-static {v0}, Lf8/c;->g(I)F

    move-result v8

    const/16 v0, 0x82

    invoke-static {v0}, Lf8/c;->f(I)F

    move-result v9

    new-instance v11, Lr7/e$a;

    move-object v0, v11

    move-object v1, p2

    move v2, p3

    move/from16 v3, p4

    move/from16 v4, p5

    move-object/from16 v5, p6

    move-object v6, p0

    move-object v7, p1

    move-object/from16 v10, p7

    invoke-direct/range {v0 .. v10}, Lr7/e$a;-><init>(Ljava/lang/String;FFFLr7/e$i;Landroid/view/View;LL4/a$e;FFLr7/e$j;)V

    invoke-static {v11}, Lcom/itsmagic/engine/Activities/Editor/Utils/E;->r1(Lcom/itsmagic/engine/Activities/Editor/Utils/E$e;)V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "listener can\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Anchor can\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public B0()Landroid/view/View;
    .locals 14

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->j:Landroid/view/LayoutInflater;

    const v1, 0x7f0c00bc

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lr7/e$c;

    invoke-direct {v1, p0}, Lr7/e$c;-><init>(Lr7/e;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    const v1, 0x7f09052f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Landroid/widget/TextView;

    const v1, 0x7f0900ff

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    const v2, 0x7f090151

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iget-object v3, p0, Lr7/e;->X:Ljava/lang/String;

    invoke-virtual {v6, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v4, LW5/b;

    new-instance v8, Lr7/e$d;

    invoke-direct {v8, p0}, Lr7/e$d;-><init>(Lr7/e;)V

    sget-object v10, LW5/b$a;->SLFloatSliderFPanel:LW5/b$a;

    iget v11, p0, Lr7/e;->b0:F

    iget v12, p0, Lr7/e;->c0:F

    const/4 v13, 0x0

    const-string v9, ""

    move-object v7, v4

    invoke-direct/range {v7 .. v13}, LW5/b;-><init>(LX5/h;Ljava/lang/String;LW5/b$a;FFF)V

    new-instance v3, LY5/f;

    invoke-direct {v3}, LY5/f;-><init>()V

    const v5, 0x7f0903c3

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lorg/mohammedalaa/seekbar/RangeSeekBarView;

    const/high16 v7, 0x3f800000    # 1.0f

    float-to-int v7, v7

    invoke-virtual {v5, v7}, Lorg/mohammedalaa/seekbar/RangeSeekBarView;->setStep(I)V

    iget v7, p0, Lr7/e;->b0:F

    const v8, 0x461c4000    # 10000.0f

    mul-float/2addr v7, v8

    float-to-int v7, v7

    invoke-virtual {v5, v7}, Lorg/mohammedalaa/seekbar/RangeSeekBarView;->setMinValue(I)V

    iget v7, p0, Lr7/e;->c0:F

    mul-float/2addr v7, v8

    float-to-int v7, v7

    invoke-virtual {v5, v7}, Lorg/mohammedalaa/seekbar/RangeSeekBarView;->setMaxValue(I)V

    iget v7, p0, Lr7/e;->d0:F

    mul-float/2addr v7, v8

    float-to-int v7, v7

    invoke-virtual {v5, v7}, Lorg/mohammedalaa/seekbar/RangeSeekBarView;->setCurrentValue(I)V

    sget-object v7, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$T;->PRIMARY_DARK:LUc/b;

    invoke-static {v7}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme;->i(LUc/b;)I

    move-result v7

    invoke-virtual {v5, v7}, Lorg/mohammedalaa/seekbar/RangeSeekBarView;->setFillColor(I)V

    sget-object v7, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$T;->PANEL:LUc/b;

    invoke-static {v7}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme;->i(LUc/b;)I

    move-result v7

    invoke-virtual {v5, v7}, Lorg/mohammedalaa/seekbar/RangeSeekBarView;->setBaseColor(I)V

    sget-object v7, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$T;->PRIMARY:LUc/b;

    invoke-static {v7}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme;->i(LUc/b;)I

    move-result v7

    invoke-virtual {v5, v7}, Lorg/mohammedalaa/seekbar/RangeSeekBarView;->setCircleFillColor(I)V

    sget-object v7, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$T;->HIGH_TEXT_COLOR:LUc/b;

    invoke-static {v7}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme;->i(LUc/b;)I

    move-result v7

    invoke-virtual {v5, v7}, Lorg/mohammedalaa/seekbar/RangeSeekBarView;->setCircleTextColor(I)V

    const/high16 v7, 0x40c00000    # 6.0f

    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->M()Landroid/content/Context;

    move-result-object v8

    invoke-static {v7, v8}, Lgd/b;->l0(FLandroid/content/Context;)I

    move-result v7

    invoke-virtual {v5, v7}, Lorg/mohammedalaa/seekbar/RangeSeekBarView;->setBarHeight(I)V

    const/high16 v7, 0x41000000    # 8.0f

    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->M()Landroid/content/Context;

    move-result-object v8

    invoke-static {v7, v8}, Lgd/b;->l0(FLandroid/content/Context;)I

    move-result v7

    invoke-virtual {v5, v7}, Lorg/mohammedalaa/seekbar/RangeSeekBarView;->setCircleRadius(I)V

    const/16 v7, 0x8

    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->M()Landroid/content/Context;

    move-result-object v8

    invoke-static {v7, v8}, Lgd/b;->p1(ILandroid/content/Context;)I

    move-result v7

    invoke-virtual {v5, v7}, Lorg/mohammedalaa/seekbar/RangeSeekBarView;->setCircleTextSize(I)V

    new-instance v7, Lr7/e$e;

    invoke-direct {v7, p0, v3}, Lr7/e$e;-><init>(Lr7/e;LY5/f;)V

    invoke-virtual {v5, v7}, Lorg/mohammedalaa/seekbar/RangeSeekBarView;->setOnRangeSeekBarViewChangeListener(Lyi/e;)V

    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->M()Landroid/content/Context;

    move-result-object v7

    new-instance v8, Lr7/e$f;

    invoke-direct {v8, p0, v4, v5}, Lr7/e$f;-><init>(Lr7/e;LW5/b;Lorg/mohammedalaa/seekbar/RangeSeekBarView;)V

    move-object v5, v0

    invoke-virtual/range {v3 .. v8}, LY5/f;->e(LW5/b;Landroid/view/View;Landroid/widget/TextView;Landroid/content/Context;LY5/f$i;)V

    new-instance v3, Lr7/e$g;

    invoke-direct {v3, p0}, Lr7/e$g;-><init>(Lr7/e;)V

    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v1, Lr7/e$h;

    invoke-direct {v1, p0}, Lr7/e$h;-><init>(Lr7/e;)V

    invoke-virtual {v2, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object v0
.end method

.method public F0()V
    .locals 1

    invoke-super {p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->F0()V

    iget-object v0, p0, Lr7/e;->e0:Lcom/itsmagic/engine/Activities/Editor/Utils/E;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->Q0()V

    const/4 v0, 0x0

    iput-object v0, p0, Lr7/e;->e0:Lcom/itsmagic/engine/Activities/Editor/Utils/E;

    :cond_0
    invoke-static {}, Lf8/c;->D()Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;->r0(Ljava/lang/Object;)V

    return-void
.end method

.method public m1()V
    .locals 1

    invoke-super {p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->m1()V

    invoke-static {}, LKc/a;->q()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lf8/c;->D()Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;->u(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    invoke-static {}, Lf8/c;->D()Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;->r0(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public final x1()V
    .locals 3

    iget-object v0, p0, Lr7/e;->Y:Lr7/e$i;

    iget v1, p0, Lr7/e;->d0:F

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lr7/e$i;->a(FZ)V

    invoke-static {}, Lf8/c;->D()Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;->r0(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->Q0()V

    return-void
.end method
