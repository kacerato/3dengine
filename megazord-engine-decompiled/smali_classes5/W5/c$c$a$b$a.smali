.class public LW5/c$c$a$b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le8/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LW5/c$c$a$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:LW5/c$c$a$b;


# direct methods
.method public constructor <init>(LW5/c$c$a$b;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$3"
        }
    .end annotation

    iput-object p1, p0, LW5/c$c$a$b$a;->a:LW5/c$c$a$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;Landroid/content/Context;Le8/c;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "v",
            "context",
            "tbButton"
        }
    .end annotation

    :try_start_0
    iget-object p1, p0, LW5/c$c$a$b$a;->a:LW5/c$c$a$b;

    iget-object p1, p1, LW5/c$c$a$b;->b:LW5/c$c$a;

    iget-object p1, p1, LW5/c$c$a;->d:LW5/c$c;

    iget-object p1, p1, LW5/c$c;->b:LW5/d;

    iget-object p1, p1, LW5/d;->b:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->getEditor()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/InspectorEditor;

    move-result-object p1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/InspectorEditor;->e()Z

    move-result p1

    const/4 p2, 0x0

    :goto_0
    iget-object p3, p0, LW5/c$c$a$b$a;->a:LW5/c$c$a$b;

    iget-object p3, p3, LW5/c$c$a$b;->b:LW5/c$c$a;

    iget-object p3, p3, LW5/c$c$a;->d:LW5/c$c;

    iget-object p3, p3, LW5/c$c;->b:LW5/d;

    iget-object p3, p3, LW5/d;->a:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-virtual {p3}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->X()I

    move-result p3

    if-ge p2, p3, :cond_0

    iget-object p3, p0, LW5/c$c$a$b$a;->a:LW5/c$c$a$b;

    iget-object p3, p3, LW5/c$c$a$b;->b:LW5/c$c$a;

    iget-object p3, p3, LW5/c$c$a;->d:LW5/c$c;

    iget-object p3, p3, LW5/c$c;->b:LW5/d;

    iget-object p3, p3, LW5/d;->a:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-virtual {p3, p2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->V(I)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    move-result-object p3

    invoke-virtual {p3}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->getEditor()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/InspectorEditor;

    move-result-object p3

    xor-int/lit8 v0, p1, 0x1

    invoke-virtual {p3, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/InspectorEditor;->i(Z)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_0
    invoke-static {}, LU5/a;->x1()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_2
    return-void
.end method
