.class public abstract LRa/a;
.super Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;
.source "SourceFile"

# interfaces
.implements Lya/F;


# static fields
.field public static final n:I

.field public static final o:I


# instance fields
.field public final g:[Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

.field public final h:[Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

.field public final transient i:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

.field public final transient j:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

.field public final transient k:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

.field public transient l:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

.field public transient m:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;-><init>()V

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

    iput-object v0, p0, LRa/a;->g:[Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    const-string v1, "Speed"

    sget-object v2, Lya/H;->NUMBER:Lya/H;

    invoke-direct {v0, v1, v2}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;-><init>(Ljava/lang/String;Lya/H;)V

    sget-object v1, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->NOCODE_SLOT_SPEED:LUc/b;

    invoke-static {v1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LUc/b;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;->c(Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    move-result-object v0

    filled-new-array {v0}, [Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    move-result-object v0

    iput-object v0, p0, LRa/a;->h:[Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>()V

    iput-object v0, p0, LRa/a;->i:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>()V

    iput-object v0, p0, LRa/a;->j:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>()V

    iput-object v0, p0, LRa/a;->k:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    return-void
.end method


# virtual methods
.method public F()[Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;
    .locals 1

    iget-object v0, p0, LRa/a;->g:[Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    return-object v0
.end method

.method public abstract G0(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;F)F
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

.method public H0(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;
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

.method public abstract I0()Ljava/lang/String;
.end method

.method public J()[Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;
    .locals 1

    iget-object v0, p0, LRa/a;->h:[Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    return-object v0
.end method

.method public J0(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;
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

.method public K0(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;
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

.method public final L0(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)F
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

    iget-object v1, p0, LRa/a;->j:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->I0(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object v0, p0, LRa/a;->l:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    const/4 v1, 0x0

    if-ne v0, p1, :cond_2

    iget-boolean v0, p0, LRa/a;->m:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, LRa/a;->k:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object v2, p0, LRa/a;->j:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v0, v2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->U1(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object v0, p0, LRa/a;->k:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object v2, p0, LRa/a;->i:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v0, v2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->J2(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object v0, p0, LRa/a;->i:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object v2, p0, LRa/a;->j:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v0, v2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->U1(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-static {}, Lc9/d;->b()F

    move-result v0

    cmpg-float v2, v0, v1

    if-gtz v2, :cond_1

    return v1

    :cond_1
    iget-object v1, p0, LRa/a;->k:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {p0, p1, v1, v0}, LRa/a;->G0(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;F)F

    move-result p1

    return p1

    :cond_2
    :goto_0
    iput-object p1, p0, LRa/a;->l:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    const/4 p1, 0x1

    iput-boolean p1, p0, LRa/a;->m:Z

    iget-object p1, p0, LRa/a;->i:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object v0, p0, LRa/a;->j:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {p1, v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->U1(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    return v1
.end method

.method public M()Lya/B;
    .locals 1

    sget-object v0, Lya/B;->BOTH:Lya/B;

    return-object v0
.end method

.method public final M0()V
    .locals 2

    const/4 v0, 0x0

    iput-object v0, p0, LRa/a;->l:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    const/4 v0, 0x0

    iput-boolean v0, p0, LRa/a;->m:Z

    iget-object v0, p0, LRa/a;->i:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->S1(F)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object v0, p0, LRa/a;->j:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->S1(F)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object v0, p0, LRa/a;->k:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->S1(F)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    return-void
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

    invoke-virtual {p0}, LRa/a;->I0()Ljava/lang/String;

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
    const-string p1, ""

    return-object p1
.end method

.method public l0()V
    .locals 0

    invoke-virtual {p0}, LRa/a;->M0()V

    return-void
.end method

.method public m0()V
    .locals 3

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;->a:Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;

    iget-object v1, p0, LRa/a;->g:[Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-static {p0, v0, v1}, LSa/b;->b(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    move-result-object v0

    invoke-static {v0}, Lyb/e;->J(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v0}, LRa/a;->L0(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)F

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v0}, Lyb/e;->J(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, LRa/a;->M0()V

    :cond_1
    iget-object v0, p0, LRa/a;->h:[Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    aget-object v0, v0, v2

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;->y0(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;Ljava/lang/Object;)V

    iget-object v0, p0, LRa/a;->h:[Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    aget-object v0, v0, v2

    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;->u(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;)V

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

    sget-object p1, Lya/H;->NUMBER:Lya/H;

    return-object p1
.end method
