.class public Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LX5/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->getInspectorEntries(Landroid/content/Context;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:LW5/b;

.field public final synthetic b:Landroid/content/Context;

.field public final synthetic c:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;LW5/b;Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$rectPosVector",
            "val$context"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform$b;->c:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    iput-object p2, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform$b;->a:LW5/b;

    iput-object p3, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform$b;->b:Landroid/content/Context;

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

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lwd/b;

    sget-object v2, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->RESET:LUc/b;

    invoke-static {v2}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LUc/b;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform$b$a;

    invoke-direct {v3, p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform$b$a;-><init>(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform$b;)V

    invoke-direct {v1, v2, v3}, Lwd/b;-><init>(Ljava/lang/String;Lwd/d;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/itsmagic/engine/Activities/Editor/Panels/Animation/AnimationTimeLine/a;->h2()Lcom/itsmagic/engine/Engines/Engine/Animation/d;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v1, Lwd/b;

    sget-object v2, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->STORE_KEYFRAME:LUc/b;

    invoke-static {v2}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LUc/b;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform$b$b;

    invoke-direct {v3, p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform$b$b;-><init>(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform$b;)V

    invoke-direct {v1, v2, v3}, Lwd/b;-><init>(Ljava/lang/String;Lwd/d;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    new-instance v1, Lwd/b;

    new-instance v2, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform$b$c;

    invoke-direct {v2, p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform$b$c;-><init>(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform$b;)V

    const-string v3, "Open editor"

    invoke-direct {v1, v3, v2}, Lwd/b;-><init>(Ljava/lang/String;Lwd/d;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v1, LL4/a$e;->Below:LL4/a$e;

    invoke-static {p1, v1, v0}, Lq7/a;->D1(Landroid/view/View;LL4/a$e;Ljava/util/List;)V

    return-void
.end method
