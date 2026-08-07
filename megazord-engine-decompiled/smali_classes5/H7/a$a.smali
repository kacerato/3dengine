.class public LH7/a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LH7/a;->n()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:LH7/a;


# direct methods
.method public constructor <init>(LH7/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, LH7/a$a;->b:LH7/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    iget-object p1, p0, LH7/a$a;->b:LH7/a;

    invoke-static {p1}, LH7/a;->d(LH7/a;)V

    iget-object p1, p0, LH7/a$a;->b:LH7/a;

    invoke-static {p1}, LH7/a;->e(LH7/a;)V

    iget-object p1, p0, LH7/a$a;->b:LH7/a;

    invoke-static {p1}, LH7/a;->f(LH7/a;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, LH7/a$a;->b:LH7/a;

    invoke-static {p1}, LH7/a;->h(LH7/a;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, LH7/a$a;->b:LH7/a;

    invoke-static {p1}, LH7/a;->h(LH7/a;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, LH7/a$a;->b:LH7/a;

    invoke-static {p1}, LH7/a;->i(LH7/a;)Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, LH7/a$a;->b:LH7/a;

    invoke-static {v0}, LH7/a;->h(LH7/a;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    iget-object p1, p0, LH7/a$a;->b:LH7/a;

    const/4 v0, 0x1

    invoke-static {p1, v0}, LH7/a;->g(LH7/a;Z)Z

    :cond_0
    return-void
.end method
