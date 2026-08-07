.class public Lm7/a$a;
.super Lcom/itsmagic/engine/Activities/Editor/Utils/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lm7/a;->B0()Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lm7/a;


# direct methods
.method public constructor <init>(Lm7/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Lm7/a$a;->b:Lm7/a;

    invoke-direct {p0}, Lcom/itsmagic/engine/Activities/Editor/Utils/a;-><init>()V

    return-void
.end method


# virtual methods
.method public click(Landroid/view/View;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    iget-object p1, p0, Lm7/a$a;->b:Lm7/a;

    invoke-static {p1}, Lm7/a;->o1(Lm7/a;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lm7/a$a;->b:Lm7/a;

    invoke-static {p1}, Lm7/a;->o1(Lm7/a;)Landroid/widget/EditText;

    move-result-object p1

    const-string v2, "name is empty"

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setError(Ljava/lang/CharSequence;)V

    move p1, v0

    goto :goto_0

    :cond_0
    move p1, v1

    :goto_0
    iget-object v2, p0, Lm7/a$a;->b:Lm7/a;

    invoke-static {v2}, Lm7/a;->p1(Lm7/a;)I

    move-result v2

    if-nez v2, :cond_1

    if-nez p1, :cond_2

    iget-object p1, p0, Lm7/a$a;->b:Lm7/a;

    invoke-static {p1}, Lm7/a;->r1(Lm7/a;)Landroid/widget/LinearLayout;

    move-result-object p1

    const/16 v2, 0x8

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lm7/a$a;->b:Lm7/a;

    invoke-static {p1}, Lm7/a;->s1(Lm7/a;)Landroid/widget/LinearLayout;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lm7/a$a;->b:Lm7/a;

    invoke-static {p1, v0}, Lm7/a;->q1(Lm7/a;I)I

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lm7/a$a;->b:Lm7/a;

    invoke-static {p1}, Lm7/a;->p1(Lm7/a;)I

    move-result p1

    if-ne p1, v0, :cond_2

    iget-object p1, p0, Lm7/a$a;->b:Lm7/a;

    invoke-virtual {p1}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->Q0()V

    :cond_2
    :goto_1
    return-void
.end method
