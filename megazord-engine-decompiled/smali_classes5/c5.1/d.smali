.class public Lc5/d;
.super Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;
.source "SourceFile"


# static fields
.field public static final Z:Ljava/lang/String; = "CloudSyncPlans"


# instance fields
.field public X:Landroidx/recyclerview/widget/RecyclerView;

.field public Y:Lw7/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lw7/a<",
            "Lc5/e;",
            "Lc5/f;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const-string v1, "Cloud sync"

    invoke-direct {p0, v0, v1}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-super {p0, v0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->d1(Z)V

    return-void
.end method

.method public static synthetic o1(Lc5/d;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Lc5/d;->p1()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static q1(Landroid/view/View;LL4/a$e;)Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "anchor",
            "side"
        }
    .end annotation

    new-instance v0, Lc5/d;

    invoke-direct {v0}, Lc5/d;-><init>()V

    const/16 v1, 0x12c

    invoke-static {v1}, Lf8/c;->g(I)F

    move-result v1

    const/16 v2, 0x15e

    invoke-static {v2}, Lf8/c;->f(I)F

    move-result v2

    invoke-static {p0, v0, p1, v1, v2}, LL4/a;->g(Landroid/view/View;Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;LL4/a$e;FF)Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;

    move-result-object p0

    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->S()Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;->L1(Z)V

    return-object p0
.end method


# virtual methods
.method public B0()Landroid/view/View;
    .locals 5

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->j:Landroid/view/LayoutInflater;

    const v1, 0x7f0c004e

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lc5/d$a;

    invoke-direct {v1, p0}, Lc5/d$a;-><init>(Lc5/d;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    const v1, 0x7f090130

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v3, Lc5/d$b;

    invoke-direct {v3, p0}, Lc5/d$b;-><init>(Lc5/d;)V

    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f0903ca

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v1, p0, Lc5/d;->X:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v3, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->M()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v3}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    iget-object v1, p0, Lc5/d;->X:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    new-instance v1, Lw7/a;

    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->M()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Lc5/d$c;

    invoke-direct {v3, p0}, Lc5/d$c;-><init>(Lc5/d;)V

    invoke-direct {v1, v2, v3}, Lw7/a;-><init>(Landroid/content/Context;Lw7/a$a;)V

    iput-object v1, p0, Lc5/d;->Y:Lw7/a;

    iget-object v2, p0, Lc5/d;->X:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Lc5/e;

    invoke-direct {v2}, Lc5/e;-><init>()V

    const-string v3, "Free"

    invoke-virtual {v2, v3}, Lc5/e;->k(Ljava/lang/String;)Lc5/e;

    move-result-object v2

    const-string v3, "250"

    invoke-virtual {v2, v3}, Lc5/e;->j(Ljava/lang/String;)Lc5/e;

    move-result-object v2

    const-string v3, "MB"

    invoke-virtual {v2, v3}, Lc5/e;->l(Ljava/lang/String;)Lc5/e;

    move-result-object v2

    const-string v3, "free"

    invoke-virtual {v2, v3}, Lc5/e;->i(Ljava/lang/String;)Lc5/e;

    move-result-object v2

    const v3, 0x7f070140

    invoke-virtual {v2, v3}, Lc5/e;->h(I)Lc5/e;

    move-result-object v2

    invoke-virtual {v2}, Lc5/e;->a()Lc5/e;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Lc5/e;

    invoke-direct {v2}, Lc5/e;-><init>()V

    const-string v3, "VIP"

    invoke-virtual {v2, v3}, Lc5/e;->k(Ljava/lang/String;)Lc5/e;

    move-result-object v2

    const-string v3, "1"

    invoke-virtual {v2, v3}, Lc5/e;->j(Ljava/lang/String;)Lc5/e;

    move-result-object v2

    const-string v3, "GB"

    invoke-virtual {v2, v3}, Lc5/e;->l(Ljava/lang/String;)Lc5/e;

    move-result-object v2

    const-string v4, "vip"

    invoke-virtual {v2, v4}, Lc5/e;->i(Ljava/lang/String;)Lc5/e;

    move-result-object v2

    const v4, 0x7f07025a

    invoke-virtual {v2, v4}, Lc5/e;->h(I)Lc5/e;

    move-result-object v2

    invoke-virtual {v2}, Lc5/e;->a()Lc5/e;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Lc5/e;

    invoke-direct {v2}, Lc5/e;-><init>()V

    const-string v4, "Enthusiast"

    invoke-virtual {v2, v4}, Lc5/e;->k(Ljava/lang/String;)Lc5/e;

    move-result-object v2

    const-string v4, "10"

    invoke-virtual {v2, v4}, Lc5/e;->j(Ljava/lang/String;)Lc5/e;

    move-result-object v2

    invoke-virtual {v2, v3}, Lc5/e;->l(Ljava/lang/String;)Lc5/e;

    move-result-object v2

    const-string v4, "itsmagic.subscription.cloudsync.a"

    invoke-virtual {v2, v4}, Lc5/e;->i(Ljava/lang/String;)Lc5/e;

    move-result-object v2

    const v4, 0x7f070117

    invoke-virtual {v2, v4}, Lc5/e;->h(I)Lc5/e;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Lc5/e;

    invoke-direct {v2}, Lc5/e;-><init>()V

    const-string v4, "Advanced"

    invoke-virtual {v2, v4}, Lc5/e;->k(Ljava/lang/String;)Lc5/e;

    move-result-object v2

    const-string v4, "30"

    invoke-virtual {v2, v4}, Lc5/e;->j(Ljava/lang/String;)Lc5/e;

    move-result-object v2

    invoke-virtual {v2, v3}, Lc5/e;->l(Ljava/lang/String;)Lc5/e;

    move-result-object v2

    const-string v4, "itsmagic.subscription.cloudsync.b"

    invoke-virtual {v2, v4}, Lc5/e;->i(Ljava/lang/String;)Lc5/e;

    move-result-object v2

    const v4, 0x7f07005a

    invoke-virtual {v2, v4}, Lc5/e;->h(I)Lc5/e;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Lc5/e;

    invoke-direct {v2}, Lc5/e;-><init>()V

    const-string v4, "Enterprise"

    invoke-virtual {v2, v4}, Lc5/e;->k(Ljava/lang/String;)Lc5/e;

    move-result-object v2

    const-string v4, "100"

    invoke-virtual {v2, v4}, Lc5/e;->j(Ljava/lang/String;)Lc5/e;

    move-result-object v2

    invoke-virtual {v2, v3}, Lc5/e;->l(Ljava/lang/String;)Lc5/e;

    move-result-object v2

    const-string v3, "itsmagic.subscription.cloudsync.c"

    invoke-virtual {v2, v3}, Lc5/e;->i(Ljava/lang/String;)Lc5/e;

    move-result-object v2

    const v3, 0x7f070116

    invoke-virtual {v2, v3}, Lc5/e;->h(I)Lc5/e;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lc5/d;->Y:Lw7/a;

    invoke-virtual {v2, v1}, Lw7/a;->t(Ljava/util/List;)V

    return-object v0
.end method

.method public final p1()Ljava/lang/String;
    .locals 4

    sget-object v0, Lo8/b;->f:LU8/a;

    iget-object v1, v0, LU8/a;->d:Lcom/itsmagic/engine/Core/Components/Settings/Server/UserSystem/UserController;

    const-string v2, "free"

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/itsmagic/engine/Core/Components/Settings/Server/UserSystem/UserController;->P()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, v0, LU8/a;->d:Lcom/itsmagic/engine/Core/Components/Settings/Server/UserSystem/UserController;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Core/Components/Settings/Server/UserSystem/UserController;->x()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    return-object v1

    :cond_1
    :goto_0
    iget-object v0, v0, LU8/a;->d:Lcom/itsmagic/engine/Core/Components/Settings/Server/UserSystem/UserController;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Core/Components/Settings/Server/UserSystem/UserController;->S()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "vip"

    return-object v0

    :cond_2
    return-object v2
.end method
