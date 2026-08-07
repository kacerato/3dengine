.class public Lc8/b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/b;->f(Lc8/b$c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lc8/b;


# direct methods
.method public constructor <init>(Lc8/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Lc8/b$a;->b:Lc8/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "view",
            "actionId",
            "event"
        }
    .end annotation

    const/4 p3, 0x3

    if-eq p2, p3, :cond_1

    const/4 p3, 0x6

    if-ne p2, p3, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    iget-object p2, p0, Lc8/b$a;->b:Lc8/b;

    invoke-static {p2}, Lc8/b;->a(Lc8/b;)Lc8/c;

    move-result-object p2

    invoke-virtual {p2}, Lc8/c;->h()Landroid/widget/EditText;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/View;->clearFocus()V

    invoke-static {}, Lbd/i;->b()V

    iget-object p2, p0, Lc8/b$a;->b:Lc8/b;

    invoke-static {p2}, Lc8/b;->b(Lc8/b;)Lc8/b$c;

    move-result-object p2

    invoke-virtual {p2}, Lc8/b$c;->b()Lc8/b$d;

    move-result-object p2

    invoke-interface {p2, p1}, Lc8/b$d;->onClick(Landroid/view/View;)V

    const/4 p1, 0x1

    return p1
.end method
