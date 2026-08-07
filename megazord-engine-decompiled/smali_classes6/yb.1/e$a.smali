.class public Lyb/e$a;
.super Ljava/util/LinkedList;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lyb/e;->M(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Landroid/view/View;LL4/a$e;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/LinkedList<",
        "Lwd/b;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

.field public final synthetic c:Landroid/app/Activity;

.field public final synthetic d:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Landroid/app/Activity;Landroid/content/Context;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "val$o",
            "val$activity",
            "val$context"
        }
    .end annotation

    iput-object p1, p0, Lyb/e$a;->b:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    iput-object p2, p0, Lyb/e$a;->c:Landroid/app/Activity;

    iput-object p3, p0, Lyb/e$a;->d:Landroid/content/Context;

    invoke-direct {p0}, Ljava/util/LinkedList;-><init>()V

    new-instance p2, Lwd/b;

    new-instance p3, Lyb/e$a$a;

    invoke-direct {p3, p0}, Lyb/e$a$a;-><init>(Lyb/e$a;)V

    new-instance v0, Lyb/e$a$f;

    invoke-direct {v0, p0}, Lyb/e$a$f;-><init>(Lyb/e$a;)V

    invoke-direct {p2, p3, v0}, Lwd/b;-><init>(Ljava/util/List;Ljava/util/List;)V

    invoke-virtual {p0, p2}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    new-instance p2, Lwd/b;

    sget-object p3, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->EMPTY:LUc/b;

    invoke-static {p3}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LUc/b;)Ljava/lang/String;

    move-result-object p3

    new-instance v0, Lyb/e$a$g;

    invoke-direct {v0, p0}, Lyb/e$a$g;-><init>(Lyb/e$a;)V

    const v1, 0x7f070115

    invoke-direct {p2, v1, p3, v0}, Lwd/b;-><init>(ILjava/lang/String;Lwd/d;)V

    invoke-virtual {p0, p2}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    new-instance p2, Lwd/b;

    sget-object p3, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->OBJECT_UTILS_CREATE_CHILD_OBJECT:LUc/b;

    invoke-static {p3}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LUc/b;)Ljava/lang/String;

    move-result-object p3

    invoke-static {p1}, Lv7/a;->n(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Ljava/util/List;

    move-result-object v0

    const v1, 0x7f070059

    invoke-direct {p2, v1, p3, v0}, Lwd/b;-><init>(ILjava/lang/String;Ljava/util/List;)V

    invoke-virtual {p0, p2}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    new-instance p2, Lwd/b;

    invoke-direct {p2}, Lwd/b;-><init>()V

    invoke-virtual {p0, p2}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    new-instance p2, Lwd/b;

    sget-object p3, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->OBJECT_UTILS_CHANGE_PARENT:LUc/b;

    invoke-static {p3}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LUc/b;)Ljava/lang/String;

    move-result-object p3

    new-instance v0, Lyb/e$a$h;

    invoke-direct {v0, p0}, Lyb/e$a$h;-><init>(Lyb/e$a;)V

    const v1, 0x7f070153

    invoke-direct {p2, v1, p3, v0}, Lwd/b;-><init>(ILjava/lang/String;Lwd/d;)V

    invoke-virtual {p0, p2}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->i1()Z

    move-result p2

    if-nez p2, :cond_1

    new-instance p2, Lwd/b;

    invoke-direct {p2}, Lwd/b;-><init>()V

    invoke-virtual {p0, p2}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    new-instance p2, Lwd/b;

    new-instance p3, Lyb/e$a$i;

    invoke-direct {p3, p0}, Lyb/e$a$i;-><init>(Lyb/e$a;)V

    const v0, 0x7f0700dc

    const-string v1, "Export object"

    invoke-direct {p2, v0, v1, p3}, Lwd/b;-><init>(ILjava/lang/String;Lwd/d;)V

    invoke-virtual {p0, p2}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    new-instance p2, Lwd/b;

    new-instance p3, Lyb/e$a$j;

    invoke-direct {p3, p0}, Lyb/e$a$j;-><init>(Lyb/e$a;)V

    const v0, 0x7f07012a

    const-string v1, "Create prefab"

    invoke-direct {p2, v0, v1, p3}, Lwd/b;-><init>(ILjava/lang/String;Lwd/d;)V

    invoke-virtual {p0, p2}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    sget-object p2, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component$e;->Armature:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component$e;

    invoke-virtual {p1, p2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->k0(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component$e;)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    move-result-object p2

    const-string p3, "Create mask from skeleton"

    const v0, 0x7f07025f

    if-eqz p2, :cond_0

    new-instance p2, Lwd/b;

    new-instance v1, Lyb/e$a$k;

    invoke-direct {v1, p0}, Lyb/e$a$k;-><init>(Lyb/e$a;)V

    invoke-direct {p2, v0, p3, v1}, Lwd/b;-><init>(ILjava/lang/String;Lwd/d;)V

    invoke-virtual {p0, p2}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    :cond_0
    sget-object p2, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component$e;->SkinnedModelRenderer:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component$e;

    invoke-virtual {p1, p2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->k0(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component$e;)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    move-result-object p2

    if-eqz p2, :cond_1

    new-instance p2, Lwd/b;

    new-instance v1, Lyb/e$a$l;

    invoke-direct {v1, p0}, Lyb/e$a$l;-><init>(Lyb/e$a;)V

    invoke-direct {p2, v0, p3, v1}, Lwd/b;-><init>(ILjava/lang/String;Lwd/d;)V

    invoke-virtual {p0, p2}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    :cond_1
    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->i1()Z

    move-result p2

    if-nez p2, :cond_2

    new-instance p2, Lwd/b;

    invoke-direct {p2}, Lwd/b;-><init>()V

    invoke-virtual {p0, p2}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    new-instance p2, Lwd/b;

    new-instance p3, Lyb/e$a$m;

    invoke-direct {p3, p0}, Lyb/e$a$m;-><init>(Lyb/e$a;)V

    const-string v0, "Bake"

    invoke-direct {p2, v0, p3}, Lwd/b;-><init>(Ljava/lang/String;Ljava/util/List;)V

    invoke-virtual {p0, p2}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    new-instance p2, Lwd/b;

    invoke-direct {p2}, Lwd/b;-><init>()V

    invoke-virtual {p0, p2}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    sget-object p2, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component$e;->SkinJoint:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component$e;

    invoke-static {p1, p2}, Lyb/e;->C(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component$e;)Z

    move-result p1

    if-eqz p1, :cond_2

    new-instance p1, Lwd/b;

    sget-object p2, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->OBJECT_UTILS_ADD_CHILD_BONE:LUc/b;

    invoke-static {p2}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LUc/b;)Ljava/lang/String;

    move-result-object p2

    new-instance p3, Lyb/e$a$b;

    invoke-direct {p3, p0}, Lyb/e$a$b;-><init>(Lyb/e$a;)V

    invoke-direct {p1, p2, p3}, Lwd/b;-><init>(Ljava/lang/String;Lwd/d;)V

    invoke-virtual {p0, p1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    new-instance p1, Lwd/b;

    sget-object p2, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->OBJECT_UTILS_ADD_SKELETON:LUc/b;

    invoke-static {p2}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LUc/b;)Ljava/lang/String;

    move-result-object p2

    new-instance p3, Lyb/e$a$c;

    invoke-direct {p3, p0}, Lyb/e$a$c;-><init>(Lyb/e$a;)V

    invoke-direct {p1, p2, p3}, Lwd/b;-><init>(Ljava/lang/String;Lwd/d;)V

    invoke-virtual {p0, p1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    new-instance p1, Lwd/b;

    invoke-direct {p1}, Lwd/b;-><init>()V

    invoke-virtual {p0, p1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    :cond_2
    new-instance p1, Lwd/b;

    sget-object p2, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->OBJECT_UTILS_BATCH:LUc/b;

    invoke-static {p2}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LUc/b;)Ljava/lang/String;

    move-result-object p2

    new-instance p3, Lyb/e$a$d;

    invoke-direct {p3, p0}, Lyb/e$a$d;-><init>(Lyb/e$a;)V

    invoke-direct {p1, p2, p3}, Lwd/b;-><init>(Ljava/lang/String;Ljava/util/List;)V

    invoke-virtual {p0, p1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    new-instance p1, Lwd/b;

    invoke-direct {p1}, Lwd/b;-><init>()V

    invoke-virtual {p0, p1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    new-instance p1, Lwd/b;

    new-instance p2, Lyb/e$a$e;

    invoke-direct {p2, p0}, Lyb/e$a$e;-><init>(Lyb/e$a;)V

    const-string p3, "Dev tools"

    invoke-direct {p1, p3, p2}, Lwd/b;-><init>(Ljava/lang/String;Ljava/util/List;)V

    invoke-virtual {p0, p1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    return-void
.end method
