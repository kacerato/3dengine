.class public Llb/p;
.super Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;
.source "SourceFile"

# interfaces
.implements Lya/F;


# static fields
.field public static final i:Ljava/lang/String; = "Lerp"


# instance fields
.field public final g:[Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

.field public final h:[Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Llb/p$a;

    invoke-direct {v0}, Llb/p$a;-><init>()V

    invoke-static {v0}, Lya/o;->a(Lya/p;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;-><init>()V

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    sget-object v1, Lya/H;->DYNAMIC:Lya/H;

    const-string v2, "A"

    invoke-direct {v0, v2, v1}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;-><init>(Ljava/lang/String;Lya/H;)V

    sget-object v2, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->NOCODE_SLOT_A:LUc/b;

    invoke-static {v2}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LUc/b;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;->c(Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    move-result-object v0

    new-instance v2, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    const-string v3, "B"

    invoke-direct {v2, v3, v1}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;-><init>(Ljava/lang/String;Lya/H;)V

    sget-object v3, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->NOCODE_SLOT_B:LUc/b;

    invoke-static {v3}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LUc/b;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;->c(Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    move-result-object v2

    new-instance v3, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    const-string v4, "T"

    sget-object v5, Lya/H;->NUMBER:Lya/H;

    invoke-direct {v3, v4, v5}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;-><init>(Ljava/lang/String;Lya/H;)V

    sget-object v4, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->NOCODE_SLOT_T:LUc/b;

    invoke-static {v4}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LUc/b;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;->c(Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    move-result-object v3

    filled-new-array {v0, v2, v3}, [Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    move-result-object v0

    iput-object v0, p0, Llb/p;->g:[Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    const-string v2, "Out"

    invoke-direct {v0, v2, v1}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;-><init>(Ljava/lang/String;Lya/H;)V

    sget-object v1, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->NOCODE_SLOT_OUT:LUc/b;

    invoke-static {v1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LUc/b;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;->c(Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    move-result-object v0

    filled-new-array {v0}, [Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    move-result-object v0

    iput-object v0, p0, Llb/p;->h:[Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    const-string v0, "Lerp"

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;->serializedNodeType:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public F()[Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;
    .locals 1

    iget-object v0, p0, Llb/p;->g:[Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    return-object v0
.end method

.method public J()[Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;
    .locals 1

    iget-object v0, p0, Llb/p;->h:[Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

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

    const-string p1, "Lerp"

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

    const/4 p2, 0x2

    if-ne p1, p2, :cond_0

    const-string p1, "0.5"

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public m0()V
    .locals 6

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;->a:Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    new-instance v2, Lya/A;

    invoke-direct {v2, v0}, Lya/A;-><init>(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;)V

    invoke-virtual {p0, v1, v2}, Llb/p;->t0(ILya/D;)Lya/H;

    move-result-object v0

    goto :goto_0

    :cond_0
    sget-object v0, Lya/H;->NUMBER:Lya/H;

    :goto_0
    iget-object v2, p0, Llb/p;->g:[Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    const/4 v3, 0x2

    aget-object v2, v2, v3

    invoke-virtual {p0, v2}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;->Q(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lya/m;->V(Ljava/lang/Object;)F

    move-result v2

    iget-object v3, p0, Llb/p;->g:[Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    const/4 v4, 0x1

    aget-object v3, v3, v4

    invoke-virtual {p0, v3}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;->Q(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;)Ljava/lang/Object;

    move-result-object v3

    iget-object v4, p0, Llb/p;->g:[Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    aget-object v4, v4, v1

    invoke-virtual {p0, v4}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;->Q(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;)Ljava/lang/Object;

    move-result-object v4

    new-instance v5, Llb/p$b;

    invoke-direct {v5, p0}, Llb/p$b;-><init>(Llb/p;)V

    invoke-static {v3, v4, v0, v5}, Lya/m;->a(Ljava/lang/Object;Ljava/lang/Object;Lya/H;Lya/m$b;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    new-instance v4, Llb/p$c;

    invoke-direct {v4, p0}, Llb/p$c;-><init>(Llb/p;)V

    invoke-static {v3, v2, v0, v4}, Lya/m;->a(Ljava/lang/Object;Ljava/lang/Object;Lya/H;Lya/m$b;)Ljava/lang/Object;

    move-result-object v2

    iget-object v3, p0, Llb/p;->h:[Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    aget-object v3, v3, v1

    iget-object v4, p0, Llb/p;->g:[Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    aget-object v4, v4, v1

    invoke-virtual {p0, v4}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;->Q(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;)Ljava/lang/Object;

    move-result-object v4

    new-instance v5, Llb/p$d;

    invoke-direct {v5, p0}, Llb/p$d;-><init>(Llb/p;)V

    invoke-static {v4, v2, v0, v5}, Lya/m;->a(Ljava/lang/Object;Ljava/lang/Object;Lya/H;Lya/m$b;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v3, v0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;->y0(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;Ljava/lang/Object;)V

    iget-object v0, p0, Llb/p;->h:[Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;->u(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;)V

    return-void
.end method

.method public t0(ILya/D;)Lya/H;
    .locals 1
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

    const/4 p1, 0x0

    invoke-interface {p2, p0, p1}, Lya/D;->b(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;I)Lya/H;

    move-result-object p1

    const/4 v0, 0x1

    invoke-interface {p2, p0, v0}, Lya/D;->b(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;I)Lya/H;

    move-result-object p2

    invoke-static {p1, p2}, Lya/C;->i(Lya/H;Lya/H;)Lya/H;

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

    sget-object p1, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->NOCODE_LERP:LUc/b;

    invoke-static {p1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LUc/b;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
