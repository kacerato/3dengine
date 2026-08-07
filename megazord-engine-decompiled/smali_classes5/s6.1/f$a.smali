.class public Ls6/f$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lc8/b$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ls6/f;->B0()Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ls6/f;


# direct methods
.method public constructor <init>(Ls6/f;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Ls6/f$a;->a:Ls6/f;

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
            "view"
        }
    .end annotation

    iget-object v0, p0, Ls6/f$a;->a:Ls6/f;

    invoke-static {v0}, Ls6/f;->o1(Ls6/f;)Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ls6/f$a;->a:Ls6/f;

    invoke-static {v0}, Ls6/f;->o1(Ls6/f;)Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->s0()V

    :cond_0
    iget-object v0, p0, Ls6/f$a;->a:Ls6/f;

    invoke-static {v0}, Ls6/f;->q1(Ls6/f;)Lo6/a;

    move-result-object v1

    sget-object v2, LL4/a$e;->Below:LL4/a$e;

    new-instance v3, Ls6/f$a$a;

    invoke-direct {v3, p0}, Ls6/f$a$a;-><init>(Ls6/f$a;)V

    invoke-static {v1, p1, v2, v3}, Lc8/a;->v1(Lo6/a;Landroid/view/View;LL4/a$e;Lc8/a$f;)Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;

    move-result-object p1

    invoke-static {v0, p1}, Ls6/f;->p1(Ls6/f;Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;)Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;

    return-void
.end method
