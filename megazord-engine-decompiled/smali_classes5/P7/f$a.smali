.class public LP7/f$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LP7/j$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LP7/f;->k(LP7/c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:LP7/f;


# direct methods
.method public constructor <init>(LP7/f;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, LP7/f$a;->a:LP7/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(LP7/j;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "to"
        }
    .end annotation

    iget-object v0, p0, LP7/f$a;->a:LP7/f;

    invoke-static {v0}, LP7/f;->d(LP7/f;)LP7/j;

    move-result-object v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    iget-object v0, p0, LP7/f$a;->a:LP7/f;

    invoke-static {v0}, LP7/f;->d(LP7/f;)LP7/j;

    move-result-object v0

    if-eq v0, p1, :cond_0

    iget-object v0, p0, LP7/f$a;->a:LP7/f;

    invoke-static {v0}, LP7/f;->i(LP7/f;)Ljava/util/List;

    move-result-object v0

    new-instance v1, LP7/a;

    iget-object v2, p0, LP7/f$a;->a:LP7/f;

    invoke-static {v2}, LP7/f;->d(LP7/f;)LP7/j;

    move-result-object v2

    invoke-virtual {v2}, LP7/j;->getNode()LP7/c;

    move-result-object v2

    invoke-virtual {p1}, LP7/j;->getNode()LP7/c;

    move-result-object p1

    invoke-direct {v1, v2, p1}, LP7/a;-><init>(LP7/c;LP7/c;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, LP7/f$a;->a:LP7/f;

    invoke-static {p1}, LP7/f;->c(LP7/f;)LP7/b;

    move-result-object p1

    iget-object v0, p0, LP7/f$a;->a:LP7/f;

    invoke-static {v0}, LP7/f;->i(LP7/f;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, LP7/f$a;->a:LP7/f;

    invoke-static {v1}, LP7/f;->j(LP7/f;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, LP7/b;->h(Ljava/util/List;Ljava/util/List;)V

    :cond_0
    iget-object p1, p0, LP7/f$a;->a:LP7/f;

    const/4 v0, 0x0

    invoke-static {p1, v0}, LP7/f;->e(LP7/f;LP7/j;)LP7/j;

    iget-object p1, p0, LP7/f$a;->a:LP7/f;

    invoke-static {p1}, LP7/f;->c(LP7/f;)LP7/b;

    move-result-object p1

    invoke-virtual {p1}, LP7/b;->a()V

    iget-object p1, p0, LP7/f$a;->a:LP7/f;

    const/4 v0, 0x0

    invoke-static {p1, v0}, LP7/f;->h(LP7/f;Z)Z

    return-void
.end method

.method public b()V
    .locals 2

    iget-object v0, p0, LP7/f$a;->a:LP7/f;

    const/4 v1, 0x0

    invoke-static {v0, v1}, LP7/f;->e(LP7/f;LP7/j;)LP7/j;

    iget-object v0, p0, LP7/f$a;->a:LP7/f;

    invoke-static {v0}, LP7/f;->c(LP7/f;)LP7/b;

    move-result-object v0

    invoke-virtual {v0}, LP7/b;->a()V

    return-void
.end method

.method public c(LP7/j;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    iget-object p1, p0, LP7/f$a;->a:LP7/f;

    invoke-static {p1}, LP7/f;->c(LP7/f;)LP7/b;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public d(LP7/j;FF)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "from",
            "x",
            "y"
        }
    .end annotation

    iget-object v0, p0, LP7/f$a;->a:LP7/f;

    invoke-static {v0, p1}, LP7/f;->e(LP7/f;LP7/j;)LP7/j;

    iget-object v0, p0, LP7/f$a;->a:LP7/f;

    invoke-static {v0, p2}, LP7/f;->f(LP7/f;F)F

    iget-object v0, p0, LP7/f$a;->a:LP7/f;

    invoke-static {v0, p3}, LP7/f;->g(LP7/f;F)F

    iget-object v0, p0, LP7/f$a;->a:LP7/f;

    invoke-static {v0}, LP7/f;->c(LP7/f;)LP7/b;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, LP7/b;->i(LP7/j;FF)V

    iget-object p1, p0, LP7/f$a;->a:LP7/f;

    const/4 p2, 0x1

    invoke-static {p1, p2}, LP7/f;->h(LP7/f;Z)Z

    return-void
.end method

.method public e(FF)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "x",
            "y"
        }
    .end annotation

    iget-object v0, p0, LP7/f$a;->a:LP7/f;

    invoke-static {v0, p1}, LP7/f;->f(LP7/f;F)F

    iget-object v0, p0, LP7/f$a;->a:LP7/f;

    invoke-static {v0, p2}, LP7/f;->g(LP7/f;F)F

    iget-object v0, p0, LP7/f$a;->a:LP7/f;

    invoke-static {v0}, LP7/f;->c(LP7/f;)LP7/b;

    move-result-object v0

    iget-object v1, p0, LP7/f$a;->a:LP7/f;

    invoke-static {v1}, LP7/f;->d(LP7/f;)LP7/j;

    move-result-object v1

    invoke-virtual {v0, v1, p1, p2}, LP7/b;->i(LP7/j;FF)V

    return-void
.end method
