.class public LCa/o;
.super LCa/c;
.source "SourceFile"


# static fields
.field public static final l:Ljava/lang/String; = "GetContactColliderObject"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, LCa/o$a;

    invoke-direct {v0}, LCa/o$a;-><init>()V

    invoke-static {v0}, Lya/o;->a(Lya/p;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 7

    sget-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->NOCODE_SLOT_COLLIDER_OBJECT:LUc/b;

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LUc/b;)Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lya/H;->GAME_OBJECT:Lya/H;

    const-string v2, "GetContactColliderObject"

    const-string v3, "Get Collider Object"

    const-string v4, "Collider Object"

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, LCa/c;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lya/H;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic F()[Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;
    .locals 1

    invoke-super {p0}, LCa/c;->F()[Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    move-result-object v0

    return-object v0
.end method

.method public G0(LB9/a$a;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "contact"
        }
    .end annotation

    if-eqz p1, :cond_0

    iget-object p1, p1, LB9/a$a;->f:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-static {p1}, LCa/e;->b(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public bridge synthetic J()[Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;
    .locals 1

    invoke-super {p0}, LCa/c;->J()[Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic M()Lya/B;
    .locals 1

    invoke-super {p0}, LCa/c;->M()Lya/B;

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

    invoke-super {p0, p1}, LCa/c;->N(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;)Ljava/lang/String;

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

    invoke-super {p0, p1, p2}, LCa/c;->a(ILya/H;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic m0()V
    .locals 0

    invoke-super {p0}, LCa/c;->m0()V

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

    sget-object p1, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->NOCODE_GET_CONTACT_COLLIDER_OBJECT:LUc/b;

    invoke-static {p1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LUc/b;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
