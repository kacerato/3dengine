.class public LMe/h;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LMe/h$a;
    }
.end annotation


# static fields
.field public static final g:I = 0x4b

.field public static final h:I = 0x16


# instance fields
.field public final a:I

.field public final b:I

.field public final c:I

.field public final d:I

.field public final e:I

.field public final f:I


# direct methods
.method public constructor <init>(LMe/h$a;)V
    .locals 1
    .param p1    # LMe/h$a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, LMe/h$a;->a(LMe/h$a;)I

    move-result v0

    iput v0, p0, LMe/h;->a:I

    invoke-static {p1}, LMe/h$a;->b(LMe/h$a;)I

    move-result v0

    iput v0, p0, LMe/h;->b:I

    invoke-static {p1}, LMe/h$a;->c(LMe/h$a;)I

    move-result v0

    iput v0, p0, LMe/h;->c:I

    invoke-static {p1}, LMe/h$a;->d(LMe/h$a;)I

    move-result v0

    iput v0, p0, LMe/h;->d:I

    invoke-static {p1}, LMe/h$a;->e(LMe/h$a;)I

    move-result v0

    iput v0, p0, LMe/h;->e:I

    invoke-static {p1}, LMe/h$a;->f(LMe/h$a;)I

    move-result p1

    iput p1, p0, LMe/h;->f:I

    return-void
.end method

.method public static f(Landroid/content/Context;)LMe/h$a;
    .locals 2
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-static {p0}, LSe/b;->b(Landroid/content/Context;)LSe/b;

    move-result-object p0

    invoke-static {}, LMe/h;->h()LMe/h$a;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {p0, v1}, LSe/b;->c(I)I

    move-result v1

    invoke-virtual {v0, v1}, LMe/h$a;->j(I)LMe/h$a;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, LSe/b;->c(I)I

    move-result p0

    invoke-virtual {v0, p0}, LMe/h$a;->i(I)LMe/h$a;

    move-result-object p0

    return-object p0
.end method

.method public static g(Landroid/content/Context;)LMe/h;
    .locals 0
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-static {p0}, LMe/h;->f(Landroid/content/Context;)LMe/h$a;

    move-result-object p0

    invoke-virtual {p0}, LMe/h$a;->g()LMe/h;

    move-result-object p0

    return-object p0
.end method

.method public static h()LMe/h$a;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, LMe/h$a;

    invoke-direct {v0}, LMe/h$a;-><init>()V

    return-object v0
.end method


# virtual methods
.method public a(Landroid/graphics/Paint;)V
    .locals 2
    .param p1    # Landroid/graphics/Paint;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget v0, p0, LMe/h;->b:I

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    const/16 v1, 0x4b

    invoke-static {v0, v1}, LSe/a;->a(II)I

    move-result v0

    :cond_0
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    return-void
.end method

.method public b(Landroid/graphics/Paint;)V
    .locals 1
    .param p1    # Landroid/graphics/Paint;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget v0, p0, LMe/h;->e:I

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    return-void
.end method

.method public c(Landroid/graphics/Paint;)V
    .locals 1
    .param p1    # Landroid/graphics/Paint;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget v0, p0, LMe/h;->f:I

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    return-void
.end method

.method public d(Landroid/graphics/Paint;)V
    .locals 2
    .param p1    # Landroid/graphics/Paint;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget v0, p0, LMe/h;->d:I

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    const/16 v1, 0x16

    invoke-static {v0, v1}, LSe/a;->a(II)I

    move-result v0

    :cond_0
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    return-void
.end method

.method public e()LMe/h$a;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, LMe/h$a;

    invoke-direct {v0}, LMe/h$a;-><init>()V

    iget v1, p0, LMe/h;->a:I

    invoke-virtual {v0, v1}, LMe/h$a;->j(I)LMe/h$a;

    move-result-object v0

    iget v1, p0, LMe/h;->b:I

    invoke-virtual {v0, v1}, LMe/h$a;->h(I)LMe/h$a;

    move-result-object v0

    iget v1, p0, LMe/h;->c:I

    invoke-virtual {v0, v1}, LMe/h$a;->i(I)LMe/h$a;

    move-result-object v0

    iget v1, p0, LMe/h;->d:I

    invoke-virtual {v0, v1}, LMe/h$a;->m(I)LMe/h$a;

    move-result-object v0

    iget v1, p0, LMe/h;->e:I

    invoke-virtual {v0, v1}, LMe/h$a;->k(I)LMe/h$a;

    move-result-object v0

    iget v1, p0, LMe/h;->f:I

    invoke-virtual {v0, v1}, LMe/h$a;->l(I)LMe/h$a;

    move-result-object v0

    return-object v0
.end method

.method public i(Landroid/graphics/Paint;)I
    .locals 2
    .param p1    # Landroid/graphics/Paint;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget v0, p0, LMe/h;->c:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result p1

    const/high16 v0, 0x3f000000    # 0.5f

    add-float/2addr p1, v0

    float-to-int v0, p1

    :cond_0
    return v0
.end method

.method public j()I
    .locals 1

    iget v0, p0, LMe/h;->a:I

    return v0
.end method
