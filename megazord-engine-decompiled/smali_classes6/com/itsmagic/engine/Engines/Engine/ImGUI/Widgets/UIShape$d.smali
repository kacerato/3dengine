.class public Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIShape$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LZ5/c$o0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIShape;->getInspectorEntries(Landroid/content/Context;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIShape;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIShape;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIShape$d;->a:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIShape;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public b(Ljava/util/List;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "list"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "LW5/b;",
            ">;)",
            "Ljava/util/List<",
            "LW5/b;",
            ">;"
        }
    .end annotation

    new-instance v0, LW5/b;

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIShape$d$a;

    invoke-direct {v1, p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIShape$d$a;-><init>(Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIShape$d;)V

    const-string v2, "Color"

    sget-object v3, LW5/b$a;->Color:LW5/b$a;

    invoke-direct {v0, v1, v2, v3}, LW5/b;-><init>(LX5/h;Ljava/lang/String;LW5/b$a;)V

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIShape$d;->a:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIShape;

    iget-object v2, v1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    const-string v3, "outerShadowColor"

    sget-object v4, Lcom/itsmagic/engine/Engines/Engine/Animation/c;->COLOR:Lcom/itsmagic/engine/Engines/Engine/Animation/c;

    invoke-virtual {v0, v2, v1, v3, v4}, LW5/b;->d(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Animation/c;)LW5/b;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, LW5/b;

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIShape$d$b;

    invoke-direct {v1, p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIShape$d$b;-><init>(Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIShape$d;)V

    sget-object v2, LW5/b$a;->SLFloat:LW5/b$a;

    const-string v3, "Size"

    invoke-direct {v0, v1, v3, v2}, LW5/b;-><init>(LX5/h;Ljava/lang/String;LW5/b$a;)V

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIShape$d;->a:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIShape;

    iget-object v3, v1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    sget-object v4, Lcom/itsmagic/engine/Engines/Engine/Animation/c;->FLOAT:Lcom/itsmagic/engine/Engines/Engine/Animation/c;

    const-string v5, "outerShadowSize"

    invoke-virtual {v0, v3, v1, v5, v4}, LW5/b;->d(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Animation/c;)LW5/b;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, LW5/b;

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIShape$d$c;

    invoke-direct {v1, p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIShape$d$c;-><init>(Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIShape$d;)V

    const-string v3, "Smooth"

    invoke-direct {v0, v1, v3, v2}, LW5/b;-><init>(LX5/h;Ljava/lang/String;LW5/b$a;)V

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIShape$d;->a:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIShape;

    iget-object v2, v1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    const-string v3, "outerShadowSmooth"

    invoke-virtual {v0, v2, v1, v3, v4}, LW5/b;->d(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Animation/c;)LW5/b;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, LW5/b;

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIShape$d$d;

    invoke-direct {v1, p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIShape$d$d;-><init>(Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIShape$d;)V

    const-string v2, "Angle"

    sget-object v3, LW5/b$a;->SLFloat01:LW5/b$a;

    invoke-direct {v0, v1, v2, v3}, LW5/b;-><init>(LX5/h;Ljava/lang/String;LW5/b$a;)V

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIShape$d;->a:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIShape;

    iget-object v2, v1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    const-string v3, "outerShadowAngle"

    invoke-virtual {v0, v2, v1, v3, v4}, LW5/b;->d(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Animation/c;)LW5/b;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p1
.end method
