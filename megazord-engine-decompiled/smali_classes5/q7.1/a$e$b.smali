.class public Lq7/a$e$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lq7/a$f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lq7/a$e;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lq7/a$e;


# direct methods
.method public constructor <init>(Lq7/a$e;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$1"
        }
    .end annotation

    iput-object p1, p0, Lq7/a$e$b;->a:Lq7/a$e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "floatingPanelArea"
        }
    .end annotation

    iget-object v0, p0, Lq7/a$e$b;->a:Lq7/a$e;

    iget-object v0, v0, Lq7/a$e;->c:Lq7/a;

    invoke-static {v0, p1}, Lq7/a;->s1(Lq7/a;Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;)Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;

    iget-object p1, p0, Lq7/a$e$b;->a:Lq7/a$e;

    iget-object p1, p1, Lq7/a$e;->c:Lq7/a;

    invoke-static {p1}, Lq7/a;->r1(Lq7/a;)Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;

    move-result-object p1

    iget-object p1, p1, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->w:Ljava/util/List;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;

    invoke-virtual {p1}, Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;->M()Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;

    move-result-object p1

    check-cast p1, Lq7/a;

    invoke-static {p1, v0}, Lq7/a;->u1(Lq7/a;Z)Z

    return-void
.end method
