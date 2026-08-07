.class public Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Events/OnObjectsDistanceNode;
.super LXa/a;
.source "SourceFile"

# interfaces
.implements Lya/F;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Events/OnObjectsDistanceNode$c;
    }
.end annotation


# static fields
.field public static final i:Ljava/lang/String; = "OnObjectsDistance"

.field public static final j:I = 0x0

.field public static final k:I = 0x1

.field public static final l:I = 0x2

.field public static final m:I = 0x0

.field public static final n:I = 0x1

.field public static final o:F = 1.0E-4f


# instance fields
.field public conditionType:Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Events/OnObjectsDistanceNode$c;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public final g:[Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

.field public final h:[Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Events/OnObjectsDistanceNode$a;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Events/OnObjectsDistanceNode$a;-><init>()V

    invoke-static {v0}, Lya/o;->a(Lya/p;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    invoke-direct {p0}, LXa/a;-><init>()V

    sget-object v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Events/OnObjectsDistanceNode$c;->LessThan:Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Events/OnObjectsDistanceNode$c;

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Events/OnObjectsDistanceNode;->conditionType:Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Events/OnObjectsDistanceNode$c;

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    sget-object v1, Lya/H;->GAME_OBJECT:Lya/H;

    const-string v2, "Object A"

    invoke-direct {v0, v2, v1}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;-><init>(Ljava/lang/String;Lya/H;)V

    sget-object v2, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->NOCODE_SLOT_OBJECT_A:LUc/b;

    invoke-static {v2}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LUc/b;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;->c(Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    move-result-object v0

    new-instance v2, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    const-string v3, "Object B"

    invoke-direct {v2, v3, v1}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;-><init>(Ljava/lang/String;Lya/H;)V

    sget-object v1, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->NOCODE_SLOT_OBJECT_B:LUc/b;

    invoke-static {v1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LUc/b;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;->c(Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    move-result-object v1

    new-instance v2, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    const-string v3, "Distance"

    sget-object v4, Lya/H;->NUMBER:Lya/H;

    invoke-direct {v2, v3, v4}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;-><init>(Ljava/lang/String;Lya/H;)V

    sget-object v3, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->NOCODE_SLOT_DISTANCE:LUc/b;

    invoke-static {v3}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LUc/b;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;->c(Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    move-result-object v2

    filled-new-array {v0, v1, v2}, [Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    move-result-object v0

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Events/OnObjectsDistanceNode;->g:[Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    sget-object v1, Lya/H;->BRANCH:Lya/H;

    const-string v2, "True"

    invoke-direct {v0, v2, v1}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;-><init>(Ljava/lang/String;Lya/H;)V

    sget-object v2, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->NOCODE_SLOT_TRUE:LUc/b;

    invoke-static {v2}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LUc/b;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;->c(Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    move-result-object v0

    new-instance v2, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    const-string v3, "False"

    invoke-direct {v2, v3, v1}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;-><init>(Ljava/lang/String;Lya/H;)V

    sget-object v1, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->NOCODE_SLOT_FALSE:LUc/b;

    invoke-static {v1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LUc/b;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;->c(Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    move-result-object v1

    filled-new-array {v0, v1}, [Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    move-result-object v0

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Events/OnObjectsDistanceNode;->h:[Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    const-string v0, "OnObjectsDistance"

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;->serializedNodeType:Ljava/lang/String;

    return-void
.end method

.method public static synthetic G0(Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Events/OnObjectsDistanceNode;)Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;
    .locals 0

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;->A()Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;

    move-result-object p0

    return-object p0
.end method

.method private H0(FF)Z
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "distanceSquared",
            "maxDistanceSquared"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Events/OnObjectsDistanceNode;->I0()Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Events/OnObjectsDistanceNode$c;

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


# virtual methods
.method public E0()V
    .locals 6

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;->a:Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;->d0()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-static {}, Lu8/b;->j()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_1

    :cond_0
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;->a:Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;

    invoke-virtual {v0, p0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->G0(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;)V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Events/OnObjectsDistanceNode;->g:[Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Events/OnObjectsDistanceNode;->J0(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    move-result-object v0

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Events/OnObjectsDistanceNode;->g:[Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    invoke-virtual {p0, v2}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Events/OnObjectsDistanceNode;->J0(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    move-result-object v2

    invoke-static {v0}, Lyb/e;->J(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-static {v2}, Lyb/e;->J(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Z

    move-result v4

    if-nez v4, :cond_1

    goto :goto_0

    :cond_1
    iget-object v4, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Events/OnObjectsDistanceNode;->g:[Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    const/4 v5, 0x2

    aget-object v4, v4, v5

    invoke-virtual {p0, v4}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;->Q(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Lya/m;->V(Ljava/lang/Object;)F

    move-result v4

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->Q0()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->O1(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)F

    move-result v0

    mul-float/2addr v4, v4

    invoke-direct {p0, v0, v4}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Events/OnObjectsDistanceNode;->H0(FF)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;->a:Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Events/OnObjectsDistanceNode;->h:[Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    aget-object v2, v2, v1

    invoke-virtual {v0, p0, v2}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->o0(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Events/OnObjectsDistanceNode;->h:[Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;->u(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;)V

    :cond_2
    return-void

    :cond_3
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;->a:Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Events/OnObjectsDistanceNode;->h:[Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    aget-object v1, v1, v3

    invoke-virtual {v0, p0, v1}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->o0(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Events/OnObjectsDistanceNode;->h:[Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    aget-object v0, v0, v3

    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;->u(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;)V

    :cond_4
    return-void

    :cond_5
    :goto_0
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;->a:Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Events/OnObjectsDistanceNode;->h:[Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    aget-object v1, v1, v3

    invoke-virtual {v0, p0, v1}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->o0(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Events/OnObjectsDistanceNode;->h:[Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    aget-object v0, v0, v3

    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;->u(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;)V

    :cond_6
    :goto_1
    return-void
.end method

.method public F()[Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Events/OnObjectsDistanceNode;->g:[Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    return-object v0
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

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Events/OnObjectsDistanceNode;->I0()Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Events/OnObjectsDistanceNode$c;

    move-result-object v0

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Events/OnObjectsDistanceNode$b;

    invoke-direct {v1, p0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Events/OnObjectsDistanceNode$b;-><init>(Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Events/OnObjectsDistanceNode;)V

    sget-object v2, LW5/b$a;->SLDropdownWrap:LW5/b$a;

    const-string v3, ""

    const-class v4, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Events/OnObjectsDistanceNode$c;

    invoke-static {v3, v4, v0, v1, v2}, LZ5/c;->j(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;LZ5/c$r0;LW5/b$a;)LW5/b;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p1
.end method

.method public final I0()Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Events/OnObjectsDistanceNode$c;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Events/OnObjectsDistanceNode;->conditionType:Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Events/OnObjectsDistanceNode$c;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Events/OnObjectsDistanceNode$c;->LessThan:Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Events/OnObjectsDistanceNode$c;

    :goto_0
    return-object v0
.end method

.method public J()[Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Nodes/Events/OnObjectsDistanceNode;->h:[Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    return-object v0
.end method

.method public final J0(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "slot"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;->Q(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;)Ljava/lang/Object;

    move-result-object p1

    instance-of v0, p1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-static {p1}, Lyb/e;->J(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    :cond_0
    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;->a:Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->h0()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    move-result-object p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return-object p1
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

    const-string p1, "On Distance"

    return-object p1
.end method

.method public a(ILya/H;)Ljava/lang/String;
    .locals 1
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

    const-string p2, "Owner"

    if-nez p1, :cond_0

    return-object p2

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    return-object p2

    :cond_1
    const/4 p2, 0x2

    if-ne p1, p2, :cond_2

    const-string p1, "1.0"

    return-object p1

    :cond_2
    const-string p1, ""

    return-object p1
.end method

.method public l0()V
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;->a:Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->T0(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;)V

    :cond_0
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

    sget-object p1, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->NOCODE_ON_OBJECTS_DISTANCE:LUc/b;

    invoke-static {p1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LUc/b;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
