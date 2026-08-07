.class public LN4/b;
.super Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/HUBPanel;
.source "SourceFile"


# annotations
.annotation build Lj0/i;
.end annotation


# static fields
.field public static final y:Ljava/lang/String; = "AIAgentHUB"

.field public static final z:Ljava/lang/Class;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, LN4/b;

    sput-object v0, LN4/b;->z:Ljava/lang/Class;

    new-instance v0, LN4/b$a;

    invoke-direct {v0}, LN4/b$a;-><init>()V

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;->u(Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel$i;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    sget-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->AI_HUB:LUc/b;

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LUc/b;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "AIAgentHUB"

    invoke-direct {p0, v1, v0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/HUBPanel;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, LN4/b;->F0()V

    return-void
.end method

.method public static L0()LN4/b;
    .locals 2

    invoke-static {}, Lf8/c;->h0()V

    invoke-static {}, Lf8/c;->D()Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;

    move-result-object v0

    const-class v1, LN4/b;

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;->K(Ljava/lang/Class;)Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;

    move-result-object v0

    instance-of v1, v0, LN4/b;

    if-eqz v1, :cond_0

    check-cast v0, LN4/b;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    invoke-static {}, Lf8/c;->D()Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;->v0(Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;)V

    invoke-virtual {v0}, LN4/b;->F0()V

    return-object v0

    :cond_1
    new-instance v0, LN4/b;

    invoke-direct {v0}, LN4/b;-><init>()V

    invoke-static {}, Lf8/c;->D()Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;->v(Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;)V

    new-instance v1, LN4/b$b;

    invoke-direct {v1, v0}, LN4/b$b;-><init>(LN4/b;)V

    invoke-static {v1}, Lf8/c;->c0(Ljava/lang/Runnable;)V

    return-object v0
.end method


# virtual methods
.method public final F0()V
    .locals 1

    invoke-virtual {p0}, LN4/b;->I0()Lcom/itsmagic/engine/Activities/Editor/Panels/AIAgent/AIAgentWelcomePanel;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/itsmagic/engine/Activities/Editor/Panels/AIAgent/AIAgentWelcomePanel;

    invoke-direct {v0}, Lcom/itsmagic/engine/Activities/Editor/Panels/AIAgent/AIAgentWelcomePanel;-><init>()V

    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/HUBPanel;->z0(Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;)Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/HUBPanel;

    return-void
.end method

.method public G0(Ljava/lang/String;)Lcom/itsmagic/engine/Activities/Editor/Panels/AIAgent/AIAgentChatPanel;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "sessionId"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/HUBPanel;->D0()I

    move-result v2

    if-ge v1, v2, :cond_2

    invoke-virtual {p0, v1}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/HUBPanel;->C0(I)Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;->M()Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;

    move-result-object v3

    instance-of v3, v3, Lcom/itsmagic/engine/Activities/Editor/Panels/AIAgent/AIAgentChatPanel;

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;->M()Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;

    move-result-object v2

    check-cast v2, Lcom/itsmagic/engine/Activities/Editor/Panels/AIAgent/AIAgentChatPanel;

    invoke-virtual {v2}, Lcom/itsmagic/engine/Activities/Editor/Panels/AIAgent/AIAgentChatPanel;->R1()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    return-object v2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-object v0
.end method

.method public H0(Ljava/lang/String;)Lcom/itsmagic/engine/Activities/Editor/Panels/AIAgent/AIAgentChatPanel;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "sessionId"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, LN4/b;->G0(Ljava/lang/String;)Lcom/itsmagic/engine/Activities/Editor/Panels/AIAgent/AIAgentChatPanel;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p0, v1}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/HUBPanel;->g(Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;)Z

    return-object v1

    :cond_1
    invoke-static {p1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/d;->j(Ljava/lang/String;)Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/d$b;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/d$b;->d()Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/r;

    move-result-object v2

    if-eqz v2, :cond_2

    new-instance v0, Lcom/itsmagic/engine/Activities/Editor/Panels/AIAgent/AIAgentChatPanel;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/d$b;->j()Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/g;

    move-result-object v2

    invoke-direct {v0, v2, p1}, Lcom/itsmagic/engine/Activities/Editor/Panels/AIAgent/AIAgentChatPanel;-><init>(Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/g;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/d$b;->d()Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/r;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Activities/Editor/Panels/AIAgent/AIAgentChatPanel;->O1(Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/r;)V

    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/HUBPanel;->z0(Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;)Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/HUBPanel;

    new-instance p1, LN4/b$e;

    invoke-direct {p1, p0, v0}, LN4/b$e;-><init>(LN4/b;Lcom/itsmagic/engine/Activities/Editor/Panels/AIAgent/AIAgentChatPanel;)V

    invoke-static {p1}, Lf8/c;->c0(Ljava/lang/Runnable;)V

    :cond_2
    :goto_0
    return-object v0
.end method

.method public I0()Lcom/itsmagic/engine/Activities/Editor/Panels/AIAgent/AIAgentWelcomePanel;
    .locals 3

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/HUBPanel;->D0()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/HUBPanel;->C0(I)Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;->M()Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;

    move-result-object v2

    instance-of v2, v2, Lcom/itsmagic/engine/Activities/Editor/Panels/AIAgent/AIAgentWelcomePanel;

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;->M()Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;

    move-result-object v0

    check-cast v0, Lcom/itsmagic/engine/Activities/Editor/Panels/AIAgent/AIAgentWelcomePanel;

    return-object v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public J0(Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/g;)Lcom/itsmagic/engine/Activities/Editor/Panels/AIAgent/AIAgentChatPanel;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "specialist"
        }
    .end annotation

    new-instance v0, Lcom/itsmagic/engine/Activities/Editor/Panels/AIAgent/AIAgentChatPanel;

    invoke-direct {v0, p1}, Lcom/itsmagic/engine/Activities/Editor/Panels/AIAgent/AIAgentChatPanel;-><init>(Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/g;)V

    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/HUBPanel;->z0(Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;)Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/HUBPanel;

    new-instance p1, LN4/b$c;

    invoke-direct {p1, p0, v0}, LN4/b$c;-><init>(LN4/b;Lcom/itsmagic/engine/Activities/Editor/Panels/AIAgent/AIAgentChatPanel;)V

    invoke-static {p1}, Lf8/c;->c0(Ljava/lang/Runnable;)V

    return-object v0
.end method

.method public K0(Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/g;Ljava/lang/String;)Lcom/itsmagic/engine/Activities/Editor/Panels/AIAgent/AIAgentChatPanel;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "specialist",
            "sessionId"
        }
    .end annotation

    new-instance v0, Lcom/itsmagic/engine/Activities/Editor/Panels/AIAgent/AIAgentChatPanel;

    invoke-direct {v0, p1, p2}, Lcom/itsmagic/engine/Activities/Editor/Panels/AIAgent/AIAgentChatPanel;-><init>(Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/g;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/HUBPanel;->z0(Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;)Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/HUBPanel;

    new-instance p1, LN4/b$d;

    invoke-direct {p1, p0, v0}, LN4/b$d;-><init>(LN4/b;Lcom/itsmagic/engine/Activities/Editor/Panels/AIAgent/AIAgentChatPanel;)V

    invoke-static {p1}, Lf8/c;->c0(Ljava/lang/Runnable;)V

    return-object v0
.end method

.method public d0(Ljava/lang/String;Lorg/json/JSONObject;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "json",
            "jsonObj"
        }
    .end annotation

    invoke-super {p0, p1, p2}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/HUBPanel;->d0(Ljava/lang/String;Lorg/json/JSONObject;)Z

    move-result p1

    sget-object p2, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->AI_HUB:LUc/b;

    invoke-static {p2}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LUc/b;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/HUBPanel;->E0(Ljava/lang/String;)V

    invoke-virtual {p0}, LN4/b;->F0()V

    return p1
.end method

.method public w0(Landroid/widget/LinearLayout;Landroid/widget/FrameLayout;Landroid/app/Activity;Landroid/content/Context;Landroid/view/LayoutInflater;LC4/a;FFFFFFFFLandroid/widget/FrameLayout;Landroid/view/View;LC4/e;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "parent",
            "screenArea",
            "activity",
            "context",
            "layoutInflater",
            "editor3DScreen",
            "x",
            "y",
            "w",
            "h",
            "ax",
            "ay",
            "aw",
            "ah",
            "panelContentLayout",
            "fullPanelArea",
            "panelsControllerListener"
        }
    .end annotation

    invoke-virtual {p0}, LN4/b;->F0()V

    invoke-super/range {p0 .. p17}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/HUBPanel;->w0(Landroid/widget/LinearLayout;Landroid/widget/FrameLayout;Landroid/app/Activity;Landroid/content/Context;Landroid/view/LayoutInflater;LC4/a;FFFFFFFFLandroid/widget/FrameLayout;Landroid/view/View;LC4/e;)V

    return-void
.end method
