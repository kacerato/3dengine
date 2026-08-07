.class public LC6/a;
.super Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;
.source "SourceFile"


# static fields
.field public static final m0:Ljava/lang/String; = "PrefabSpawnerPanel"

.field public static final n0:J = 0x3e8L

.field public static final o0:I = 0x2


# instance fields
.field public final X:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "LD6/d;",
            ">;"
        }
    .end annotation
.end field

.field public Y:LD6/d;

.field public Z:I

.field public final a0:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "LD6/b;",
            ">;"
        }
    .end annotation
.end field

.field public b0:LE6/a;

.field public c0:Landroidx/recyclerview/widget/RecyclerView;

.field public d0:LG7/a;

.field public e0:Landroid/widget/EditText;

.field public f0:Landroid/widget/LinearLayout;

.field public g0:LF6/c;

.field public h0:Z

.field public i0:Landroid/os/Handler;

.field public j0:Ljava/lang/Runnable;

.field public k0:Z

.field public final l0:LD6/a;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const-string v1, "Object spawner"

    invoke-direct {p0, v0, v1}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, LC6/a;->X:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, LC6/a;->a0:Ljava/util/List;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, LC6/a;->i0:Landroid/os/Handler;

    new-instance v0, LC6/a$a;

    invoke-direct {v0, p0}, LC6/a$a;-><init>(LC6/a;)V

    iput-object v0, p0, LC6/a;->l0:LD6/a;

    const/4 v0, 0x0

    invoke-super {p0, v0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->d1(Z)V

    return-void
.end method

.method private C1()V
    .locals 1

    iget-object v0, p0, LC6/a;->Y:LD6/d;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, LD6/d;->b()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, LC6/a;->k0:Z

    :goto_0
    return-void
.end method

.method private D1()I
    .locals 2

    iget-object v0, p0, LC6/a;->a0:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    invoke-static {v1, v0}, Lgd/b;->N(II)I

    move-result v0

    return v0
.end method

.method public static E1(Landroid/content/Context;Landroid/widget/LinearLayout;Landroid/view/LayoutInflater;)Le8/k;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "parent",
            "layoutInflater"
        }
    .end annotation

    new-instance v0, Le8/k;

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v1, p0}, Lgd/b;->l0(FLandroid/content/Context;)I

    move-result v1

    invoke-direct {v0, v1}, Le8/k;-><init>(I)V

    invoke-virtual {v0, p1, p0, p2}, Le8/k;->a(Landroid/widget/LinearLayout;Landroid/content/Context;Landroid/view/LayoutInflater;)V

    return-object v0
.end method

.method private F1(Landroid/widget/LinearLayout;)Le8/k;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "parent"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->M()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->j:Landroid/view/LayoutInflater;

    invoke-static {v0, p1, v1}, LC6/a;->E1(Landroid/content/Context;Landroid/widget/LinearLayout;Landroid/view/LayoutInflater;)Le8/k;

    move-result-object p1

    return-object p1
.end method

.method private G1(Landroid/widget/LinearLayout;Le8/g;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "topbar",
            "element"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->M()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->j:Landroid/view/LayoutInflater;

    invoke-virtual {p2, p1, v0, v1}, Le8/g;->a(Landroid/widget/LinearLayout;Landroid/content/Context;Landroid/view/LayoutInflater;)V

    invoke-direct {p0, p1}, LC6/a;->F1(Landroid/widget/LinearLayout;)Le8/k;

    move-result-object p1

    invoke-virtual {p1}, Le8/g;->e()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p2, p1}, Le8/g;->n(Landroid/view/View;)V

    return-void
.end method

.method private H1()V
    .locals 11

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    new-instance v1, Le8/p;

    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->M()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Le8/p;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, LC6/a;->X:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, LD6/d;

    iget-object v6, p0, LC6/a;->e0:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    if-eqz v6, :cond_0

    iget-object v6, p0, LC6/a;->e0:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_0

    instance-of v6, v4, LF6/c;

    if-nez v6, :cond_1

    goto :goto_0

    :cond_0
    instance-of v6, v4, LF6/c;

    if-eqz v6, :cond_1

    goto :goto_0

    :cond_1
    instance-of v6, v4, LD6/c;

    if-eqz v6, :cond_2

    new-instance v4, Le8/k;

    const/high16 v5, 0x40800000    # 4.0f

    invoke-static {v5}, Lgd/b;->k0(F)I

    move-result v5

    invoke-direct {v4, v5}, Le8/k;-><init>(I)V

    invoke-virtual {v1, v4}, Le8/p;->s(Le8/g;)Le8/p;

    goto :goto_0

    :cond_2
    if-nez v3, :cond_3

    move-object v3, v4

    :cond_3
    new-instance v6, Le8/o;

    invoke-virtual {v4}, LD6/d;->c()I

    move-result v7

    new-instance v8, LC6/a$g;

    invoke-direct {v8, p0, v4}, LC6/a$g;-><init>(LC6/a;LD6/d;)V

    sget-object v9, Le8/c$b;->Disconnected:Le8/c$b;

    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->M()Landroid/content/Context;

    move-result-object v10

    invoke-direct {v6, v7, v8, v9, v10}, Le8/o;-><init>(ILe8/r;Le8/c$b;Landroid/content/Context;)V

    sget-object v7, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$T;->PANEL_TOPBAR:LUc/b;

    invoke-virtual {v6, v7}, Le8/o;->J0(LUc/b;)Le8/o;

    move-result-object v7

    sget-object v8, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$T;->PRIMARY_DARK:LUc/b;

    invoke-virtual {v7, v8}, Le8/o;->x0(LUc/b;)Le8/o;

    move-result-object v7

    const/high16 v8, 0x41f00000    # 30.0f

    invoke-static {v8}, Lgd/b;->k0(F)I

    move-result v9

    invoke-virtual {v7, v9}, Le8/c;->j0(I)Le8/c;

    move-result-object v7

    invoke-static {v8}, Lgd/b;->k0(F)I

    move-result v8

    invoke-virtual {v7, v8}, Le8/c;->X(I)Le8/c;

    invoke-virtual {v6, v5}, Le8/c;->V(Z)Le8/c;

    iput-object v4, v6, Le8/g;->g:Ljava/lang/Object;

    invoke-virtual {v1, v6}, Le8/p;->s(Le8/g;)Le8/p;

    goto/16 :goto_0

    :cond_4
    iget-object v1, p0, LC6/a;->e0:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_5

    iget-object v1, p0, LC6/a;->e0:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_5

    iput-boolean v2, p0, LC6/a;->h0:Z

    goto :goto_1

    :cond_5
    iput-boolean v5, p0, LC6/a;->h0:Z

    :goto_1
    iget-object v1, p0, LC6/a;->f0:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    :goto_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v2, v1, :cond_6

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le8/g;

    iget-object v4, p0, LC6/a;->f0:Landroid/widget/LinearLayout;

    invoke-direct {p0, v4, v1}, LC6/a;->G1(Landroid/widget/LinearLayout;Le8/g;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_6
    invoke-virtual {p0, v3}, LC6/a;->J1(LD6/d;)V

    return-void
.end method

.method private K1(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "text"
        }
    .end annotation

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, LC6/a;->h0:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, LC6/a;->H1()V

    :cond_0
    iget-object v0, p0, LC6/a;->g0:LF6/c;

    invoke-virtual {v0, p1}, LF6/b;->A(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-boolean p1, p0, LC6/a;->h0:Z

    if-nez p1, :cond_2

    invoke-direct {p0}, LC6/a;->H1()V

    :cond_2
    :goto_0
    return-void
.end method

.method public static L1(Landroid/view/View;LL4/a$e;)Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;
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

    new-instance v0, LC6/a;

    invoke-direct {v0}, LC6/a;-><init>()V

    const/16 v1, 0x168

    invoke-static {v1}, Lf8/c;->g(I)F

    move-result v1

    const/16 v2, 0x12c

    invoke-static {v2}, Lf8/c;->f(I)F

    move-result v2

    invoke-static {p0, v0, p1, v1, v2}, LL4/a;->g(Landroid/view/View;Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;LL4/a$e;FF)Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic o1(LC6/a;)I
    .locals 0

    invoke-direct {p0}, LC6/a;->D1()I

    move-result p0

    return p0
.end method

.method public static synthetic p1(LC6/a;)Landroid/widget/EditText;
    .locals 0

    iget-object p0, p0, LC6/a;->e0:Landroid/widget/EditText;

    return-object p0
.end method

.method public static synthetic q1(LC6/a;)LE6/a;
    .locals 0

    iget-object p0, p0, LC6/a;->b0:LE6/a;

    return-object p0
.end method

.method public static synthetic r1(LC6/a;)LG7/a;
    .locals 0

    iget-object p0, p0, LC6/a;->d0:LG7/a;

    return-object p0
.end method

.method public static synthetic s1(LC6/a;)Z
    .locals 0

    iget-boolean p0, p0, LC6/a;->k0:Z

    return p0
.end method

.method public static synthetic t1(LC6/a;Z)Z
    .locals 0

    iput-boolean p1, p0, LC6/a;->k0:Z

    return p1
.end method

.method public static synthetic u1(LC6/a;)V
    .locals 0

    invoke-direct {p0}, LC6/a;->C1()V

    return-void
.end method

.method public static synthetic v1(LC6/a;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, LC6/a;->K1(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic w1(LC6/a;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, LC6/a;->j0:Ljava/lang/Runnable;

    return-object p0
.end method

.method public static synthetic x1(LC6/a;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0

    iput-object p1, p0, LC6/a;->j0:Ljava/lang/Runnable;

    return-object p1
.end method

.method public static synthetic y1(LC6/a;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, LC6/a;->i0:Landroid/os/Handler;

    return-object p0
.end method

.method public static synthetic z1(LC6/a;LD6/d;)V
    .locals 0

    invoke-virtual {p0, p1}, LC6/a;->J1(LD6/d;)V

    return-void
.end method


# virtual methods
.method public A1(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "elementList"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "LD6/b;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    iput-boolean v0, p0, LC6/a;->k0:Z

    iget-object v0, p0, LC6/a;->a0:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, LC6/a;->b0:LE6/a;

    invoke-virtual {v0, p1}, LE6/a;->q(Ljava/util/List;)V

    return-void
.end method

.method public B0()Landroid/view/View;
    .locals 7

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->j:Landroid/view/LayoutInflater;

    const v1, 0x7f0c016f

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    new-instance v1, LC6/a$b;

    invoke-direct {v1, p0}, LC6/a$b;-><init>(LC6/a;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    const v1, 0x7f09041c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, LC6/a;->e0:Landroid/widget/EditText;

    const v1, 0x7f0903ca

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v1, p0, LC6/a;->c0:Landroidx/recyclerview/widget/RecyclerView;

    const v1, 0x7f090551

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, LC6/a;->f0:Landroid/widget/LinearLayout;

    new-instance v1, LE6/a;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->M()Landroid/content/Context;

    move-result-object v3

    new-instance v4, LC6/a$c;

    invoke-direct {v4, p0}, LC6/a$c;-><init>(LC6/a;)V

    invoke-direct {v1, v2, v3, v4}, LE6/a;-><init>(Ljava/util/List;Landroid/content/Context;LE6/a$e;)V

    iput-object v1, p0, LC6/a;->b0:LE6/a;

    iget-object v2, p0, LC6/a;->c0:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    new-instance v1, LG7/a;

    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->M()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, LC6/a;->c0:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v4, p0, LC6/a;->b0:LE6/a;

    const/16 v5, 0x60

    invoke-direct {v1, v2, v3, v4, v5}, LG7/a;-><init>(Landroid/content/Context;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$Adapter;I)V

    iput-object v1, p0, LC6/a;->d0:LG7/a;

    iget-object v1, p0, LC6/a;->c0:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v2, LC6/a$d;

    invoke-direct {v2, p0}, LC6/a$d;-><init>(LC6/a;)V

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    iget-object v1, p0, LC6/a;->X:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    iget-object v1, p0, LC6/a;->X:Ljava/util/List;

    new-instance v2, LF6/a;

    const v3, 0x7f0701de

    const-string v4, "Project objects"

    invoke-direct {v2, v3, v4}, LF6/a;-><init>(ILjava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, LC6/a;->X:Ljava/util/List;

    new-instance v2, LD6/c;

    invoke-direct {v2}, LD6/c;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, LC6/a;->X:Ljava/util/List;

    new-instance v2, LF6/b;

    sget-object v3, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->SCENARIO:LUc/b;

    invoke-static {v3}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LUc/b;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "scenario"

    const v5, 0x7f070122

    invoke-direct {v2, v5, v3, v4}, LF6/b;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, LC6/a;->X:Ljava/util/List;

    new-instance v2, LF6/b;

    sget-object v3, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->NATURE:LUc/b;

    invoke-static {v3}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LUc/b;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "nature"

    const v5, 0x7f070120

    invoke-direct {v2, v5, v3, v4}, LF6/b;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, LC6/a;->X:Ljava/util/List;

    new-instance v2, LF6/b;

    sget-object v3, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->TREES:LUc/b;

    invoke-static {v3}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LUc/b;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "tree"

    const v5, 0x7f070125

    invoke-direct {v2, v5, v3, v4}, LF6/b;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, LC6/a;->X:Ljava/util/List;

    new-instance v2, LF6/b;

    sget-object v3, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->ROCKS:LUc/b;

    invoke-static {v3}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LUc/b;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "rock"

    const v5, 0x7f070121

    invoke-direct {v2, v5, v3, v4}, LF6/b;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, LC6/a;->X:Ljava/util/List;

    new-instance v2, LF6/b;

    sget-object v3, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->STONES:LUc/b;

    invoke-static {v3}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LUc/b;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "stone"

    const v5, 0x7f070123

    invoke-direct {v2, v5, v3, v4}, LF6/b;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, LC6/a;->X:Ljava/util/List;

    new-instance v2, LF6/b;

    sget-object v3, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->WOOD:LUc/b;

    invoke-static {v3}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LUc/b;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "wood"

    const v5, 0x7f070127

    invoke-direct {v2, v5, v3, v4}, LF6/b;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, LC6/a;->X:Ljava/util/List;

    new-instance v2, LF6/b;

    sget-object v3, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->HOUSES:LUc/b;

    invoke-static {v3}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LUc/b;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "house"

    const v5, 0x7f07011e

    invoke-direct {v2, v5, v3, v4}, LF6/b;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, LC6/a;->X:Ljava/util/List;

    new-instance v2, LF6/b;

    sget-object v3, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->GUNS:LUc/b;

    invoke-static {v3}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LUc/b;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "gun"

    const-string v5, "guns"

    const v6, 0x7f07011d

    invoke-direct {v2, v6, v3, v4, v5}, LF6/b;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, LC6/a;->X:Ljava/util/List;

    new-instance v2, LF6/b;

    sget-object v3, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->WEAPONS:LUc/b;

    invoke-static {v3}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LUc/b;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "weapon"

    const v5, 0x7f070126

    invoke-direct {v2, v5, v3, v4}, LF6/b;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, LC6/a;->X:Ljava/util/List;

    new-instance v2, LF6/b;

    sget-object v3, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->TOOLS:LUc/b;

    invoke-static {v3}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LUc/b;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "tool"

    const v5, 0x7f070124

    invoke-direct {v2, v5, v3, v4}, LF6/b;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, LC6/a;->X:Ljava/util/List;

    new-instance v2, LF6/b;

    sget-object v3, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->FOOD:LUc/b;

    invoke-static {v3}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LUc/b;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "food"

    const v5, 0x7f07011b

    invoke-direct {v2, v5, v3, v4}, LF6/b;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, LC6/a;->X:Ljava/util/List;

    new-instance v2, LF6/b;

    sget-object v3, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->FURNITURE:LUc/b;

    invoke-static {v3}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LUc/b;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "furniture"

    const v5, 0x7f07011c

    invoke-direct {v2, v5, v3, v4}, LF6/b;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, LC6/a;->X:Ljava/util/List;

    new-instance v2, LF6/b;

    const-string v3, "Medieval"

    const-string v4, "medieval"

    const v5, 0x7f07011f

    invoke-direct {v2, v5, v3, v4}, LF6/b;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, LF6/c;

    invoke-direct {v1}, LF6/c;-><init>()V

    iput-object v1, p0, LC6/a;->g0:LF6/c;

    iget-object v2, p0, LC6/a;->X:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, LC6/a;->H1()V

    iget-object v1, p0, LC6/a;->e0:Landroid/widget/EditText;

    new-instance v2, LC6/a$e;

    invoke-direct {v2, p0}, LC6/a$e;-><init>(LC6/a;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    iget-object v1, p0, LC6/a;->e0:Landroid/widget/EditText;

    new-instance v2, LC6/a$f;

    invoke-direct {v2, p0}, LC6/a$f;-><init>(LC6/a;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    return-object v0
.end method

.method public B1()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, LC6/a;->k0:Z

    iget-object v0, p0, LC6/a;->a0:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, LC6/a;->b0:LE6/a;

    invoke-virtual {v0}, LZ7/d;->m()V

    return-void
.end method

.method public final I1(Landroid/widget/LinearLayout;Le8/g;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "topbar",
            "element"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->M()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->j:Landroid/view/LayoutInflater;

    invoke-virtual {p2, p1, v0, v1}, Le8/g;->a(Landroid/widget/LinearLayout;Landroid/content/Context;Landroid/view/LayoutInflater;)V

    invoke-direct {p0, p1}, LC6/a;->F1(Landroid/widget/LinearLayout;)Le8/k;

    move-result-object p1

    invoke-virtual {p1}, Le8/g;->e()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p2, p1}, Le8/g;->n(Landroid/view/View;)V

    return-void
.end method

.method public final J1(LD6/d;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "tab"
        }
    .end annotation

    if-eqz p1, :cond_1

    iget-object v0, p0, LC6/a;->Y:LD6/d;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, LD6/d;->n()V

    iget-object v0, p0, LC6/a;->Y:LD6/d;

    invoke-virtual {v0}, LD6/d;->m()V

    :cond_0
    invoke-virtual {p0}, LC6/a;->B1()V

    iput-object p1, p0, LC6/a;->Y:LD6/d;

    invoke-virtual {p1}, LD6/d;->f()Ljava/lang/String;

    move-result-object p1

    invoke-super {p0, p1}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->e1(Ljava/lang/String;)V

    iget-object p1, p0, LC6/a;->Y:LD6/d;

    invoke-virtual {p1}, LD6/d;->j()V

    iget-object p1, p0, LC6/a;->Y:LD6/d;

    iget-object v0, p0, LC6/a;->l0:LD6/a;

    invoke-virtual {p1, v0}, LD6/d;->l(LD6/a;)V

    iget-object p1, p0, LC6/a;->Y:LD6/d;

    invoke-virtual {p1}, LD6/d;->k()V

    return-void

    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "tab can\'t be null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public k()Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;
    .locals 1

    new-instance v0, LC6/a;

    invoke-direct {v0}, LC6/a;-><init>()V

    return-object v0
.end method

.method public m1()V
    .locals 1

    invoke-super {p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->m1()V

    iget-object v0, p0, LC6/a;->d0:LG7/a;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, LG7/a;->c()V

    :cond_0
    return-void
.end method
