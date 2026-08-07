.class public LV4/c$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LV4/c$a;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:LV4/c$a;


# direct methods
.method public constructor <init>(LV4/c$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$1"
        }
    .end annotation

    iput-object p1, p0, LV4/c$a$a;->b:LV4/c$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, LV4/c$a$a;->b:LV4/c$a;

    iget-object v0, v0, LV4/c$a;->a:LV4/c;

    invoke-static {v0}, LV4/c;->s1(LV4/c;)Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, LV4/c$a$a;->b:LV4/c$a;

    iget-object v0, v0, LV4/c$a;->a:LV4/c;

    invoke-static {v0}, LV4/c;->u1(LV4/c;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, LV4/c$a$a;->b:LV4/c$a;

    iget-object v0, v0, LV4/c$a;->a:LV4/c;

    invoke-static {v0}, Lf8/c;->f0(Ljava/lang/Object;)V

    iget-object v0, p0, LV4/c$a$a;->b:LV4/c$a;

    iget-object v0, v0, LV4/c$a;->a:LV4/c;

    invoke-static {v0}, LV4/c;->s1(LV4/c;)Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;

    move-result-object v0

    const/16 v1, 0xdc

    invoke-static {v1}, Lf8/c;->g(I)F

    move-result v1

    iput v1, v0, Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;->floatingW:F

    iget-object v0, p0, LV4/c$a$a;->b:LV4/c$a;

    iget-object v0, v0, LV4/c$a;->a:LV4/c;

    invoke-static {v0}, LV4/c;->s1(LV4/c;)Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;

    move-result-object v0

    const/16 v1, 0xa0

    invoke-static {v1}, Lf8/c;->f(I)F

    move-result v1

    iput v1, v0, Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;->floatingH:F

    iget-object v0, p0, LV4/c$a$a;->b:LV4/c$a;

    iget-object v0, v0, LV4/c$a;->a:LV4/c;

    invoke-static {v0}, LV4/c;->s1(LV4/c;)Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;

    move-result-object v0

    iget-object v1, p0, LV4/c$a$a;->b:LV4/c$a;

    iget-object v1, v1, LV4/c$a;->a:LV4/c;

    invoke-static {v1}, LV4/c;->s1(LV4/c;)Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;

    move-result-object v1

    iget v1, v1, Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;->floatingW:F

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float v1, v2, v1

    const v3, 0x3cf5c28f    # 0.03f

    sub-float/2addr v1, v3

    iput v1, v0, Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;->floatingX:F

    iget-object v0, p0, LV4/c$a$a;->b:LV4/c$a;

    iget-object v0, v0, LV4/c$a;->a:LV4/c;

    invoke-static {v0}, LV4/c;->s1(LV4/c;)Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;

    move-result-object v0

    iget-object v1, p0, LV4/c$a$a;->b:LV4/c$a;

    iget-object v1, v1, LV4/c$a;->a:LV4/c;

    invoke-static {v1}, LV4/c;->s1(LV4/c;)Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;

    move-result-object v1

    iget v1, v1, Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;->floatingH:F

    sub-float/2addr v2, v1

    const v1, 0x3d4ccccd    # 0.05f

    sub-float/2addr v2, v1

    iput v2, v0, Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;->floatingY:F

    iget-object v0, p0, LV4/c$a$a;->b:LV4/c$a;

    iget-object v0, v0, LV4/c$a;->a:LV4/c;

    invoke-static {v0}, LV4/c;->s1(LV4/c;)Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;

    move-result-object v0

    iget-object v1, p0, LV4/c$a$a;->b:LV4/c$a;

    iget-object v1, v1, LV4/c$a;->a:LV4/c;

    invoke-static {v1}, LV4/c;->s1(LV4/c;)Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;

    move-result-object v1

    iget v1, v1, Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;->floatingX:F

    iput v1, v0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->x:F

    iget-object v0, p0, LV4/c$a$a;->b:LV4/c$a;

    iget-object v0, v0, LV4/c$a;->a:LV4/c;

    invoke-static {v0}, LV4/c;->s1(LV4/c;)Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;

    move-result-object v0

    iget-object v1, p0, LV4/c$a$a;->b:LV4/c$a;

    iget-object v1, v1, LV4/c$a;->a:LV4/c;

    invoke-static {v1}, LV4/c;->s1(LV4/c;)Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;

    move-result-object v1

    iget v1, v1, Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;->floatingY:F

    iput v1, v0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->y:F

    iget-object v0, p0, LV4/c$a$a;->b:LV4/c$a;

    iget-object v0, v0, LV4/c$a;->a:LV4/c;

    invoke-static {v0}, LV4/c;->s1(LV4/c;)Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;

    move-result-object v0

    iget-object v1, p0, LV4/c$a$a;->b:LV4/c$a;

    iget-object v1, v1, LV4/c$a;->a:LV4/c;

    invoke-static {v1}, LV4/c;->s1(LV4/c;)Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;

    move-result-object v1

    iget v1, v1, Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;->floatingW:F

    iput v1, v0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->width:F

    iget-object v0, p0, LV4/c$a$a;->b:LV4/c$a;

    iget-object v0, v0, LV4/c$a;->a:LV4/c;

    invoke-static {v0}, LV4/c;->s1(LV4/c;)Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;

    move-result-object v0

    iget-object v1, p0, LV4/c$a$a;->b:LV4/c$a;

    iget-object v1, v1, LV4/c$a;->a:LV4/c;

    invoke-static {v1}, LV4/c;->s1(LV4/c;)Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;

    move-result-object v1

    iget v1, v1, Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;->floatingH:F

    iput v1, v0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->height:F

    iget-object v0, p0, LV4/c$a$a;->b:LV4/c$a;

    iget-object v0, v0, LV4/c$a;->a:LV4/c;

    invoke-static {v0}, LV4/c;->s1(LV4/c;)Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->K0()V

    :cond_0
    return-void
.end method
