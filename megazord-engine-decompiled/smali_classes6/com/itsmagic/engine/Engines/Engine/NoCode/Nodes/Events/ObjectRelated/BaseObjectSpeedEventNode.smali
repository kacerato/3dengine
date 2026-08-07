.class public abstract Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Events/ObjectRelated/BaseObjectSpeedEventNode;
.super LXa/a;
.source "SourceFile"

# interfaces
.implements Lya/F;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Events/ObjectRelated/BaseObjectSpeedEventNode$b;
    }
.end annotation


# static fields
.field public static final n:I = 0x0

.field public static final o:I = 0x1

.field public static final p:I = 0x0

.field public static final q:I = 0x1

.field public static final r:F = 1.0E-4f


# instance fields
.field public conditionType:Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Events/ObjectRelated/BaseObjectSpeedEventNode$b;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public final g:[Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

.field public final h:[Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

.field public final transient i:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

.field public final transient j:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

.field public final transient k:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

.field public transient l:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

.field public transient m:Z


# direct methods
.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, LXa/a;-><init>()V

    sget-object v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Events/ObjectRelated/BaseObjectSpeedEventNode$b;->LessThan:Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Events/ObjectRelated/BaseObjectSpeedEventNode$b;

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Events/ObjectRelated/BaseObjectSpeedEventNode;->conditionType:Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Events/ObjectRelated/BaseObjectSpeedEventNode$b;

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    const-string v1, "Object"

    sget-object v2, Lya/H;->GAME_OBJECT:Lya/H;

    invoke-direct {v0, v1, v2}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;-><init>(Ljava/lang/String;Lya/H;)V

    sget-object v1, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->NOCODE_SLOT_OBJECT:LUc/b;

    invoke-static {v1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LUc/b;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;->c(Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    move-result-object v0

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    const-string v2, "Value"

    sget-object v3, Lya/H;->NUMBER:Lya/H;

    invoke-direct {v1, v2, v3}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;-><init>(Ljava/lang/String;Lya/H;)V

    sget-object v2, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->NOCODE_SLOT_VALUE:LUc/b;

    invoke-static {v2}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LUc/b;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;->c(Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    move-result-object v1

    filled-new-array {v0, v1}, [Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    move-result-object v0

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Events/ObjectRelated/BaseObjectSpeedEventNode;->g:[Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    sget-object v1, Lya/H;->BRANCH:Lya/H;

    const-string v2, "on True"

    invoke-direct {v0, v2, v1}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;-><init>(Ljava/lang/String;Lya/H;)V

    sget-object v2, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->NOCODE_SLOT_ON_TRUE:LUc/b;

    invoke-static {v2}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LUc/b;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;->c(Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    move-result-object v0

    new-instance v2, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    const-string v3, "on False"

    invoke-direct {v2, v3, v1}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;-><init>(Ljava/lang/String;Lya/H;)V

    sget-object v1, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->NOCODE_SLOT_ON_FALSE:LUc/b;

    invoke-static {v1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LUc/b;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;->c(Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    move-result-object v1

    filled-new-array {v0, v1}, [Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    move-result-object v0

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Events/ObjectRelated/BaseObjectSpeedEventNode;->h:[Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Events/ObjectRelated/BaseObjectSpeedEventNode;->i:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Events/ObjectRelated/BaseObjectSpeedEventNode;->j:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Events/ObjectRelated/BaseObjectSpeedEventNode;->k:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    return-void
.end method

.method public static synthetic G0(Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Events/ObjectRelated/BaseObjectSpeedEventNode;)Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;
    .locals 0

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;->A()Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;

    move-result-object p0

    return-object p0
.end method

.method private Q0(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)F
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "target"
        }
    .end annotation

    iget-object v0, p1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Events/ObjectRelated/BaseObjectSpeedEventNode;->j:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->I0(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Events/ObjectRelated/BaseObjectSpeedEventNode;->l:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    const/4 v1, 0x0

    if-ne v0, p1, :cond_2

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Events/ObjectRelated/BaseObjectSpeedEventNode;->m:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Events/ObjectRelated/BaseObjectSpeedEventNode;->k:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Events/ObjectRelated/BaseObjectSpeedEventNode;->j:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v0, v2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->U1(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Events/ObjectRelated/BaseObjectSpeedEventNode;->k:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Events/ObjectRelated/BaseObjectSpeedEventNode;->i:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v0, v2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->J2(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Events/ObjectRelated/BaseObjectSpeedEventNode;->i:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Events/ObjectRelated/BaseObjectSpeedEventNode;->j:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v0, v2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->U1(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-static {}, Lc9/d;->b()F

    move-result v0

    cmpg-float v2, v0, v1

    if-gtz v2, :cond_1

    return v1

    :cond_1
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Events/ObjectRelated/BaseObjectSpeedEventNode;->k:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {p0, p1, v1, v0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Events/ObjectRelated/BaseObjectSpeedEventNode;->K0(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;F)F

    move-result p1

    return p1

    :cond_2
    :goto_0
    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Events/ObjectRelated/BaseObjectSpeedEventNode;->l:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Events/ObjectRelated/BaseObjectSpeedEventNode;->m:Z

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Events/ObjectRelated/BaseObjectSpeedEventNode;->i:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Events/ObjectRelated/BaseObjectSpeedEventNode;->j:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {p1, v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->U1(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    return v1
.end method


# virtual methods
.method public E0()V
    .locals 3

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;->a:Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;->d0()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lu8/b;->j()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;->a:Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;

    invoke-virtual {v0, p0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->G0(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;)V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;->a:Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Events/ObjectRelated/BaseObjectSpeedEventNode;->g:[Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-static {p0, v0, v1}, LSa/b;->b(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    move-result-object v0

    invoke-static {v0}, Lyb/e;->J(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Events/ObjectRelated/BaseObjectSpeedEventNode;->l:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    iput-boolean v2, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Events/ObjectRelated/BaseObjectSpeedEventNode;->m:Z

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Events/ObjectRelated/BaseObjectSpeedEventNode;->I0()V

    return-void

    :cond_1
    invoke-direct {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Events/ObjectRelated/BaseObjectSpeedEventNode;->Q0(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)F

    move-result v0

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Events/ObjectRelated/BaseObjectSpeedEventNode;->g:[Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {p0, v1}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;->Q(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lya/m;->V(Ljava/lang/Object;)F

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Events/ObjectRelated/BaseObjectSpeedEventNode;->H0(FF)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Events/ObjectRelated/BaseObjectSpeedEventNode;->J0()V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Events/ObjectRelated/BaseObjectSpeedEventNode;->I0()V

    :cond_3
    :goto_0
    return-void
.end method

.method public F()[Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Events/ObjectRelated/BaseObjectSpeedEventNode;->g:[Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    return-object v0
.end method

.method public final H0(FF)Z
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "value",
            "compareValue"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Events/ObjectRelated/BaseObjectSpeedEventNode;->L0()Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Events/ObjectRelated/BaseObjectSpeedEventNode$b;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_7

    if-eq v0, v2, :cond_5

    const/4 v3, 0x3

    if-eq v0, v3, :cond_3

    const/4 v3, 0x4

    if-eq v0, v3, :cond_1

    cmpg-float p1, p1, p2

    if-gez p1, :cond_0

    move v1, v2

    :cond_0
    return v1

    :cond_1
    cmpg-float p1, p1, p2

    if-gtz p1, :cond_2

    move v1, v2

    :cond_2
    return v1

    :cond_3
    cmpl-float p1, p1, p2

    if-ltz p1, :cond_4

    move v1, v2

    :cond_4
    return v1

    :cond_5
    cmpl-float p1, p1, p2

    if-lez p1, :cond_6

    move v1, v2

    :cond_6
    return v1

    :cond_7
    sub-float/2addr p1, p2

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    const p2, 0x38d1b717    # 1.0E-4f

    cmpg-float p1, p1, p2

    if-gtz p1, :cond_8

    move v1, v2

    :cond_8
    return v1
.end method

.method public I(Landroid/content/Context;)Ljava/util/List;
    .locals 5
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

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Events/ObjectRelated/BaseObjectSpeedEventNode;->L0()Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Events/ObjectRelated/BaseObjectSpeedEventNode$b;

    move-result-object v0

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Events/ObjectRelated/BaseObjectSpeedEventNode$a;

    invoke-direct {v1, p0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Events/ObjectRelated/BaseObjectSpeedEventNode$a;-><init>(Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Events/ObjectRelated/BaseObjectSpeedEventNode;)V

    sget-object v2, LW5/b$a;->SLDropdownWrap:LW5/b$a;

    const-string v3, ""

    const-class v4, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Events/ObjectRelated/BaseObjectSpeedEventNode$b;

    invoke-static {v3, v4, v0, v1, v2}, LZ5/c;->j(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;LZ5/c$r0;LW5/b$a;)LW5/b;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p1
.end method

.method public final I0()V
    .locals 3

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;->a:Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Events/ObjectRelated/BaseObjectSpeedEventNode;->h:[Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->o0(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Events/ObjectRelated/BaseObjectSpeedEventNode;->h:[Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    aget-object v0, v0, v2

    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;->u(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;)V

    :cond_0
    return-void
.end method

.method public J()[Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Events/ObjectRelated/BaseObjectSpeedEventNode;->h:[Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    return-object v0
.end method

.method public final J0()V
    .locals 3

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;->a:Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Events/ObjectRelated/BaseObjectSpeedEventNode;->h:[Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->o0(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Events/ObjectRelated/BaseObjectSpeedEventNode;->h:[Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    aget-object v0, v0, v2

    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;->u(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;)V

    :cond_0
    return-void
.end method

.method public abstract K0(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;F)F
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "target",
            "movementDelta",
            "deltaTime"
        }
    .end annotation
.end method

.method public final L0()Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Events/ObjectRelated/BaseObjectSpeedEventNode$b;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Events/ObjectRelated/BaseObjectSpeedEventNode;->conditionType:Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Events/ObjectRelated/BaseObjectSpeedEventNode$b;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Events/ObjectRelated/BaseObjectSpeedEventNode$b;->LessThan:Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Events/ObjectRelated/BaseObjectSpeedEventNode$b;

    :goto_0
    return-object v0
.end method

.method public M()Lya/B;
    .locals 1

    sget-object v0, Lya/B;->BOTH:Lya/B;

    return-object v0
.end method

.method public M0(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "target"
        }
    .end annotation

    iget-object p1, p1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    const-class v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Engine/JavaPool/JP;->acquire(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {p1, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->o0(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object p1

    return-object p1
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

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Events/ObjectRelated/BaseObjectSpeedEventNode;->N0()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public abstract N0()Ljava/lang/String;
.end method

.method public O0(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "target"
        }
    .end annotation

    iget-object p1, p1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    const-class v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Engine/JavaPool/JP;->acquire(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {p1, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->c3(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object p1

    return-object p1
.end method

.method public P0(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "target"
        }
    .end annotation

    iget-object p1, p1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    const-class v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Engine/JavaPool/JP;->acquire(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {p1, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->E4(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object p1

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

    const-string p1, "Owner"

    return-object p1

    :cond_0
    const/4 p2, 0x1

    if-ne p1, p2, :cond_1

    const-string p1, "0.0"

    return-object p1

    :cond_1
    const-string p1, ""

    return-object p1
.end method

.method public l0()V
    .locals 2

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;->a:Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->T0(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;)V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Events/ObjectRelated/BaseObjectSpeedEventNode;->l:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Events/ObjectRelated/BaseObjectSpeedEventNode;->m:Z

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Events/ObjectRelated/BaseObjectSpeedEventNode;->i:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->S1(F)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Events/ObjectRelated/BaseObjectSpeedEventNode;->j:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->S1(F)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Events/ObjectRelated/BaseObjectSpeedEventNode;->k:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->S1(F)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    return-void
.end method

.method public t0(ILya/D;)Lya/H;
    .locals 0
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

    sget-object p1, Lya/H;->BRANCH:Lya/H;

    return-object p1
.end method
