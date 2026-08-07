.class public Lqd/b$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LF7/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lqd/b;->u(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lqd/b;


# direct methods
.method public constructor <init>(Lqd/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Lqd/b$e;->a:Lqd/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    return-void
.end method

.method public b()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "LB7/b;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lqd/b$e;->a:Lqd/b;

    invoke-static {v0}, Lqd/b;->m(Lqd/b;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public c(Landroid/view/View;LB7/b;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "v",
            "element"
        }
    .end annotation

    if-eqz p2, :cond_0

    iget-object p1, p2, LX7/i;->a:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lqd/b$e;->a:Lqd/b;

    invoke-static {v0}, Lqd/b;->k(Lqd/b;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/itsmagic/engine/Core/Components/ProjectController/a;->Q(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, ""

    invoke-virtual {p1, p2, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public d(LB7/b;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "element"
        }
    .end annotation

    iget-object v0, p0, Lqd/b$e;->a:Lqd/b;

    invoke-static {v0}, Lqd/b;->c(Lqd/b;)Lz7/e;

    move-result-object v0

    invoke-virtual {v0, p1}, Lz7/e;->A(LB7/b;)V

    const-string v0, "Folder"

    if-eqz p1, :cond_1

    iget-object v1, p0, Lqd/b$e;->a:Lqd/b;

    iget-object p1, p1, LX7/i;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lo8/b;->b:Lcom/itsmagic/engine/Core/Components/ProjectController/a;

    iget-object v3, p0, Lqd/b$e;->a:Lqd/b;

    invoke-static {v3}, Lqd/b;->k(Lqd/b;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/itsmagic/engine/Core/Components/ProjectController/a;->Q(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, ""

    invoke-virtual {p1, v2, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lqd/b;->h(Lqd/b;Ljava/lang/String;)Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lqd/b$e;->a:Lqd/b;

    invoke-static {v1}, Lqd/b;->g(Lqd/b;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lqd/b$e;->a:Lqd/b;

    invoke-static {v1}, Lqd/b;->b(Lqd/b;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lqd/b$e;->a:Lqd/b;

    invoke-static {v1}, Lqd/b;->i(Lqd/b;)Lqd/a;

    move-result-object v1

    invoke-interface {v1}, Lqd/a;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "//"

    invoke-virtual {p1, v1, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lqd/b$e;->a:Lqd/b;

    invoke-static {v1}, Lqd/b;->j(Lqd/b;)Lcom/google/android/material/textfield/TextInputEditText;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lqd/b$e;->a:Lqd/b;

    invoke-static {p1}, Lqd/b;->e(Lqd/b;)Lcom/google/android/material/textfield/TextInputLayout;

    move-result-object p1

    invoke-virtual {p1, v4}, Lcom/google/android/material/textfield/TextInputLayout;->setHint(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lqd/b$e;->a:Lqd/b;

    invoke-static {p1}, Lqd/b;->e(Lqd/b;)Lcom/google/android/material/textfield/TextInputLayout;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/google/android/material/textfield/TextInputLayout;->setHint(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lqd/b$e;->a:Lqd/b;

    invoke-static {p1}, Lqd/b;->e(Lqd/b;)Lcom/google/android/material/textfield/TextInputLayout;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/google/android/material/textfield/TextInputLayout;->setHint(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method public e(LB7/b;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "eElement"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LB7/b;",
            ")",
            "Ljava/util/List<",
            "LB7/b;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lqd/b$e;->a:Lqd/b;

    invoke-static {v0, p1}, Lqd/b;->l(Lqd/b;LB7/b;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public f(LB7/b;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "eElement",
            "open"
        }
    .end annotation

    if-eqz p2, :cond_0

    iget-object p2, p0, Lqd/b$e;->a:Lqd/b;

    invoke-static {p2}, Lqd/b;->c(Lqd/b;)Lz7/e;

    move-result-object p2

    invoke-virtual {p2, p1}, Lz7/e;->M(LB7/b;)V

    :cond_0
    return-void
.end method

.method public g(LB7/b;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "eElement"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LB7/b;",
            ")",
            "Ljava/util/List<",
            "LB7/b;",
            ">;"
        }
    .end annotation

    if-nez p1, :cond_0

    iget-object p1, p0, Lqd/b$e;->a:Lqd/b;

    invoke-static {p1}, Lqd/b;->n(Lqd/b;)Ljava/util/List;

    move-result-object p1

    return-object p1

    :cond_0
    iget-object v0, p0, Lqd/b$e;->a:Lqd/b;

    invoke-static {v0, p1}, Lqd/b;->o(Lqd/b;LB7/b;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public h(LB7/b;Landroid/view/View;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "eElement",
            "v"
        }
    .end annotation

    return-void
.end method

.method public i(LB7/b;Landroid/view/View;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "eElement",
            "v"
        }
    .end annotation

    return-void
.end method

.method public j(LB7/b;II)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "eElement",
            "pixelX",
            "pixelY"
        }
    .end annotation

    return-void
.end method
