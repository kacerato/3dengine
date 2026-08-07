.class public LA5/a;
.super Lz5/d;
.source "SourceFile"


# instance fields
.field public final g:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/AnimationPlayer;

.field public final h:Lcom/itsmagic/engine/Engines/Engine/Animation/d;

.field public i:Z


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/AnimationPlayer;Lcom/itsmagic/engine/Engines/Engine/Animation/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "ap",
            "animation"
        }
    .end annotation

    invoke-direct {p0}, Lz5/d;-><init>()V

    if-eqz p2, :cond_0

    iput-object p1, p0, LA5/a;->g:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/AnimationPlayer;

    iput-object p2, p0, LA5/a;->h:Lcom/itsmagic/engine/Engines/Engine/Animation/d;

    invoke-virtual {p0}, LA5/a;->I()V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1}, Ljava/lang/RuntimeException;-><init>()V

    throw p1
.end method


# virtual methods
.method public final G(Ljava/util/List;Landroid/app/Activity;Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;)V
    .locals 11
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

    new-instance v0, Le8/o;

    new-instance v1, LA5/a$c;

    invoke-direct {v1, p0, p3}, LA5/a$c;-><init>(LA5/a;Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;)V

    sget-object v2, Le8/c$b;->Disconnected:Le8/c$b;

    const v3, 0x7f070075

    invoke-direct {v0, v3, v1, v2, p2}, Le8/o;-><init>(ILe8/r;Le8/c$b;Landroid/content/Context;)V

    sget-object v1, Lz5/d;->b:LUc/b;

    invoke-virtual {v0, v1}, Le8/o;->J0(LUc/b;)Le8/o;

    move-result-object v2

    sget-object v3, Lz5/d;->c:LUc/b;

    invoke-virtual {v2, v3}, Le8/o;->x0(LUc/b;)Le8/o;

    move-result-object v2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f060232

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {v2, v4}, Le8/c;->j0(I)Le8/c;

    move-result-object v2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v6, 0x7f060231

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {v2, v4}, Le8/c;->X(I)Le8/c;

    new-instance v2, Le8/o;

    new-instance v4, LA5/a$d;

    invoke-direct {v4, p0, p3}, LA5/a$d;-><init>(LA5/a;Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;)V

    sget-object v7, Le8/c$b;->Top:Le8/c$b;

    const v8, 0x7f0701e1

    invoke-direct {v2, v8, v4, v7, p2}, Le8/o;-><init>(ILe8/r;Le8/c$b;Landroid/content/Context;)V

    invoke-virtual {v2, v1}, Le8/o;->J0(LUc/b;)Le8/o;

    move-result-object v4

    invoke-virtual {v4, v3}, Le8/o;->x0(LUc/b;)Le8/o;

    move-result-object v4

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    float-to-int v7, v7

    invoke-virtual {v4, v7}, Le8/c;->j0(I)Le8/c;

    move-result-object v4

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    float-to-int v7, v7

    invoke-virtual {v4, v7}, Le8/c;->X(I)Le8/c;

    new-instance v4, Le8/o;

    new-instance v7, LA5/a$e;

    invoke-direct {v7, p0, p3}, LA5/a$e;-><init>(LA5/a;Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;)V

    sget-object v8, Le8/c$b;->Middle:Le8/c$b;

    const v9, 0x7f070076

    invoke-direct {v4, v9, v7, v8, p2}, Le8/o;-><init>(ILe8/r;Le8/c$b;Landroid/content/Context;)V

    invoke-virtual {v4, v1}, Le8/o;->J0(LUc/b;)Le8/o;

    move-result-object v7

    invoke-virtual {v7, v3}, Le8/o;->x0(LUc/b;)Le8/o;

    move-result-object v7

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v8

    float-to-int v8, v8

    invoke-virtual {v7, v8}, Le8/c;->j0(I)Le8/c;

    move-result-object v7

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v8

    float-to-int v8, v8

    invoke-virtual {v7, v8}, Le8/c;->X(I)Le8/c;

    new-instance v7, Le8/o;

    new-instance v8, LA5/a$f;

    invoke-direct {v8, p0, p3}, LA5/a$f;-><init>(LA5/a;Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;)V

    sget-object v9, Le8/c$b;->Bottom:Le8/c$b;

    const v10, 0x7f070077

    invoke-direct {v7, v10, v8, v9, p2}, Le8/o;-><init>(ILe8/r;Le8/c$b;Landroid/content/Context;)V

    invoke-virtual {v7, v1}, Le8/o;->J0(LUc/b;)Le8/o;

    move-result-object v1

    invoke-virtual {v1, v3}, Le8/o;->x0(LUc/b;)Le8/o;

    move-result-object v1

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {v1, v3}, Le8/c;->j0(I)Le8/c;

    move-result-object v1

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {v1, v3}, Le8/c;->X(I)Le8/c;

    new-instance v1, Le8/p;

    invoke-direct {v1, p2}, Le8/p;-><init>(Landroid/content/Context;)V

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Le8/p;->E(Z)V

    invoke-virtual {v1, v0}, Le8/p;->s(Le8/g;)Le8/p;

    new-instance v3, Le8/k;

    const/high16 v5, 0x40000000    # 2.0f

    invoke-static {v5, p2}, Lgd/b;->l0(FLandroid/content/Context;)I

    move-result p2

    invoke-direct {v3, p2}, Le8/k;-><init>(I)V

    invoke-virtual {v1, v3}, Le8/p;->s(Le8/g;)Le8/p;

    invoke-virtual {v1, v2}, Le8/p;->s(Le8/g;)Le8/p;

    invoke-virtual {v1, v4}, Le8/p;->s(Le8/g;)Le8/p;

    invoke-virtual {v1, v7}, Le8/p;->s(Le8/g;)Le8/p;

    sget-object p2, LA5/a$g;->a:[I

    invoke-virtual {p3}, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;->E1()Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView$j;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Enum;->ordinal()I

    move-result p3

    aget p2, p2, p3

    const/4 p3, 0x1

    if-eq p2, p3, :cond_3

    const/4 p3, 0x2

    if-eq p2, p3, :cond_2

    const/4 p3, 0x3

    if-eq p2, p3, :cond_1

    const/4 p3, 0x4

    if-eq p2, p3, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v1, v7}, Le8/p;->B(Le8/o;)V

    goto :goto_0

    :cond_1
    invoke-virtual {v1, v4}, Le8/p;->B(Le8/o;)V

    goto :goto_0

    :cond_2
    invoke-virtual {v1, v2}, Le8/p;->B(Le8/o;)V

    goto :goto_0

    :cond_3
    invoke-virtual {v1, v0}, Le8/p;->B(Le8/o;)V

    :goto_0
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public H()Z
    .locals 1

    sget-object v0, Lo8/b;->f:LU8/a;

    iget-object v0, v0, LU8/a;->d:Lcom/itsmagic/engine/Core/Components/Settings/Server/UserSystem/UserController;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Core/Components/Settings/Server/UserSystem/UserController;->S()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public I()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, LA5/a;->i:Z

    return-void
.end method

.method public final J()V
    .locals 1

    iget-object v0, p0, LA5/a;->g:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/AnimationPlayer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/AnimationPlayer;->saveAnimations()V

    :cond_0
    return-void
.end method

.method public final K()V
    .locals 1

    iget-boolean v0, p0, LA5/a;->i:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, LA5/a;->i:Z

    return-void
.end method

.method public c()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public d()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public e()V
    .locals 0

    invoke-virtual {p0}, LA5/a;->K()V

    return-void
.end method

.method public g()Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Axis/MousePicker/MousePicker$i;
    .locals 1

    sget-object v0, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Axis/MousePicker/MousePicker;->T:Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Axis/MousePicker/MousePicker$i;

    return-object v0
.end method

.method public i()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Edit - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, LA5/a;->h:Lcom/itsmagic/engine/Engines/Engine/Animation/d;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/Animation/d;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lmd/b;->O(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public o(Ljava/util/List;Landroid/app/Activity;Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;)V
    .locals 2
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

    new-instance v0, Le8/k;

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v1, p2}, Lgd/b;->l0(FLandroid/content/Context;)I

    move-result v1

    invoke-direct {v0, v1}, Le8/k;-><init>(I)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, p1, p2, p3}, LA5/a;->G(Ljava/util/List;Landroid/app/Activity;Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;)V

    return-void
.end method

.method public p(Ljava/util/List;Landroid/app/Activity;Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;)V
    .locals 2
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

    new-instance v0, Le8/k;

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v1, p2}, Lgd/b;->l0(FLandroid/content/Context;)I

    move-result v1

    invoke-direct {v0, v1}, Le8/k;-><init>(I)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {p1, p2, p3}, LF5/a;->h(Ljava/util/List;Landroid/app/Activity;Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;)V

    return-void
.end method

.method public r(Ljava/util/List;Landroid/app/Activity;Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;)V
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

    invoke-super {p0, p1, p2, p3}, Lz5/d;->r(Ljava/util/List;Landroid/app/Activity;Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;)V

    new-instance v0, Le8/k;

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v1, p2}, Lgd/b;->l0(FLandroid/content/Context;)I

    move-result v2

    invoke-direct {v0, v2}, Le8/k;-><init>(I)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Le8/c;

    new-instance v2, LA5/a$a;

    invoke-direct {v2, p0, p3}, LA5/a$a;-><init>(LA5/a;Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;)V

    sget-object v3, Le8/c$b;->Left:Le8/c$b;

    const v4, 0x7f0700ab

    invoke-direct {v0, v4, v2, v3, p2}, Le8/c;-><init>(ILe8/d;Le8/c$b;Landroid/content/Context;)V

    sget-object v2, Lz5/d;->b:LUc/b;

    invoke-virtual {v0, v2}, Le8/c;->T(LUc/b;)Le8/c;

    move-result-object v0

    sget-object v3, Lz5/d;->c:LUc/b;

    invoke-virtual {v0, v3}, Le8/c;->L(LUc/b;)Le8/c;

    move-result-object v0

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f060232

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {v0, v4}, Le8/c;->j0(I)Le8/c;

    move-result-object v0

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v6, 0x7f060231

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {v0, v4}, Le8/c;->X(I)Le8/c;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Le8/o;

    new-instance v4, LA5/a$b;

    invoke-direct {v4, p0, p3}, LA5/a$b;-><init>(LA5/a;Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;)V

    sget-object v7, Le8/c$b;->Right:Le8/c$b;

    const v8, 0x7f0700aa

    invoke-direct {v0, v8, v4, v7, p2}, Le8/o;-><init>(ILe8/r;Le8/c$b;Landroid/content/Context;)V

    iget-boolean v4, p3, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;->k0:Z

    const/4 v7, 0x0

    invoke-virtual {v0, v4, v7}, Le8/o;->u0(ZZ)Le8/o;

    move-result-object v0

    invoke-virtual {v0, v2}, Le8/o;->J0(LUc/b;)Le8/o;

    move-result-object v0

    invoke-virtual {v0, v3}, Le8/o;->x0(LUc/b;)Le8/o;

    move-result-object v0

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v0, v2}, Le8/c;->j0(I)Le8/c;

    move-result-object v0

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v0, v2}, Le8/c;->X(I)Le8/c;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Le8/k;

    invoke-static {v1, p2}, Lgd/b;->l0(FLandroid/content/Context;)I

    move-result v1

    invoke-direct {v0, v1}, Le8/k;-><init>(I)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {p1, p2, p3}, LF5/a;->d(Ljava/util/List;Landroid/app/Activity;Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;)V

    return-void
.end method

.method public s(Landroid/app/Activity;Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;)V
    .locals 0
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

    invoke-virtual {p0}, LA5/a;->I()V

    invoke-static {}, LO4/a;->a()V

    invoke-static {}, LU5/a;->x1()V

    return-void
.end method

.method public t()V
    .locals 0

    invoke-virtual {p0}, LA5/a;->J()V

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

    iget-object p1, p0, LA5/a;->g:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/AnimationPlayer;

    iget-object v0, p0, LA5/a;->h:Lcom/itsmagic/engine/Engines/Engine/Animation/d;

    invoke-virtual {p1, v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/AnimationPlayer;->setSelectedAnimation(Lcom/itsmagic/engine/Engines/Engine/Animation/d;)V

    iget-object p1, p0, LA5/a;->h:Lcom/itsmagic/engine/Engines/Engine/Animation/d;

    iget-object v0, p0, LA5/a;->g:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/AnimationPlayer;

    invoke-static {p1, v0}, LO4/a;->d(Lcom/itsmagic/engine/Engines/Engine/Animation/d;Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Animation/AnimationPlayer;)V

    invoke-static {}, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;->l2()Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-static {}, Lf8/c;->D()Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;->u0(Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;)V

    :cond_0
    sget-object p1, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView$j;->Disable:Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView$j;

    const/4 v0, 0x1

    invoke-virtual {p2, p1, v0, v0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;->R1(Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView$j;ZZ)V

    invoke-virtual {p0}, LA5/a;->I()V

    return-void
.end method
