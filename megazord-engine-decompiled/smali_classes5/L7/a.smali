.class public LL7/a;
.super LK7/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "LK7/b<",
        "LK7/a;",
        ">;"
    }
.end annotation


# static fields
.field public static final m0:Ljava/lang/String; = "ExemplePanel"


# instance fields
.field public final l0:LM7/a;


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "Example panel"

    invoke-direct {p0, v0}, LK7/b;-><init>(Ljava/lang/String;)V

    new-instance v0, LM7/a;

    invoke-direct {v0}, LM7/a;-><init>()V

    iput-object v0, p0, LL7/a;->l0:LM7/a;

    invoke-super {p0, v0}, LK7/b;->B1(LK7/c;)V

    return-void
.end method

.method public static D1()Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;
    .locals 6

    new-instance v0, LL7/a;

    invoke-direct {v0}, LL7/a;-><init>()V

    const/16 v1, 0x1c2

    invoke-static {v1}, Lf8/c;->g(I)F

    move-result v1

    const/16 v2, 0x15e

    invoke-static {v2}, Lf8/c;->f(I)F

    move-result v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float v4, v1, v3

    const/high16 v5, 0x3f000000    # 0.5f

    sub-float v4, v5, v4

    div-float v3, v2, v3

    sub-float/2addr v5, v3

    invoke-static {v0, v4, v5, v1, v2}, LL4/a;->n(Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;FFFF)Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->S()Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;

    return-object v0
.end method
