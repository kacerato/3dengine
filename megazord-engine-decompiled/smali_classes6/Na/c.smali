.class public LNa/c;
.super Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;
.source "SourceFile"

# interfaces
.implements Lya/F;


# static fields
.field public static final i:Ljava/lang/String; = "GetChildCount"

.field public static final j:I

.field public static final k:I


# instance fields
.field public final g:[Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

.field public final h:[Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, LNa/c$a;

    invoke-direct {v0}, LNa/c$a;-><init>()V

    invoke-static {v0}, Lya/o;->a(Lya/p;)V

    return-void
.end method

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

    iput-object v0, p0, LNa/c;->g:[Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    const-string v1, "Child Count"

    sget-object v2, Lya/H;->NUMBER:Lya/H;

    invoke-direct {v0, v1, v2}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;-><init>(Ljava/lang/String;Lya/H;)V

    sget-object v1, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->NOCODE_SLOT_CHILD_COUNT:LUc/b;

    invoke-static {v1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LUc/b;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;->c(Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    move-result-object v0

    filled-new-array {v0}, [Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    move-result-object v0

    iput-object v0, p0, LNa/c;->h:[Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    const-string v0, "GetChildCount"

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;->serializedNodeType:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public F()[Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;
    .locals 1

    iget-object v0, p0, LNa/c;->g:[Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    return-object v0
.end method

.method public J()[Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;
    .locals 1

    iget-object v0, p0, LNa/c;->h:[Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    return-object v0
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

    const-string p1, "Get Child Count"

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

.method public m0()V
    .locals 3

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;->a:Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;

    iget-object v1, p0, LNa/c;->g:[Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-static {p0, v0, v1}, LSa/b;->b(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    move-result-object v0

    invoke-static {v0}, Lyb/e;->J(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->N()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    iget-object v1, p0, LNa/c;->h:[Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    aget-object v1, v1, v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;->y0(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;Ljava/lang/Object;)V

    iget-object v0, p0, LNa/c;->h:[Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    aget-object v0, v0, v2

    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;->u(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;)V

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

    sget-object p1, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->NOCODE_GET_CHILD_COUNT:LUc/b;

    invoke-static {p1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LUc/b;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
