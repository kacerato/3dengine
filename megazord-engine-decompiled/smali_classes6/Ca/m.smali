.class public LCa/m;
.super LCa/b;
.source "SourceFile"


# static fields
.field public static final l:Ljava/lang/String; = "GetCollisionPhysicsComponent"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, LCa/m$a;

    invoke-direct {v0}, LCa/m$a;-><init>()V

    invoke-static {v0}, Lya/o;->a(Lya/p;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 7

    sget-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->NOCODE_SLOT_PHYSICS_COMPONENT:LUc/b;

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LUc/b;)Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lya/H;->ANY_COMPONENT:Lya/H;

    const-string v2, "GetCollisionPhysicsComponent"

    const-string v3, "Get Physics Component"

    const-string v4, "Physics Component"

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, LCa/b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lya/H;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic F()[Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;
    .locals 1

    invoke-super {p0}, LCa/b;->F()[Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    move-result-object v0

    return-object v0
.end method

.method public G0(LB9/a;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "collision"
        }
    .end annotation

    if-eqz p1, :cond_1

    iget-object p1, p1, LB9/a;->c:Lz9/a;

    instance-of v0, p1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/PhysicsComponent;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    check-cast p1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/PhysicsComponent;

    invoke-static {p1}, LCa/e;->c(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;)LJAVARuntime/Component;

    move-result-object p1

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public bridge synthetic J()[Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;
    .locals 1

    invoke-super {p0}, LCa/b;->J()[Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic M()Lya/B;
    .locals 1

    invoke-super {p0}, LCa/b;->M()Lya/B;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic N(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "graphData"
        }
    .end annotation

    invoke-super {p0, p1}, LCa/b;->N(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic a(ILya/H;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "inputIndex",
            "desiredType"
        }
    .end annotation

    invoke-super {p0, p1, p2}, LCa/b;->a(ILya/H;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic m0()V
    .locals 0

    invoke-super {p0}, LCa/b;->m0()V

    return-void
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

    sget-object p1, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->NOCODE_GET_COLLISION_PHYSICS_COMPONENT:LUc/b;

    invoke-static {p1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LUc/b;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
