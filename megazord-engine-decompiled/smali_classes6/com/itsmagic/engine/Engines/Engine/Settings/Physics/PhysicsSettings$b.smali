.class public Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/PhysicsSettings$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LX5/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/PhysicsSettings;->g(Landroid/content/Context;Lcom/itsmagic/engine/Engines/Engine/Settings/c;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/Layer;

.field public final synthetic b:Lcom/itsmagic/engine/Engines/Engine/Settings/c;

.field public final synthetic c:Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/PhysicsSettings;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/PhysicsSettings;Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/Layer;Lcom/itsmagic/engine/Engines/Engine/Settings/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$layer",
            "val$settingsInflationListener"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/PhysicsSettings$b;->c:Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/PhysicsSettings;

    iput-object p2, p0, Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/PhysicsSettings$b;->a:Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/Layer;

    iput-object p3, p0, Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/PhysicsSettings$b;->b:Lcom/itsmagic/engine/Engines/Engine/Settings/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    sget-object v0, LL4/a$e;->Left:LL4/a$e;

    sget-object v1, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->ATTENTION:LUc/b;

    invoke-static {v1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LUc/b;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->DELETE_LAYER:LUc/b;

    invoke-static {v3}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LUc/b;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/PhysicsSettings$b;->a:Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/Layer;

    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/Layer;->x()LUc/b;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/PhysicsSettings$b$a;

    invoke-direct {v3, p0}, Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/PhysicsSettings$b$a;-><init>(Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/PhysicsSettings$b;)V

    invoke-static {p1, v0, v1, v2, v3}, Lr7/c;->u1(Landroid/view/View;LL4/a$e;Ljava/lang/String;Ljava/lang/String;Lr7/c$i;)V

    return-void
.end method
