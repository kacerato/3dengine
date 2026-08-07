.class public LJa/d;
.super Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;
.source "SourceFile"

# interfaces
.implements Lya/F;


# static fields
.field public static final i:Ljava/lang/String; = "GetFirstListElement"

.field public static final j:I

.field public static final k:I


# instance fields
.field public final g:[Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

.field public final h:[Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, LJa/d$a;

    invoke-direct {v0}, LJa/d$a;-><init>()V

    invoke-static {v0}, Lya/o;->a(Lya/p;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;-><init>()V

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    const-string v1, "List"

    sget-object v2, Lya/H;->LIST:Lya/H;

    invoke-direct {v0, v1, v2}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;-><init>(Ljava/lang/String;Lya/H;)V

    sget-object v1, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->NOCODE_SLOT_LIST:LUc/b;

    invoke-static {v1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LUc/b;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;->c(Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    move-result-object v0

    filled-new-array {v0}, [Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    move-result-object v0

    iput-object v0, p0, LJa/d;->g:[Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    const-string v1, "Element"

    sget-object v2, Lya/H;->DYNAMIC:Lya/H;

    invoke-direct {v0, v1, v2}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;-><init>(Ljava/lang/String;Lya/H;)V

    sget-object v1, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->NOCODE_SLOT_ELEMENT:LUc/b;

    invoke-static {v1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LUc/b;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;->c(Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    move-result-object v0

    filled-new-array {v0}, [Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    move-result-object v0

    iput-object v0, p0, LJa/d;->h:[Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    const-string v0, "GetFirstListElement"

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;->serializedNodeType:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public F()[Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;
    .locals 1

    iget-object v0, p0, LJa/d;->g:[Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    return-object v0
.end method

.method public J()[Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;
    .locals 1

    iget-object v0, p0, LJa/d;->h:[Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

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

    const-string p1, "Get First"

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

    const-string p1, ""

    return-object p1
.end method

.method public m0()V
    .locals 3

    iget-object v0, p0, LJa/d;->g:[Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;->Q(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lya/m;->a0(Ljava/lang/Object;)Lya/l;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lya/l;->i()I

    move-result v2

    if-lez v2, :cond_0

    invoke-virtual {v0, v1}, Lya/l;->c(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, LJa/d;->h:[Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    aget-object v2, v2, v1

    invoke-virtual {p0, v2, v0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;->y0(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;Ljava/lang/Object;)V

    iget-object v0, p0, LJa/d;->h:[Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    aget-object v0, v0, v1

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

    if-nez p1, :cond_0

    const/4 p1, 0x0

    invoke-static {p0, p1, p2}, LJa/i;->d(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;ILya/D;)Lya/H;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;->t0(ILya/D;)Lya/H;

    move-result-object p1

    :goto_0
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

    sget-object p1, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->NOCODE_GET_FIRST_LIST_ELEMENT:LUc/b;

    invoke-static {p1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LUc/b;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
