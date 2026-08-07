.class public Lq7/a$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lq7/a;->B0()Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lwd/b;

.field public final synthetic c:Lq7/a;


# direct methods
.method public constructor <init>(Lq7/a;Lwd/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$item"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lq7/a$e;->c:Lq7/a;

    iput-object p2, p0, Lq7/a$e;->b:Lwd/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    iget-object v0, p0, Lq7/a$e;->c:Lq7/a;

    invoke-static {v0}, Lq7/a;->r1(Lq7/a;)Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lq7/a$e;->c:Lq7/a;

    invoke-static {v0}, Lq7/a;->r1(Lq7/a;)Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->s0()V

    iget-object v0, p0, Lq7/a$e;->c:Lq7/a;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lq7/a;->s1(Lq7/a;Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;)Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;

    :cond_0
    iget-object v0, p0, Lq7/a$e;->b:Lwd/b;

    iget-object v0, v0, Lwd/b;->a:Lwd/b$b;

    sget-object v1, Lwd/b$b;->Folder:Lwd/b$b;

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lq7/a$e;->c:Lq7/a;

    invoke-static {v0}, Lq7/a;->t1(Lq7/a;)LL4/a$e;

    move-result-object v0

    sget-object v1, LL4/a$e;->Below:LL4/a$e;

    if-ne v0, v1, :cond_1

    sget-object v0, LL4/a$e;->Right:LL4/a$e;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lq7/a$e;->c:Lq7/a;

    invoke-static {v0}, Lq7/a;->t1(Lq7/a;)LL4/a$e;

    move-result-object v0

    sget-object v1, LL4/a$e;->Above:LL4/a$e;

    if-ne v0, v1, :cond_2

    sget-object v0, LL4/a$e;->Right:LL4/a$e;

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lq7/a$e;->c:Lq7/a;

    invoke-static {v0}, Lq7/a;->t1(Lq7/a;)LL4/a$e;

    move-result-object v0

    :goto_0
    iget-object v1, p0, Lq7/a$e;->b:Lwd/b;

    iget-object v1, v1, Lwd/b;->c:Ljava/util/List;

    new-instance v2, Lq7/a$e$a;

    invoke-direct {v2, p0}, Lq7/a$e$a;-><init>(Lq7/a$e;)V

    new-instance v3, Lq7/a$e$b;

    invoke-direct {v3, p0}, Lq7/a$e$b;-><init>(Lq7/a$e;)V

    invoke-static {p1, v0, v1, v2, v3}, Lq7/a;->v1(Landroid/view/View;LL4/a$e;Ljava/util/List;Lq7/b;Lq7/a$f;)V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lq7/a$e;->c:Lq7/a;

    invoke-static {v0}, Lq7/a;->w1(Lq7/a;)Lq7/b;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lq7/a$e;->c:Lq7/a;

    invoke-static {v0}, Lq7/a;->w1(Lq7/a;)Lq7/b;

    move-result-object v0

    iget-object v1, p0, Lq7/a$e;->b:Lwd/b;

    iget-object v2, v1, Lwd/b;->b:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lq7/b;->a(Lwd/b;Ljava/lang/String;)V

    :cond_4
    iget-object v0, p0, Lq7/a$e;->b:Lwd/b;

    iget-object v0, v0, Lwd/b;->e:Lwd/c;

    if-eqz v0, :cond_5

    invoke-interface {v0, p1}, Lwd/c;->onSelected(Landroid/view/View;)Z

    move-result p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lq7/a$e;->c:Lq7/a;

    invoke-virtual {p1}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->Q0()V

    invoke-static {}, Lf8/c;->D()Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;

    move-result-object p1

    new-instance v0, LH4/a;

    invoke-direct {v0}, LH4/a;-><init>()V

    invoke-virtual {p1, v0}, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;->A0(LH4/f;)Z

    goto :goto_1

    :cond_5
    iget-object v0, p0, Lq7/a$e;->c:Lq7/a;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->Q0()V

    invoke-static {}, Lf8/c;->D()Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;

    move-result-object v0

    new-instance v1, LH4/a;

    invoke-direct {v1}, LH4/a;-><init>()V

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;->A0(LH4/f;)Z

    iget-object v0, p0, Lq7/a$e;->b:Lwd/b;

    iget-object v0, v0, Lwd/b;->d:Lwd/d;

    if-eqz v0, :cond_6

    invoke-interface {v0, p1}, Lwd/d;->onSelected(Landroid/view/View;)V

    :cond_6
    :goto_1
    return-void
.end method
