.class public Lh6/a;
.super LK7/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "LK7/b<",
        "Li6/b;",
        ">;"
    }
.end annotation


# static fields
.field public static final o0:Ljava/lang/String; = "AccountItsmagicPanel"


# instance fields
.field public final l0:Lj6/a;

.field public final m0:F

.field public n0:Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;


# direct methods
.method public constructor <init>(F)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "wantedHeight"
        }
    .end annotation

    sget-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->ACCOUNT_ITSMAGIC:LUc/b;

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LUc/b;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, LK7/b;-><init>(Ljava/lang/String;)V

    new-instance v0, Lj6/a;

    invoke-direct {v0}, Lj6/a;-><init>()V

    iput-object v0, p0, Lh6/a;->l0:Lj6/a;

    iput p1, p0, Lh6/a;->m0:F

    invoke-super {p0, v0}, LK7/b;->B1(LK7/c;)V

    new-instance p1, Li6/b;

    invoke-direct {p1}, Li6/b;-><init>()V

    invoke-super {p0, p1}, LK7/b;->A1(LK7/a;)V

    iget-object p1, p0, Lh6/a;->n0:Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;

    iput-object p1, p0, Lh6/a;->n0:Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;

    return-void
.end method

.method public static D1()Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;
    .locals 3

    const/16 v0, 0x1c2

    invoke-static {v0}, Lf8/c;->g(I)F

    move-result v0

    const/16 v1, 0x13b

    invoke-static {v1}, Lf8/c;->f(I)F

    move-result v1

    new-instance v2, Lh6/a;

    invoke-direct {v2, v1}, Lh6/a;-><init>(F)V

    invoke-static {v2, v0, v1}, LL4/a;->m(Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;FF)Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;->L1(Z)V

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;->D1(Z)V

    invoke-virtual {v0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->S()Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;

    iput-object v0, v2, Lh6/a;->n0:Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;

    return-object v0
.end method


# virtual methods
.method public B0()Landroid/view/View;
    .locals 2

    invoke-super {p0}, LK7/b;->B0()Landroid/view/View;

    move-result-object v0

    new-instance v1, Lh6/a$a;

    invoke-direct {v1, p0}, Lh6/a$a;-><init>(Lh6/a;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-object v0
.end method

.method public m1()V
    .locals 2

    invoke-super {p0}, LK7/b;->m1()V

    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->Q0()V

    invoke-static {}, LKc/a;->q()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lh6/a;->n0:Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;->H1(F)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lh6/a;->n0:Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;

    iget v1, p0, Lh6/a;->m0:F

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;->H1(F)V

    :goto_0
    return-void
.end method
