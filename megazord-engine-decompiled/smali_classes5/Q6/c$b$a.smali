.class public LQ6/c$b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LQ6/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LQ6/c$b;->a(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:LQ6/c$b;


# direct methods
.method public constructor <init>(LQ6/c$b;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$1"
        }
    .end annotation

    iput-object p1, p0, LQ6/c$b$a;->a:LQ6/c$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    iget-object p1, p0, LQ6/c$b$a;->a:LQ6/c$b;

    iget-object p1, p1, LQ6/c$b;->b:LQ6/c;

    invoke-static {p1}, LQ6/c;->r1(LQ6/c;)LX6/d;

    move-result-object p1

    iget-object v0, p0, LQ6/c$b$a;->a:LQ6/c$b;

    iget-object v1, v0, LQ6/c$b;->a:LCd/b;

    iget-object v0, v0, LQ6/c$b;->b:LQ6/c;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->M()Landroid/content/Context;

    move-result-object v0

    invoke-interface {p1, v1, v0}, LX6/d;->openScript(LCd/b;Landroid/content/Context;)V

    return-void
.end method
