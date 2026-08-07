.class public Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Actions/Component/PickComponentNode;
.super Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;
.source "SourceFile"

# interfaces
.implements Lya/F;


# static fields
.field public static final i:Ljava/lang/String; = "PickComponent"

.field public static final j:I = 0x0

.field public static final k:I = 0x0

.field public static final l:I = 0x1

.field public static final m:I = 0x2


# instance fields
.field public componentType:Lya/H;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public final g:[Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

.field public transient h:[Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Actions/Component/PickComponentNode$a;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Actions/Component/PickComponentNode$a;-><init>()V

    invoke-static {v0}, Lya/o;->a(Lya/p;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;-><init>()V

    invoke-static {}, Lya/d;->h()Lya/H;

    move-result-object v0

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Actions/Component/PickComponentNode;->componentType:Lya/H;

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    const-string v1, "Object"

    sget-object v2, Lya/H;->GAME_OBJECT:Lya/H;

    invoke-direct {v0, v1, v2}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;-><init>(Ljava/lang/String;Lya/H;)V

    sget-object v1, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->NOCODE_SLOT_OBJECT:LUc/b;

    invoke-static {v1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LUc/b;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;->c(Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    move-result-object v0

    filled-new-array {v0}, [Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    move-result-object v0

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Actions/Component/PickComponentNode;->g:[Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    const-string v0, "PickComponent"

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;->serializedNodeType:Ljava/lang/String;

    return-void
.end method

.method public static synthetic G0(Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Actions/Component/PickComponentNode;Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Actions/Component/PickComponentNode;->L0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic H0(Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Actions/Component/PickComponentNode;Lya/H;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Actions/Component/PickComponentNode;->K0(Lya/H;)V

    return-void
.end method


# virtual methods
.method public F()[Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Actions/Component/PickComponentNode;->g:[Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    return-object v0
.end method

.method public I(Landroid/content/Context;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "LW5/b;",
            ">;"
        }
    .end annotation

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, LW5/b;

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Actions/Component/PickComponentNode$b;

    invoke-direct {v1, p0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Actions/Component/PickComponentNode$b;-><init>(Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Actions/Component/PickComponentNode;)V

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Actions/Component/PickComponentNode;->J0()Lya/H;

    move-result-object v2

    invoke-static {v2}, Lya/d;->i(Lya/H;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, LW5/b$a;->SLDropdownWrap:LW5/b$a;

    invoke-direct {v0, v1, v2, v3}, LW5/b;-><init>(LX5/h;Ljava/lang/String;LW5/b$a;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, LW5/b;->l(Z)LW5/b;

    move-result-object v0

    const-string v1, "type"

    iput-object v1, v0, LW5/b;->m:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p1
.end method

.method public final I0()[Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;
    .locals 5

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Actions/Component/PickComponentNode;->J0()Lya/H;

    move-result-object v0

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Actions/Component/PickComponentNode;->h:[Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    if-eqz v1, :cond_0

    array-length v2, v1

    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    const/4 v2, 0x2

    aget-object v2, v1, v2

    if-eqz v2, :cond_0

    iget-object v2, v2, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;->type:Lya/H;

    if-ne v2, v0, :cond_0

    return-object v1

    :cond_0
    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    sget-object v2, Lya/H;->BRANCH:Lya/H;

    const-string v3, "Found"

    invoke-direct {v1, v3, v2}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;-><init>(Ljava/lang/String;Lya/H;)V

    sget-object v3, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->NOCODE_SLOT_FOUND:LUc/b;

    invoke-static {v3}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LUc/b;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;->c(Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    move-result-object v1

    new-instance v3, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    const-string v4, "Missing"

    invoke-direct {v3, v4, v2}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;-><init>(Ljava/lang/String;Lya/H;)V

    sget-object v2, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->NOCODE_SLOT_MISSING:LUc/b;

    invoke-static {v2}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LUc/b;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;->c(Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    move-result-object v2

    new-instance v3, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    const-string v4, "Component"

    invoke-direct {v3, v4, v0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;-><init>(Ljava/lang/String;Lya/H;)V

    sget-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->NOCODE_SLOT_COMPONENT:LUc/b;

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LUc/b;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;->c(Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    move-result-object v0

    filled-new-array {v1, v2, v0}, [Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    move-result-object v0

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Actions/Component/PickComponentNode;->h:[Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    return-object v0
.end method

.method public J()[Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;
    .locals 1

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Actions/Component/PickComponentNode;->I0()[Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    move-result-object v0

    return-object v0
.end method

.method public final J0()Lya/H;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Actions/Component/PickComponentNode;->componentType:Lya/H;

    invoke-static {v0}, Lya/d;->y(Lya/H;)Lya/H;

    move-result-object v0

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Actions/Component/PickComponentNode;->componentType:Lya/H;

    return-object v0
.end method

.method public final K0(Lya/H;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    invoke-static {p1}, Lya/d;->y(Lya/H;)Lya/H;

    move-result-object p1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Actions/Component/PickComponentNode;->componentType:Lya/H;

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Actions/Component/PickComponentNode;->componentType:Lya/H;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Actions/Component/PickComponentNode;->h:[Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;->A()Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->C0()V

    :cond_1
    return-void
.end method

.method public final L0(Landroid/view/View;)V
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "anchor"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Lya/d;->k()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lya/d;->l(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_0

    :cond_1
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lya/H;

    new-instance v6, Lwd/b;

    invoke-static {v5}, Lya/d;->i(Lya/H;)Ljava/lang/String;

    move-result-object v7

    new-instance v8, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Actions/Component/PickComponentNode$c;

    invoke-direct {v8, p0, v5}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Actions/Component/PickComponentNode$c;-><init>(Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Actions/Component/PickComponentNode;Lya/H;)V

    invoke-direct {v6, v7, v8}, Lwd/b;-><init>(Ljava/lang/String;Lwd/d;)V

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    new-instance v3, Lwd/b;

    invoke-direct {v3, v2, v4}, Lwd/b;-><init>(Ljava/lang/String;Ljava/util/List;)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    sget-object v1, LL4/a$e;->Left:LL4/a$e;

    invoke-static {p1, v1, v0}, Lq7/a;->D1(Landroid/view/View;LL4/a$e;Ljava/util/List;)V

    :cond_4
    return-void
.end method

.method public M()Lya/B;
    .locals 1

    sget-object v0, Lya/B;->BOTH:Lya/B;

    return-object v0
.end method

.method public N(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "graphData"
        }
    .end annotation

    const-string p1, "Pick Component"

    return-object p1
.end method

.method public a(ILya/H;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "inputIndex",
            "desiredType"
        }
    .end annotation

    if-nez p1, :cond_0

    const-string p1, "owner"

    return-object p1

    :cond_0
    const-string p1, ""

    return-object p1
.end method

.method public m0()V
    .locals 4

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Actions/Component/PickComponentNode;->I0()[Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    move-result-object v0

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;->a:Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Actions/Component/PickComponentNode;->g:[Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-static {p0, v1, v2}, LSa/b;->b(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    move-result-object v1

    invoke-static {v1}, Lyb/e;->J(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Actions/Component/PickComponentNode;->J0()Lya/H;

    move-result-object v2

    invoke-static {v1, v2}, Lya/d;->e(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lya/H;)LJAVARuntime/Component;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x2

    aget-object v2, v0, v2

    invoke-virtual {p0, v2, v1}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;->y0(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;Ljava/lang/Object;)V

    if-eqz v1, :cond_1

    aget-object v0, v0, v3

    goto :goto_1

    :cond_1
    const/4 v1, 0x1

    aget-object v0, v0, v1

    :goto_1
    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;->u(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;)V

    return-void
.end method

.method public t0(ILya/D;)Lya/H;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "index",
            "resolver"
        }
    .end annotation

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Actions/Component/PickComponentNode;->J0()Lya/H;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Actions/Component/PickComponentNode;->I0()[Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    move-result-object v0

    if-ltz p1, :cond_1

    array-length v1, v0

    if-ge p1, v1, :cond_1

    aget-object p1, v0, p1

    iget-object p1, p1, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;->type:Lya/H;

    return-object p1

    :cond_1
    invoke-super {p0, p1, p2}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;->t0(ILya/D;)Lya/H;

    move-result-object p1

    return-object p1
.end method

.method public x(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "graphData"
        }
    .end annotation

    sget-object p1, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->NOCODE_PICK_COMPONENT:LUc/b;

    invoke-static {p1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LUc/b;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
