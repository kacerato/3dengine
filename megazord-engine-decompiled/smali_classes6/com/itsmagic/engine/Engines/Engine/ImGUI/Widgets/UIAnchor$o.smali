.class public Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIAnchor$o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lla/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIAnchor;->createAnchorObjectEntry(Landroid/content/Context;Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/VerticalUIAnchorObject;Ljava/lang/String;Lla/e;)LW5/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lla/e;

.field public final synthetic b:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/VerticalUIAnchorObject;

.field public final synthetic c:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIAnchor;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIAnchor;Lla/e;Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/VerticalUIAnchorObject;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$injectionEntryListener",
            "val$UIAnchorObject"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIAnchor$o;->c:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIAnchor;

    iput-object p2, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIAnchor$o;->a:Lla/e;

    iput-object p3, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIAnchor$o;->b:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/VerticalUIAnchorObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIAnchor$o;->a:Lla/e;

    invoke-interface {v0}, Lla/e;->a()V

    return-void
.end method

.method public b(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "object"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIAnchor$o;->b:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/VerticalUIAnchorObject;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentUtils/ObjectReference;->h(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIAnchor$o;->c:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIAnchor;

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/BaseComponents/ImGuiBaseComponent;->markLayoutDirty()V

    return-void
.end method

.method public c()Lcom/itsmagic/engine/Engines/Engine/ImGUI/Enums/VerticalConstraintTarget;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIAnchor$o;->b:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/VerticalUIAnchorObject;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/VerticalUIAnchorObject;->o()Lcom/itsmagic/engine/Engines/Engine/ImGUI/Enums/VerticalConstraintTarget;

    move-result-object v0

    return-object v0
.end method

.method public d(Lcom/itsmagic/engine/Engines/Engine/ImGUI/Enums/VerticalConstraintTarget;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIAnchor$o;->b:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/VerticalUIAnchorObject;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/VerticalUIAnchorObject;->q(Lcom/itsmagic/engine/Engines/Engine/ImGUI/Enums/VerticalConstraintTarget;)V

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIAnchor$o;->c:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIAnchor;

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/BaseComponents/ImGuiBaseComponent;->markLayoutDirty()V

    return-void
.end method

.method public e()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIAnchor$o;->b:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Utils/VerticalUIAnchorObject;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentUtils/ObjectReference;->e()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    move-result-object v0

    return-object v0
.end method
