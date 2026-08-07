.class public LO5/c;
.super Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LO5/c$s;,
        LO5/c$p;,
        LO5/c$q;,
        LO5/c$r;
    }
.end annotation


# static fields
.field public static final i0:Ljava/lang/String; = "FileImporter"


# instance fields
.field public X:Landroid/view/View;

.field public Y:Landroid/view/View;

.field public Z:Landroid/widget/LinearLayout;

.field public a0:Landroid/view/View;

.field public b0:Landroid/view/View;

.field public c0:LX7/l;

.field public d0:LX7/l;

.field public final e0:LO5/c$s;

.field public final f0:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "LX7/i;",
            ">;"
        }
    .end annotation
.end field

.field public final g0:Ljava/lang/String;

.field public final h0:Ljava/lang/String;


# direct methods
.method public constructor <init>(LO5/c$s;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "listener",
            "inProjectDestinationFolder"
        }
    .end annotation

    sget-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->IMPORT:LUc/b;

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LUc/b;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, p0, LO5/c;->c0:LX7/l;

    iput-object v1, p0, LO5/c;->d0:LX7/l;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, LO5/c;->f0:Ljava/util/List;

    iput-object p1, p0, LO5/c;->e0:LO5/c$s;

    const-string p1, "/"

    invoke-virtual {p2, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    :cond_0
    iput-object p2, p0, LO5/c;->g0:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/itsmagic/engine/Core/Components/ProjectController/a;->P()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, LO5/c;->h0:Ljava/lang/String;

    return-void
.end method

.method private E1()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "LX7/i;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, LO5/c;->f0:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance v0, Ljava/io/File;

    sget-object v1, Lo8/b;->f:LU8/a;

    iget-object v1, v1, LU8/a;->a:LV8/a;

    invoke-virtual {v1}, LV8/a;->h()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_4

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    array-length v5, v0

    if-ge v4, v5, :cond_1

    aget-object v5, v0, v4

    invoke-virtual {v5}, Ljava/io/File;->isDirectory()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_0
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    new-instance v0, LO5/b;

    invoke-direct {v0}, LO5/b;-><init>()V

    invoke-static {v0}, Ljava/util/Comparator;->comparing(Ljava/util/function/Function;)Ljava/util/Comparator;

    move-result-object v0

    invoke-static {v1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    new-instance v0, LO5/b;

    invoke-direct {v0}, LO5/b;-><init>()V

    invoke-static {v0}, Ljava/util/Comparator;->comparing(Ljava/util/function/Function;)Ljava/util/Comparator;

    move-result-object v0

    invoke-static {v2, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    move v1, v3

    :goto_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_4

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/io/File;

    invoke-virtual {p0, v2}, LO5/c;->H1(Ljava/io/File;)Z

    move-result v4

    if-nez v4, :cond_2

    goto :goto_4

    :cond_2
    new-instance v4, LO5/c$p;

    invoke-direct {v4, p0, v2}, LO5/c$p;-><init>(LO5/c;Ljava/io/File;)V

    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v5

    if-eqz v5, :cond_3

    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    array-length v2, v2

    if-lez v2, :cond_3

    const/4 v2, 0x1

    goto :goto_3

    :cond_3
    move v2, v3

    :goto_3
    invoke-virtual {v4, v2}, LX7/i;->r(Z)V

    iget-object v2, p0, LO5/c;->f0:Ljava/util/List;

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_4
    iget-object v0, p0, LO5/c;->f0:Ljava/util/List;

    return-object v0
.end method

.method private O1(LX7/i;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "element"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LX7/i;",
            ")",
            "Ljava/util/List<",
            "LX7/i;",
            ">;"
        }
    .end annotation

    move-object v0, p1

    check-cast v0, LO5/c$p;

    iget-object v1, v0, LO5/c$p;->m:Ljava/io/File;

    iget-object v2, v0, LO5/c$p;->o:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0, v1, v2, v0}, LO5/c;->N1(Ljava/io/File;Ljava/util/List;LO5/c$p;)V

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, LX7/i;->r(Z)V

    const/4 v0, 0x0

    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LX7/i;

    invoke-virtual {p1}, LX7/i;->e()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v1, v3}, LX7/i;->q(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object v2
.end method

.method public static T1(Landroid/view/View;LL4/a$e;Ljava/lang/String;LO5/c$s;)LO5/c;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "anchor",
            "anchorSide",
            "inProjectDestinationFolder",
            "listener"
        }
    .end annotation

    new-instance v0, LO5/c;

    invoke-direct {v0, p3, p2}, LO5/c;-><init>(LO5/c$s;Ljava/lang/String;)V

    const p2, 0x3f4ccccd    # 0.8f

    invoke-static {p0, v0, p1, p2, p2}, LL4/a;->g(Landroid/view/View;Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;LL4/a$e;FF)Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;

    return-object v0
.end method

.method private V1()V
    .locals 1

    iget-object v0, p0, LO5/c;->c0:LX7/l;

    invoke-virtual {v0}, LX7/l;->v()V

    invoke-direct {p0}, LO5/c;->X1()V

    return-void
.end method

.method private X1()V
    .locals 1

    invoke-virtual {p0}, LO5/c;->J1()LO5/c$q;

    iget-object v0, p0, LO5/c;->d0:LX7/l;

    invoke-virtual {v0}, LX7/l;->v()V

    return-void
.end method

.method public static synthetic o1(LO5/c;)V
    .locals 0

    invoke-direct {p0}, LO5/c;->V1()V

    return-void
.end method

.method public static synthetic p1(LO5/c;LO5/c$p;)V
    .locals 0

    invoke-virtual {p0, p1}, LO5/c;->U1(LO5/c$p;)V

    return-void
.end method

.method public static synthetic q1(LO5/c;)V
    .locals 0

    invoke-virtual {p0}, LO5/c;->F1()V

    return-void
.end method

.method public static synthetic r1(LO5/c;)LO5/c$s;
    .locals 0

    iget-object p0, p0, LO5/c;->e0:LO5/c$s;

    return-object p0
.end method

.method public static synthetic s1(LO5/c;)V
    .locals 0

    invoke-virtual {p0}, LO5/c;->C1()V

    return-void
.end method

.method public static synthetic t1(LO5/c;)V
    .locals 0

    invoke-virtual {p0}, LO5/c;->A1()V

    return-void
.end method

.method public static synthetic u1(LO5/c;LX7/i;)Ljava/util/List;
    .locals 0

    invoke-direct {p0, p1}, LO5/c;->O1(LX7/i;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic v1(LO5/c;)Ljava/util/List;
    .locals 0

    invoke-direct {p0}, LO5/c;->E1()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic w1(LO5/c;)LX7/l;
    .locals 0

    iget-object p0, p0, LO5/c;->c0:LX7/l;

    return-object p0
.end method

.method public static synthetic x1(LO5/c;LX7/i;)Ljava/util/List;
    .locals 0

    invoke-virtual {p0, p1}, LO5/c;->Q1(LX7/i;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic y1(LO5/c;)Ljava/util/List;
    .locals 0

    invoke-virtual {p0}, LO5/c;->K1()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic z1(LO5/c;)LX7/l;
    .locals 0

    iget-object p0, p0, LO5/c;->d0:LX7/l;

    return-object p0
.end method


# virtual methods
.method public final A1()V
    .locals 2

    invoke-virtual {p0}, LO5/c;->D1()V

    iget-object v0, p0, LO5/c;->a0:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, LO5/c;->X:Landroid/view/View;

    const v1, 0x7f0901db

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sget-object v1, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->WRITE_PERMISSION_FAILED:LUc/b;

    invoke-static {v1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LUc/b;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public B0()Landroid/view/View;
    .locals 3

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->j:Landroid/view/LayoutInflater;

    const v1, 0x7f0c00b5

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, LO5/c;->X:Landroid/view/View;

    const v1, 0x7f09027d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, LO5/c;->Y:Landroid/view/View;

    const v1, 0x7f0901dc

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, LO5/c;->a0:Landroid/view/View;

    const v1, 0x7f0903e0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, LO5/c;->b0:Landroid/view/View;

    invoke-static {}, LIb/a;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, LO5/c;->C1()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, LO5/c;->B1()V

    :goto_0
    return-object v0
.end method

.method public final B1()V
    .locals 2

    invoke-virtual {p0}, LO5/c;->D1()V

    iget-object v0, p0, LO5/c;->b0:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, LO5/c;->b0:Landroid/view/View;

    const v1, 0x7f0904c8

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sget-object v1, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->READ_PERMISSION_IS_REQUIRED:LUc/b;

    invoke-static {v1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LUc/b;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, LO5/c;->b0:Landroid/view/View;

    const v1, 0x7f0900c8

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    sget-object v1, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->GIVE_PERMISSION:LUc/b;

    invoke-static {v1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LUc/b;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v1, LO5/c$a;

    invoke-direct {v1, p0}, LO5/c$a;-><init>(LO5/c;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public final C1()V
    .locals 5

    iget-object v0, p0, LO5/c;->Y:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, LO5/c;->Y:Landroid/view/View;

    const v1, 0x7f0903cc

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView;

    const v2, 0x7f09039d

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroidx/recyclerview/widget/RecyclerView;

    const v3, 0x7f09052f

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    sget-object v4, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->SELECT_FILES:LUc/b;

    invoke-static {v4}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LUc/b;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v3, 0x7f09039e

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    sget-object v4, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->PREVIEW_IN_PROJECT:LUc/b;

    invoke-static {v4}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LUc/b;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v3, LX7/l;

    new-instance v4, LO5/c$h;

    invoke-direct {v4, p0}, LO5/c$h;-><init>(LO5/c;)V

    invoke-direct {v3, v1, v4}, LX7/l;-><init>(Landroidx/recyclerview/widget/RecyclerView;LX7/k;)V

    iput-object v3, p0, LO5/c;->c0:LX7/l;

    new-instance v1, LX7/l;

    new-instance v3, LO5/c$i;

    invoke-direct {v3, p0}, LO5/c$i;-><init>(LO5/c;)V

    invoke-direct {v1, v2, v3}, LX7/l;-><init>(Landroidx/recyclerview/widget/RecyclerView;LX7/k;)V

    iput-object v1, p0, LO5/c;->d0:LX7/l;

    const v1, 0x7f0901a5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    sget-object v2, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->IMPORT:LUc/b;

    invoke-static {v1, v2}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->k(Landroid/widget/Button;LUc/b;)V

    new-instance v2, LO5/c$j;

    invoke-direct {v2, p0}, LO5/c$j;-><init>(LO5/c;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f0900ff

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    sget-object v1, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->CANCEL:LUc/b;

    invoke-static {v0, v1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->k(Landroid/widget/Button;LUc/b;)V

    new-instance v1, LO5/c$k;

    invoke-direct {v1, p0}, LO5/c$k;-><init>(LO5/c;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public final D1()V
    .locals 2

    iget-object v0, p0, LO5/c;->a0:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, LO5/c;->b0:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, LO5/c;->Y:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public final F1()V
    .locals 3

    invoke-virtual {p0}, LO5/c;->J1()LO5/c$q;

    move-result-object v0

    iget-object v1, p0, LO5/c;->h0:Ljava/lang/String;

    iget-object v2, v0, LO5/c$q;->a:Ljava/util/List;

    invoke-virtual {p0, v2, v1, v0}, LO5/c;->G1(Ljava/util/List;Ljava/lang/String;LO5/c$q;)V

    return-void
.end method

.method public final G1(Ljava/util/List;Ljava/lang/String;LO5/c$q;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "files",
            "destination",
            "data"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "LO5/c$r;",
            ">;",
            "Ljava/lang/String;",
            "LO5/c$q;",
            ")V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LO5/c$r;

    invoke-virtual {v0}, LO5/c$r;->e()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, LO5/c$r;->c()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p3, LO5/c$q;->b:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, LO5/c$r;->e()Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iget-object v0, v0, LO5/c$r;->c:Ljava/io/File;

    invoke-static {v0, v2}, LQ8/a;->b(Ljava/io/File;Ljava/io/File;)Z

    goto :goto_0

    :cond_1
    iget-object v0, v0, LO5/c$r;->d:Ljava/util/List;

    invoke-virtual {p0, v0, p2, p3}, LO5/c;->G1(Ljava/util/List;Ljava/lang/String;LO5/c$q;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final H1(Ljava/io/File;)Z
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "file"
        }
    .end annotation

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Filter "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "."

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public final I1(Ljava/util/List;Lrd/d;LO5/c$q;Ljava/lang/String;Ljava/util/List;)Z
    .locals 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "elements",
            "listFilter",
            "importData",
            "folderInProject",
            "files"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "LX7/i;",
            ">;",
            "Lrd/d;",
            "LO5/c$q;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "LO5/c$r;",
            ">;)Z"
        }
    .end annotation

    invoke-interface {p5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p5

    :cond_0
    invoke-interface {p5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_f

    invoke-interface {p5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LO5/c$r;

    invoke-virtual {v0}, LO5/c$r;->c()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p3, LO5/c$q;->b:Ljava/lang/String;

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, LO5/c;->g0:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_1
    invoke-virtual {p4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_e

    iget-object p5, v0, LO5/c$r;->d:Ljava/util/List;

    invoke-interface {p5}, Ljava/util/List;->isEmpty()Z

    move-result p5

    if-nez p5, :cond_2

    iget-object p5, v0, LO5/c$r;->d:Ljava/util/List;

    invoke-interface {p5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p5

    :goto_0
    invoke-interface {p5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-interface {p5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, LO5/c$r;

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p4

    move-object v8, p3

    invoke-virtual/range {v4 .. v9}, LO5/c;->W1(Ljava/util/List;Lrd/d;Ljava/lang/String;LO5/c$q;LO5/c$r;)V

    goto :goto_0

    :cond_2
    iget-object p3, v0, LO5/c$r;->c:Ljava/io/File;

    invoke-virtual {p3}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p3

    if-eqz p3, :cond_d

    array-length p4, p3

    move p5, v1

    :goto_1
    if-ge p5, p4, :cond_d

    aget-object v0, p3, p5

    invoke-interface {p2, v0}, Lrd/d;->a(Ljava/io/File;)Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v2

    const-string v4, ".meta"

    if-eqz v2, :cond_7

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v4}, Lbd/l;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    new-instance v2, LO5/c$n;

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v3}, Lmd/b;->w(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, p0, v4, v5}, LO5/c$n;-><init>(LO5/c;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    new-instance v2, LO5/c$o;

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, p0, v4, v5}, LO5/c$o;-><init>(LO5/c;Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_5

    array-length v4, v0

    if-lez v4, :cond_5

    invoke-virtual {v2, v1}, LX7/i;->r(Z)V

    move v4, v1

    :goto_3
    array-length v5, v0

    if-ge v4, v5, :cond_6

    aget-object v5, v0, v4

    invoke-interface {p2, v5}, Lrd/d;->a(Ljava/io/File;)Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-virtual {v2, v3}, LX7/i;->r(Z)V

    goto :goto_4

    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_5
    invoke-virtual {v2, v1}, LX7/i;->r(Z)V

    :cond_6
    :goto_4
    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_7

    :cond_7
    new-instance v2, LO5/c$b;

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-direct {v2, p0, v5, v6, v7}, LO5/c$b;-><init>(LO5/c;Ljava/lang/String;Ljava/lang/String;LB7/d;)V

    new-instance v5, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmd/b;->O(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v5, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-virtual {v5}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_9

    array-length v4, v0

    if-lez v4, :cond_9

    invoke-virtual {v2, v1}, LX7/i;->r(Z)V

    move v4, v1

    :goto_5
    array-length v5, v0

    if-ge v4, v5, :cond_b

    aget-object v5, v0, v4

    invoke-interface {p2, v5}, Lrd/d;->a(Ljava/io/File;)Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-virtual {v2, v3}, LX7/i;->r(Z)V

    goto :goto_6

    :cond_8
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    :cond_9
    invoke-virtual {v2, v1}, LX7/i;->r(Z)V

    goto :goto_6

    :cond_a
    invoke-virtual {v2, v1}, LX7/i;->r(Z)V

    :cond_b
    :goto_6
    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_c
    :goto_7
    add-int/lit8 p5, p5, 0x1

    goto/16 :goto_1

    :cond_d
    return v3

    :cond_e
    iget-object v9, v0, LO5/c$r;->d:Ljava/util/List;

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    move-object v8, p4

    invoke-virtual/range {v4 .. v9}, LO5/c;->I1(Ljava/util/List;Lrd/d;LO5/c$q;Ljava/lang/String;Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v3

    :cond_f
    return v1
.end method

.method public J1()LO5/c$q;
    .locals 9

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lfd/d;

    invoke-direct {v1}, Lfd/d;-><init>()V

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    iget-object v4, p0, LO5/c;->f0:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_0

    iget-object v4, p0, LO5/c;->f0:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, LX7/i;

    check-cast v4, LO5/c$p;

    const/4 v5, 0x0

    invoke-virtual {p0, v4, v1, v0, v5}, LO5/c;->R1(LO5/c$p;Ljava/util/List;Ljava/util/List;LO5/c$r;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    invoke-static {v1}, Lmd/b;->h(Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, LO5/c$r;

    iget-boolean v6, v5, LO5/c$r;->b:Z

    if-eqz v6, :cond_1

    iget-object v6, v5, LO5/c$r;->d:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    invoke-virtual {v5}, LO5/c$r;->f()V

    goto :goto_1

    :cond_2
    invoke-interface {v0, v3}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    invoke-interface {v3}, Ljava/util/List;->clear()V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const/4 v5, 0x1

    move v6, v5

    :goto_2
    if-eqz v6, :cond_7

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_3
    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, LO5/c$r;

    iget-boolean v8, v7, LO5/c$r;->b:Z

    if-eqz v8, :cond_3

    iget-object v8, v7, LO5/c$r;->c:Ljava/io/File;

    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_4

    iget-object v8, v7, LO5/c$r;->c:Ljava/io/File;

    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_3

    :cond_4
    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v8, v7, LO5/c$r;->d:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_3

    iget-object v7, v7, LO5/c$r;->d:Ljava/util/List;

    invoke-interface {v4, v7}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_3

    :cond_5
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_6

    invoke-interface {v0, v3}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    invoke-interface {v3}, Ljava/util/List;->clear()V

    move v6, v5

    goto :goto_4

    :cond_6
    move v6, v2

    :goto_4
    invoke-interface {v0, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-interface {v4}, Ljava/util/List;->clear()V

    goto :goto_2

    :cond_7
    new-instance v2, LO5/c$q;

    invoke-direct {v2, v0, v1}, LO5/c$q;-><init>(Ljava/util/List;Ljava/lang/String;)V

    return-object v2
.end method

.method public final K1()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "LX7/i;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Lcom/itsmagic/engine/Core/Components/ProjectController/a;->R()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, LO5/c$l;

    invoke-direct {v1, p0}, LO5/c$l;-><init>(LO5/c;)V

    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->M()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/itsmagic/engine/Core/Components/ProjectController/a;->Q(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, v0, v1}, LO5/c;->P1(Ljava/lang/String;Ljava/util/List;Lrd/d;)V

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LX7/i;

    iget-object v2, v2, LX7/i;->f:LX7/h;

    const/4 v3, 0x1

    iput-boolean v3, v2, LX7/h;->c:Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public final L1(Ljava/io/File;)Z
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "file"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/itsmagic/engine/Core/Components/ProjectController/a;->P()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, ""

    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, LO5/c;->g0:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    array-length v3, v0

    const/4 v4, 0x1

    if-ge v2, v3, :cond_2

    aget-object v3, v0, v2

    array-length v5, p1

    if-gt v5, v2, :cond_0

    return v4

    :cond_0
    aget-object v4, p1, v2

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    return v1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return v4
.end method

.method public final M1(Ljava/io/File;)Z
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "file"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/itsmagic/engine/Core/Components/ProjectController/a;->P()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, ""

    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, LO5/c;->g0:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v1, p1

    array-length v2, v0

    const/4 v3, 0x0

    if-le v1, v2, :cond_0

    return v3

    :cond_0
    move v1, v3

    :goto_0
    array-length v2, v0

    const/4 v4, 0x1

    if-ge v1, v2, :cond_3

    aget-object v2, v0, v1

    array-length v5, p1

    if-gt v5, v1, :cond_1

    return v4

    :cond_1
    aget-object v4, p1, v1

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    return v3

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return v4
.end method

.method public final N1(Ljava/io/File;Ljava/util/List;LO5/c$p;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "parent",
            "elements",
            "parentElement"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/util/List<",
            "LX7/i;",
            ">;",
            "LO5/c$p;",
            ")V"
        }
    .end annotation

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p1

    if-eqz p1, :cond_4

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    array-length v4, p1

    if-ge v3, v4, :cond_1

    aget-object v4, p1, v3

    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_0
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    new-instance p1, LO5/b;

    invoke-direct {p1}, LO5/b;-><init>()V

    invoke-static {p1}, Ljava/util/Comparator;->comparing(Ljava/util/function/Function;)Ljava/util/Comparator;

    move-result-object p1

    invoke-static {v0, p1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    new-instance p1, LO5/b;

    invoke-direct {p1}, LO5/b;-><init>()V

    invoke-static {p1}, Ljava/util/Comparator;->comparing(Ljava/util/function/Function;)Ljava/util/Comparator;

    move-result-object p1

    invoke-static {v1, p1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-interface {p1, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    move v0, v2

    :goto_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_4

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/File;

    invoke-virtual {p0, v1}, LO5/c;->H1(Ljava/io/File;)Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_4

    :cond_2
    new-instance v3, LO5/c$p;

    invoke-direct {v3, p0, v1}, LO5/c$p;-><init>(LO5/c;Ljava/io/File;)V

    iput-object p3, v3, LO5/c$p;->p:LO5/c$p;

    iget-boolean v4, p3, LO5/c$p;->n:Z

    iput-boolean v4, v3, LO5/c$p;->n:Z

    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    array-length v1, v1

    if-lez v1, :cond_3

    const/4 v1, 0x1

    goto :goto_3

    :cond_3
    move v1, v2

    :goto_3
    invoke-virtual {v3, v1}, LX7/i;->r(Z)V

    invoke-interface {p2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_4
    return-void
.end method

.method public final P1(Ljava/lang/String;Ljava/util/List;Lrd/d;)V
    .locals 11
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "path",
            "elements",
            "listFilter"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "LX7/i;",
            ">;",
            "Lrd/d;",
            ")V"
        }
    .end annotation

    new-instance v0, Ljava/io/File;

    invoke-static {p1}, Lmd/b;->o(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result p1

    if-nez p1, :cond_0

    invoke-interface {p2}, Ljava/util/List;->clear()V

    return-void

    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p1

    if-eqz p1, :cond_c

    array-length v1, p1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_c

    aget-object v4, p1, v3

    if-eqz v4, :cond_b

    invoke-interface {p3, v4}, Lrd/d;->a(Ljava/io/File;)Z

    move-result v5

    if-eqz v5, :cond_b

    invoke-virtual {p0, v4}, LO5/c;->L1(Ljava/io/File;)Z

    move-result v5

    if-nez v5, :cond_1

    goto/16 :goto_6

    :cond_1
    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v5

    const-string v6, ".meta"

    const/4 v7, 0x1

    if-eqz v5, :cond_6

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v6}, Lbd/l;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    new-instance v5, LB7/f;

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v7}, Lmd/b;->w(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v5, v6, v8}, LB7/f;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    new-instance v5, LB7/f;

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v5, v6, v8}, LB7/f;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    invoke-virtual {v4}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v4

    if-eqz v4, :cond_4

    array-length v6, v4

    if-lez v6, :cond_4

    invoke-virtual {v5, v2}, LX7/i;->r(Z)V

    move v6, v2

    :goto_2
    array-length v8, v4

    if-ge v6, v8, :cond_5

    aget-object v8, v4, v6

    invoke-interface {p3, v8}, Lrd/d;->a(Ljava/io/File;)Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-virtual {v5, v7}, LX7/i;->r(Z)V

    goto :goto_3

    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_4
    invoke-virtual {v5, v2}, LX7/i;->r(Z)V

    :cond_5
    :goto_3
    invoke-interface {p2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_6
    new-instance v5, LB7/e;

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    invoke-direct {v5, v8, v9, v10}, LB7/e;-><init>(Ljava/lang/String;Ljava/lang/String;LB7/d;)V

    new-instance v8, Ljava/io/File;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lmd/b;->O(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v8, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-virtual {v8}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v4

    if-eqz v4, :cond_8

    array-length v6, v4

    if-lez v6, :cond_8

    invoke-virtual {v5, v2}, LX7/i;->r(Z)V

    move v6, v2

    :goto_4
    array-length v8, v4

    if-ge v6, v8, :cond_a

    aget-object v8, v4, v6

    invoke-interface {p3, v8}, Lrd/d;->a(Ljava/io/File;)Z

    move-result v8

    if-eqz v8, :cond_7

    invoke-virtual {v5, v7}, LX7/i;->r(Z)V

    goto :goto_5

    :cond_7
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    :cond_8
    invoke-virtual {v5, v2}, LX7/i;->r(Z)V

    goto :goto_5

    :cond_9
    invoke-virtual {v5, v2}, LX7/i;->r(Z)V

    :cond_a
    :goto_5
    invoke-interface {p2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_b
    :goto_6
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_c
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/itsmagic/engine/Core/Components/ProjectController/a;->P()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, ""

    invoke-virtual {p1, v1, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_d

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_d
    iget-object v1, p0, LO5/c;->g0:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    invoke-virtual {p0}, LO5/c;->J1()LO5/c$q;

    move-result-object v0

    iget-object v1, v0, LO5/c$q;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_11

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v9, v2

    check-cast v9, LO5/c$r;

    move-object v4, p0

    move-object v5, p2

    move-object v6, p3

    move-object v7, p1

    move-object v8, v0

    invoke-virtual/range {v4 .. v9}, LO5/c;->W1(Ljava/util/List;Lrd/d;Ljava/lang/String;LO5/c$q;LO5/c$r;)V

    goto :goto_7

    :cond_e
    invoke-virtual {p0, v0}, LO5/c;->M1(Ljava/io/File;)Z

    move-result p1

    if-eqz p1, :cond_f

    return-void

    :cond_f
    invoke-virtual {p0}, LO5/c;->J1()LO5/c$q;

    move-result-object v7

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    iget-object v0, v7, LO5/c$q;->b:Ljava/lang/String;

    invoke-virtual {p1, v0, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, LO5/c;->g0:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_10

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_10
    move-object v8, p1

    iget-object v9, v7, LO5/c$q;->a:Ljava/util/List;

    move-object v4, p0

    move-object v5, p2

    move-object v6, p3

    invoke-virtual/range {v4 .. v9}, LO5/c;->I1(Ljava/util/List;Lrd/d;LO5/c$q;Ljava/lang/String;Ljava/util/List;)Z

    :cond_11
    return-void
.end method

.method public final Q1(LX7/i;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "folder"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LX7/i;",
            ")",
            "Ljava/util/List<",
            "LX7/i;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p1, LX7/i;->a:Ljava/lang/String;

    new-instance v2, LO5/c$m;

    invoke-direct {v2, p0}, LO5/c$m;-><init>(LO5/c;)V

    invoke-virtual {p0, v1, v0, v2}, LO5/c;->P1(Ljava/lang/String;Ljava/util/List;Lrd/d;)V

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LX7/i;

    new-instance v4, Ljava/io/File;

    iget-object v5, v3, LX7/i;->a:Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v4}, LO5/c;->M1(Ljava/io/File;)Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_0

    iget-object v4, v3, LX7/i;->f:LX7/h;

    iput-boolean v5, v4, LX7/h;->c:Z

    goto :goto_1

    :cond_0
    iget-object v4, v3, LX7/i;->f:LX7/h;

    iput-boolean v1, v4, LX7/h;->c:Z

    :goto_1
    invoke-virtual {p1}, LX7/i;->e()I

    move-result v4

    add-int/2addr v4, v5

    invoke-virtual {v3, v4}, LX7/i;->q(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public final R1(LO5/c$p;Ljava/util/List;Ljava/util/List;LO5/c$r;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "fileElement",
            "outFiles",
            "out",
            "parent"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LO5/c$p;",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;",
            "Ljava/util/List<",
            "LO5/c$r;",
            ">;",
            "LO5/c$r;",
            ")V"
        }
    .end annotation

    iget-boolean v0, p1, LO5/c$p;->n:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    new-instance v0, LO5/c$r;

    iget-object v2, p1, LO5/c$p;->m:Ljava/io/File;

    invoke-direct {v0, v2}, LO5/c$r;-><init>(Ljava/io/File;)V

    iget-object v2, p1, LO5/c$p;->m:Ljava/io/File;

    invoke-interface {p2, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz p4, :cond_0

    invoke-virtual {p4, v0}, LO5/c$r;->a(LO5/c$r;)V

    goto :goto_0

    :cond_0
    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    iget-object p4, p1, LO5/c$p;->o:Ljava/util/List;

    invoke-interface {p4}, Ljava/util/List;->isEmpty()Z

    move-result p4

    if-nez p4, :cond_1

    :goto_1
    iget-object p4, p1, LO5/c$p;->o:Ljava/util/List;

    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result p4

    if-ge v1, p4, :cond_4

    iget-object p4, p1, LO5/c$p;->o:Ljava/util/List;

    invoke-interface {p4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, LX7/i;

    check-cast p4, LO5/c$p;

    invoke-virtual {p0, p4, p2, p3, v0}, LO5/c;->R1(LO5/c$p;Ljava/util/List;Ljava/util/List;LO5/c$r;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    iget-object p1, p1, LO5/c$p;->m:Ljava/io/File;

    invoke-virtual {p0, p1, p2, p3, v0}, LO5/c;->S1(Ljava/io/File;Ljava/util/List;Ljava/util/List;LO5/c$r;)V

    goto :goto_3

    :cond_2
    iget-object v0, p1, LO5/c$p;->o:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    new-instance v0, LO5/c$r;

    iget-object v2, p1, LO5/c$p;->m:Ljava/io/File;

    invoke-direct {v0, v2}, LO5/c$r;-><init>(Ljava/io/File;)V

    if-eqz p4, :cond_3

    invoke-virtual {p4, v0}, LO5/c$r;->a(LO5/c$r;)V

    goto :goto_2

    :cond_3
    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_2
    iget-object p4, p1, LO5/c$p;->o:Ljava/util/List;

    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result p4

    if-ge v1, p4, :cond_4

    iget-object p4, p1, LO5/c$p;->o:Ljava/util/List;

    invoke-interface {p4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, LX7/i;

    check-cast p4, LO5/c$p;

    invoke-virtual {p0, p4, p2, p3, v0}, LO5/c;->R1(LO5/c$p;Ljava/util/List;Ljava/util/List;LO5/c$r;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_4
    :goto_3
    return-void
.end method

.method public final S1(Ljava/io/File;Ljava/util/List;Ljava/util/List;LO5/c$r;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "file",
            "outFiles",
            "out",
            "parent"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;",
            "Ljava/util/List<",
            "LO5/c$r;",
            ">;",
            "LO5/c$r;",
            ")V"
        }
    .end annotation

    new-instance v0, LO5/c$r;

    invoke-direct {v0, p1}, LO5/c$r;-><init>(Ljava/io/File;)V

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz p4, :cond_0

    invoke-virtual {p4, v0}, LO5/c$r;->a(LO5/c$r;)V

    goto :goto_0

    :cond_0
    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p1

    if-eqz p1, :cond_1

    array-length p4, p1

    const/4 v1, 0x0

    :goto_1
    if-ge v1, p4, :cond_1

    aget-object v2, p1, v1

    invoke-virtual {p0, v2, p2, p3, v0}, LO5/c;->S1(Ljava/io/File;Ljava/util/List;Ljava/util/List;LO5/c$r;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public final U1(LO5/c$p;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "element"
        }
    .end annotation

    iget-object v0, p0, LO5/c;->c0:LX7/l;

    invoke-virtual {v0, p1}, LX7/l;->t(LX7/i;)V

    return-void
.end method

.method public final W1(Ljava/util/List;Lrd/d;Ljava/lang/String;LO5/c$q;LO5/c$r;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "elements",
            "listFilter",
            "inProject",
            "importData",
            "file"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "LX7/i;",
            ">;",
            "Lrd/d;",
            "Ljava/lang/String;",
            "LO5/c$q;",
            "LO5/c$r;",
            ")V"
        }
    .end annotation

    invoke-virtual {p5}, LO5/c$r;->c()Ljava/lang/String;

    move-result-object v0

    iget-object p4, p4, LO5/c$q;->b:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, p4, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/itsmagic/engine/Core/Components/ProjectController/a;->P()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p5}, LO5/c$r;->e()Z

    move-result p4

    const-string v0, ".meta"

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p4, :cond_4

    invoke-virtual {p5}, LO5/c$r;->d()Ljava/lang/String;

    move-result-object p4

    invoke-static {p4, v0}, Lbd/l;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p4

    if-eqz p4, :cond_0

    new-instance p4, LO5/c$c;

    invoke-virtual {p5}, LO5/c$r;->d()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Lmd/b;->w(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p4, p0, v0, p3}, LO5/c$c;-><init>(LO5/c;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    new-instance p4, LO5/c$d;

    invoke-virtual {p5}, LO5/c$r;->d()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p5}, LO5/c$r;->c()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p4, p0, p3, v0}, LO5/c$d;-><init>(LO5/c;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    iget-object p3, p5, LO5/c$r;->d:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result p3

    if-nez p3, :cond_2

    invoke-virtual {p4, v2}, LX7/i;->r(Z)V

    :goto_1
    iget-object p3, p5, LO5/c$r;->d:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    if-ge v2, p3, :cond_3

    iget-object p3, p5, LO5/c$r;->d:Ljava/util/List;

    invoke-interface {p3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, LO5/c$r;

    iget-object p3, p3, LO5/c$r;->c:Ljava/io/File;

    invoke-interface {p2, p3}, Lrd/d;->a(Ljava/io/File;)Z

    move-result p3

    if-eqz p3, :cond_1

    invoke-virtual {p4, v1}, LX7/i;->r(Z)V

    goto :goto_2

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {p4, v2}, LX7/i;->r(Z)V

    :cond_3
    :goto_2
    invoke-interface {p1, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_4
    new-instance p4, LO5/c$e;

    invoke-virtual {p5}, LO5/c$r;->d()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {p4, p0, v3, p3, v4}, LO5/c$e;-><init>(LO5/c;Ljava/lang/String;Ljava/lang/String;LB7/d;)V

    new-instance p3, LO5/c$f;

    invoke-direct {p3, p0, p5}, LO5/c$f;-><init>(LO5/c;LO5/c$r;)V

    invoke-virtual {p4, p3}, LX7/i;->s(LX7/j;)V

    new-instance p3, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p5}, LO5/c$r;->c()Ljava/lang/String;

    move-result-object p5

    invoke-static {p5}, Lmd/b;->O(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p5

    invoke-virtual {v3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    invoke-direct {p3, p5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3}, Ljava/io/File;->exists()Z

    move-result p5

    if-eqz p5, :cond_7

    invoke-virtual {p3}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p3

    if-eqz p3, :cond_6

    array-length p5, p3

    if-lez p5, :cond_6

    invoke-virtual {p4, v2}, LX7/i;->r(Z)V

    :goto_3
    array-length p5, p3

    if-ge v2, p5, :cond_8

    aget-object p5, p3, v2

    invoke-interface {p2, p5}, Lrd/d;->a(Ljava/io/File;)Z

    move-result p5

    if-eqz p5, :cond_5

    invoke-virtual {p4, v1}, LX7/i;->r(Z)V

    goto :goto_4

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_6
    invoke-virtual {p4, v2}, LX7/i;->r(Z)V

    goto :goto_4

    :cond_7
    invoke-virtual {p4, v2}, LX7/i;->r(Z)V

    :cond_8
    :goto_4
    invoke-interface {p1, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_5
    return-void
.end method

.method public k()Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;
    .locals 3

    new-instance v0, LO5/c;

    iget-object v1, p0, LO5/c;->e0:LO5/c$s;

    iget-object v2, p0, LO5/c;->g0:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, LO5/c;-><init>(LO5/c$s;Ljava/lang/String;)V

    return-object v0
.end method
