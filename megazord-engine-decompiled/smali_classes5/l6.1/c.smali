.class public Ll6/c;
.super LK7/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "LK7/c<",
        "Li6/b;",
        ">;"
    }
.end annotation


# instance fields
.field public e:Lcom/itsmagic/engine/Activities/Editor/Utils/UIComponents/PasswordEditText/PasswordEditText;

.field public f:Lcom/itsmagic/engine/Activities/Editor/Utils/UIComponents/PasswordEditText/PasswordEditText;

.field public g:Z

.field public h:LI7/a;


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "STAGE_PASSWORD"

    invoke-direct {p0, v0}, LK7/c;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic A(Ll6/c;)Lcom/itsmagic/engine/Activities/Editor/Utils/UIComponents/PasswordEditText/PasswordEditText;
    .locals 0

    iget-object p0, p0, Ll6/c;->f:Lcom/itsmagic/engine/Activities/Editor/Utils/UIComponents/PasswordEditText/PasswordEditText;

    return-object p0
.end method

.method public static synthetic B(Ll6/c;)V
    .locals 0

    invoke-direct {p0}, Ll6/c;->E()V

    return-void
.end method

.method public static synthetic C(Ll6/c;)LI7/a;
    .locals 0

    iget-object p0, p0, Ll6/c;->h:LI7/a;

    return-object p0
.end method

.method public static synthetic D(Ll6/c;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ll6/c;->H(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private E()V
    .locals 3

    invoke-virtual {p0}, LK7/c;->i()LK7/a;

    move-result-object v0

    check-cast v0, Li6/b;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Li6/b;->c()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ll6/c$e;

    invoke-direct {v2, p0, v0}, Ll6/c$e;-><init>(Ll6/c;Li6/b;)V

    invoke-static {v1, v2}, Lcom/itsmagic/engine/Activities/Editor/Utils/q$f;->d(Ljava/lang/String;Lcom/itsmagic/engine/Activities/Editor/Utils/q$f$j;)V

    goto :goto_0

    :cond_0
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "Can\'t set email after register"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :goto_0
    iget-boolean v0, p0, Ll6/c;->g:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    iput-boolean v0, p0, Ll6/c;->g:Z

    :cond_1
    invoke-static {}, Lcom/itsmagic/engine/Core/Components/GIAP/GIAP;->J()V

    return-void
.end method

.method private H(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "username",
            "password"
        }
    .end annotation

    new-instance v0, Ll6/c$f;

    invoke-direct {v0, p0}, Ll6/c$f;-><init>(Ll6/c;)V

    invoke-static {p1, p2, v0}, Lcom/itsmagic/engine/Activities/Editor/Utils/q$i;->m(Ljava/lang/String;Ljava/lang/String;Lcom/itsmagic/engine/Activities/Editor/Utils/q$i$N;)V

    return-void
.end method

.method public static synthetic z(Ll6/c;)Lcom/itsmagic/engine/Activities/Editor/Utils/UIComponents/PasswordEditText/PasswordEditText;
    .locals 0

    iget-object p0, p0, Ll6/c;->e:Lcom/itsmagic/engine/Activities/Editor/Utils/UIComponents/PasswordEditText/PasswordEditText;

    return-object p0
.end method


# virtual methods
.method public final F()V
    .locals 5

    invoke-virtual {p0}, LK7/c;->i()LK7/a;

    move-result-object v0

    check-cast v0, Li6/b;

    iget-object v1, p0, Ll6/c;->e:Lcom/itsmagic/engine/Activities/Editor/Utils/UIComponents/PasswordEditText/PasswordEditText;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/itsmagic/engine/Activities/Editor/Utils/UIComponents/PasswordEditText/PasswordEditText;->setError(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Ll6/c;->f:Lcom/itsmagic/engine/Activities/Editor/Utils/UIComponents/PasswordEditText/PasswordEditText;

    invoke-virtual {v1, v2}, Lcom/itsmagic/engine/Activities/Editor/Utils/UIComponents/PasswordEditText/PasswordEditText;->setError(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Ll6/c;->e:Lcom/itsmagic/engine/Activities/Editor/Utils/UIComponents/PasswordEditText/PasswordEditText;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Activities/Editor/Utils/UIComponents/PasswordEditText/PasswordEditText;->getText()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Ll6/c;->f:Lcom/itsmagic/engine/Activities/Editor/Utils/UIComponents/PasswordEditText/PasswordEditText;

    invoke-virtual {v2}, Lcom/itsmagic/engine/Activities/Editor/Utils/UIComponents/PasswordEditText/PasswordEditText;->getText()Ljava/lang/String;

    move-result-object v2

    if-eqz v1, :cond_9

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0x20

    if-lt v3, v4, :cond_2

    iget-object v0, p0, Ll6/c;->h:LI7/a;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, LI7/a;->o1()V

    :cond_1
    iget-object v0, p0, Ll6/c;->e:Lcom/itsmagic/engine/Activities/Editor/Utils/UIComponents/PasswordEditText/PasswordEditText;

    sget-object v1, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->PASSWORD_TOO_BIG:LUc/b;

    invoke-static {v1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LUc/b;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Activities/Editor/Utils/UIComponents/PasswordEditText/PasswordEditText;->setError(Ljava/lang/CharSequence;)V

    return-void

    :cond_2
    if-eqz v2, :cond_7

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_0

    :cond_3
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    iget-object v0, p0, Ll6/c;->h:LI7/a;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, LI7/a;->o1()V

    :cond_4
    iget-object v0, p0, Ll6/c;->f:Lcom/itsmagic/engine/Activities/Editor/Utils/UIComponents/PasswordEditText/PasswordEditText;

    sget-object v1, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->PASSWORD_DOESNT_MATCH:LUc/b;

    invoke-static {v1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LUc/b;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Activities/Editor/Utils/UIComponents/PasswordEditText/PasswordEditText;->setError(Ljava/lang/CharSequence;)V

    return-void

    :cond_5
    iget-object v3, p0, Ll6/c;->h:LI7/a;

    if-eqz v3, :cond_6

    invoke-virtual {v3}, LI7/a;->o1()V

    :cond_6
    invoke-static {}, LI7/a;->q1()LI7/a;

    move-result-object v3

    iput-object v3, p0, Ll6/c;->h:LI7/a;

    invoke-virtual {v0, v1}, Li6/b;->o(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Li6/b;->k(Ljava/lang/String;)V

    invoke-virtual {v0}, Li6/b;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Li6/b;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Ll6/c;->G(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_7
    :goto_0
    iget-object v0, p0, Ll6/c;->h:LI7/a;

    if-eqz v0, :cond_8

    invoke-virtual {v0}, LI7/a;->o1()V

    :cond_8
    iget-object v0, p0, Ll6/c;->f:Lcom/itsmagic/engine/Activities/Editor/Utils/UIComponents/PasswordEditText/PasswordEditText;

    sget-object v1, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->CONFIRM_PASSWORD_CANT_BE_EMPTY:LUc/b;

    invoke-static {v1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LUc/b;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Activities/Editor/Utils/UIComponents/PasswordEditText/PasswordEditText;->setError(Ljava/lang/CharSequence;)V

    return-void

    :cond_9
    :goto_1
    iget-object v0, p0, Ll6/c;->h:LI7/a;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, LI7/a;->o1()V

    :cond_a
    iget-object v0, p0, Ll6/c;->e:Lcom/itsmagic/engine/Activities/Editor/Utils/UIComponents/PasswordEditText/PasswordEditText;

    sget-object v1, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->PASSWORD_CANT_BE_EMPTY:LUc/b;

    invoke-static {v1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LUc/b;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Activities/Editor/Utils/UIComponents/PasswordEditText/PasswordEditText;->setError(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final G(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "username",
            "passwordT"
        }
    .end annotation

    new-instance v0, Lxd/c;

    new-instance v1, Ll6/c$g;

    invoke-direct {v1, p0, p1, p2}, Ll6/c$g;-><init>(Ll6/c;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lxd/c;-><init>(LAd/d;)V

    new-instance v1, Ll6/c$h;

    invoke-direct {v1, p0, p1, p2}, Ll6/c$h;-><init>(Ll6/c;Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, LAd/e;

    const-string p2, "backend/view/users/"

    const-string v2, "RegisterUser.php"

    invoke-static {p2, v2}, LZ8/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0}, LK7/c;->h()Landroid/content/Context;

    move-result-object v2

    invoke-direct {p1, p2, v1, v2}, LAd/e;-><init>(Ljava/lang/String;Ljava/util/Map;Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Lxd/c;->d(LAd/e;)V

    return-void
.end method

.method public b()Z
    .locals 1

    invoke-virtual {p0}, Ll6/c;->F()V

    const/4 v0, 0x0

    return v0
.end method

.method public g()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->FINALIZE:LUc/b;

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LUc/b;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public m()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->REGISTER_NEW_ACCOUNT:LUc/b;

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LUc/b;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public o()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public p()Landroid/view/View;
    .locals 4

    iget-object v0, p0, LK7/c;->a:Landroid/view/LayoutInflater;

    const v1, 0x7f0c018c

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f090380

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f090156

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    sget-object v3, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->PASSWORD:LUc/b;

    invoke-static {v3}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LUc/b;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object v1, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->CONFIRM_PASSWORD:LUc/b;

    invoke-static {v1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LUc/b;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v1, 0x7f090384

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/itsmagic/engine/Activities/Editor/Utils/UIComponents/PasswordEditText/PasswordEditText;

    iput-object v1, p0, Ll6/c;->e:Lcom/itsmagic/engine/Activities/Editor/Utils/UIComponents/PasswordEditText/PasswordEditText;

    const v1, 0x7f090155

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/itsmagic/engine/Activities/Editor/Utils/UIComponents/PasswordEditText/PasswordEditText;

    iput-object v1, p0, Ll6/c;->f:Lcom/itsmagic/engine/Activities/Editor/Utils/UIComponents/PasswordEditText/PasswordEditText;

    invoke-virtual {p0}, LK7/c;->i()LK7/a;

    move-result-object v1

    check-cast v1, Li6/b;

    iget-object v2, p0, Ll6/c;->e:Lcom/itsmagic/engine/Activities/Editor/Utils/UIComponents/PasswordEditText/PasswordEditText;

    new-instance v3, Ll6/c$a;

    invoke-direct {v3, p0, v1}, Ll6/c$a;-><init>(Ll6/c;Li6/b;)V

    invoke-virtual {v2, v3}, Lcom/itsmagic/engine/Activities/Editor/Utils/UIComponents/PasswordEditText/PasswordEditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    iget-object v2, p0, Ll6/c;->e:Lcom/itsmagic/engine/Activities/Editor/Utils/UIComponents/PasswordEditText/PasswordEditText;

    new-instance v3, Ll6/c$b;

    invoke-direct {v3, p0, v1}, Ll6/c$b;-><init>(Ll6/c;Li6/b;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    iget-object v2, p0, Ll6/c;->f:Lcom/itsmagic/engine/Activities/Editor/Utils/UIComponents/PasswordEditText/PasswordEditText;

    new-instance v3, Ll6/c$c;

    invoke-direct {v3, p0, v1}, Ll6/c$c;-><init>(Ll6/c;Li6/b;)V

    invoke-virtual {v2, v3}, Lcom/itsmagic/engine/Activities/Editor/Utils/UIComponents/PasswordEditText/PasswordEditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    iget-object v2, p0, Ll6/c;->f:Lcom/itsmagic/engine/Activities/Editor/Utils/UIComponents/PasswordEditText/PasswordEditText;

    new-instance v3, Ll6/c$d;

    invoke-direct {v3, p0, v1}, Ll6/c$d;-><init>(Ll6/c;Li6/b;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    invoke-virtual {v1}, Li6/b;->e()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Ll6/c;->e:Lcom/itsmagic/engine/Activities/Editor/Utils/UIComponents/PasswordEditText/PasswordEditText;

    invoke-virtual {v3, v2}, Lcom/itsmagic/engine/Activities/Editor/Utils/UIComponents/PasswordEditText/PasswordEditText;->setText(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v1}, Li6/b;->a()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Ll6/c;->f:Lcom/itsmagic/engine/Activities/Editor/Utils/UIComponents/PasswordEditText/PasswordEditText;

    invoke-virtual {v2, v1}, Lcom/itsmagic/engine/Activities/Editor/Utils/UIComponents/PasswordEditText/PasswordEditText;->setText(Ljava/lang/String;)V

    :cond_1
    return-object v0
.end method

.method public q()V
    .locals 0

    invoke-super {p0}, LK7/c;->q()V

    return-void
.end method

.method public y()V
    .locals 0

    invoke-super {p0}, LK7/c;->y()V

    return-void
.end method
