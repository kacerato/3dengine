.class public LY5/f$g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LY5/f;->e(LW5/b;Landroid/view/View;Landroid/widget/TextView;Landroid/content/Context;LY5/f$i;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:LW5/b;

.field public final synthetic b:Landroid/view/View;

.field public final synthetic c:LY5/f$i;

.field public final synthetic d:LY5/f;


# direct methods
.method public constructor <init>(LY5/f;LW5/b;Landroid/view/View;LY5/f$i;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$entry",
            "val$inputField",
            "val$listener"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, LY5/f$g;->d:LY5/f;

    iput-object p2, p0, LY5/f$g;->a:LW5/b;

    iput-object p3, p0, LY5/f$g;->b:Landroid/view/View;

    iput-object p4, p0, LY5/f$g;->c:LY5/f$i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "v",
            "hasFocus"
        }
    .end annotation

    iget-object p1, p0, LY5/f$g;->a:LW5/b;

    invoke-virtual {p1}, LW5/b;->i()Z

    move-result p1

    if-nez p1, :cond_2

    if-nez p2, :cond_1

    iget-object p1, p0, LY5/f$g;->b:Landroid/view/View;

    invoke-static {p1}, Lcom/itsmagic/engine/Activities/Editor/Utils/F;->c(Landroid/view/View;)Lcom/google/android/material/textfield/TextInputEditText;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object p1

    if-eqz p1, :cond_1

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lgd/b;->u1(Ljava/lang/String;)F

    move-result p1

    iget-object v0, p0, LY5/f$g;->c:LY5/f$i;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, LY5/f$i;->a(F)F

    move-result p1

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v0, p0, LY5/f$g;->a:LW5/b;

    iget-object v0, v0, LW5/b;->b:LX5/h;

    new-instance v1, Lcom/itsmagic/engine/Engines/Utils/Variable;

    const-string v2, "temp"

    invoke-direct {v1, v2, p1}, Lcom/itsmagic/engine/Engines/Utils/Variable;-><init>(Ljava/lang/String;F)V

    invoke-interface {v0, v1}, LX5/h;->set(Lcom/itsmagic/engine/Engines/Utils/Variable;)V

    iget-object v0, p0, LY5/f$g;->c:LY5/f$i;

    if-eqz v0, :cond_1

    invoke-interface {v0, p1}, LY5/f$i;->b(F)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    :goto_2
    iget-object p1, p0, LY5/f$g;->d:LY5/f;

    iput-boolean p2, p1, LY5/f;->a:Z

    :cond_2
    return-void
.end method
