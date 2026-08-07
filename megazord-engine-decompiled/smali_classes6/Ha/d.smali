.class public LHa/d;
.super LHa/a;
.source "SourceFile"

# interfaces
.implements Lya/F;


# static fields
.field public static final o:Ljava/lang/String; = "PopupDialogThreeButtons"

.field public static final p:I = 0x3

.field public static final q:I = 0x4

.field public static final r:I = 0x5

.field public static final s:I = 0x0

.field public static final t:I = 0x1

.field public static final u:I = 0x2


# instance fields
.field public final m:[Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

.field public final n:[Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, LHa/d$a;

    invoke-direct {v0}, LHa/d$a;-><init>()V

    invoke-static {v0}, Lya/o;->a(Lya/p;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 9

    invoke-direct {p0}, LHa/a;-><init>()V

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    sget-object v1, Lya/H;->TEXT:Lya/H;

    const-string v2, "Title"

    invoke-direct {v0, v2, v1}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;-><init>(Ljava/lang/String;Lya/H;)V

    sget-object v2, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->NOCODE_SLOT_TITLE:LUc/b;

    invoke-static {v2}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LUc/b;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;->c(Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    move-result-object v3

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    const-string v2, "Message"

    invoke-direct {v0, v2, v1}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;-><init>(Ljava/lang/String;Lya/H;)V

    sget-object v2, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->NOCODE_SLOT_MESSAGE:LUc/b;

    invoke-static {v2}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LUc/b;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;->c(Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    move-result-object v4

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    const-string v2, "Type"

    sget-object v5, Lya/H;->POPUP_DIALOG_TYPE:Lya/H;

    invoke-direct {v0, v2, v5}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;-><init>(Ljava/lang/String;Lya/H;)V

    sget-object v2, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->NOCODE_SLOT_TYPE:LUc/b;

    invoke-static {v2}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LUc/b;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;->c(Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    move-result-object v5

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    const-string v2, "Cancel Button"

    invoke-direct {v0, v2, v1}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;-><init>(Ljava/lang/String;Lya/H;)V

    sget-object v2, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->NOCODE_SLOT_CANCEL_BUTTON:LUc/b;

    invoke-static {v2}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LUc/b;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;->c(Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    move-result-object v6

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    const-string v2, "Confirm Button"

    invoke-direct {v0, v2, v1}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;-><init>(Ljava/lang/String;Lya/H;)V

    sget-object v2, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->NOCODE_SLOT_CONFIRM_BUTTON:LUc/b;

    invoke-static {v2}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LUc/b;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;->c(Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    move-result-object v7

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    const-string v2, "Mid Button"

    invoke-direct {v0, v2, v1}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;-><init>(Ljava/lang/String;Lya/H;)V

    sget-object v1, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->NOCODE_SLOT_MID_BUTTON:LUc/b;

    invoke-static {v1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LUc/b;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;->c(Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    move-result-object v8

    filled-new-array/range {v3 .. v8}, [Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    move-result-object v0

    iput-object v0, p0, LHa/d;->m:[Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    sget-object v1, Lya/H;->BRANCH:Lya/H;

    const-string v2, "On Cancel"

    invoke-direct {v0, v2, v1}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;-><init>(Ljava/lang/String;Lya/H;)V

    sget-object v2, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->NOCODE_SLOT_ON_CANCEL:LUc/b;

    invoke-static {v2}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LUc/b;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;->c(Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    move-result-object v0

    new-instance v2, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    const-string v3, "On Confirm"

    invoke-direct {v2, v3, v1}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;-><init>(Ljava/lang/String;Lya/H;)V

    sget-object v3, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->NOCODE_SLOT_ON_CONFIRM:LUc/b;

    invoke-static {v3}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LUc/b;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;->c(Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    move-result-object v2

    new-instance v3, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    const-string v4, "On Mid"

    invoke-direct {v3, v4, v1}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;-><init>(Ljava/lang/String;Lya/H;)V

    sget-object v1, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->NOCODE_SLOT_ON_MID:LUc/b;

    invoke-static {v1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LUc/b;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;->c(Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    move-result-object v1

    filled-new-array {v0, v2, v1}, [Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    move-result-object v0

    iput-object v0, p0, LHa/d;->n:[Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    const-string v0, "PopupDialogThreeButtons"

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode;->serializedNodeType:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public bridge synthetic E0()V
    .locals 0

    invoke-super {p0}, LHa/a;->E0()V

    return-void
.end method

.method public F()[Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;
    .locals 1

    iget-object v0, p0, LHa/d;->m:[Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    return-object v0
.end method

.method public J()[Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;
    .locals 1

    iget-object v0, p0, LHa/d;->n:[Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    return-object v0
.end method

.method public bridge synthetic M()Lya/B;
    .locals 1

    invoke-super {p0}, LHa/a;->M()Lya/B;

    move-result-object v0

    return-object v0
.end method

.method public M0(LJAVARuntime/PopupDialog;J)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "dialog",
            "sessionId"
        }
    .end annotation

    iget-object v0, p0, LHa/d;->m:[Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    const/4 v1, 0x3

    aget-object v7, v0, v1

    const/4 v6, 0x0

    move-object v2, p0

    move-object v3, p1

    move-wide v4, p2

    invoke-virtual/range {v2 .. v7}, LHa/a;->I0(LJAVARuntime/PopupDialog;JILcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;)V

    iget-object v0, p0, LHa/d;->m:[Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    const/4 v1, 0x4

    aget-object v7, v0, v1

    const/4 v6, 0x1

    invoke-virtual/range {v2 .. v7}, LHa/a;->J0(LJAVARuntime/PopupDialog;JILcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;)V

    iget-object v0, p0, LHa/d;->m:[Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    const/4 v1, 0x5

    aget-object v7, v0, v1

    const/4 v6, 0x2

    invoke-virtual/range {v2 .. v7}, LHa/a;->K0(LJAVARuntime/PopupDialog;JILcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;)V

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

    const-string p1, "Popup Dialog 3 Buttons"

    return-object p1
.end method

.method public T0()I
    .locals 1

    const/4 v0, 0x0

    return v0
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

    invoke-virtual {p0}, LHa/a;->R0()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p2, 0x1

    if-ne p1, p2, :cond_1

    invoke-virtual {p0}, LHa/a;->P0()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    const/4 p2, 0x2

    if-ne p1, p2, :cond_2

    invoke-virtual {p0}, LHa/a;->S0()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_2
    const/4 p2, 0x3

    if-ne p1, p2, :cond_3

    invoke-virtual {p0}, LHa/a;->N0()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_3
    const/4 p2, 0x4

    if-ne p1, p2, :cond_4

    invoke-virtual {p0}, LHa/a;->O0()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_4
    const/4 p2, 0x5

    if-ne p1, p2, :cond_5

    invoke-virtual {p0}, LHa/a;->Q0()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_5
    const-string p1, ""

    return-object p1
.end method

.method public bridge synthetic j0()V
    .locals 0

    invoke-super {p0}, LHa/a;->j0()V

    return-void
.end method

.method public bridge synthetic k0()V
    .locals 0

    invoke-super {p0}, LHa/a;->k0()V

    return-void
.end method

.method public bridge synthetic m0()V
    .locals 0

    invoke-super {p0}, LHa/a;->m0()V

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

    sget-object p1, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->NOCODE_POPUP_DIALOG_THREE_BUTTONS:LUc/b;

    invoke-static {p1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LUc/b;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
