.class public Lg5/a$a;
.super Lcom/itsmagic/engine/Activities/Editor/Utils/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lg5/a;->B0()Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Landroid/widget/EditText;

.field public final synthetic c:Lg5/a;


# direct methods
.method public constructor <init>(Lg5/a;Landroid/widget/EditText;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$editText"
        }
    .end annotation

    iput-object p1, p0, Lg5/a$a;->c:Lg5/a;

    iput-object p2, p0, Lg5/a$a;->b:Landroid/widget/EditText;

    invoke-direct {p0}, Lcom/itsmagic/engine/Activities/Editor/Utils/a;-><init>()V

    return-void
.end method


# virtual methods
.method public click(Landroid/view/View;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    iget-object p1, p0, Lg5/a$a;->c:Lg5/a;

    invoke-static {p1}, Lg5/a;->o1(Lg5/a;)Lg5/a$c;

    move-result-object p1

    if-nez p1, :cond_0

    sget-object p1, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->SOMETHING_WENT_WRONG:LUc/b;

    invoke-static {p1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LUc/b;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lf8/c;->u0(Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object p1, p0, Lg5/a$a;->b:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lg5/a$a;->b:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    const-string p1, ""

    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    iget-object v0, p0, Lg5/a$a;->c:Lg5/a;

    invoke-static {v0}, Lg5/a;->o1(Lg5/a;)Lg5/a$c;

    move-result-object v0

    invoke-interface {v0, p1}, Lg5/a$c;->onFinish(Ljava/lang/String;)V

    iget-object p1, p0, Lg5/a$a;->c:Lg5/a;

    invoke-static {p1, v1}, Lg5/a;->p1(Lg5/a;Lg5/a$c;)Lg5/a$c;

    iget-object p1, p0, Lg5/a$a;->c:Lg5/a;

    invoke-virtual {p1}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->Q0()V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lg5/a$a;->c:Lg5/a;

    invoke-static {v0}, Lg5/a;->q1(Lg5/a;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lg5/a$a;->c:Lg5/a;

    invoke-static {v0}, Lg5/a;->o1(Lg5/a;)Lg5/a$c;

    move-result-object v0

    invoke-interface {v0, p1}, Lg5/a$c;->onFinish(Ljava/lang/String;)V

    iget-object p1, p0, Lg5/a$a;->c:Lg5/a;

    invoke-static {p1, v1}, Lg5/a;->p1(Lg5/a;Lg5/a$c;)Lg5/a$c;

    iget-object p1, p0, Lg5/a$a;->c:Lg5/a;

    invoke-virtual {p1}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->Q0()V

    goto :goto_1

    :cond_3
    const-string p1, "Text can\'t be empty"

    invoke-static {p1}, Lf8/c;->u0(Ljava/lang/String;)V

    :goto_1
    return-void
.end method
