.class public LT6/f$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LX6/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LT6/f;->s()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:LT6/f;


# direct methods
.method public constructor <init>(LT6/f;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, LT6/f$a;->a:LT6/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    invoke-static {}, Lf8/c;->o()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v0, LT6/f$a$b;

    invoke-direct {v0, p0}, LT6/f$a$b;-><init>(LT6/f$a;)V

    invoke-static {v0}, Lf8/c;->j0(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public b(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "line"
        }
    .end annotation

    invoke-static {}, Lf8/c;->o()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v0, LT6/f$a$c;

    invoke-direct {v0, p0, p1}, LT6/f$a$c;-><init>(LT6/f$a;I)V

    invoke-static {v0}, Lf8/c;->j0(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public c(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "line"
        }
    .end annotation

    invoke-static {}, Lf8/c;->o()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v0, LT6/f$a$a;

    invoke-direct {v0, p0, p1}, LT6/f$a$a;-><init>(LT6/f$a;I)V

    invoke-static {v0}, Lf8/c;->j0(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public e()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;
    .locals 1

    iget-object v0, p0, LT6/f$a;->a:LT6/f;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Scripting/Interfaces/SuperClasses/TextInterface;->getScreenPositionOfCursor()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    move-result-object v0

    return-object v0
.end method

.method public f()Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, LT6/f$a;->a:LT6/f;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Scripting/Interfaces/SuperClasses/TextInterface;->getEditorView()Lorg/blacksquircle/ui/editorkit/widget/TextProcessor;

    move-result-object v0

    return-object v0
.end method

.method public g()I
    .locals 1

    iget-object v0, p0, LT6/f$a;->a:LT6/f;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Scripting/Interfaces/SuperClasses/TextInterface;->getCursorPosition()I

    move-result v0

    return v0
.end method

.method public getClassName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LT6/f$a;->a:LT6/f;

    invoke-static {v0}, LT6/f;->o(LT6/f;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCode()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LT6/f$a;->a:LT6/f;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Scripting/Interfaces/SuperClasses/TextInterface;->getText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
