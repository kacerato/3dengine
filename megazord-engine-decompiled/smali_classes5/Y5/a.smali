.class public LY5/a;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(LY5/a;LW5/b;Lcom/itsmagic/engine/Activities/Editor/Utils/UIComponents/CustomCheckBox/CustomCheckBox;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, LY5/a;->c(LW5/b;Lcom/itsmagic/engine/Activities/Editor/Utils/UIComponents/CustomCheckBox/CustomCheckBox;)V

    return-void
.end method


# virtual methods
.method public b(LW5/b;Landroid/view/View;Landroid/widget/TextView;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "entry",
            "input",
            "tittle"
        }
    .end annotation

    iget-object v0, p1, LW5/b;->b:LX5/h;

    if-eqz v0, :cond_1

    const v0, 0x7f09053d

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/itsmagic/engine/Activities/Editor/Utils/UIComponents/CustomCheckBox/CustomCheckBox;

    if-eqz p2, :cond_1

    invoke-virtual {p0, p1, p2}, LY5/a;->c(LW5/b;Lcom/itsmagic/engine/Activities/Editor/Utils/UIComponents/CustomCheckBox/CustomCheckBox;)V

    invoke-static {}, Lf8/c;->I()LU3/o;

    move-result-object v0

    new-instance v1, LU3/k;

    new-instance v2, LY5/a$a;

    invoke-direct {v2, p0, p1, p2}, LY5/a$a;-><init>(LY5/a;LW5/b;Lcom/itsmagic/engine/Activities/Editor/Utils/UIComponents/CustomCheckBox/CustomCheckBox;)V

    sget-object v3, Lo8/b;->f:LU8/a;

    iget-object v3, v3, LU8/a;->a:LV8/a;

    iget v3, v3, LV8/a;->s:I

    sget-object v4, Lf8/c$g;->Editor:Lf8/c$g;

    invoke-direct {v1, v2, v3, v4}, LU3/k;-><init>(LU3/j;ILf8/c$g;)V

    invoke-virtual {v0, v1}, LU3/o;->a(LU3/k;)V

    new-instance v0, LY5/a$b;

    invoke-direct {v0, p0, p2, p1}, LY5/a$b;-><init>(LY5/a;Lcom/itsmagic/engine/Activities/Editor/Utils/UIComponents/CustomCheckBox/CustomCheckBox;LW5/b;)V

    iput-object v0, p1, LW5/b;->k:LX5/f;

    if-eqz p3, :cond_0

    new-instance v0, LY5/a$c;

    invoke-direct {v0, p0, p2}, LY5/a$c;-><init>(LY5/a;Lcom/itsmagic/engine/Activities/Editor/Utils/UIComponents/CustomCheckBox/CustomCheckBox;)V

    invoke-virtual {p3, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    new-instance p3, LY5/a$d;

    invoke-direct {p3, p0, p1}, LY5/a$d;-><init>(LY5/a;LW5/b;)V

    invoke-virtual {p2, p3}, Lcom/itsmagic/engine/Activities/Editor/Utils/UIComponents/CustomCheckBox/CustomCheckBox;->setOnCheckedChangeListener(Lcom/itsmagic/engine/Activities/Editor/Utils/UIComponents/CustomCheckBox/CustomCheckBox$a;)V

    :cond_1
    return-void
.end method

.method public final c(LW5/b;Lcom/itsmagic/engine/Activities/Editor/Utils/UIComponents/CustomCheckBox/CustomCheckBox;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "entry",
            "checkBox"
        }
    .end annotation

    if-eqz p2, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, LW5/b;->i()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p1, p1, LW5/b;->b:LX5/h;

    invoke-interface {p1}, LX5/h;->get()Lcom/itsmagic/engine/Engines/Utils/Variable;

    move-result-object p1

    iget-object p1, p1, Lcom/itsmagic/engine/Engines/Utils/Variable;->str_value:Ljava/lang/String;

    const-string v0, "true"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    invoke-virtual {p2, p1}, Lcom/itsmagic/engine/Activities/Editor/Utils/UIComponents/CustomCheckBox/CustomCheckBox;->setChecked(Z)V

    :cond_0
    return-void
.end method
