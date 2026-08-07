.class public LY7/d$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LY7/d;->a(Landroid/view/LayoutInflater;Landroid/content/Context;Landroid/widget/LinearLayout;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Landroid/content/Context;

.field public final synthetic c:LY7/d;


# direct methods
.method public constructor <init>(LY7/d;Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$context"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, LY7/d$a;->c:LY7/d;

    iput-object p2, p0, LY7/d$a;->b:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    iget-object p1, p0, LY7/d$a;->c:LY7/d;

    invoke-static {p1}, LY7/d;->b(LY7/d;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {p1, v0}, LY7/d;->c(LY7/d;Z)Z

    iget-object p1, p0, LY7/d$a;->c:LY7/d;

    invoke-static {p1}, LY7/d;->d(LY7/d;)LY7/g;

    move-result-object p1

    iget-object v0, p0, LY7/d$a;->c:LY7/d;

    invoke-static {v0}, LY7/d;->b(LY7/d;)Z

    move-result v0

    invoke-interface {p1, v0}, LY7/g;->a(Z)V

    iget-object p1, p0, LY7/d$a;->c:LY7/d;

    iget-object v0, p0, LY7/d$a;->b:Landroid/content/Context;

    invoke-static {p1, v0}, LY7/d;->e(LY7/d;Landroid/content/Context;)V

    return-void
.end method
