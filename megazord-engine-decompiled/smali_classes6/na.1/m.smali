.class public Lna/m;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(LMc/h;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "touch"
        }
    .end annotation

    if-eqz p0, :cond_0

    invoke-virtual {p0}, LMc/h;->d()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "touch can`t be null"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static b(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;)LW5/b;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "tittle",
            "normalColor",
            "pressedColor"
        }
    .end annotation

    new-instance v0, Lna/m$a;

    invoke-direct {v0, p1, p2}, Lna/m$a;-><init>(Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;)V

    invoke-static {p0, v0}, LZ5/c;->e(Ljava/lang/String;LZ5/c$o0;)LW5/b;

    move-result-object p0

    return-object p0
.end method

.method public static c(Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;Loa/c;LJAVARuntime/GUIUtils$TouchFilter;)LMc/h;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "controller",
            "rect",
            "touchFilter"
        }
    .end annotation

    sget-object v0, LKc/a;->k:Ljava/util/List;

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LMc/h;

    if-eqz v2, :cond_1

    invoke-static {v2, p2}, LJAVARuntime/GUIUtils;->applyFilter(LMc/h;LJAVARuntime/GUIUtils$TouchFilter;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2}, LMc/h;->q()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {}, Lf8/c;->D()Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;->W(LMc/h;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {v2, p0, p1}, Lna/m;->d(LMc/h;Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;Loa/c;)Z

    move-result v3

    if-eqz v3, :cond_1

    return-object v2

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public static d(LMc/h;Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;Loa/c;)Z
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "touch",
            "controller",
            "rect"
        }
    .end annotation

    if-eqz p0, :cond_4

    if-eqz p1, :cond_3

    if-eqz p2, :cond_2

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;->getControllerScreenRect()Loa/c;

    move-result-object p1

    invoke-static {p0}, Lna/m;->a(LMc/h;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->k0()F

    move-result v1

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->l0()F

    move-result v0

    instance-of v2, p0, Lna/r;

    if-eqz v2, :cond_0

    invoke-virtual {p0}, LMc/h;->g()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    move-result-object v0

    iget v0, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->x:F

    invoke-virtual {p1}, Loa/c;->c()I

    move-result v1

    int-to-float v1, v1

    div-float v1, v0, v1

    invoke-virtual {p0}, LMc/h;->g()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    move-result-object p0

    iget p0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->y:F

    invoke-virtual {p1}, Loa/c;->b()I

    move-result v0

    int-to-float v0, v0

    div-float v0, p0, v0

    :cond_0
    invoke-virtual {p2}, Loa/c;->d()I

    move-result p0

    int-to-float p0, p0

    invoke-virtual {p1}, Loa/c;->c()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr p0, v2

    invoke-virtual {p2}, Loa/c;->e()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1}, Loa/c;->b()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    invoke-virtual {p2}, Loa/c;->f()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p1}, Loa/c;->c()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    invoke-virtual {p2}, Loa/c;->g()I

    move-result p2

    int-to-float p2, p2

    invoke-virtual {p1}, Loa/c;->b()I

    move-result p1

    int-to-float p1, p1

    div-float/2addr p2, p1

    cmpl-float p0, v1, p0

    if-ltz p0, :cond_1

    cmpg-float p0, v1, v3

    if-gtz p0, :cond_1

    cmpl-float p0, v0, v2

    if-ltz p0, :cond_1

    cmpg-float p0, v0, p2

    if-gtz p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0

    :cond_2
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "rect can`t be null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "controller can`t be null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "touch can`t be null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static e(LMc/h;Loa/c;Loa/c;)Z
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "touch",
            "controllerRect",
            "rect"
        }
    .end annotation

    if-eqz p0, :cond_4

    if-eqz p1, :cond_3

    if-eqz p2, :cond_2

    invoke-static {p0}, Lna/m;->a(LMc/h;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->k0()F

    move-result v1

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->l0()F

    move-result v0

    instance-of v2, p0, Lna/r;

    if-eqz v2, :cond_0

    invoke-virtual {p0}, LMc/h;->g()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    move-result-object v0

    iget v0, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->x:F

    invoke-virtual {p1}, Loa/c;->c()I

    move-result v1

    int-to-float v1, v1

    div-float v1, v0, v1

    invoke-virtual {p0}, LMc/h;->g()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    move-result-object p0

    iget p0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->y:F

    invoke-virtual {p1}, Loa/c;->b()I

    move-result v0

    int-to-float v0, v0

    div-float v0, p0, v0

    :cond_0
    invoke-virtual {p2}, Loa/c;->d()I

    move-result p0

    int-to-float p0, p0

    invoke-virtual {p1}, Loa/c;->c()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr p0, v2

    invoke-virtual {p2}, Loa/c;->e()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1}, Loa/c;->b()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    invoke-virtual {p2}, Loa/c;->f()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p1}, Loa/c;->c()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    invoke-virtual {p2}, Loa/c;->g()I

    move-result p2

    int-to-float p2, p2

    invoke-virtual {p1}, Loa/c;->b()I

    move-result p1

    int-to-float p1, p1

    div-float/2addr p2, p1

    cmpl-float p0, v1, p0

    if-ltz p0, :cond_1

    cmpg-float p0, v1, v3

    if-gtz p0, :cond_1

    cmpl-float p0, v0, v2

    if-ltz p0, :cond_1

    cmpg-float p0, v0, p2

    if-gtz p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0

    :cond_2
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "rect can`t be null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "controllerRect can`t be null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "touch can`t be null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
