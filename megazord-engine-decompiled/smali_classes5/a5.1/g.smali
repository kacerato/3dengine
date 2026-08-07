.class public La5/g;
.super Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;
.source "SourceFile"


# static fields
.field public static final d0:Ljava/lang/String; = "RecyclerClassPanel"


# instance fields
.field public X:Ljava/lang/Class;

.field public Y:Ljava/lang/Object;

.field public Z:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/InspectorEditor;

.field public a0:Landroidx/recyclerview/widget/RecyclerView;

.field public b0:LW5/c;

.field public c0:La5/h;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;La5/h;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "tittle",
            "cls",
            "instance",
            "callbacks"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/InspectorEditor;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/InspectorEditor;-><init>(Z)V

    iput-object p1, p0, La5/g;->Z:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/InspectorEditor;

    iput-object p2, p0, La5/g;->X:Ljava/lang/Class;

    iput-object p3, p0, La5/g;->Y:Ljava/lang/Object;

    iput-object p4, p0, La5/g;->c0:La5/h;

    return-void
.end method

.method public static synthetic o1(La5/g;I)V
    .locals 0

    invoke-direct {p0, p1}, La5/g;->u1(I)V

    return-void
.end method

.method public static synthetic p1(La5/g;)La5/h;
    .locals 0

    iget-object p0, p0, La5/g;->c0:La5/h;

    return-object p0
.end method

.method public static synthetic q1(La5/g;)V
    .locals 0

    invoke-direct {p0}, La5/g;->s1()V

    return-void
.end method

.method private s1()V
    .locals 4

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    invoke-virtual {p0}, La5/g;->r1()LW5/d;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, La5/g;->b0:LW5/c;

    if-nez v1, :cond_0

    new-instance v1, LW5/c;

    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->M()Landroid/content/Context;

    move-result-object v2

    new-instance v3, La5/g$a;

    invoke-direct {v3, p0}, La5/g$a;-><init>(La5/g;)V

    invoke-direct {v1, v0, v2, v3}, LW5/c;-><init>(Ljava/util/List;Landroid/content/Context;LW5/j;)V

    iput-object v1, p0, La5/g;->b0:LW5/c;

    iget-object v0, p0, La5/g;->a0:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, La5/g$b;

    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->M()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, p0, v2}, La5/g$b;-><init>(La5/g;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    iget-object v0, p0, La5/g;->a0:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, La5/g;->b0:LW5/c;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v1, v0}, LW5/c;->d(Ljava/util/List;)V

    :goto_0
    return-void
.end method

.method private u1(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "position"
        }
    .end annotation

    iget-object v0, p0, La5/g;->b0:LW5/c;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, LW5/c;->l(I)V

    :cond_0
    return-void
.end method


# virtual methods
.method public B0()Landroid/view/View;
    .locals 3

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->j:Landroid/view/LayoutInflater;

    const v1, 0x7f0c0048

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v1, p0, La5/g;->a0:Landroidx/recyclerview/widget/RecyclerView;

    invoke-direct {p0}, La5/g;->s1()V

    return-object v0
.end method

.method public F0()V
    .locals 1

    iget-object v0, p0, La5/g;->c0:La5/h;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, La5/h;->b(La5/g;)V

    :cond_0
    return-void
.end method

.method public k()Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;
    .locals 5

    new-instance v0, La5/g;

    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->X()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, La5/g;->X:Ljava/lang/Class;

    iget-object v3, p0, La5/g;->Y:Ljava/lang/Object;

    iget-object v4, p0, La5/g;->c0:La5/h;

    invoke-direct {v0, v1, v2, v3, v4}, La5/g;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;La5/h;)V

    return-object v0
.end method

.method public final r1()LW5/d;
    .locals 7

    new-instance v0, LW5/a;

    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->X()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, La5/g;->Z:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/InspectorEditor;

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v2}, LW5/a;-><init>(Ljava/lang/String;ZLcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/InspectorEditor;)V

    iget-object v1, v0, LW5/a;->o:Ljava/util/List;

    iget-object v2, p0, La5/g;->X:Ljava/lang/Class;

    iget-object v4, p0, La5/g;->Y:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->M()Landroid/content/Context;

    move-result-object v5

    new-instance v6, La5/g$c;

    invoke-direct {v6, p0}, La5/g$c;-><init>(La5/g;)V

    invoke-static {v2, v4, v5, v3, v6}, Lh9/f;->B(Ljava/lang/Class;Ljava/lang/Object;Landroid/content/Context;ZLh9/p;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    const v1, 0x7f0700dd

    iput v1, v0, LW5/a;->j:I

    new-instance v1, LW5/d;

    const/4 v2, 0x0

    sget-object v3, LW5/d$a;->Component:LW5/d$a;

    invoke-direct {v1, v2, v3, v0, v2}, LW5/d;-><init>(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;LW5/d$a;LW5/a;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;)V

    return-object v1
.end method

.method public t1()La5/h;
    .locals 1

    iget-object v0, p0, La5/g;->c0:La5/h;

    return-object v0
.end method

.method public final v1()V
    .locals 3

    iget-object v0, p0, La5/g;->b0:LW5/c;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, La5/g;->r1()LW5/d;

    move-result-object v0

    iget-object v1, p0, La5/g;->b0:LW5/c;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, LW5/c;->n(ILW5/d;)V

    :cond_0
    return-void
.end method

.method public w1(La5/h;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "callbacks"
        }
    .end annotation

    iput-object p1, p0, La5/g;->c0:La5/h;

    return-void
.end method
