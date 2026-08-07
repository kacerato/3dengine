.class public LI7/a$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/itsmagic/engine/Activities/Editor/Utils/E$e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LI7/a$a;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:LI7/a$a;


# direct methods
.method public constructor <init>(LI7/a$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, LI7/a$a$a;->a:LI7/a$a;

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

    const/16 v0, 0x20

    invoke-static {v0}, Lf8/c;->g(I)F

    move-result v1

    invoke-static {v0}, Lf8/c;->f(I)F

    move-result v0

    new-instance v2, LI7/a;

    iget-object v3, p0, LI7/a$a$a;->a:LI7/a$a;

    iget-boolean v3, v3, LI7/a$a;->b:Z

    invoke-direct {v2, v3, p1}, LI7/a;-><init>(ZLcom/itsmagic/engine/Activities/Editor/Utils/E;)V

    invoke-static {v2, v1, v0}, LL4/a;->o(Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;FF)Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;

    move-result-object p1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->S()Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;->L1(Z)V

    invoke-virtual {p1}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->K0()V

    iget-object v0, p0, LI7/a$a$a;->a:LI7/a$a;

    iget-boolean v0, v0, LI7/a$a;->b:Z

    invoke-virtual {p1, v0}, Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;->C1(Z)V

    iget-object p1, p0, LI7/a$a$a;->a:LI7/a$a;

    iget-object p1, p1, LI7/a$a;->c:LI7/a$d;

    if-eqz p1, :cond_0

    invoke-interface {p1, v2}, LI7/a$d;->a(LI7/a;)V

    :cond_0
    return-void
.end method
