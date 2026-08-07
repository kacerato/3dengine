.class public Lr7/l$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/itsmagic/engine/Activities/Editor/Utils/E$e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lr7/l;->w1(Landroid/view/View;LL4/a$e;Lr7/l$i;Lr7/l$j;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lr7/l$i;

.field public final synthetic b:Landroid/view/View;

.field public final synthetic c:LL4/a$e;

.field public final synthetic d:F

.field public final synthetic e:F

.field public final synthetic f:Lr7/l$j;


# direct methods
.method public constructor <init>(Lr7/l$i;Landroid/view/View;LL4/a$e;FFLr7/l$j;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "val$listener",
            "val$anchor",
            "val$anchorSide",
            "val$w",
            "val$h",
            "val$showListener"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lr7/l$a;->a:Lr7/l$i;

    iput-object p2, p0, Lr7/l$a;->b:Landroid/view/View;

    iput-object p3, p0, Lr7/l$a;->c:LL4/a$e;

    iput p4, p0, Lr7/l$a;->d:F

    iput p5, p0, Lr7/l$a;->e:F

    iput-object p6, p0, Lr7/l$a;->f:Lr7/l$j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/itsmagic/engine/Activities/Editor/Utils/E;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "blockPanel"
        }
    .end annotation

    new-instance v0, Lr7/l;

    iget-object v1, p0, Lr7/l$a;->a:Lr7/l$i;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lr7/l;-><init>(Lr7/l$i;Lr7/l$a;)V

    invoke-static {v0, p1}, Lr7/l;->o1(Lr7/l;Lcom/itsmagic/engine/Activities/Editor/Utils/E;)Lcom/itsmagic/engine/Activities/Editor/Utils/E;

    iget-object p1, p0, Lr7/l$a;->b:Landroid/view/View;

    iget-object v1, p0, Lr7/l$a;->c:LL4/a$e;

    iget v2, p0, Lr7/l$a;->d:F

    iget v3, p0, Lr7/l$a;->e:F

    invoke-static {p1, v0, v1, v2, v3}, LL4/a;->k(Landroid/view/View;Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;LL4/a$e;FF)Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;

    move-result-object p1

    invoke-static {v0, p1}, Lr7/l;->p1(Lr7/l;Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;)Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;

    invoke-virtual {p1}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->S()Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;->D1(Z)V

    invoke-virtual {p1, v1}, Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;->C1(Z)V

    const/16 v1, 0x20

    sget-object v2, Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea$i;->Fixed:Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea$i;

    const/16 v3, 0x44

    invoke-virtual {p1, v3, v1, v2}, Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;->G1(IILcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea$i;)Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;

    iget-object v1, p0, Lr7/l$a;->f:Lr7/l$j;

    if-eqz v1, :cond_0

    invoke-interface {v1, v0, p1}, Lr7/l$j;->a(Lr7/l;Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;)V

    :cond_0
    return-void
.end method
