.class public LT4/b;
.super Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;
.source "SourceFile"


# static fields
.field public static final c0:Ljava/lang/String; = "Backups"


# instance fields
.field public X:Landroidx/recyclerview/widget/RecyclerView;

.field public Y:LG7/a;

.field public Z:LT4/a;

.field public a0:I

.field public b0:I


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const-string v1, "Backups"

    invoke-direct {p0, v0, v1}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-static {v1, v0}, Lgd/d;->j(II)I

    move-result v0

    iput v0, p0, LT4/b;->b0:I

    invoke-super {p0, v1}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->d1(Z)V

    return-void
.end method

.method public static synthetic o1(LT4/b;)LT4/a;
    .locals 0

    iget-object p0, p0, LT4/b;->Z:LT4/a;

    return-object p0
.end method

.method public static synthetic p1(LT4/b;)V
    .locals 0

    invoke-direct {p0}, LT4/b;->q1()V

    return-void
.end method

.method private q1()V
    .locals 1

    iget-object v0, p0, LT4/b;->Z:LT4/a;

    invoke-virtual {v0}, LT4/a;->p()V

    invoke-virtual {p0}, LT4/b;->s1()V

    return-void
.end method

.method public static r1(Landroid/view/View;LL4/a$e;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "anchor",
            "anchorSide"
        }
    .end annotation

    new-instance v0, LT4/b;

    invoke-direct {v0}, LT4/b;-><init>()V

    const/16 v1, 0x15e

    invoke-static {v1}, Lf8/c;->g(I)F

    move-result v1

    const v2, 0x3f4ccccd    # 0.8f

    invoke-static {p0, v0, p1, v1, v2}, LL4/a;->h(Landroid/view/View;Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;LL4/a$e;FF)V

    return-void
.end method


# virtual methods
.method public B0()Landroid/view/View;
    .locals 6

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->j:Landroid/view/LayoutInflater;

    const v1, 0x7f0c003b

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    new-instance v1, LT4/b$a;

    invoke-direct {v1, p0}, LT4/b$a;-><init>(LT4/b;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    const v1, 0x7f0903cc

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v1, p0, LT4/b;->X:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, LT4/a;

    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->M()Landroid/content/Context;

    move-result-object v2

    new-instance v3, LT4/b$b;

    invoke-direct {v3, p0}, LT4/b$b;-><init>(LT4/b;)V

    invoke-direct {v1, v2, v3}, LT4/a;-><init>(Landroid/content/Context;LT4/a$e;)V

    iput-object v1, p0, LT4/b;->Z:LT4/a;

    iget-object v2, p0, LT4/b;->X:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    new-instance v1, LG7/a;

    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->M()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, LT4/b;->X:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v4, p0, LT4/b;->Z:LT4/a;

    const/16 v5, 0x15e

    invoke-direct {v1, v2, v3, v4, v5}, LG7/a;-><init>(Landroid/content/Context;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$Adapter;I)V

    iput-object v1, p0, LT4/b;->Y:LG7/a;

    const v1, 0x7f09027b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, LT4/b$c;

    invoke-direct {v2, p0}, LT4/b$c;-><init>(LT4/b;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, LT4/b;->s1()V

    return-object v0
.end method

.method public k()Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;
    .locals 1

    invoke-super {p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->k()Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;

    move-result-object v0

    return-object v0
.end method

.method public m1()V
    .locals 1

    invoke-super {p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->m1()V

    iget-object v0, p0, LT4/b;->Y:LG7/a;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, LG7/a;->c()V

    :cond_0
    return-void
.end method

.method public n1()V
    .locals 0

    invoke-super {p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->n1()V

    invoke-virtual {p0}, LT4/b;->s1()V

    return-void
.end method

.method public final s1()V
    .locals 9

    iget-object v0, p0, LT4/b;->Z:LT4/a;

    if-eqz v0, :cond_5

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/io/File;

    sget-object v2, Lo8/b;->f:LU8/a;

    iget-object v2, v2, LU8/a;->a:LV8/a;

    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->M()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3}, LV8/a;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_2

    array-length v2, v1

    if-lez v2, :cond_2

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_3

    aget-object v5, v1, v4

    move v6, v3

    :goto_1
    iget-object v7, p0, LT4/b;->Z:LT4/a;

    invoke-virtual {v7}, LT4/a;->getItemCount()I

    move-result v7

    if-ge v6, v7, :cond_1

    iget-object v7, p0, LT4/b;->Z:LT4/a;

    invoke-virtual {v7, v6}, LT4/a;->l(I)LU4/c;

    move-result-object v7

    instance-of v8, v7, LU4/b;

    if-eqz v8, :cond_0

    check-cast v7, LU4/b;

    invoke-virtual {v7}, LU4/b;->b()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    goto :goto_2

    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_1
    new-instance v6, LU4/b;

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7, v5}, LU4/b;-><init>(Ljava/lang/String;Ljava/io/File;)V

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    return-void

    :cond_3
    :try_start_0
    new-instance v1, LT4/b$d;

    invoke-direct {v1, p0}, LT4/b$d;-><init>(LT4/b;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-static {v0}, Ljava/util/Collections;->reverse(Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LU4/b;

    iget-object v2, p0, LT4/b;->Z:LT4/a;

    invoke-virtual {v2, v1}, LT4/a;->j(LU4/c;)V

    goto :goto_4

    :cond_4
    return-void

    :cond_5
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Not initialized yet!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
