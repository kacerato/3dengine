.class public LO5/e;
.super Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LO5/e$u;,
        LO5/e$t;,
        LO5/e$w;,
        LO5/e$v;
    }
.end annotation


# static fields
.field public static final s0:Ljava/lang/String; = "FileImporterSAF"


# instance fields
.field public X:Landroid/view/View;

.field public Y:Landroid/view/View;

.field public Z:Landroid/widget/LinearLayout;

.field public a0:Landroid/view/View;

.field public b0:Landroid/view/View;

.field public c0:LX7/l;

.field public d0:LX7/l;

.field public final e0:LO5/e$w;

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

.field public final i0:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/documentfile/provider/DocumentFile;",
            ">;"
        }
    .end annotation
.end field

.field public j0:LV3/a$c;

.field public k0:Lcom/itsmagic/engine/Activities/Editor/Panels/Files/PFSettings;

.field public l0:Lcn/pedant/SweetAlert/SweetAlertDialog;

.field public m0:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "LX7/i;",
            ">;"
        }
    .end annotation
.end field

.field public n0:LO5/e$u;

.field public o0:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public p0:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public q0:I

.field public r0:I


# direct methods
.method public constructor <init>(LO5/e$w;Ljava/lang/String;)V
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

    iput-object v1, p0, LO5/e;->c0:LX7/l;

    iput-object v1, p0, LO5/e;->d0:LX7/l;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, LO5/e;->f0:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, LO5/e;->i0:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, LO5/e;->m0:Ljava/util/List;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, LO5/e;->o0:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, LO5/e;->p0:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    iput v0, p0, LO5/e;->q0:I

    iput v0, p0, LO5/e;->r0:I

    iput-object p1, p0, LO5/e;->e0:LO5/e$w;

    const-string p1, "/"

    invoke-virtual {p2, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    :cond_0
    iput-object p2, p0, LO5/e;->g0:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/itsmagic/engine/Core/Components/ProjectController/a;->P()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, LO5/e;->h0:Ljava/lang/String;

    return-void
.end method

.method public static synthetic A1(LO5/e;)Lcom/itsmagic/engine/Activities/Editor/Panels/Files/PFSettings;
    .locals 0

    iget-object p0, p0, LO5/e;->k0:Lcom/itsmagic/engine/Activities/Editor/Panels/Files/PFSettings;

    return-object p0
.end method

.method public static synthetic B1(LO5/e;LO5/e$u;)LO5/e$u;
    .locals 0

    iput-object p1, p0, LO5/e;->n0:LO5/e$u;

    return-object p1
.end method

.method public static synthetic C1(LO5/e;LV3/a$c;)LV3/a$c;
    .locals 0

    iput-object p1, p0, LO5/e;->j0:LV3/a$c;

    return-object p1
.end method

.method public static synthetic D1(LO5/e;LO5/e$u;)V
    .locals 0

    invoke-virtual {p0, p1}, LO5/e;->S1(LO5/e$u;)V

    return-void
.end method

.method public static synthetic E1(LO5/e;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    iget-object p0, p0, LO5/e;->p0:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method public static synthetic F1(LO5/e;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    iget-object p0, p0, LO5/e;->o0:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method public static synthetic G1(LO5/e;)V
    .locals 0

    invoke-direct {p0}, LO5/e;->p2()V

    return-void
.end method

.method public static synthetic H1(LO5/e;)V
    .locals 0

    invoke-direct {p0}, LO5/e;->Q1()V

    return-void
.end method

.method public static synthetic I1(LO5/e;Ljava/util/List;Ljava/lang/Runnable;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, LO5/e;->U1(Ljava/util/List;Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic J1(LO5/e;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, LO5/e;->O1(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic K1(LO5/e;LX7/i;)Ljava/util/List;
    .locals 0

    invoke-direct {p0, p1}, LO5/e;->e2(LX7/i;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic L1(LO5/e;)Ljava/util/List;
    .locals 0

    invoke-direct {p0}, LO5/e;->T1()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic M1(LO5/e;)LX7/l;
    .locals 0

    iget-object p0, p0, LO5/e;->c0:LX7/l;

    return-object p0
.end method

.method public static synthetic N1(LO5/e;LX7/i;)Ljava/util/List;
    .locals 0

    invoke-direct {p0, p1}, LO5/e;->f2(LX7/i;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private P1()V
    .locals 2

    invoke-direct {p0}, LO5/e;->R1()V

    iget-object v0, p0, LO5/e;->b0:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, LO5/e;->b0:Landroid/view/View;

    const v1, 0x7f0904c8

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sget-object v1, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->READ_DIRECTORY_IS_REQUIRED:LUc/b;

    invoke-static {v1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LUc/b;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, LO5/e;->b0:Landroid/view/View;

    const v1, 0x7f0900c8

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    sget-object v1, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->SELECT:LUc/b;

    invoke-static {v1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LUc/b;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v1, LO5/e$a;

    invoke-direct {v1, p0}, LO5/e$a;-><init>(LO5/e;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private Q1()V
    .locals 5

    iget-object v0, p0, LO5/e;->Y:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, LO5/e;->Y:Landroid/view/View;

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

    new-instance v4, LO5/e$l;

    invoke-direct {v4, p0}, LO5/e$l;-><init>(LO5/e;)V

    invoke-direct {v3, v1, v4}, LX7/l;-><init>(Landroidx/recyclerview/widget/RecyclerView;LX7/k;)V

    iput-object v3, p0, LO5/e;->c0:LX7/l;

    new-instance v1, LX7/l;

    new-instance v3, LO5/e$m;

    invoke-direct {v3, p0}, LO5/e$m;-><init>(LO5/e;)V

    invoke-direct {v1, v2, v3}, LX7/l;-><init>(Landroidx/recyclerview/widget/RecyclerView;LX7/k;)V

    iput-object v1, p0, LO5/e;->d0:LX7/l;

    const v1, 0x7f0901a5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    sget-object v2, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->IMPORT:LUc/b;

    invoke-static {v1, v2}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->k(Landroid/widget/Button;LUc/b;)V

    new-instance v2, LO5/e$n;

    invoke-direct {v2, p0}, LO5/e$n;-><init>(LO5/e;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f0900ff

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    sget-object v1, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->CANCEL:LUc/b;

    invoke-static {v0, v1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->k(Landroid/widget/Button;LUc/b;)V

    new-instance v1, LO5/e$o;

    invoke-direct {v1, p0}, LO5/e$o;-><init>(LO5/e;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private R1()V
    .locals 2

    iget-object v0, p0, LO5/e;->a0:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, LO5/e;->b0:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, LO5/e;->Y:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private T1()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "LX7/i;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, LO5/e;->f0:Ljava/util/List;

    return-object v0
.end method

.method private V1()V
    .locals 3

    invoke-virtual {p0}, LO5/e;->Z1()LO5/e$u;

    move-result-object v0

    iget-object v1, p0, LO5/e;->h0:Ljava/lang/String;

    iget-object v2, v0, LO5/e$u;->a:Ljava/util/List;

    invoke-virtual {p0, v2, v1, v0}, LO5/e;->j2(Ljava/util/List;Ljava/lang/String;LO5/e$u;)I

    move-result v2

    iput v2, p0, LO5/e;->q0:I

    iget-object v2, v0, LO5/e$u;->a:Ljava/util/List;

    invoke-virtual {p0, v2, v1, v0}, LO5/e;->W1(Ljava/util/List;Ljava/lang/String;LO5/e$u;)V

    return-void
.end method

.method private a2()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "LX7/i;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, LO5/e;->m0:Ljava/util/List;

    return-object v0
.end method

.method private b2(Ljava/io/File;)Z
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

    iget-object v0, p0, LO5/e;->g0:Ljava/lang/String;

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

.method private c2(Ljava/io/File;)Z
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

    iget-object v0, p0, LO5/e;->g0:Ljava/lang/String;

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

.method private e2(LX7/i;)Ljava/util/List;
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

    check-cast v0, LO5/e$t;

    iget-object v1, v0, LO5/e$t;->m:Landroidx/documentfile/provider/DocumentFile;

    iget-object v2, v0, LO5/e$t;->o:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0, v1, v2, v0}, LO5/e;->d2(Landroidx/documentfile/provider/DocumentFile;Ljava/util/List;LO5/e$t;)V

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

.method private f2(LX7/i;)Ljava/util/List;
    .locals 1
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

    instance-of v0, p1, LO5/f;

    if-eqz v0, :cond_0

    check-cast p1, LO5/f;

    iget-object p1, p1, LO5/f;->p:Ljava/util/List;

    return-object p1

    :cond_0
    instance-of v0, p1, LO5/e$t;

    if-eqz v0, :cond_1

    check-cast p1, LO5/e$t;

    iget-object p1, p1, LO5/e$t;->o:Ljava/util/List;

    return-object p1

    :cond_1
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    return-object p1
.end method

.method public static k2(Ljava/lang/String;LO5/e$w;)LO5/e;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "inProjectDestinationFolder",
            "listener"
        }
    .end annotation

    new-instance v0, LO5/e;

    invoke-direct {v0, p1, p0}, LO5/e;-><init>(LO5/e$w;Ljava/lang/String;)V

    const p0, 0x3f4ccccd    # 0.8f

    invoke-static {v0, p0, p0}, LL4/a;->m(Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;FF)Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;

    return-object v0
.end method

.method private n2()V
    .locals 1

    iget-object v0, p0, LO5/e;->c0:LX7/l;

    invoke-virtual {v0}, LX7/l;->s()V

    invoke-direct {p0}, LO5/e;->p2()V

    return-void
.end method

.method public static synthetic o1(LO5/e;)V
    .locals 0

    invoke-direct {p0}, LO5/e;->n2()V

    return-void
.end method

.method public static synthetic p1(LO5/e;LO5/e$t;)V
    .locals 0

    invoke-virtual {p0, p1}, LO5/e;->m2(LO5/e$t;)V

    return-void
.end method

.method private p2()V
    .locals 3

    iget-object v0, p0, LO5/e;->o0:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, LO5/e$i;

    invoke-direct {v1, p0}, LO5/e$i;-><init>(LO5/e;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, LO5/e;->p0:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :goto_0
    return-void
.end method

.method public static synthetic q1(LO5/e;)Ljava/util/List;
    .locals 0

    invoke-direct {p0}, LO5/e;->a2()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic r1(LO5/e;)LX7/l;
    .locals 0

    iget-object p0, p0, LO5/e;->d0:LX7/l;

    return-object p0
.end method

.method public static synthetic s1(LO5/e;)Lcn/pedant/SweetAlert/SweetAlertDialog;
    .locals 0

    iget-object p0, p0, LO5/e;->l0:Lcn/pedant/SweetAlert/SweetAlertDialog;

    return-object p0
.end method

.method public static synthetic t1(LO5/e;Lcn/pedant/SweetAlert/SweetAlertDialog;)Lcn/pedant/SweetAlert/SweetAlertDialog;
    .locals 0

    iput-object p1, p0, LO5/e;->l0:Lcn/pedant/SweetAlert/SweetAlertDialog;

    return-object p1
.end method

.method public static synthetic u1(LO5/e;)V
    .locals 0

    invoke-direct {p0}, LO5/e;->V1()V

    return-void
.end method

.method public static synthetic v1(LO5/e;)LO5/e$w;
    .locals 0

    iget-object p0, p0, LO5/e;->e0:LO5/e$w;

    return-object p0
.end method

.method public static synthetic w1(LO5/e;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, LO5/e;->i0:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic x1(LO5/e;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, LO5/e;->f0:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic y1(LO5/e;Landroidx/documentfile/provider/DocumentFile;)Z
    .locals 0

    invoke-virtual {p0, p1}, LO5/e;->X1(Landroidx/documentfile/provider/DocumentFile;)Z

    move-result p0

    return p0
.end method

.method public static synthetic z1(LO5/e;LO5/e$t;Landroidx/documentfile/provider/DocumentFile;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, LO5/e;->i2(LO5/e$t;Landroidx/documentfile/provider/DocumentFile;)V

    return-void
.end method


# virtual methods
.method public B0()Landroid/view/View;
    .locals 5

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->j:Landroid/view/LayoutInflater;

    const v1, 0x7f0c00b5

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, LO5/e;->X:Landroid/view/View;

    const v1, 0x7f09027d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, LO5/e;->Y:Landroid/view/View;

    const v1, 0x7f0901dc

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, LO5/e;->a0:Landroid/view/View;

    const v1, 0x7f0903e0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, LO5/e;->b0:Landroid/view/View;

    :try_start_0
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    sget-object v2, Lo8/b;->e:Lp8/a;

    const-string v2, "pf"

    const-string v3, "pfsettings.config"

    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->M()Landroid/content/Context;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lp8/a;->C(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    const-class v3, Lcom/itsmagic/engine/Activities/Editor/Panels/Files/PFSettings;

    invoke-virtual {v1, v2, v3}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itsmagic/engine/Activities/Editor/Panels/Files/PFSettings;

    iput-object v1, p0, LO5/e;->k0:Lcom/itsmagic/engine/Activities/Editor/Panels/Files/PFSettings;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    iget-object v1, p0, LO5/e;->k0:Lcom/itsmagic/engine/Activities/Editor/Panels/Files/PFSettings;

    if-nez v1, :cond_0

    new-instance v1, Lcom/itsmagic/engine/Activities/Editor/Panels/Files/PFSettings;

    invoke-direct {v1}, Lcom/itsmagic/engine/Activities/Editor/Panels/Files/PFSettings;-><init>()V

    iput-object v1, p0, LO5/e;->k0:Lcom/itsmagic/engine/Activities/Editor/Panels/Files/PFSettings;

    :cond_0
    invoke-direct {p0}, LO5/e;->P1()V

    return-object v0
.end method

.method public final O1(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "error"
        }
    .end annotation

    invoke-direct {p0}, LO5/e;->R1()V

    iget-object v0, p0, LO5/e;->a0:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, LO5/e;->X:Landroid/view/View;

    const v1, 0x7f0901db

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final S1(LO5/e$u;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "importData"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Lcom/itsmagic/engine/Core/Components/ProjectController/a;->R()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, LO5/e$j;

    invoke-direct {v1, p0}, LO5/e$j;-><init>(LO5/e;)V

    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->M()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/itsmagic/engine/Core/Components/ProjectController/a;->Q(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, v0, v1, p1}, LO5/e;->g2(Ljava/lang/String;Ljava/util/List;Lrd/d;LO5/e$u;)V

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_1

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LX7/i;

    iget-object v2, v1, LX7/i;->f:LX7/h;

    const/4 v3, 0x1

    iput-boolean v3, v2, LX7/h;->c:Z

    invoke-virtual {p0, v1}, LO5/e;->l2(LX7/i;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    iget-object p1, p0, LO5/e;->m0:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    iget-object p1, p0, LO5/e;->m0:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public final U1(Ljava/util/List;Ljava/lang/Runnable;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "files",
            "r"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/documentfile/provider/DocumentFile;",
            ">;",
            "Ljava/lang/Runnable;",
            ")V"
        }
    .end annotation

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, LO5/e$r;

    invoke-direct {v1, p0, p1, p2}, LO5/e$r;-><init>(LO5/e;Ljava/util/List;Ljava/lang/Runnable;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public final W1(Ljava/util/List;Ljava/lang/String;LO5/e$u;)V
    .locals 5
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
            "LO5/e$v;",
            ">;",
            "Ljava/lang/String;",
            "LO5/e$u;",
            ")V"
        }
    .end annotation

    new-instance v0, LO5/e$p;

    invoke-direct {v0, p0}, LO5/e$p;-><init>(LO5/e;)V

    invoke-static {v0}, Lf8/c;->j0(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LO5/e$v;

    invoke-virtual {v1}, LO5/e$v;->e()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v1}, LO5/e$v;->c()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p3, LO5/e$u;->b:Ljava/lang/String;

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, LO5/e$v;->e()Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_0
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, LO5/e;->j0:LV3/a$c;

    iget-object v1, v1, LO5/e$v;->c:Landroidx/documentfile/provider/DocumentFile;

    invoke-interface {v2, v1, v3}, LV3/a$c;->a(Landroidx/documentfile/provider/DocumentFile;Ljava/io/File;)Z

    iget v1, p0, LO5/e;->r0:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, LO5/e;->r0:I

    new-instance v1, LO5/e$q;

    invoke-direct {v1, p0}, LO5/e$q;-><init>(LO5/e;)V

    invoke-static {v1}, Lf8/c;->j0(Ljava/lang/Runnable;)V

    goto :goto_1

    :cond_1
    iget-object v1, v1, LO5/e$v;->d:Ljava/util/List;

    invoke-virtual {p0, v1, p2, p3}, LO5/e;->W1(Ljava/util/List;Ljava/lang/String;LO5/e$u;)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final X1(Landroidx/documentfile/provider/DocumentFile;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "file"
        }
    .end annotation

    invoke-virtual {p1}, Landroidx/documentfile/provider/DocumentFile;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroidx/documentfile/provider/DocumentFile;->getName()Ljava/lang/String;

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

.method public final Y1(Ljava/util/List;LO5/e$u;Ljava/lang/String;Ljava/util/List;)Z
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "elements",
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
            "LO5/e$u;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "LO5/e$v;",
            ">;)Z"
        }
    .end annotation

    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p4

    :cond_0
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_9

    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LO5/e$v;

    invoke-virtual {v0}, LO5/e$v;->c()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p2, LO5/e$u;->b:Ljava/lang/String;

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, LO5/e;->g0:Ljava/lang/String;

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
    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_8

    iget-object p4, v0, LO5/e$v;->d:Ljava/util/List;

    invoke-interface {p4}, Ljava/util/List;->isEmpty()Z

    move-result p4

    if-nez p4, :cond_2

    iget-object p4, v0, LO5/e$v;->d:Ljava/util/List;

    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p4

    :goto_0
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LO5/e$v;

    invoke-virtual {p0, p1, p3, p2, v0}, LO5/e;->o2(Ljava/util/List;Ljava/lang/String;LO5/e$u;LO5/e$v;)V

    goto :goto_0

    :cond_2
    iget-object p2, v0, LO5/e$v;->c:Landroidx/documentfile/provider/DocumentFile;

    invoke-virtual {p2}, Landroidx/documentfile/provider/DocumentFile;->listFiles()[Landroidx/documentfile/provider/DocumentFile;

    move-result-object p2

    if-eqz p2, :cond_7

    array-length p3, p2

    move p4, v1

    :goto_1
    if-ge p4, p3, :cond_7

    aget-object v0, p2, p4

    invoke-virtual {v0}, Landroidx/documentfile/provider/DocumentFile;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual {v0}, Landroidx/documentfile/provider/DocumentFile;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v4, ".meta"

    invoke-static {v2, v4}, Lbd/l;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    new-instance v2, LO5/e$b;

    invoke-virtual {v0}, Landroidx/documentfile/provider/DocumentFile;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v3}, Lmd/b;->w(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Landroidx/documentfile/provider/DocumentFile;->getUri()Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, p0, v4, v5}, LO5/e$b;-><init>(LO5/e;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    new-instance v2, LO5/e$c;

    invoke-virtual {v0}, Landroidx/documentfile/provider/DocumentFile;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Landroidx/documentfile/provider/DocumentFile;->getUri()Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, p0, v4, v5}, LO5/e$c;-><init>(LO5/e;Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    invoke-virtual {v0}, Landroidx/documentfile/provider/DocumentFile;->listFiles()[Landroidx/documentfile/provider/DocumentFile;

    move-result-object v0

    if-eqz v0, :cond_4

    array-length v4, v0

    if-lez v4, :cond_4

    invoke-virtual {v2, v1}, LX7/i;->r(Z)V

    array-length v4, v0

    if-lez v4, :cond_5

    aget-object v0, v0, v1

    invoke-virtual {v2, v3}, LX7/i;->r(Z)V

    goto :goto_3

    :cond_4
    invoke-virtual {v2, v1}, LX7/i;->r(Z)V

    :cond_5
    :goto_3
    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_6
    new-instance v2, LO5/e$d;

    invoke-virtual {v0}, Landroidx/documentfile/provider/DocumentFile;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Landroidx/documentfile/provider/DocumentFile;->getUri()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    const/4 v5, 0x0

    invoke-direct {v2, p0, v4, v0, v5}, LO5/e$d;-><init>(LO5/e;Ljava/lang/String;Ljava/lang/String;LB7/d;)V

    invoke-virtual {v2, v1}, LX7/i;->r(Z)V

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_4
    add-int/lit8 p4, p4, 0x1

    goto :goto_1

    :cond_7
    return v3

    :cond_8
    iget-object v0, v0, LO5/e$v;->d:Ljava/util/List;

    invoke-virtual {p0, p1, p2, p3, v0}, LO5/e;->Y1(Ljava/util/List;LO5/e$u;Ljava/lang/String;Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v3

    :cond_9
    return v1
.end method

.method public Z1()LO5/e$u;
    .locals 9

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lfd/d;

    invoke-direct {v1}, Lfd/d;-><init>()V

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    iget-object v4, p0, LO5/e;->f0:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_0

    iget-object v4, p0, LO5/e;->f0:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, LX7/i;

    check-cast v4, LO5/e$t;

    const/4 v5, 0x0

    invoke-virtual {p0, v4, v1, v0, v5}, LO5/e;->h2(LO5/e$t;Ljava/util/List;Ljava/util/List;LO5/e$v;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    invoke-static {v1}, Lmd/b;->g(Ljava/util/List;)Ljava/lang/String;

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

    check-cast v5, LO5/e$v;

    iget-boolean v6, v5, LO5/e$v;->b:Z

    if-eqz v6, :cond_1

    iget-object v6, v5, LO5/e$v;->d:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    invoke-virtual {v5}, LO5/e$v;->f()V

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

    check-cast v7, LO5/e$v;

    iget-boolean v8, v7, LO5/e$v;->b:Z

    if-eqz v8, :cond_3

    invoke-virtual {v7}, LO5/e$v;->c()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_4

    invoke-virtual {v7}, LO5/e$v;->c()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_3

    :cond_4
    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v8, v7, LO5/e$v;->d:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_3

    iget-object v7, v7, LO5/e$v;->d:Ljava/util/List;

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
    new-instance v2, LO5/e$u;

    invoke-direct {v2, v0, v1}, LO5/e$u;-><init>(Ljava/util/List;Ljava/lang/String;)V

    return-object v2
.end method

.method public final d2(Landroidx/documentfile/provider/DocumentFile;Ljava/util/List;LO5/e$t;)V
    .locals 7
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
            "Landroidx/documentfile/provider/DocumentFile;",
            "Ljava/util/List<",
            "LX7/i;",
            ">;",
            "LO5/e$t;",
            ")V"
        }
    .end annotation

    if-eqz p1, :cond_4

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Landroidx/documentfile/provider/DocumentFile;->listFiles()[Landroidx/documentfile/provider/DocumentFile;

    move-result-object p1

    const/4 v2, 0x0

    if-eqz p1, :cond_1

    array-length v3, p1

    move v4, v2

    :goto_0
    if-ge v4, v3, :cond_1

    aget-object v5, p1, v4

    invoke-virtual {v5}, Landroidx/documentfile/provider/DocumentFile;->isDirectory()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_0
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    new-instance p1, LO5/d;

    invoke-direct {p1}, LO5/d;-><init>()V

    invoke-static {p1}, Ljava/util/Comparator;->comparing(Ljava/util/function/Function;)Ljava/util/Comparator;

    move-result-object p1

    invoke-static {v0, p1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    new-instance p1, LO5/d;

    invoke-direct {p1}, LO5/d;-><init>()V

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

    check-cast v1, Landroidx/documentfile/provider/DocumentFile;

    invoke-virtual {p0, v1}, LO5/e;->X1(Landroidx/documentfile/provider/DocumentFile;)Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_4

    :cond_2
    new-instance v3, LO5/e$t;

    invoke-direct {v3, p0, v1}, LO5/e$t;-><init>(LO5/e;Landroidx/documentfile/provider/DocumentFile;)V

    iput-object p3, v3, LO5/e$t;->p:LO5/e$t;

    iget-boolean v4, p3, LO5/e$t;->n:Z

    iput-boolean v4, v3, LO5/e$t;->n:Z

    invoke-virtual {v1}, Landroidx/documentfile/provider/DocumentFile;->listFiles()[Landroidx/documentfile/provider/DocumentFile;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-virtual {v1}, Landroidx/documentfile/provider/DocumentFile;->listFiles()[Landroidx/documentfile/provider/DocumentFile;

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

.method public final g2(Ljava/lang/String;Ljava/util/List;Lrd/d;LO5/e$u;)V
    .locals 11
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "path",
            "elements",
            "listFilter",
            "importData"
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
            "LO5/e$u;",
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

    invoke-direct {p0, v4}, LO5/e;->b2(Ljava/io/File;)Z

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

    new-instance v5, LO5/f;

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v7}, Lmd/b;->w(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v5, v6, v8}, LO5/f;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    new-instance v5, LO5/f;

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v5, v6, v8}, LO5/f;-><init>(Ljava/lang/String;Ljava/lang/String;)V

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

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/itsmagic/engine/Core/Components/ProjectController/a;->P()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v2, ""

    invoke-virtual {p1, p3, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p3

    if-nez p3, :cond_d

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_d
    iget-object p3, p0, LO5/e;->g0:Ljava/lang/String;

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_e

    iget-object p3, p4, LO5/e$u;->a:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_7
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LO5/e$v;

    invoke-virtual {p0, p2, p1, p4, v0}, LO5/e;->o2(Ljava/util/List;Ljava/lang/String;LO5/e$u;LO5/e$v;)V

    goto :goto_7

    :cond_e
    invoke-direct {p0, v0}, LO5/e;->c2(Ljava/io/File;)Z

    move-result p1

    if-eqz p1, :cond_f

    return-void

    :cond_f
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    iget-object p3, p4, LO5/e$u;->b:Ljava/lang/String;

    invoke-virtual {p1, p3, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, LO5/e;->g0:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p3

    if-nez p3, :cond_10

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_10
    iget-object p3, p4, LO5/e$u;->a:Ljava/util/List;

    invoke-virtual {p0, p2, p4, p1, p3}, LO5/e;->Y1(Ljava/util/List;LO5/e$u;Ljava/lang/String;Ljava/util/List;)Z

    :cond_11
    return-void
.end method

.method public final h2(LO5/e$t;Ljava/util/List;Ljava/util/List;LO5/e$v;)V
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
            "LO5/e$t;",
            "Ljava/util/List<",
            "Landroidx/documentfile/provider/DocumentFile;",
            ">;",
            "Ljava/util/List<",
            "LO5/e$v;",
            ">;",
            "LO5/e$v;",
            ")V"
        }
    .end annotation

    iget-boolean v0, p1, LO5/e$t;->n:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    new-instance v0, LO5/e$v;

    iget-object v2, p1, LO5/e$t;->m:Landroidx/documentfile/provider/DocumentFile;

    invoke-direct {v0, v2}, LO5/e$v;-><init>(Landroidx/documentfile/provider/DocumentFile;)V

    iget-object v2, p1, LO5/e$t;->m:Landroidx/documentfile/provider/DocumentFile;

    invoke-interface {p2, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz p4, :cond_0

    invoke-virtual {p4, v0}, LO5/e$v;->a(LO5/e$v;)V

    goto :goto_0

    :cond_0
    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    iget-object p4, p1, LO5/e$t;->o:Ljava/util/List;

    invoke-interface {p4}, Ljava/util/List;->isEmpty()Z

    move-result p4

    if-nez p4, :cond_3

    :goto_1
    iget-object p4, p1, LO5/e$t;->o:Ljava/util/List;

    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result p4

    if-ge v1, p4, :cond_3

    iget-object p4, p1, LO5/e$t;->o:Ljava/util/List;

    invoke-interface {p4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, LX7/i;

    check-cast p4, LO5/e$t;

    invoke-virtual {p0, p4, p2, p3, v0}, LO5/e;->h2(LO5/e$t;Ljava/util/List;Ljava/util/List;LO5/e$v;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    iget-object v0, p1, LO5/e$t;->o:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    new-instance v0, LO5/e$v;

    iget-object v2, p1, LO5/e$t;->m:Landroidx/documentfile/provider/DocumentFile;

    invoke-direct {v0, v2}, LO5/e$v;-><init>(Landroidx/documentfile/provider/DocumentFile;)V

    if-eqz p4, :cond_2

    invoke-virtual {p4, v0}, LO5/e$v;->a(LO5/e$v;)V

    goto :goto_2

    :cond_2
    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_2
    iget-object p4, p1, LO5/e$t;->o:Ljava/util/List;

    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result p4

    if-ge v1, p4, :cond_3

    iget-object p4, p1, LO5/e$t;->o:Ljava/util/List;

    invoke-interface {p4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, LX7/i;

    check-cast p4, LO5/e$t;

    invoke-virtual {p0, p4, p2, p3, v0}, LO5/e;->h2(LO5/e$t;Ljava/util/List;Ljava/util/List;LO5/e$v;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_3
    return-void
.end method

.method public final i2(LO5/e$t;Landroidx/documentfile/provider/DocumentFile;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "parent",
            "parentFile"
        }
    .end annotation

    invoke-virtual {p2}, Landroidx/documentfile/provider/DocumentFile;->listFiles()[Landroidx/documentfile/provider/DocumentFile;

    move-result-object p2

    if-eqz p2, :cond_1

    array-length v0, p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p2, v1

    invoke-virtual {p0, v2}, LO5/e;->X1(Landroidx/documentfile/provider/DocumentFile;)Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_1

    :cond_0
    new-instance v3, LO5/e$t;

    invoke-direct {v3, p0, v2}, LO5/e$t;-><init>(LO5/e;Landroidx/documentfile/provider/DocumentFile;)V

    invoke-virtual {p0, v3, v2}, LO5/e;->i2(LO5/e$t;Landroidx/documentfile/provider/DocumentFile;)V

    iget v2, p1, LX7/i;->c:I

    const/4 v4, 0x1

    add-int/2addr v2, v4

    iput v2, v3, LX7/i;->c:I

    iget-object v2, p1, LO5/e$t;->o:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1, v4}, LX7/i;->r(Z)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final j2(Ljava/util/List;Ljava/lang/String;LO5/e$u;)I
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
            "LO5/e$v;",
            ">;",
            "Ljava/lang/String;",
            "LO5/e$u;",
            ")I"
        }
    .end annotation

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LO5/e$v;

    invoke-virtual {v2}, LO5/e$v;->e()Z

    move-result v3

    if-nez v3, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_0
    iget-object v2, v2, LO5/e$v;->d:Ljava/util/List;

    invoke-virtual {p0, v2, p2, p3}, LO5/e;->j2(Ljava/util/List;Ljava/lang/String;LO5/e$u;)I

    move-result v2

    add-int/2addr v1, v2

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public k()Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;
    .locals 3

    new-instance v0, LO5/e;

    iget-object v1, p0, LO5/e;->e0:LO5/e$w;

    iget-object v2, p0, LO5/e;->g0:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, LO5/e;-><init>(LO5/e$w;Ljava/lang/String;)V

    return-object v0
.end method

.method public final l2(LX7/i;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "folder"
        }
    .end annotation

    iget-object v0, p0, LO5/e;->n0:LO5/e$u;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p1, LX7/i;->a:Ljava/lang/String;

    new-instance v3, LO5/e$s;

    invoke-direct {v3, p0}, LO5/e$s;-><init>(LO5/e;)V

    invoke-virtual {p0, v2, v1, v3, v0}, LO5/e;->g2(Ljava/lang/String;Ljava/util/List;Lrd/d;LO5/e$u;)V

    const/4 v0, 0x0

    move v2, v0

    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LX7/i;

    new-instance v4, Ljava/io/File;

    iget-object v5, v3, LX7/i;->a:Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v4}, LO5/e;->c2(Ljava/io/File;)Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_0

    iget-object v4, v3, LX7/i;->f:LX7/h;

    iput-boolean v5, v4, LX7/h;->c:Z

    goto :goto_1

    :cond_0
    iget-object v4, v3, LX7/i;->f:LX7/h;

    iput-boolean v0, v4, LX7/h;->c:Z

    :goto_1
    invoke-virtual {p1}, LX7/i;->e()I

    move-result v4

    add-int/2addr v4, v5

    invoke-virtual {v3, v4}, LX7/i;->q(I)V

    invoke-virtual {p0, v3}, LO5/e;->l2(LX7/i;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    instance-of v0, p1, LO5/f;

    if-eqz v0, :cond_2

    check-cast p1, LO5/f;

    iget-object v0, p1, LO5/f;->p:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object p1, p1, LO5/f;->p:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_2

    :cond_2
    instance-of v0, p1, LO5/e$t;

    if-eqz v0, :cond_3

    check-cast p1, LO5/e$t;

    iget-object v0, p1, LO5/e$t;->o:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object p1, p1, LO5/e$t;->o:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_3
    :goto_2
    return-void
.end method

.method public final m2(LO5/e$t;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "element"
        }
    .end annotation

    iget-object v0, p0, LO5/e;->c0:LX7/l;

    invoke-virtual {v0, p1}, LX7/l;->t(LX7/i;)V

    return-void
.end method

.method public final o2(Ljava/util/List;Ljava/lang/String;LO5/e$u;LO5/e$v;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "elements",
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
            "Ljava/lang/String;",
            "LO5/e$u;",
            "LO5/e$v;",
            ")V"
        }
    .end annotation

    invoke-virtual {p4}, LO5/e$v;->c()Ljava/lang/String;

    move-result-object v0

    iget-object p3, p3, LO5/e$u;->b:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, p3, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/itsmagic/engine/Core/Components/ProjectController/a;->P()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p4}, LO5/e$v;->e()Z

    move-result p3

    const-string v0, ".meta"

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p3, :cond_3

    invoke-virtual {p4}, LO5/e$v;->d()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3, v0}, Lbd/l;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_0

    new-instance p3, LO5/e$e;

    invoke-virtual {p4}, LO5/e$v;->d()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Lmd/b;->w(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p3, p0, v0, p2}, LO5/e$e;-><init>(LO5/e;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    new-instance p3, LO5/e$f;

    invoke-virtual {p4}, LO5/e$v;->d()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p4}, LO5/e$v;->c()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p3, p0, p2, v0}, LO5/e$f;-><init>(LO5/e;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    iget-object p2, p4, LO5/e$v;->d:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_1

    invoke-virtual {p3, v2}, LX7/i;->r(Z)V

    iget-object p2, p4, LO5/e$v;->d:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-lez p2, :cond_2

    iget-object p2, p4, LO5/e$v;->d:Ljava/util/List;

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, LO5/e$v;

    invoke-virtual {p3, v1}, LX7/i;->r(Z)V

    goto :goto_1

    :cond_1
    invoke-virtual {p3, v2}, LX7/i;->r(Z)V

    :cond_2
    :goto_1
    invoke-interface {p1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_3
    new-instance p3, LO5/e$g;

    invoke-virtual {p4}, LO5/e$v;->d()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {p3, p0, v3, p2, v4}, LO5/e$g;-><init>(LO5/e;Ljava/lang/String;Ljava/lang/String;LB7/d;)V

    new-instance p2, LO5/e$h;

    invoke-direct {p2, p0, p4}, LO5/e$h;-><init>(LO5/e;LO5/e$v;)V

    invoke-virtual {p3, p2}, LX7/i;->s(LX7/j;)V

    new-instance p2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4}, LO5/e$v;->c()Ljava/lang/String;

    move-result-object p4

    invoke-static {p4}, Lmd/b;->O(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-direct {p2, p4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result p4

    if-eqz p4, :cond_5

    invoke-virtual {p2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p2

    if-eqz p2, :cond_4

    array-length p4, p2

    if-lez p4, :cond_4

    invoke-virtual {p3, v2}, LX7/i;->r(Z)V

    array-length p4, p2

    if-lez p4, :cond_6

    aget-object p2, p2, v2

    invoke-virtual {p3, v1}, LX7/i;->r(Z)V

    goto :goto_2

    :cond_4
    invoke-virtual {p3, v2}, LX7/i;->r(Z)V

    goto :goto_2

    :cond_5
    invoke-virtual {p3, v2}, LX7/i;->r(Z)V

    :cond_6
    :goto_2
    invoke-interface {p1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_3
    return-void
.end method
