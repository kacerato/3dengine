.class public La6/a$g$h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lwd/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = La6/a$g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:La6/a$g;


# direct methods
.method public constructor <init>(La6/a$g;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$1"
        }
    .end annotation

    iput-object p1, p0, La6/a$g$h;->a:La6/a$g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSelected(Landroid/view/View;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    iget-object p1, p0, La6/a$g$h;->a:La6/a$g;

    iget-object p1, p1, La6/a$g;->b:La6/a;

    invoke-static {p1}, La6/a;->r(La6/a;)La6/a$k;

    move-result-object p1

    invoke-interface {p1}, La6/a$k;->get()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    :try_start_0
    iget-object p1, p0, La6/a$g$h;->a:La6/a$g;

    iget-object p1, p1, La6/a$g;->b:La6/a;

    invoke-static {p1}, La6/a;->x(La6/a;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/bumptech/glide/b;->D(Landroid/content/Context;)Lcom/bumptech/glide/k;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, La6/a$g$h;->a:La6/a$g;

    iget-object v1, v1, La6/a$g;->b:La6/a;

    invoke-static {v1}, La6/a;->x(La6/a;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/itsmagic/engine/Core/Components/ProjectController/a;->Q(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/bumptech/glide/k;->K(Ljava/lang/String;)Lcom/bumptech/glide/j;

    move-result-object p1

    iget-object v0, p0, La6/a$g$h;->a:La6/a$g;

    iget-object v0, v0, La6/a$g;->b:La6/a;

    invoke-static {v0}, La6/a;->y(La6/a;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/bumptech/glide/j;->m1(Landroid/widget/ImageView;)LU/r;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    iget-object p1, p0, La6/a$g$h;->a:La6/a$g;

    iget-object p1, p1, La6/a$g;->b:La6/a;

    invoke-static {p1}, La6/a;->t(La6/a;)V

    iget-object p1, p0, La6/a$g$h;->a:La6/a$g;

    iget-object p1, p1, La6/a$g;->b:La6/a;

    invoke-static {p1}, La6/a;->r(La6/a;)La6/a$k;

    move-result-object p1

    const-string v0, ""

    invoke-interface {p1, v0}, La6/a$k;->b(Ljava/lang/String;)V

    iget-object p1, p0, La6/a$g$h;->a:La6/a$g;

    iget-object p1, p1, La6/a$g;->b:La6/a;

    invoke-static {p1}, La6/a;->u(La6/a;)V

    goto :goto_1

    :cond_0
    const-string p1, "No texture attached!"

    invoke-static {p1}, Lf8/c;->u0(Ljava/lang/String;)V

    :goto_1
    return-void
.end method
