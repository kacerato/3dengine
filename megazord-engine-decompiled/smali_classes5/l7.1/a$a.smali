.class public Ll7/a$a;
.super Lcom/itsmagic/engine/Activities/Editor/Utils/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ll7/a;->B0()Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Ll7/a;


# direct methods
.method public constructor <init>(Ll7/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Ll7/a$a;->b:Ll7/a;

    invoke-direct {p0}, Lcom/itsmagic/engine/Activities/Editor/Utils/a;-><init>()V

    return-void
.end method


# virtual methods
.method public click(Landroid/view/View;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    iget-object p1, p0, Ll7/a$a;->b:Ll7/a;

    invoke-static {p1}, Ll7/a;->o1(Ll7/a;)I

    move-result p1

    const/4 v0, 0x1

    if-nez p1, :cond_4

    iget-object p1, p0, Ll7/a$a;->b:Ll7/a;

    invoke-static {p1}, Ll7/a;->q1(Ll7/a;)Lcom/itsmagic/engine/Activities/Editor/Utils/UIComponents/PasswordEditText/PasswordEditText;

    move-result-object p1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Activities/Editor/Utils/UIComponents/PasswordEditText/PasswordEditText;->getText()Ljava/lang/String;

    move-result-object p1

    const-string v1, ""

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const-string v2, "password is empty"

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    iget-object p1, p0, Ll7/a$a;->b:Ll7/a;

    invoke-static {p1}, Ll7/a;->q1(Ll7/a;)Lcom/itsmagic/engine/Activities/Editor/Utils/UIComponents/PasswordEditText/PasswordEditText;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/itsmagic/engine/Activities/Editor/Utils/UIComponents/PasswordEditText/PasswordEditText;->setError(Ljava/lang/CharSequence;)V

    move p1, v0

    goto :goto_0

    :cond_0
    move p1, v3

    :goto_0
    iget-object v4, p0, Ll7/a$a;->b:Ll7/a;

    invoke-static {v4}, Ll7/a;->r1(Ll7/a;)Lcom/itsmagic/engine/Activities/Editor/Utils/UIComponents/PasswordEditText/PasswordEditText;

    move-result-object v4

    invoke-virtual {v4}, Lcom/itsmagic/engine/Activities/Editor/Utils/UIComponents/PasswordEditText/PasswordEditText;->getText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object p1, p0, Ll7/a$a;->b:Ll7/a;

    invoke-static {p1}, Ll7/a;->r1(Ll7/a;)Lcom/itsmagic/engine/Activities/Editor/Utils/UIComponents/PasswordEditText/PasswordEditText;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/itsmagic/engine/Activities/Editor/Utils/UIComponents/PasswordEditText/PasswordEditText;->setError(Ljava/lang/CharSequence;)V

    move p1, v0

    :cond_1
    iget-object v4, p0, Ll7/a$a;->b:Ll7/a;

    invoke-static {v4}, Ll7/a;->s1(Ll7/a;)Lcom/itsmagic/engine/Activities/Editor/Utils/UIComponents/PasswordEditText/PasswordEditText;

    move-result-object v4

    invoke-virtual {v4}, Lcom/itsmagic/engine/Activities/Editor/Utils/UIComponents/PasswordEditText/PasswordEditText;->getText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object p1, p0, Ll7/a$a;->b:Ll7/a;

    invoke-static {p1}, Ll7/a;->s1(Ll7/a;)Lcom/itsmagic/engine/Activities/Editor/Utils/UIComponents/PasswordEditText/PasswordEditText;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/itsmagic/engine/Activities/Editor/Utils/UIComponents/PasswordEditText/PasswordEditText;->setError(Ljava/lang/CharSequence;)V

    move p1, v0

    :cond_2
    iget-object v1, p0, Ll7/a$a;->b:Ll7/a;

    invoke-static {v1}, Ll7/a;->s1(Ll7/a;)Lcom/itsmagic/engine/Activities/Editor/Utils/UIComponents/PasswordEditText/PasswordEditText;

    move-result-object v1

    invoke-virtual {v1}, Lcom/itsmagic/engine/Activities/Editor/Utils/UIComponents/PasswordEditText/PasswordEditText;->getText()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Ll7/a$a;->b:Ll7/a;

    invoke-static {v2}, Ll7/a;->r1(Ll7/a;)Lcom/itsmagic/engine/Activities/Editor/Utils/UIComponents/PasswordEditText/PasswordEditText;

    move-result-object v2

    invoke-virtual {v2}, Lcom/itsmagic/engine/Activities/Editor/Utils/UIComponents/PasswordEditText/PasswordEditText;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object p1, p0, Ll7/a$a;->b:Ll7/a;

    invoke-static {p1}, Ll7/a;->s1(Ll7/a;)Lcom/itsmagic/engine/Activities/Editor/Utils/UIComponents/PasswordEditText/PasswordEditText;

    move-result-object p1

    const-string v1, "confirm password is incorrect"

    invoke-virtual {p1, v1}, Lcom/itsmagic/engine/Activities/Editor/Utils/UIComponents/PasswordEditText/PasswordEditText;->setError(Ljava/lang/CharSequence;)V

    move p1, v0

    :cond_3
    if-nez p1, :cond_5

    iget-object p1, p0, Ll7/a$a;->b:Ll7/a;

    invoke-static {p1}, Ll7/a;->t1(Ll7/a;)Landroid/widget/LinearLayout;

    move-result-object p1

    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Ll7/a$a;->b:Ll7/a;

    invoke-static {p1}, Ll7/a;->u1(Ll7/a;)Landroid/widget/LinearLayout;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Ll7/a$a;->b:Ll7/a;

    invoke-static {p1, v0}, Ll7/a;->p1(Ll7/a;I)I

    goto :goto_1

    :cond_4
    iget-object p1, p0, Ll7/a$a;->b:Ll7/a;

    invoke-static {p1}, Ll7/a;->o1(Ll7/a;)I

    move-result p1

    if-ne p1, v0, :cond_5

    iget-object p1, p0, Ll7/a$a;->b:Ll7/a;

    invoke-virtual {p1}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->Q0()V

    :cond_5
    :goto_1
    return-void
.end method
