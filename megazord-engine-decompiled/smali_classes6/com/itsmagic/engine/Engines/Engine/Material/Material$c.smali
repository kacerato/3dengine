.class public Lcom/itsmagic/engine/Engines/Engine/Material/Material$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itsmagic/engine/Engines/Engine/Material/Material;->L(Landroid/content/Context;Lva/f;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lva/f;

.field public final synthetic b:Lcom/itsmagic/engine/Engines/Engine/Material/Material;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Engines/Engine/Material/Material;Lva/f;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$materialInspectorCallbacks"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/Material/Material$c;->b:Lcom/itsmagic/engine/Engines/Engine/Material/Material;

    iput-object p2, p0, Lcom/itsmagic/engine/Engines/Engine/Material/Material$c;->a:Lva/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Material/Material$c;->a:Lva/f;

    invoke-interface {v0}, Lva/f;->a()V

    return-void
.end method

.method public b()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Material/Material$c;->a:Lva/f;

    invoke-interface {v0}, Lva/f;->b()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    move-result-object v0

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Material/Material$c;->a:Lva/f;

    invoke-interface {v0}, Lva/f;->c()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Material/Material$c;->a:Lva/f;

    invoke-interface {v0}, Lva/f;->d()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public e()V
    .locals 2

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Material/Material$c;->b:Lcom/itsmagic/engine/Engines/Engine/Material/Material;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/Material/Material;->r(Lcom/itsmagic/engine/Engines/Engine/Material/Material;Z)Z

    return-void
.end method
