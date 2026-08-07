.class public Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIAnchor$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lla/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIAnchor;->createDualConstraint(Landroid/content/Context;Ljava/lang/String;Lla/h;)LW5/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lla/h;

.field public final synthetic b:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIAnchor;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIAnchor;Lla/h;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$dualEntryListener"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIAnchor$b;->b:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIAnchor;

    iput-object p2, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIAnchor$b;->a:Lla/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIAnchor$b;->a:Lla/h;

    invoke-interface {v0}, Lla/h;->a()V

    return-void
.end method

.method public b(Lcom/itsmagic/engine/Engines/Engine/ImGUI/Enums/VerticalConstraintTarget;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIAnchor$b;->a:Lla/h;

    invoke-interface {v0, p1}, Lla/h;->d(Lcom/itsmagic/engine/Engines/Engine/ImGUI/Enums/VerticalConstraintTarget;)V

    return-void
.end method
