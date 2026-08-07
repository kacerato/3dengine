.class public Lyb/e;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:I = 0x5

.field public static final b:LUc/b;

.field public static final c:LUc/b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$T;->PANEL_TOPBAR:LUc/b;

    sput-object v0, Lyb/e;->b:LUc/b;

    sget-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$T;->PRIMARY_DARK:LUc/b;

    sput-object v0, Lyb/e;->c:LUc/b;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static A(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component$e;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "o",
            "type"
        }
    .end annotation

    invoke-static {p0}, Lyb/e;->J(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->k0(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component$e;)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->isEnabled()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public static B(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Ljava/lang/String;)Z
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "o",
            "tittle"
        }
    .end annotation

    invoke-static {p0}, Lyb/e;->J(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->X()I

    move-result v2

    if-ge v0, v2, :cond_1

    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->V(I)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    move-result-object v2

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public static C(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component$e;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "o",
            "type"
        }
    .end annotation

    invoke-static {p0}, Lyb/e;->J(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->k0(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component$e;)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public static D(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component$e;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "o",
            "type"
        }
    .end annotation

    invoke-static {p0}, Lyb/e;->J(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->k0(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component$e;)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->isEnabled()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public static E(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component$e;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "o",
            "type"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->k0(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component$e;)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->isEnabled()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static F(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "object"
        }
    .end annotation

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->h1()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->isEnabled()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static G(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "object"
        }
    .end annotation

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->h1()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static H(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Z
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "gameObject"
        }
    .end annotation

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->X()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-virtual {p0, v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->V(I)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    move-result-object v2

    instance-of v3, v2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/PhysicsComponent;

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public static I(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Landroid/content/Context;Z)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "object",
            "context",
            "forceTextureName"
        }
    .end annotation

    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    sget-object v0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component$e;->ModelRenderer:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component$e;

    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->v0(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component$e;)Ljava/util/List;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-static {v0, p0}, Lyb/e;->y(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component$e;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    new-instance p0, Ljava/util/LinkedList;

    invoke-direct {p0}, Ljava/util/LinkedList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    check-cast v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/ModelRenderer;

    :try_start_0
    iget-object v2, v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/ModelRenderer;->F:Lcom/itsmagic/engine/Engines/Engine/Material/Material;

    if-eqz v2, :cond_0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/itsmagic/engine/Engines/Engine/Material/Material;

    iget-object v4, v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/ModelRenderer;->F:Lcom/itsmagic/engine/Engines/Engine/Material/Material;

    if-ne v3, v4, :cond_1

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_1

    :cond_2
    iget-object v1, v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/ModelRenderer;->F:Lcom/itsmagic/engine/Engines/Engine/Material/Material;

    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :goto_1
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    :cond_3
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itsmagic/engine/Engines/Engine/Material/Material;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lyb/h;

    iget-object v4, v3, Lyb/h;->a:Lcom/itsmagic/engine/Engines/Engine/Material/Material;

    invoke-virtual {v1, v4, p2}, Lcom/itsmagic/engine/Engines/Engine/Material/Material;->P(Lcom/itsmagic/engine/Engines/Engine/Material/Material;Z)Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v2, v3, Lyb/h;->b:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "Found a another material, adding to unique material others list"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_2

    :cond_5
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "Found a unique material, adding to list"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    new-instance v2, Lyb/h;

    invoke-direct {v2, v1}, Lyb/h;-><init>(Lcom/itsmagic/engine/Engines/Engine/Material/Material;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_6
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_7
    :goto_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_b

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    check-cast p1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/ModelRenderer;

    :try_start_1
    iget-object p2, p1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/ModelRenderer;->F:Lcom/itsmagic/engine/Engines/Engine/Material/Material;

    if-eqz p2, :cond_7

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_8
    :goto_4
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lyb/h;

    iget-object v2, v1, Lyb/h;->a:Lcom/itsmagic/engine/Engines/Engine/Material/Material;

    iget-object v3, p1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/ModelRenderer;->F:Lcom/itsmagic/engine/Engines/Engine/Material/Material;

    if-ne v2, v3, :cond_9

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Modelrenderer already using unique material "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/ModelRenderer;->getMaterialFile()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_4

    :catch_1
    move-exception p1

    goto :goto_6

    :cond_9
    iget-object v2, v1, Lyb/h;->b:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_a
    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/itsmagic/engine/Engines/Engine/Material/Material;

    iget-object v4, p1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/ModelRenderer;->F:Lcom/itsmagic/engine/Engines/Engine/Material/Material;

    if-ne v3, v4, :cond_a

    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Changing material from "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/ModelRenderer;->getMaterialFile()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lyb/h;->a:Lcom/itsmagic/engine/Engines/Engine/Material/Material;

    iget-object v5, v5, Lcom/itsmagic/engine/Engines/Engine/Material/Material;->e:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    iget-object v3, v1, Lyb/h;->a:Lcom/itsmagic/engine/Engines/Engine/Material/Material;

    iget-object v3, v3, Lcom/itsmagic/engine/Engines/Engine/Material/Material;->e:Ljava/lang/String;

    invoke-virtual {p1, v3}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/ModelRenderer;->setMaterialFile(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_5

    :goto_6
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_3

    :cond_b
    return-void
.end method

.method public static J(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "object"
        }
    .end annotation

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->h1()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static K(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "object"
        }
    .end annotation

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static L(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform$G;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "object",
            "state"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->Z3(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform$G;)V

    new-instance v0, Lbd/z;

    invoke-direct {v0}, Lbd/z;-><init>()V

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->H0()Ljava/util/List;

    move-result-object p0

    new-instance v1, Lyb/e$d;

    invoke-direct {v1, p1}, Lyb/e$d;-><init>(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform$G;)V

    invoke-virtual {v0, p0, v1}, Lbd/z;->f(Ljava/util/List;Lbd/t;)V

    return-void
.end method

.method public static M(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Landroid/view/View;LL4/a$e;)V
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "o",
            "anchor",
            "anchorSide"
        }
    .end annotation

    invoke-static {}, Lf8/c;->o()Landroid/app/Activity;

    move-result-object v0

    invoke-static {}, Lf8/c;->t()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lyb/e$a;

    invoke-direct {v2, p0, v0, v1}, Lyb/e$a;-><init>(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Landroid/app/Activity;Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->i1()Z

    move-result v0

    if-nez v0, :cond_5

    new-instance v0, Lwd/b;

    sget-object v1, Lwd/b$b;->Folder:Lwd/b$b;

    const-string v3, ""

    invoke-direct {v0, v1, v3}, Lwd/b;-><init>(Lwd/b$b;Ljava/lang/String;)V

    const/4 v1, 0x0

    move v3, v1

    :goto_0
    invoke-static {}, LH8/d;->p()I

    move-result v4

    if-ge v3, v4, :cond_4

    invoke-static {v3}, LH8/d;->o(I)LA6/e;

    move-result-object v4

    invoke-virtual {v4, p0}, LA6/e;->a(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Lwd/b;

    move-result-object v4

    if-eqz v4, :cond_3

    iget-object v5, v0, Lwd/b;->c:Ljava/util/List;

    if-eqz v5, :cond_2

    move v5, v1

    :goto_1
    iget-object v6, v0, Lwd/b;->c:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_1

    iget-object v6, v0, Lwd/b;->c:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lwd/b;

    iget-object v7, v6, Lwd/b;->b:Ljava/lang/String;

    iget-object v8, v4, Lwd/b;->b:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    iget-object v7, v6, Lwd/b;->a:Lwd/b$b;

    iget-object v8, v4, Lwd/b;->a:Lwd/b$b;

    if-ne v7, v8, :cond_0

    iget-object v4, v4, Lwd/b;->c:Ljava/util/List;

    invoke-virtual {v6, v4}, Lwd/b;->c(Ljava/util/List;)V

    goto :goto_2

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_1
    iget-object v5, v0, Lwd/b;->c:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_2
    new-instance v5, Ljava/util/LinkedList;

    invoke-direct {v5}, Ljava/util/LinkedList;-><init>()V

    iput-object v5, v0, Lwd/b;->c:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    iget-object p0, v0, Lwd/b;->c:Ljava/util/List;

    if-eqz p0, :cond_5

    new-instance p0, Lwd/b;

    invoke-direct {p0}, Lwd/b;-><init>()V

    invoke-interface {v2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p0, v0, Lwd/b;->c:Ljava/util/List;

    invoke-interface {v2, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_5
    invoke-static {p1, p2, v2}, Lq7/a;->D1(Landroid/view/View;LL4/a$e;Ljava/util/List;)V

    return-void
.end method

.method public static N(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "parent"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->H0()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->H0()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-static {v1}, Lyb/e;->N(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_0

    :cond_0
    return v0
.end method

.method public static O(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "object",
            "upgradeChildren"
        }
    .end annotation

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-static {p0, p1}, Ln/a;->a(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Z)V

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->N()I

    move-result v0

    if-ge p1, v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->M(I)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lyb/e;->O(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Z)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static a(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "parent",
            "child"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lyb/e;->b(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;I)V

    return-void
.end method

.method public static b(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "parent",
            "child",
            "tries"
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->H0()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x5

    if-ge p2, v0, :cond_0

    add-int/lit8 p2, p2, 0x1

    invoke-static {p0, p1, p2}, Lyb/e;->b(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;I)V

    :cond_0
    :goto_0
    return-void
.end method

.method public static c(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;II)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "parent",
            "child",
            "index",
            "tries"
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->H0()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/util/ConcurrentModificationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x3

    if-ge p3, v0, :cond_0

    add-int/lit8 p3, p3, 0x1

    invoke-static {p0, p1, p2, p3}, Lyb/e;->c(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;II)V

    :cond_0
    :goto_0
    return-void
.end method

.method public static d(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "object",
            "material"
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->X()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->V(I)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->getType()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component$e;

    move-result-object v2

    sget-object v3, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component$e;->ModelRenderer:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component$e;

    if-ne v2, v3, :cond_0

    check-cast v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/ModelRenderer;

    invoke-virtual {v1, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/ModelRenderer;->setMaterialFile(Ljava/lang/String;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    new-instance v0, Lbd/z;

    invoke-direct {v0}, Lbd/z;-><init>()V

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->H0()Ljava/util/List;

    move-result-object p0

    new-instance v1, Lyb/e$e;

    invoke-direct {v1, p1}, Lyb/e$e;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0, v1}, Lbd/z;->f(Ljava/util/List;Lbd/t;)V

    return-void
.end method

.method public static e(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "object",
            "shader"
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->X()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->V(I)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->getType()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component$e;

    move-result-object v2

    sget-object v3, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component$e;->ModelRenderer:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component$e;

    if-ne v2, v3, :cond_0

    check-cast v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/ModelRenderer;

    iget-object v1, v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/ModelRenderer;->F:Lcom/itsmagic/engine/Engines/Engine/Material/Material;

    if-eqz v1, :cond_0

    invoke-virtual {v1, p1}, Lcom/itsmagic/engine/Engines/Engine/Material/Material;->p0(Ljava/lang/String;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    new-instance v0, Lbd/z;

    invoke-direct {v0}, Lbd/z;-><init>()V

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->H0()Ljava/util/List;

    move-result-object p0

    new-instance v1, Lyb/e$f;

    invoke-direct {v1, p1}, Lyb/e$f;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0, v1}, Lbd/z;->f(Ljava/util/List;Lbd/t;)V

    return-void
.end method

.method public static f(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "gameObject",
            "context"
        }
    .end annotation

    invoke-static {p0, p0, p1}, Lyb/e;->h(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Landroid/content/Context;)V

    return-void
.end method

.method public static g(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Landroid/content/Context;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component$e;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "gameObject",
            "context",
            "type"
        }
    .end annotation

    invoke-static {p0, p0, p1, p2}, Lyb/e;->i(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Landroid/content/Context;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component$e;)V

    return-void
.end method

.method public static h(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Landroid/content/Context;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "object",
            "toObject",
            "context"
        }
    .end annotation

    new-instance v0, Lbd/z;

    invoke-direct {v0}, Lbd/z;-><init>()V

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->H0()Ljava/util/List;

    move-result-object p0

    new-instance v1, Lyb/e$b;

    invoke-direct {v1, p1, p2}, Lyb/e$b;-><init>(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Landroid/content/Context;)V

    invoke-virtual {v0, p0, v1}, Lbd/z;->f(Ljava/util/List;Lbd/t;)V

    return-void
.end method

.method public static i(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Landroid/content/Context;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component$e;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "object",
            "toObject",
            "context",
            "type"
        }
    .end annotation

    new-instance v0, Lbd/z;

    invoke-direct {v0}, Lbd/z;-><init>()V

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->H0()Ljava/util/List;

    move-result-object p0

    new-instance v1, Lyb/e$c;

    invoke-direct {v1, p3, p1, p2}, Lyb/e$c;-><init>(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component$e;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Landroid/content/Context;)V

    invoke-virtual {v0, p0, v1}, Lbd/z;->f(Ljava/util/List;Lbd/t;)V

    return-void
.end method

.method public static j(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "object"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lyb/e;->k(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;I)V

    return-void
.end method

.method public static k(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "object",
            "tries"
        }
    .end annotation

    invoke-static {p0}, Lyb/e;->J(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->r()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x5

    if-ge p1, v0, :cond_1

    add-int/lit8 p1, p1, 0x1

    invoke-static {p0, p1}, Lyb/e;->k(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static l(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;LUc/b;)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "object",
            "duplicableGUID"
        }
    .end annotation

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->getGuid()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GUID;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GUID;->r(LUc/b;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    invoke-static {p0, p1}, Lyb/e;->p(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;LUc/b;)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "duplicableGUID can`t be null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static m(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "object",
            "duplicableGUID"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->getGuid()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GUID;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GUID;->s(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    invoke-static {p0, p1}, Lyb/e;->q(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    move-result-object p0

    return-object p0
.end method

.method public static n(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "object",
            "SGUID"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->getGuid()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GUID;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GUID;->u(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    invoke-static {p0, p1}, Lyb/e;->t(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    move-result-object p0

    return-object p0
.end method

.method public static o(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "object",
            "SGUID"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->getGuid()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GUID;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GUID;->v(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    invoke-static {p0, p1}, Lyb/e;->v(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    move-result-object p0

    return-object p0
.end method

.method public static p(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;LUc/b;)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "object",
            "duplicableGUID"
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->N()I

    move-result v1

    if-ge v0, v1, :cond_2

    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->M(I)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->getGuid()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GUID;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GUID;->r(LUc/b;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_0
    invoke-static {v1, p1}, Lyb/e;->p(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;LUc/b;)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    move-result-object v1

    if-eqz v1, :cond_1

    return-object v1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public static q(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "object",
            "duplicableGUID"
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->N()I

    move-result v1

    if-ge v0, v1, :cond_2

    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->M(I)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->getGuid()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GUID;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GUID;->s(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_0
    invoke-static {v1, p1}, Lyb/e;->q(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    move-result-object v1

    if-eqz v1, :cond_1

    return-object v1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public static r(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "object",
            "SGUID"
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->N()I

    move-result v1

    if-ge v0, v1, :cond_2

    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->M(I)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->getGuid()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GUID;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GUID;->s(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_0
    invoke-static {v1, p1}, Lyb/e;->r(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    move-result-object v1

    if-eqz v1, :cond_1

    return-object v1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public static s(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "object",
            "SGUID"
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->N()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->M(I)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->getGuid()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GUID;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GUID;->s(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static t(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "object",
            "SGUID"
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->N()I

    move-result v1

    if-ge v0, v1, :cond_2

    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->M(I)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->getGuid()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GUID;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GUID;->u(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_0
    invoke-static {v1, p1}, Lyb/e;->t(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    move-result-object v1

    if-eqz v1, :cond_1

    return-object v1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public static u(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "object",
            "SGUID"
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->N()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->M(I)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->getGuid()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GUID;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GUID;->u(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static v(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "object",
            "SGUID"
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->N()I

    move-result v1

    if-ge v0, v1, :cond_2

    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->M(I)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->getGuid()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GUID;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GUID;->v(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_0
    invoke-static {v1, p1}, Lyb/e;->v(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    move-result-object v1

    if-eqz v1, :cond_1

    return-object v1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public static w(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "object",
            "SGUID"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->u0(Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->N()I

    move-result v1

    if-ge v0, v1, :cond_2

    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->M(I)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-static {v1, p1}, Lyb/e;->w(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    move-result-object v1

    if-eqz v1, :cond_1

    return-object v1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public static x(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "object"
        }
    .end annotation

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->getGuid()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GUID;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GUID;->y()Ljava/lang/String;

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->N()I

    move-result v1

    if-ge v0, v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->M(I)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    move-result-object v1

    invoke-static {v1}, Lyb/e;->x(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static y(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component$e;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "type",
            "parent"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component$e;",
            "Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;",
            ")",
            "Ljava/util/List<",
            "Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->H0()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-virtual {v1, p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->v0(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component$e;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-static {p0, v1}, Lyb/e;->y(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component$e;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static z(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "o",
            "component"
        }
    .end annotation

    invoke-static {p0}, Lyb/e;->J(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    :try_start_0
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->X()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->V(I)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v1, p1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    const/4 p0, -0x1

    return p0
.end method
