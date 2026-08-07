.class public Lqd/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Landroid/view/View;

.field public b:Landroid/app/Activity;

.field public c:Landroid/content/Context;

.field public d:Landroid/view/LayoutInflater;

.field public e:Lrd/b;

.field public f:Lqd/a;

.field public g:Lz7/e;

.field public h:Ljava/lang/String;

.field public i:Ljava/lang/String;

.field public j:Landroid/widget/TextView;

.field public k:Lcom/google/android/material/textfield/TextInputEditText;

.field public l:Lcom/google/android/material/textfield/TextInputEditText;

.field public m:Lcom/google/android/material/textfield/TextInputLayout;


# direct methods
.method public constructor <init>(Landroid/view/View;Landroid/app/Activity;Lrd/b;Lqd/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "root",
            "activity",
            "classInterface",
            "exporterListener"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lqd/b;->a:Landroid/view/View;

    iput-object p2, p0, Lqd/b;->b:Landroid/app/Activity;

    iput-object p2, p0, Lqd/b;->c:Landroid/content/Context;

    iput-object p3, p0, Lqd/b;->e:Lrd/b;

    iput-object p4, p0, Lqd/b;->f:Lqd/a;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    iput-object p2, p0, Lqd/b;->d:Landroid/view/LayoutInflater;

    invoke-virtual {p0, p1}, Lqd/b;->u(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic a(Lqd/b;)Lcom/google/android/material/textfield/TextInputEditText;
    .locals 0

    iget-object p0, p0, Lqd/b;->l:Lcom/google/android/material/textfield/TextInputEditText;

    return-object p0
.end method

.method public static synthetic b(Lqd/b;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lqd/b;->h:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic c(Lqd/b;)Lz7/e;
    .locals 0

    iget-object p0, p0, Lqd/b;->g:Lz7/e;

    return-object p0
.end method

.method public static synthetic d(Lqd/b;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lqd/b;->h:Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic e(Lqd/b;)Lcom/google/android/material/textfield/TextInputLayout;
    .locals 0

    iget-object p0, p0, Lqd/b;->m:Lcom/google/android/material/textfield/TextInputLayout;

    return-object p0
.end method

.method public static synthetic f(Lqd/b;)Lrd/b;
    .locals 0

    iget-object p0, p0, Lqd/b;->e:Lrd/b;

    return-object p0
.end method

.method public static synthetic g(Lqd/b;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lqd/b;->i:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic h(Lqd/b;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lqd/b;->i:Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic i(Lqd/b;)Lqd/a;
    .locals 0

    iget-object p0, p0, Lqd/b;->f:Lqd/a;

    return-object p0
.end method

.method public static synthetic j(Lqd/b;)Lcom/google/android/material/textfield/TextInputEditText;
    .locals 0

    iget-object p0, p0, Lqd/b;->k:Lcom/google/android/material/textfield/TextInputEditText;

    return-object p0
.end method

.method public static synthetic k(Lqd/b;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lqd/b;->c:Landroid/content/Context;

    return-object p0
.end method

.method public static synthetic l(Lqd/b;LB7/b;)Ljava/util/List;
    .locals 0

    invoke-virtual {p0, p1}, Lqd/b;->t(LB7/b;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic m(Lqd/b;)Ljava/util/List;
    .locals 0

    invoke-virtual {p0}, Lqd/b;->p()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic n(Lqd/b;)Ljava/util/List;
    .locals 0

    invoke-virtual {p0}, Lqd/b;->q()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic o(Lqd/b;LB7/b;)Ljava/util/List;
    .locals 0

    invoke-virtual {p0, p1}, Lqd/b;->r(LB7/b;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static v(Landroid/app/Activity;Lqd/a;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "activity",
            "exporterListener"
        }
    .end annotation

    if-eqz p1, :cond_1

    if-eqz p0, :cond_0

    new-instance v0, LR7/b;

    const v1, 0x7f0c00b4

    invoke-direct {v0, v1, p0}, LR7/b;-><init>(ILandroid/app/Activity;)V

    new-instance v1, Lqd/b$a;

    invoke-direct {v1, p0, v0, p1}, Lqd/b$a;-><init>(Landroid/app/Activity;LR7/b;Lqd/a;)V

    invoke-virtual {v0, v1}, LR7/b;->n(LR7/a;)V

    const/4 p0, 0x0

    invoke-virtual {v0, p0}, LR7/b;->l(Z)V

    invoke-virtual {v0}, LR7/b;->p()V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "activity can\'t be null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "pickerListener can\'t be null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final p()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "LB7/b;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sget-object v1, Lo8/b;->b:Lcom/itsmagic/engine/Core/Components/ProjectController/a;

    iget-object v1, p0, Lqd/b;->c:Landroid/content/Context;

    invoke-static {v1}, Lcom/itsmagic/engine/Core/Components/ProjectController/a;->Q(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lqd/b$j;

    invoke-direct {v2, p0}, Lqd/b$j;-><init>(Lqd/b;)V

    invoke-virtual {p0, v1, v0, v2}, Lqd/b;->s(Ljava/lang/String;Ljava/util/List;Lrd/d;)V

    return-object v0
.end method

.method public final q()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "LB7/b;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sget-object v1, Lo8/b;->b:Lcom/itsmagic/engine/Core/Components/ProjectController/a;

    iget-object v1, p0, Lqd/b;->c:Landroid/content/Context;

    invoke-static {v1}, Lcom/itsmagic/engine/Core/Components/ProjectController/a;->Q(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lqd/b$i;

    invoke-direct {v2, p0}, Lqd/b$i;-><init>(Lqd/b;)V

    invoke-virtual {p0, v1, v0, v2}, Lqd/b;->s(Ljava/lang/String;Ljava/util/List;Lrd/d;)V

    return-object v0
.end method

.method public final r(LB7/b;)Ljava/util/List;
    .locals 2
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
            "LB7/b;",
            ")",
            "Ljava/util/List<",
            "LB7/b;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iget-object p1, p1, LX7/i;->a:Ljava/lang/String;

    new-instance v1, Lqd/b$h;

    invoke-direct {v1, p0}, Lqd/b$h;-><init>(Lqd/b;)V

    invoke-virtual {p0, p1, v0, v1}, Lqd/b;->s(Ljava/lang/String;Ljava/util/List;Lrd/d;)V

    return-object v0
.end method

.method public final s(Ljava/lang/String;Ljava/util/List;Lrd/d;)V
    .locals 9
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
            "LB7/b;",
            ">;",
            "Lrd/d;",
            ")V"
        }
    .end annotation

    new-instance v0, Ljava/io/File;

    invoke-static {p1}, Lmd/b;->o(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p1

    if-eqz p1, :cond_9

    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_9

    aget-object v3, p1, v2

    if-eqz v3, :cond_8

    invoke-interface {p3, v3}, Lrd/d;->a(Ljava/io/File;)Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_3

    new-instance v4, LB7/d;

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v6, v7}, LB7/d;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    if-eqz v3, :cond_1

    array-length v6, v3

    if-lez v6, :cond_1

    invoke-virtual {v4, v1}, LX7/i;->r(Z)V

    array-length v6, v3

    move v7, v1

    :goto_1
    if-ge v7, v6, :cond_2

    aget-object v8, v3, v7

    invoke-interface {p3, v8}, Lrd/d;->a(Ljava/io/File;)Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-virtual {v4, v5}, LX7/i;->r(Z)V

    goto :goto_2

    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {v4, v1}, LX7/i;->r(Z)V

    :cond_2
    :goto_2
    invoke-interface {p2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_3
    new-instance v4, LB7/c;

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-direct {v4, v6, v7, v8}, LB7/c;-><init>(Ljava/lang/String;Ljava/lang/String;LB7/d;)V

    new-instance v6, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lmd/b;->O(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".meta"

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v6, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-virtual {v6}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    if-eqz v3, :cond_5

    array-length v6, v3

    if-lez v6, :cond_5

    invoke-virtual {v4, v1}, LX7/i;->r(Z)V

    array-length v6, v3

    move v7, v1

    :goto_3
    if-ge v7, v6, :cond_7

    aget-object v8, v3, v7

    invoke-interface {p3, v8}, Lrd/d;->a(Ljava/io/File;)Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-virtual {v4, v5}, LX7/i;->r(Z)V

    goto :goto_4

    :cond_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    :cond_5
    invoke-virtual {v4, v1}, LX7/i;->r(Z)V

    goto :goto_4

    :cond_6
    invoke-virtual {v4, v1}, LX7/i;->r(Z)V

    :cond_7
    :goto_4
    invoke-interface {p2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_8
    :goto_5
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_9
    return-void

    :cond_a
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "File "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is not a folder"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public final t(LB7/b;)Ljava/util/List;
    .locals 2
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
            "LB7/b;",
            ")",
            "Ljava/util/List<",
            "LB7/b;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iget-object p1, p1, LX7/i;->a:Ljava/lang/String;

    new-instance v1, Lqd/b$b;

    invoke-direct {v1, p0}, Lqd/b$b;-><init>(Lqd/b;)V

    invoke-virtual {p0, p1, v0, v1}, Lqd/b;->s(Ljava/lang/String;Ljava/util/List;Lrd/d;)V

    return-object v0
.end method

.method public final u(Landroid/view/View;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    const v0, 0x7f09052f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lqd/b;->j:Landroid/widget/TextView;

    new-instance v1, Lud/a;

    const-string v2, "Select file destination"

    const-string v3, "Selecione o destino do arquivo"

    invoke-direct {v1, v2, v3}, Lud/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Lud/a;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f09020b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/textfield/TextInputEditText;

    iput-object v0, p0, Lqd/b;->k:Lcom/google/android/material/textfield/TextInputEditText;

    const v0, 0x7f09020c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/textfield/TextInputLayout;

    iput-object v0, p0, Lqd/b;->m:Lcom/google/android/material/textfield/TextInputLayout;

    const v0, 0x7f0901f1

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/textfield/TextInputEditText;

    iput-object v0, p0, Lqd/b;->l:Lcom/google/android/material/textfield/TextInputEditText;

    iget-object v0, p0, Lqd/b;->f:Lqd/a;

    invoke-interface {v0}, Lqd/a;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lqd/b;->h:Ljava/lang/String;

    iget-object v1, p0, Lqd/b;->l:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lqd/b;->l:Lcom/google/android/material/textfield/TextInputEditText;

    new-instance v1, Lqd/b$c;

    invoke-direct {v1, p0}, Lqd/b$c;-><init>(Lqd/b;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    iget-object v0, p0, Lqd/b;->f:Lqd/a;

    invoke-interface {v0}, Lqd/a;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lqd/b;->i:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lqd/b;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lqd/b;->h:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lqd/b;->f:Lqd/a;

    invoke-interface {v2}, Lqd/a;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "//"

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lqd/b;->k:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lqd/b;->k:Lcom/google/android/material/textfield/TextInputEditText;

    new-instance v2, Lqd/b$d;

    invoke-direct {v2, p0}, Lqd/b$d;-><init>(Lqd/b;)V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    const v0, 0x7f0901f3

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    new-instance v2, Lz7/e;

    iget-object v3, p0, Lqd/b;->b:Landroid/app/Activity;

    invoke-direct {v2, v0, v3}, Lz7/e;-><init>(Landroid/widget/LinearLayout;Landroid/app/Activity;)V

    iput-object v2, p0, Lqd/b;->g:Lz7/e;

    new-instance v0, Lqd/b$e;

    invoke-direct {v0, p0}, Lqd/b$e;-><init>(Lqd/b;)V

    invoke-virtual {v2, v0}, Lz7/e;->E(LF7/f;)V

    iget-object v0, p0, Lqd/b;->g:Lz7/e;

    invoke-virtual {v0}, Lz7/e;->q()V

    const v0, 0x7f0900ff

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    new-instance v2, Lqd/b$f;

    invoke-direct {v2, p0}, Lqd/b$f;-><init>(Lqd/b;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0901a5

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    new-instance v0, Lqd/b$g;

    invoke-direct {v0, p0}, Lqd/b$g;-><init>(Lqd/b;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lqd/b;->i:Ljava/lang/String;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lqd/b;->g:Lz7/e;

    iget-object v0, p0, Lqd/b;->i:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lo8/b;->b:Lcom/itsmagic/engine/Core/Components/ProjectController/a;

    iget-object v3, p0, Lqd/b;->c:Landroid/content/Context;

    invoke-static {v3}, Lcom/itsmagic/engine/Core/Components/ProjectController/a;->Q(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lz7/e;->p(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
