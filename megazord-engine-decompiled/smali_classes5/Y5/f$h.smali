.class public LY5/f$h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lb6/a$i;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LY5/f;->f(LW5/b;Landroid/content/Context;Landroid/view/View;Landroid/widget/TextView;LY5/f$i;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:LW5/b;

.field public final synthetic b:LY5/f$i;

.field public final synthetic c:Landroid/view/View;

.field public final synthetic d:LY5/f;


# direct methods
.method public constructor <init>(LY5/f;LW5/b;LY5/f$i;Landroid/view/View;)V
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
            "val$listener",
            "val$inputField"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, LY5/f$h;->d:LY5/f;

    iput-object p2, p0, LY5/f$h;->a:LW5/b;

    iput-object p3, p0, LY5/f$h;->b:LY5/f$i;

    iput-object p4, p0, LY5/f$h;->c:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(F)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    iget-object v0, p0, LY5/f$h;->a:LW5/b;

    invoke-virtual {v0}, LW5/b;->i()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p1, p0, LY5/f$h;->d:LY5/f;

    invoke-static {p1}, LY5/f;->c(LY5/f;)Lb6/a;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, LY5/f$h;->d:LY5/f;

    invoke-static {p1}, LY5/f;->c(LY5/f;)Lb6/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->Q0()V

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, LY5/f$h;->b:LY5/f$i;

    if-eqz v0, :cond_2

    invoke-interface {v0, p1}, LY5/f$i;->a(F)F

    move-result p1

    :cond_2
    iget-object v0, p0, LY5/f$h;->a:LW5/b;

    iget-object v0, v0, LW5/b;->b:LX5/h;

    new-instance v1, Lcom/itsmagic/engine/Engines/Utils/Variable;

    const-string v2, ""

    invoke-direct {v1, v2, p1}, Lcom/itsmagic/engine/Engines/Utils/Variable;-><init>(Ljava/lang/String;F)V

    invoke-interface {v0, v1}, LX5/h;->set(Lcom/itsmagic/engine/Engines/Utils/Variable;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, LY5/f$h;->c:Landroid/view/View;

    invoke-static {v0, v1}, Lcom/itsmagic/engine/Activities/Editor/Utils/F;->d(Ljava/lang/String;Landroid/view/View;)V

    iget-object v0, p0, LY5/f$h;->b:LY5/f$i;

    if-eqz v0, :cond_3

    invoke-interface {v0, p1}, LY5/f$i;->b(F)V

    :cond_3
    return-void
.end method

.method public get()F
    .locals 1

    iget-object v0, p0, LY5/f$h;->a:LW5/b;

    invoke-virtual {v0}, LW5/b;->i()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, LY5/f$h;->d:LY5/f;

    invoke-static {v0}, LY5/f;->c(LY5/f;)Lb6/a;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, LY5/f$h;->d:LY5/f;

    invoke-static {v0}, LY5/f;->c(LY5/f;)Lb6/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->Q0()V

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    iget-object v0, p0, LY5/f$h;->a:LW5/b;

    iget-object v0, v0, LW5/b;->b:LX5/h;

    invoke-interface {v0}, LX5/h;->get()Lcom/itsmagic/engine/Engines/Utils/Variable;

    move-result-object v0

    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Utils/Variable;->str_value:Ljava/lang/String;

    invoke-static {v0}, Lgd/b;->u1(Ljava/lang/String;)F

    move-result v0

    return v0
.end method
