.class public LD5/b;
.super Lz5/d;
.source "SourceFile"


# instance fields
.field public final g:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;

.field public h:Z

.field public i:F

.field public j:Lj5/c;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "terrain"
        }
    .end annotation

    invoke-direct {p0}, Lz5/d;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, LD5/b;->h:Z

    const/4 v0, 0x0

    iput v0, p0, LD5/b;->i:F

    iput-object p1, p0, LD5/b;->g:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;

    return-void
.end method

.method public static synthetic G(LD5/b;Lj5/c;)Lj5/c;
    .locals 0

    iput-object p1, p0, LD5/b;->j:Lj5/c;

    return-object p1
.end method

.method public static synthetic H(LD5/b;)Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;
    .locals 0

    iget-object p0, p0, LD5/b;->g:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;

    return-object p0
.end method

.method public static synthetic I(LD5/b;)V
    .locals 0

    invoke-direct {p0}, LD5/b;->J()V

    return-void
.end method

.method private J()V
    .locals 3

    iget-object v0, p0, LD5/b;->j:Lj5/c;

    if-nez v0, :cond_0

    new-instance v0, Lj5/c;

    iget-object v1, p0, LD5/b;->g:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;

    new-instance v2, LD5/b$a;

    invoke-direct {v2, p0}, LD5/b$a;-><init>(LD5/b;)V

    invoke-direct {v0, v1, v2}, Lj5/c;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;Lj5/a;)V

    iput-object v0, p0, LD5/b;->j:Lj5/c;

    :cond_0
    iget-object v0, p0, LD5/b;->j:Lj5/c;

    iget-object v1, p0, LD5/b;->g:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;

    iput-object v1, v0, Lj5/c;->b:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;

    invoke-static {}, LU3/c;->b()Lj5/b;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, LU3/c;->b()Lj5/b;

    move-result-object v0

    iget-object v1, p0, LD5/b;->j:Lj5/c;

    if-eq v0, v1, :cond_2

    :cond_1
    iget-object v0, p0, LD5/b;->j:Lj5/c;

    invoke-static {v0}, LU3/c;->e(Lj5/b;)V

    :cond_2
    return-void
.end method


# virtual methods
.method public d()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public e()V
    .locals 2

    iget-boolean v0, p0, LD5/b;->h:Z

    if-eqz v0, :cond_0

    iget v0, p0, LD5/b;->i:F

    invoke-static {}, Lc9/d;->e()F

    move-result v1

    add-float/2addr v0, v1

    iput v0, p0, LD5/b;->i:F

    const/high16 v1, 0x40400000    # 3.0f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    const/4 v0, 0x0

    iput v0, p0, LD5/b;->i:F

    const/4 v0, 0x0

    iput-boolean v0, p0, LD5/b;->h:Z

    :cond_0
    iget-boolean v0, p0, LD5/b;->h:Z

    if-nez v0, :cond_2

    iget-object v0, p0, LD5/b;->g:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;

    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-static {v0}, Lyb/e;->J(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, LD5/b;->g:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;

    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->e1()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, LD5/b;->J()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, LD5/b;->j:Lj5/c;

    if-eqz v0, :cond_2

    invoke-static {}, LU3/c;->b()Lj5/b;

    move-result-object v0

    iget-object v1, p0, LD5/b;->j:Lj5/c;

    if-ne v0, v1, :cond_2

    const/4 v0, 0x0

    invoke-static {v0}, LU3/c;->e(Lj5/b;)V

    iput-object v0, p0, LD5/b;->j:Lj5/c;

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

    sget-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->TERRAIN_LEVEL:LUc/b;

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LUc/b;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public o(Ljava/util/List;Landroid/app/Activity;Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;)V
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

    invoke-super {p0, p1, p2, p3}, Lz5/d;->o(Ljava/util/List;Landroid/app/Activity;Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;)V

    new-instance p3, Le8/k;

    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {v0, p2}, Lgd/b;->l0(FLandroid/content/Context;)I

    move-result v0

    invoke-direct {p3, v0}, Le8/k;-><init>(I)V

    invoke-interface {p1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p3, Le8/o;

    new-instance v0, LD5/b$f;

    invoke-direct {v0, p0}, LD5/b$f;-><init>(LD5/b;)V

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

    new-instance v3, LD5/b$g;

    invoke-direct {v3, p0}, LD5/b$g;-><init>(LD5/b;)V

    sget-object v6, Le8/c$b;->Middle:Le8/c$b;

    const v7, 0x7f070237

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

    new-instance v3, Le8/p;

    invoke-direct {v3, p2}, Le8/p;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, p3}, Le8/p;->s(Le8/g;)Le8/p;

    invoke-virtual {v3, v1}, Le8/p;->s(Le8/g;)Le8/p;

    const/4 p3, 0x0

    const/4 v1, 0x0

    invoke-virtual {v3, p3, v1}, Le8/p;->C(Le8/o;Z)V

    iget-object p3, p0, LD5/b;->g:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;

    iget-boolean p3, p3, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;->J:Z

    if-eqz p3, :cond_0

    const/4 p3, 0x1

    invoke-virtual {v3, p3, v1}, Le8/p;->z(IZ)V

    goto :goto_0

    :cond_0
    invoke-virtual {v3, v1, v1}, Le8/p;->z(IZ)V

    :goto_0
    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p3, Le8/c;

    new-instance v1, LD5/b$h;

    invoke-direct {v1, p0}, LD5/b$h;-><init>(LD5/b;)V

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
    .locals 7
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

    new-instance v1, LD5/b$b;

    invoke-direct {v1, p0}, LD5/b$b;-><init>(LD5/b;)V

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

    move-result v0

    invoke-direct {p3, v0}, Le8/k;-><init>(I)V

    invoke-interface {p1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p3, Le8/c;

    new-instance v0, LD5/b$c;

    invoke-direct {v0, p0}, LD5/b$c;-><init>(LD5/b;)V

    sget-object v3, Le8/c$b;->Left:Le8/c$b;

    const v6, 0x7f07009f

    invoke-direct {p3, v6, v0, v3, p2}, Le8/c;-><init>(ILe8/d;Le8/c$b;Landroid/content/Context;)V

    invoke-virtual {p3, v1}, Le8/c;->T(LUc/b;)Le8/c;

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

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p3, v0}, Le8/c;->X(I)Le8/c;

    move-result-object p3

    invoke-interface {p1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p3, Le8/c;

    new-instance v0, LD5/b$d;

    invoke-direct {v0, p0}, LD5/b$d;-><init>(LD5/b;)V

    sget-object v3, Le8/c$b;->Middle:Le8/c$b;

    const v6, 0x7f07009d

    invoke-direct {p3, v6, v0, v3, p2}, Le8/c;-><init>(ILe8/d;Le8/c$b;Landroid/content/Context;)V

    invoke-virtual {p3, v1}, Le8/c;->T(LUc/b;)Le8/c;

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

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p3, v0}, Le8/c;->X(I)Le8/c;

    move-result-object p3

    invoke-interface {p1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p3, Le8/c;

    new-instance v0, LD5/b$e;

    invoke-direct {v0, p0}, LD5/b$e;-><init>(LD5/b;)V

    sget-object v3, Le8/c$b;->Right:Le8/c$b;

    const v6, 0x7f070235

    invoke-direct {p3, v6, v0, v3, p2}, Le8/c;-><init>(ILe8/d;Le8/c$b;Landroid/content/Context;)V

    invoke-virtual {p3, v1}, Le8/c;->T(LUc/b;)Le8/c;

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

    iget-object p1, p0, LD5/b;->j:Lj5/c;

    if-eqz p1, :cond_1

    invoke-static {}, LU3/c;->b()Lj5/b;

    move-result-object p1

    iget-object p2, p0, LD5/b;->j:Lj5/c;

    const/4 v0, 0x0

    if-ne p1, p2, :cond_0

    invoke-static {v0}, LU3/c;->e(Lj5/b;)V

    :cond_0
    iput-object v0, p0, LD5/b;->j:Lj5/c;

    :cond_1
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

    iget-object p1, p0, LD5/b;->g:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;

    sget-object p2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$W;->Level:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$W;

    iput-object p2, p1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;->L:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$W;

    return-void
.end method
