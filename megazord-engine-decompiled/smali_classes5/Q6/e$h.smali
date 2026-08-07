.class public LQ6/e$h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LQ6/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LQ6/e;->v1()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:LQ6/e;


# direct methods
.method public constructor <init>(LQ6/e;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, LQ6/e$h;->a:LQ6/e;

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

    iget-object v0, p0, LQ6/e$h;->a:LQ6/e;

    const v1, 0x7f0901de

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    invoke-static {v0, v1}, LQ6/e;->q1(LQ6/e;Landroid/widget/LinearLayout;)Landroid/widget/LinearLayout;

    iget-object v0, p0, LQ6/e$h;->a:LQ6/e;

    invoke-static {v0}, LQ6/e;->r1(LQ6/e;)V

    iget-object v0, p0, LQ6/e$h;->a:LQ6/e;

    const v1, 0x7f09040f

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    invoke-static {v0, p1}, LQ6/e;->s1(LQ6/e;Landroid/widget/LinearLayout;)Landroid/widget/LinearLayout;

    return-void
.end method
