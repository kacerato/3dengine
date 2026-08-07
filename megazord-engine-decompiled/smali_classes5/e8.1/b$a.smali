.class public Le8/b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le8/b;->a(Landroid/widget/LinearLayout;Landroid/content/Context;Landroid/view/LayoutInflater;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Landroid/content/Context;

.field public final synthetic c:Le8/b;


# direct methods
.method public constructor <init>(Le8/b;Landroid/content/Context;)V
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

    iput-object p1, p0, Le8/b$a;->c:Le8/b;

    iput-object p2, p0, Le8/b$a;->b:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    iget-object v0, p0, Le8/b$a;->c:Le8/b;

    invoke-static {v0}, Le8/b;->q(Le8/b;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Le8/b$a;->c:Le8/b;

    iget v1, v0, Le8/b;->o:I

    invoke-static {v0}, Le8/b;->r(Le8/b;)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Le8/b;->L(IZ)Le8/b;

    new-instance v0, LDd/a;

    invoke-direct {v0}, LDd/a;-><init>()V

    new-instance v1, Le8/b$a$a;

    invoke-direct {v1, p0}, Le8/b$a$a;-><init>(Le8/b$a;)V

    const/16 v2, 0x32

    invoke-virtual {v0, v2, v1}, LDd/a;->a(ILDd/b;)V

    :cond_0
    iget-object v0, p0, Le8/b$a;->c:Le8/b;

    iget-object v1, v0, Le8/b;->i:Le8/a;

    if-eqz v1, :cond_1

    iget-object v2, p0, Le8/b$a;->b:Landroid/content/Context;

    invoke-interface {v1, p1, v2, v0}, Le8/a;->a(Landroid/view/View;Landroid/content/Context;Le8/b;)V

    :cond_1
    return-void
.end method
