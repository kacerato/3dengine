.class public Lq7/a$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/itsmagic/engine/Activities/Editor/Utils/E$e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lq7/a;->G1(Landroid/view/View;LL4/a$e;Ljava/util/List;Lq7/b;Lq7/a$f;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/util/List;

.field public final synthetic b:Lq7/b;

.field public final synthetic c:LL4/a$e;

.field public final synthetic d:Landroid/view/View;

.field public final synthetic e:Landroid/content/Context;

.field public final synthetic f:Lq7/a$f;


# direct methods
.method public constructor <init>(Ljava/util/List;Lq7/b;LL4/a$e;Landroid/view/View;Landroid/content/Context;Lq7/a$f;)V
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
            "val$items",
            "val$listener",
            "val$anchorSide",
            "val$anchor",
            "val$context",
            "val$showChildListener"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lq7/a$c;->a:Ljava/util/List;

    iput-object p2, p0, Lq7/a$c;->b:Lq7/b;

    iput-object p3, p0, Lq7/a$c;->c:LL4/a$e;

    iput-object p4, p0, Lq7/a$c;->d:Landroid/view/View;

    iput-object p5, p0, Lq7/a$c;->e:Landroid/content/Context;

    iput-object p6, p0, Lq7/a$c;->f:Lq7/a$f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/itsmagic/engine/Activities/Editor/Utils/E;)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "blockPanel"
        }
    .end annotation

    new-instance v6, Lq7/a;

    iget-object v1, p0, Lq7/a$c;->a:Ljava/util/List;

    iget-object v2, p0, Lq7/a$c;->b:Lq7/b;

    iget-object v3, p0, Lq7/a$c;->c:LL4/a$e;

    const/4 v5, 0x0

    move-object v0, v6

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Lq7/a;-><init>(Ljava/util/List;Lq7/b;LL4/a$e;Lcom/itsmagic/engine/Activities/Editor/Utils/E;Lq7/a$a;)V

    iget-object v0, p0, Lq7/a$c;->d:Landroid/view/View;

    iget-object v1, p0, Lq7/a$c;->c:LL4/a$e;

    iget-object v2, p0, Lq7/a$c;->a:Ljava/util/List;

    invoke-static {v2}, Lq7/a;->o1(Ljava/util/List;)F

    move-result v2

    iget-object v3, p0, Lq7/a$c;->a:Ljava/util/List;

    iget-object v4, p0, Lq7/a$c;->e:Landroid/content/Context;

    invoke-static {v3, v4}, Lq7/a;->p1(Ljava/util/List;Landroid/content/Context;)F

    move-result v3

    invoke-static {v0, v6, v1, v2, v3}, LL4/a;->g(Landroid/view/View;Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;LL4/a$e;FF)Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;

    move-result-object v0

    invoke-static {v6, v0}, Lq7/a;->q1(Lq7/a;Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;)Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->S()Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;->L1(Z)V

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v1, v2, v1}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->L0(ZZZZ)V

    invoke-virtual {v0, v2}, Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;->M1(Z)V

    iget-object v1, p0, Lq7/a$c;->f:Lq7/a$f;

    invoke-interface {v1, v0}, Lq7/a$f;->a(Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;)V

    new-instance v0, Lq7/a$c$a;

    invoke-direct {v0, p0, v6, p1}, Lq7/a$c$a;-><init>(Lq7/a$c;Lq7/a;Lcom/itsmagic/engine/Activities/Editor/Utils/E;)V

    invoke-virtual {p1, v0}, Lcom/itsmagic/engine/Activities/Editor/Utils/E;->q1(Landroid/view/View$OnClickListener;)V

    return-void
.end method
