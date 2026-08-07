.class public final synthetic LY5/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# instance fields
.field public final synthetic b:LW5/b;

.field public final synthetic c:Landroid/view/View;


# direct methods
.method public synthetic constructor <init>(LW5/b;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LY5/b;->b:LW5/b;

    iput-object p2, p0, LY5/b;->c:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 2

    iget-object v0, p0, LY5/b;->b:LW5/b;

    iget-object v1, p0, LY5/b;->c:Landroid/view/View;

    invoke-static {v0, v1, p1, p2, p3}, LY5/c;->a(LW5/b;Landroid/view/View;Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method
