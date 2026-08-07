.class public Ljb/h;
.super Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;
.source "SourceFile"

# interfaces
.implements Lya/F;


# static fields
.field public static final m:Ljava/lang/String; = "LoopEachList"

.field public static final n:I = 0x0

.field public static final o:I = 0x0

.field public static final p:I = 0x1

.field public static final q:I = 0x2

.field public static final r:I = 0x3


# instance fields
.field public final g:[Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

.field public final h:[Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

.field public transient i:Lya/l;

.field public transient j:I

.field public transient k:I

.field public transient l:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljb/h$a;

    invoke-direct {v0}, Ljb/h$a;-><init>()V

    invoke-static {v0}, Lya/o;->a(Lya/p;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 6

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

    iput-object v0, p0, Ljb/h;->g:[Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    sget-object v1, Lya/H;->BRANCH:Lya/H;

    const-string v2, "Loop Body"

    invoke-direct {v0, v2, v1}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;-><init>(Ljava/lang/String;Lya/H;)V

    sget-object v2, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->NOCODE_SLOT_LOOP_BODY:LUc/b;

    invoke-static {v2}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LUc/b;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;->c(Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    move-result-object v0

    new-instance v2, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    const-string v3, "Counter"

    sget-object v4, Lya/H;->NUMBER:Lya/H;

    invoke-direct {v2, v3, v4}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;-><init>(Ljava/lang/String;Lya/H;)V

    sget-object v3, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->NOCODE_SLOT_COUNTER:LUc/b;

    invoke-static {v3}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LUc/b;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;->c(Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    move-result-object v2

    new-instance v3, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    const-string v4, "Item"

    sget-object v5, Lya/H;->DYNAMIC:Lya/H;

    invoke-direct {v3, v4, v5}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;-><init>(Ljava/lang/String;Lya/H;)V

    sget-object v4, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->NOCODE_SLOT_ITEM:LUc/b;

    invoke-static {v4}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LUc/b;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;->c(Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    move-result-object v3

    new-instance v4, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    const-string v5, "On Finish"

    invoke-direct {v4, v5, v1}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;-><init>(Ljava/lang/String;Lya/H;)V

    sget-object v1, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->NOCODE_SLOT_ON_FINISH:LUc/b;

    invoke-static {v1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LUc/b;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;->c(Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    move-result-object v1

    filled-new-array {v0, v2, v3, v1}, [Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    move-result-object v0

    iput-object v0, p0, Ljb/h;->h:[Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    const-string v0, "LoopEachList"

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;->serializedNodeType:Ljava/lang/String;

    return-void
.end method

.method private H0()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Ljb/h;->l:Z

    iget-object v0, p0, Ljb/h;->h:[Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    const/4 v1, 0x3

    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;->u(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;)V

    return-void
.end method

.method private I0()V
    .locals 4

    iget-object v0, p0, Ljb/h;->h:[Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    iget v2, p0, Ljb/h;->j:I

    int-to-float v2, v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;->y0(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;Ljava/lang/Object;)V

    iget-object v0, p0, Ljb/h;->h:[Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    const/4 v2, 0x2

    aget-object v0, v0, v2

    iget-object v2, p0, Ljb/h;->i:Lya/l;

    if-eqz v2, :cond_0

    iget v3, p0, Ljb/h;->j:I

    invoke-virtual {v2, v3}, Lya/l;->c(I)Ljava/lang/Object;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p0, v0, v2}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;->y0(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;Ljava/lang/Object;)V

    iget v0, p0, Ljb/h;->j:I

    add-int/2addr v0, v1

    iput v0, p0, Ljb/h;->j:I

    iget-object v0, p0, Ljb/h;->h:[Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;->u(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;)V

    return-void
.end method


# virtual methods
.method public F()[Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;
    .locals 1

    iget-object v0, p0, Ljb/h;->g:[Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    return-object v0
.end method

.method public final G0(Lya/D;)Lya/H;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "resolver"
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lya/D;->a()Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    sget-object p1, Lya/H;->DYNAMIC:Lya/H;

    return-object p1

    :cond_1
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;->B()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->Q(Ljava/lang/String;I)Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNodeConnection;

    move-result-object v1

    if-nez v1, :cond_2

    sget-object p1, Lya/H;->DYNAMIC:Lya/H;

    return-object p1

    :cond_2
    iget-object v2, v1, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNodeConnection;->fromNodeId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeData;->V(Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;

    move-result-object v0

    instance-of v2, v0, Lya/k;

    if-nez v2, :cond_3

    sget-object p1, Lya/H;->DYNAMIC:Lya/H;

    return-object p1

    :cond_3
    check-cast v0, Lya/k;

    iget v1, v1, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNodeConnection;->fromSlot:I

    invoke-interface {v0, v1, p1}, Lya/k;->b(ILya/D;)Lya/H;

    move-result-object p1

    if-eqz p1, :cond_4

    goto :goto_1

    :cond_4
    sget-object p1, Lya/H;->DYNAMIC:Lya/H;

    :goto_1
    return-object p1
.end method

.method public J()[Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;
    .locals 1

    iget-object v0, p0, Ljb/h;->h:[Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

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

    const-string p1, "Loop Each"

    return-object p1
.end method

.method public O()LUc/b;
    .locals 1

    sget-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$T;->NODEGRAPH_SEMAPHORE_TOPBAR:LUc/b;

    return-object v0
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
    .locals 2

    iget-object v0, p0, Ljb/h;->g:[Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;->Q(Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lya/m;->a0(Ljava/lang/Object;)Lya/l;

    move-result-object v0

    iput-object v0, p0, Ljb/h;->i:Lya/l;

    iput v1, p0, Ljb/h;->j:I

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lya/l;->i()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iput v0, p0, Ljb/h;->k:I

    iput-boolean v1, p0, Ljb/h;->l:Z

    if-gtz v0, :cond_1

    invoke-direct {p0}, Ljb/h;->H0()V

    return-void

    :cond_1
    invoke-direct {p0}, Ljb/h;->I0()V

    return-void
.end method

.method public n()Z
    .locals 1

    iget v0, p0, Ljb/h;->k:I

    iput v0, p0, Ljb/h;->j:I

    iget-boolean v0, p0, Ljb/h;->l:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Ljb/h;->H0()V

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public o()Z
    .locals 3

    iget v0, p0, Ljb/h;->j:I

    iget v1, p0, Ljb/h;->k:I

    const/4 v2, 0x1

    if-ge v0, v1, :cond_0

    invoke-direct {p0}, Ljb/h;->I0()V

    return v2

    :cond_0
    iget-boolean v0, p0, Ljb/h;->l:Z

    if-nez v0, :cond_1

    invoke-direct {p0}, Ljb/h;->H0()V

    return v2

    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljb/h;->l:Z

    return v0
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

    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    invoke-virtual {p0, p2}, Ljb/h;->G0(Lya/D;)Lya/H;

    move-result-object p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    sget-object p1, Lya/H;->DYNAMIC:Lya/H;

    :goto_0
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

    sget-object p1, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->NOCODE_LOOP_EACH_LIST:LUc/b;

    invoke-static {p1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LUc/b;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
