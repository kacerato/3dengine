.class public Le8/e$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le8/e;->a(Landroid/widget/LinearLayout;Landroid/content/Context;Landroid/view/LayoutInflater;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Landroid/content/Context;

.field public final synthetic c:Le8/e;


# direct methods
.method public constructor <init>(Le8/e;Landroid/content/Context;)V
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

    iput-object p1, p0, Le8/e$a;->c:Le8/e;

    iput-object p2, p0, Le8/e$a;->b:Landroid/content/Context;

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

    invoke-static {}, Lf8/c;->Y()V

    iget-object v0, p0, Le8/e$a;->c:Le8/e;

    invoke-static {v0}, Le8/e;->q(Le8/e;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Le8/e$a;->c:Le8/e;

    iget v1, v0, Le8/e;->r:I

    invoke-static {v0}, Le8/e;->r(Le8/e;)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Le8/e;->R(IZ)Le8/e;

    iget-object v0, p0, Le8/e$a;->c:Le8/e;

    iget v1, v0, Le8/e;->x:I

    invoke-static {v0}, Le8/e;->s(Le8/e;)Z

    move-result v2

    invoke-static {v0, v1, v2}, Le8/e;->t(Le8/e;IZ)V

    new-instance v0, LDd/a;

    invoke-direct {v0}, LDd/a;-><init>()V

    new-instance v1, Le8/e$a$a;

    invoke-direct {v1, p0}, Le8/e$a$a;-><init>(Le8/e$a;)V

    const/16 v2, 0x32

    invoke-virtual {v0, v2, v1}, LDd/a;->a(ILDd/b;)V

    :cond_0
    iget-object v0, p0, Le8/e$a;->c:Le8/e;

    iget-object v1, v0, Le8/e;->j:Le8/f;

    if-eqz v1, :cond_1

    iget-object v2, p0, Le8/e$a;->b:Landroid/content/Context;

    invoke-interface {v1, p1, v2, v0}, Le8/f;->a(Landroid/view/View;Landroid/content/Context;Le8/e;)V

    :cond_1
    return-void
.end method
