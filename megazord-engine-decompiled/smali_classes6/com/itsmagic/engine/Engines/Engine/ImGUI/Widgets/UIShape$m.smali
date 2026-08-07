.class public Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIShape$m;
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
.field public final synthetic a:Landroid/content/Context;

.field public final synthetic b:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIShape;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIShape;Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$context"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIShape$m;->b:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIShape;

    iput-object p2, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIShape$m;->a:Landroid/content/Context;

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
    .locals 5
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

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIShape$m;->b:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIShape;

    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIShape;->access$1200(Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIShape;)Lma/d;

    move-result-object v0

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIShape$m$a;

    invoke-direct {v1, p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIShape$m$a;-><init>(Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIShape$m;)V

    const-string v2, "Gradient mode"

    const-class v3, Lma/d;

    invoke-static {v2, v3, v0, v1}, LZ5/c;->i(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;LZ5/c$r0;)LW5/b;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, LW5/b;

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIShape$m$b;

    invoke-direct {v1, p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIShape$m$b;-><init>(Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIShape$m;)V

    const-string v2, "Color"

    sget-object v3, LW5/b$a;->Color:LW5/b$a;

    invoke-direct {v0, v1, v2, v3}, LW5/b;-><init>(LX5/h;Ljava/lang/String;LW5/b$a;)V

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIShape$m;->b:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIShape;

    iget-object v2, v1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    const-string v3, "color"

    sget-object v4, Lcom/itsmagic/engine/Engines/Engine/Animation/c;->COLOR:Lcom/itsmagic/engine/Engines/Engine/Animation/c;

    invoke-virtual {v0, v2, v1, v3, v4}, LW5/b;->d(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Animation/c;)LW5/b;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIShape$m;->b:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIShape;

    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIShape;->access$1400(Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIShape;)Lcom/itsmagic/engine/Engines/Engine/Gradient/Gradient;

    move-result-object v0

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIShape$m;->a:Landroid/content/Context;

    new-instance v2, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIShape$m$c;

    invoke-direct {v2, p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIShape$m$c;-><init>(Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIShape$m;)V

    const-string v3, "Color gradient"

    invoke-static {v3, v0, v1, v2}, Lfa/a;->b(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Gradient/Gradient;Landroid/content/Context;Lfa/a$b;)LW5/b;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, LW5/b;

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIShape$m$d;

    invoke-direct {v1, p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIShape$m$d;-><init>(Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIShape$m;)V

    const-string v2, "Gradient angle"

    sget-object v3, LW5/b$a;->SLFloat01:LW5/b$a;

    invoke-direct {v0, v1, v2, v3}, LW5/b;-><init>(LX5/h;Ljava/lang/String;LW5/b$a;)V

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIShape$m;->b:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIShape;

    iget-object v2, v1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    const-string v3, "gradientAngle"

    sget-object v4, Lcom/itsmagic/engine/Engines/Engine/Animation/c;->FLOAT:Lcom/itsmagic/engine/Engines/Engine/Animation/c;

    invoke-virtual {v0, v2, v1, v3, v4}, LW5/b;->d(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Animation/c;)LW5/b;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p1
.end method
