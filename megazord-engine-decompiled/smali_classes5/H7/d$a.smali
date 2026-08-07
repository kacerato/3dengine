.class public LH7/d$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LH7/d;->t()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:LH7/d;


# direct methods
.method public constructor <init>(LH7/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, LH7/d$a;->b:LH7/d;

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

    iget-object p1, p0, LH7/d$a;->b:LH7/d;

    invoke-static {p1}, LH7/d;->d(LH7/d;)Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-static {p1, v0}, LH7/d;->e(LH7/d;Z)Z

    iget-object p1, p0, LH7/d$a;->b:LH7/d;

    invoke-static {p1}, LH7/d;->f(LH7/d;)V

    iget-object p1, p0, LH7/d$a;->b:LH7/d;

    invoke-static {p1}, LH7/d;->g(LH7/d;)V

    iget-object p1, p0, LH7/d$a;->b:LH7/d;

    invoke-static {p1}, LH7/d;->d(LH7/d;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    iget-object p1, p0, LH7/d$a;->b:LH7/d;

    invoke-static {p1}, LH7/d;->h(LH7/d;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, LH7/d$a;->b:LH7/d;

    invoke-static {p1}, LH7/d;->j(LH7/d;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, LH7/d$a;->b:LH7/d;

    invoke-static {p1}, LH7/d;->j(LH7/d;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, LH7/d$a;->b:LH7/d;

    invoke-static {p1}, LH7/d;->k(LH7/d;)Landroid/content/Context;

    move-result-object p1

    iget-object v2, p0, LH7/d$a;->b:LH7/d;

    invoke-static {v2}, LH7/d;->j(LH7/d;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    iget-object p1, p0, LH7/d$a;->b:LH7/d;

    invoke-static {p1, v1}, LH7/d;->i(LH7/d;Z)Z

    goto :goto_0

    :cond_0
    iget-object p1, p0, LH7/d$a;->b:LH7/d;

    invoke-static {p1}, LH7/d;->l(LH7/d;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, LH7/d$a;->b:LH7/d;

    invoke-static {p1}, LH7/d;->n(LH7/d;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, LH7/d$a;->b:LH7/d;

    invoke-static {p1}, LH7/d;->n(LH7/d;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, LH7/d$a;->b:LH7/d;

    invoke-static {p1}, LH7/d;->k(LH7/d;)Landroid/content/Context;

    move-result-object p1

    iget-object v2, p0, LH7/d$a;->b:LH7/d;

    invoke-static {v2}, LH7/d;->n(LH7/d;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    iget-object p1, p0, LH7/d$a;->b:LH7/d;

    invoke-static {p1, v1}, LH7/d;->m(LH7/d;Z)Z

    :cond_1
    :goto_0
    return-void
.end method
