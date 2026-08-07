.class public LQ6/c$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LQ6/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LQ6/c;->t1(LX6/d;LCd/b;Ljava/lang/String;Z)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:LCd/b;

.field public final synthetic b:LQ6/c;


# direct methods
.method public constructor <init>(LQ6/c;LCd/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$pFile"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, LQ6/c$b;->b:LQ6/c;

    iput-object p2, p0, LQ6/c$b;->a:LCd/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    iget-object p1, p0, LQ6/c$b;->b:LQ6/c;

    invoke-static {p1}, LQ6/c;->r1(LQ6/c;)LX6/d;

    move-result-object p1

    iget-object v0, p0, LQ6/c$b;->b:LQ6/c;

    invoke-static {v0}, LQ6/c;->p1(LQ6/c;)Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v0

    iget-object v1, p0, LQ6/c$b;->b:LQ6/c;

    invoke-static {v1}, LQ6/c;->q1(LQ6/c;)Landroidx/asynclayoutinflater/view/AsyncLayoutInflater;

    move-result-object v1

    iget-object v2, p0, LQ6/c$b;->b:LQ6/c;

    invoke-virtual {v2}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->M()Landroid/content/Context;

    move-result-object v2

    new-instance v3, LQ6/c$b$a;

    invoke-direct {v3, p0}, LQ6/c$b$a;-><init>(LQ6/c$b;)V

    invoke-interface {p1, v0, v1, v2, v3}, LX6/d;->inflateView(Landroidx/constraintlayout/widget/ConstraintLayout;Landroidx/asynclayoutinflater/view/AsyncLayoutInflater;Landroid/content/Context;LQ6/b;)V

    return-void
.end method
