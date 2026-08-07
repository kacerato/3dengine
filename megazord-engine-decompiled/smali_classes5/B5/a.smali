.class public LB5/a;
.super Lz5/d;
.source "SourceFile"


# instance fields
.field public final g:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;

.field public h:Z

.field public i:F

.field public j:Lk5/b;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "objectPool"
        }
    .end annotation

    invoke-direct {p0}, Lz5/d;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, LB5/a;->h:Z

    const/4 v0, 0x0

    iput v0, p0, LB5/a;->i:F

    iput-object p1, p0, LB5/a;->g:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;

    return-void
.end method

.method public static synthetic G(LB5/a;Lk5/b;)Lk5/b;
    .locals 0

    iput-object p1, p0, LB5/a;->j:Lk5/b;

    return-object p1
.end method

.method public static synthetic H(LB5/a;)Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;
    .locals 0

    iget-object p0, p0, LB5/a;->g:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;

    return-object p0
.end method

.method public static synthetic I(LB5/a;)V
    .locals 0

    invoke-virtual {p0}, LB5/a;->J()V

    return-void
.end method


# virtual methods
.method public final J()V
    .locals 3

    iget-object v0, p0, LB5/a;->j:Lk5/b;

    if-nez v0, :cond_0

    new-instance v0, Lk5/b;

    iget-object v1, p0, LB5/a;->g:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;

    new-instance v2, LB5/a$c;

    invoke-direct {v2, p0}, LB5/a$c;-><init>(LB5/a;)V

    invoke-direct {v0, v1, v2}, Lk5/b;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;Lj5/a;)V

    iput-object v0, p0, LB5/a;->j:Lk5/b;

    :cond_0
    iget-object v0, p0, LB5/a;->j:Lk5/b;

    iget-object v1, p0, LB5/a;->g:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;

    iput-object v1, v0, Lk5/b;->h:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;

    invoke-static {}, LU3/c;->b()Lj5/b;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, LU3/c;->b()Lj5/b;

    move-result-object v0

    iget-object v1, p0, LB5/a;->j:Lk5/b;

    if-eq v0, v1, :cond_2

    :cond_1
    iget-object v0, p0, LB5/a;->j:Lk5/b;

    invoke-static {v0}, LU3/c;->e(Lj5/b;)V

    :cond_2
    return-void
.end method

.method public d()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public e()V
    .locals 2

    iget-boolean v0, p0, LB5/a;->h:Z

    if-eqz v0, :cond_0

    iget v0, p0, LB5/a;->i:F

    invoke-static {}, Lc9/d;->e()F

    move-result v1

    add-float/2addr v0, v1

    iput v0, p0, LB5/a;->i:F

    const/high16 v1, 0x40400000    # 3.0f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    const/4 v0, 0x0

    iput v0, p0, LB5/a;->i:F

    const/4 v0, 0x0

    iput-boolean v0, p0, LB5/a;->h:Z

    :cond_0
    iget-boolean v0, p0, LB5/a;->h:Z

    if-nez v0, :cond_2

    iget-object v0, p0, LB5/a;->g:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->b1:Z

    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-static {v0}, Lyb/e;->J(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, LB5/a;->g:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;

    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->e1()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, LB5/a;->J()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, LB5/a;->j:Lk5/b;

    if-eqz v0, :cond_2

    invoke-static {}, LU3/c;->b()Lj5/b;

    move-result-object v0

    iget-object v1, p0, LB5/a;->j:Lk5/b;

    if-ne v0, v1, :cond_2

    const/4 v0, 0x0

    invoke-static {v0}, LU3/c;->e(Lj5/b;)V

    iput-object v0, p0, LB5/a;->j:Lk5/b;

    :cond_2
    :goto_0
    return-void
.end method

.method public g()Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Axis/MousePicker/MousePicker$i;
    .locals 1

    sget-object v0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Axis/MousePicker/MousePicker;->T:Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Axis/MousePicker/MousePicker$i;

    return-object v0
.end method

.method public i()Ljava/lang/String;
    .locals 1

    const-string v0, "Edit Object pool"

    return-object v0
.end method

.method public o(Ljava/util/List;Landroid/app/Activity;Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;)V
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "elements",
            "activity",
            "panel3DView"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Le8/g;",
            ">;",
            "Landroid/app/Activity;",
            "Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;",
            ")V"
        }
    .end annotation

    invoke-super {p0, p1, p2, p3}, Lz5/d;->o(Ljava/util/List;Landroid/app/Activity;Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;)V

    new-instance p3, Le8/k;

    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {v0, p2}, Lgd/b;->l0(FLandroid/content/Context;)I

    move-result v0

    invoke-direct {p3, v0}, Le8/k;-><init>(I)V

    invoke-interface {p1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p3, Le8/o;

    new-instance v0, LB5/a$i;

    invoke-direct {v0, p0}, LB5/a$i;-><init>(LB5/a;)V

    sget-object v1, Le8/c$b;->Top:Le8/c$b;

    const v2, 0x7f070244

    invoke-direct {p3, v2, v0, v1, p2}, Le8/o;-><init>(ILe8/r;Le8/c$b;Landroid/content/Context;)V

    sget-object v0, Lz5/d;->b:LUc/b;

    invoke-virtual {p3, v0}, Le8/o;->J0(LUc/b;)Le8/o;

    move-result-object v1

    sget-object v2, Lz5/d;->c:LUc/b;

    invoke-virtual {v1, v2}, Le8/o;->x0(LUc/b;)Le8/o;

    move-result-object v1

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f060232

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {v1, v3}, Le8/c;->j0(I)Le8/c;

    move-result-object v1

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x7f060231

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {v1, v3}, Le8/c;->X(I)Le8/c;

    new-instance v1, Le8/o;

    new-instance v3, LB5/a$j;

    invoke-direct {v3, p0}, LB5/a$j;-><init>(LB5/a;)V

    sget-object v6, Le8/c$b;->Middle:Le8/c$b;

    const v7, 0x7f070156

    invoke-direct {v1, v7, v3, v6, p2}, Le8/o;-><init>(ILe8/r;Le8/c$b;Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Le8/o;->J0(LUc/b;)Le8/o;

    move-result-object v3

    invoke-virtual {v3, v2}, Le8/o;->x0(LUc/b;)Le8/o;

    move-result-object v3

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    float-to-int v6, v6

    invoke-virtual {v3, v6}, Le8/c;->j0(I)Le8/c;

    move-result-object v3

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    float-to-int v6, v6

    invoke-virtual {v3, v6}, Le8/c;->X(I)Le8/c;

    new-instance v3, Le8/o;

    new-instance v6, LB5/a$k;

    invoke-direct {v6, p0}, LB5/a$k;-><init>(LB5/a;)V

    sget-object v7, Le8/c$b;->Bottom:Le8/c$b;

    const v8, 0x7f070157

    invoke-direct {v3, v8, v6, v7, p2}, Le8/o;-><init>(ILe8/r;Le8/c$b;Landroid/content/Context;)V

    invoke-virtual {v3, v0}, Le8/o;->J0(LUc/b;)Le8/o;

    move-result-object v6

    invoke-virtual {v6, v2}, Le8/o;->x0(LUc/b;)Le8/o;

    move-result-object v6

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    float-to-int v7, v7

    invoke-virtual {v6, v7}, Le8/c;->j0(I)Le8/c;

    move-result-object v6

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    float-to-int v7, v7

    invoke-virtual {v6, v7}, Le8/c;->X(I)Le8/c;

    new-instance v6, Le8/p;

    invoke-direct {v6, p2}, Le8/p;-><init>(Landroid/content/Context;)V

    invoke-virtual {v6, p3}, Le8/p;->s(Le8/g;)Le8/p;

    invoke-virtual {v6, v1}, Le8/p;->s(Le8/g;)Le8/p;

    invoke-virtual {v6, v3}, Le8/p;->s(Le8/g;)Le8/p;

    const/4 p3, 0x0

    invoke-virtual {v6, p3}, Le8/p;->B(Le8/o;)V

    sget-object p3, LB5/a$b;->a:[I

    iget-object v1, p0, LB5/a;->g:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;

    iget-object v1, v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->c1:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool$C;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget p3, p3, v1

    const/4 v1, 0x1

    if-eq p3, v1, :cond_2

    const/4 v3, 0x2

    if-eq p3, v3, :cond_1

    const/4 v1, 0x3

    if-eq p3, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v6, v3}, Le8/p;->y(I)V

    goto :goto_0

    :cond_1
    invoke-virtual {v6, v1}, Le8/p;->y(I)V

    goto :goto_0

    :cond_2
    const/4 p3, 0x0

    invoke-virtual {v6, p3}, Le8/p;->y(I)V

    :goto_0
    invoke-interface {p1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p3, Le8/c;

    new-instance v1, LB5/a$a;

    invoke-direct {v1, p0}, LB5/a$a;-><init>(LB5/a;)V

    const v3, 0x7f0700ab

    invoke-direct {p3, v3, v1, p2}, Le8/c;-><init>(ILe8/d;Landroid/content/Context;)V

    invoke-virtual {p3, v0}, Le8/c;->T(LUc/b;)Le8/c;

    move-result-object p3

    invoke-virtual {p3, v2}, Le8/c;->L(LUc/b;)Le8/c;

    move-result-object p3

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p3, v0}, Le8/c;->j0(I)Le8/c;

    move-result-object p3

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p2

    float-to-int p2, p2

    invoke-virtual {p3, p2}, Le8/c;->X(I)Le8/c;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public p(Ljava/util/List;Landroid/app/Activity;Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "elements",
            "activity",
            "panel3DView"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Le8/g;",
            ">;",
            "Landroid/app/Activity;",
            "Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;",
            ")V"
        }
    .end annotation

    invoke-super {p0, p1, p2, p3}, Lz5/d;->r(Ljava/util/List;Landroid/app/Activity;Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;)V

    invoke-static {p1, p2, p3}, LF5/a;->f(Ljava/util/List;Landroid/app/Activity;Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;)V

    return-void
.end method

.method public r(Ljava/util/List;Landroid/app/Activity;Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "elements",
            "activity",
            "panel3DView"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Le8/g;",
            ">;",
            "Landroid/app/Activity;",
            "Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;",
            ")V"
        }
    .end annotation

    invoke-super {p0, p1, p2, p3}, Lz5/d;->r(Ljava/util/List;Landroid/app/Activity;Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;)V

    new-instance p3, Le8/k;

    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {v0, p2}, Lgd/b;->l0(FLandroid/content/Context;)I

    move-result v1

    invoke-direct {p3, v1}, Le8/k;-><init>(I)V

    invoke-interface {p1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p3, Le8/c;

    new-instance v1, LB5/a$d;

    invoke-direct {v1, p0}, LB5/a$d;-><init>(LB5/a;)V

    sget-object v2, Le8/c$b;->Disconnected:Le8/c$b;

    const v3, 0x7f07009c

    invoke-direct {p3, v3, v1, v2, p2}, Le8/c;-><init>(ILe8/d;Le8/c$b;Landroid/content/Context;)V

    sget-object v1, Lz5/d;->b:LUc/b;

    invoke-virtual {p3, v1}, Le8/c;->T(LUc/b;)Le8/c;

    move-result-object p3

    sget-object v2, Lz5/d;->c:LUc/b;

    invoke-virtual {p3, v2}, Le8/c;->L(LUc/b;)Le8/c;

    move-result-object p3

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f060232

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p3, v3}, Le8/c;->j0(I)Le8/c;

    move-result-object p3

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x7f060231

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p3, v3}, Le8/c;->X(I)Le8/c;

    move-result-object p3

    invoke-interface {p1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p3, Le8/k;

    invoke-static {v0, p2}, Lgd/b;->l0(FLandroid/content/Context;)I

    move-result v3

    invoke-direct {p3, v3}, Le8/k;-><init>(I)V

    invoke-interface {p1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p3, Le8/c;

    new-instance v3, LB5/a$e;

    invoke-direct {v3, p0}, LB5/a$e;-><init>(LB5/a;)V

    sget-object v6, Le8/c$b;->Left:Le8/c$b;

    const v7, 0x7f07009f

    invoke-direct {p3, v7, v3, v6, p2}, Le8/c;-><init>(ILe8/d;Le8/c$b;Landroid/content/Context;)V

    invoke-virtual {p3, v1}, Le8/c;->T(LUc/b;)Le8/c;

    move-result-object p3

    invoke-virtual {p3, v2}, Le8/c;->L(LUc/b;)Le8/c;

    move-result-object p3

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p3, v3}, Le8/c;->j0(I)Le8/c;

    move-result-object p3

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p3, v3}, Le8/c;->X(I)Le8/c;

    move-result-object p3

    invoke-interface {p1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p3, Le8/c;

    new-instance v3, LB5/a$f;

    invoke-direct {v3, p0}, LB5/a$f;-><init>(LB5/a;)V

    sget-object v6, Le8/c$b;->Middle:Le8/c$b;

    const v7, 0x7f07009d

    invoke-direct {p3, v7, v3, v6, p2}, Le8/c;-><init>(ILe8/d;Le8/c$b;Landroid/content/Context;)V

    invoke-virtual {p3, v1}, Le8/c;->T(LUc/b;)Le8/c;

    move-result-object p3

    invoke-virtual {p3, v2}, Le8/c;->L(LUc/b;)Le8/c;

    move-result-object p3

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p3, v3}, Le8/c;->j0(I)Le8/c;

    move-result-object p3

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p3, v3}, Le8/c;->X(I)Le8/c;

    move-result-object p3

    invoke-interface {p1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p3, Le8/c;

    new-instance v3, LB5/a$g;

    invoke-direct {v3, p0}, LB5/a$g;-><init>(LB5/a;)V

    const v7, 0x7f07009e

    invoke-direct {p3, v7, v3, v6, p2}, Le8/c;-><init>(ILe8/d;Le8/c$b;Landroid/content/Context;)V

    invoke-virtual {p3, v1}, Le8/c;->T(LUc/b;)Le8/c;

    move-result-object p3

    invoke-virtual {p3, v2}, Le8/c;->L(LUc/b;)Le8/c;

    move-result-object p3

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p3, v3}, Le8/c;->j0(I)Le8/c;

    move-result-object p3

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p3, v3}, Le8/c;->X(I)Le8/c;

    move-result-object p3

    invoke-interface {p1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p3, Le8/c;

    new-instance v3, LB5/a$h;

    invoke-direct {v3, p0}, LB5/a$h;-><init>(LB5/a;)V

    sget-object v6, Le8/c$b;->Right:Le8/c$b;

    const v7, 0x7f07007c

    invoke-direct {p3, v7, v3, v6, p2}, Le8/c;-><init>(ILe8/d;Le8/c$b;Landroid/content/Context;)V

    invoke-virtual {p3, v1}, Le8/c;->T(LUc/b;)Le8/c;

    move-result-object p3

    invoke-virtual {p3, v2}, Le8/c;->L(LUc/b;)Le8/c;

    move-result-object p3

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p3, v1}, Le8/c;->j0(I)Le8/c;

    move-result-object p3

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p3, v1}, Le8/c;->X(I)Le8/c;

    move-result-object p3

    invoke-interface {p1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p3, Le8/k;

    invoke-static {v0, p2}, Lgd/b;->l0(FLandroid/content/Context;)I

    move-result p2

    invoke-direct {p3, p2}, Le8/k;-><init>(I)V

    invoke-interface {p1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public s(Landroid/app/Activity;Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "activity",
            "panel3DView"
        }
    .end annotation

    iget-object p1, p0, LB5/a;->g:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    iput-boolean p2, p1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Pool/BasePool;->b1:Z

    :cond_0
    iget-object p1, p0, LB5/a;->j:Lk5/b;

    if-eqz p1, :cond_2

    invoke-static {}, LU3/c;->b()Lj5/b;

    move-result-object p1

    iget-object p2, p0, LB5/a;->j:Lk5/b;

    const/4 v0, 0x0

    if-ne p1, p2, :cond_1

    invoke-static {v0}, LU3/c;->e(Lj5/b;)V

    :cond_1
    iput-object v0, p0, LB5/a;->j:Lk5/b;

    :cond_2
    return-void
.end method

.method public u(Landroid/app/Activity;Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "activity",
            "panel3DView"
        }
    .end annotation

    sget-object p1, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView$j;->Disable:Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView$j;

    const/4 v0, 0x1

    invoke-virtual {p2, p1, v0, v0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;->R1(Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView$j;ZZ)V

    return-void
.end method
