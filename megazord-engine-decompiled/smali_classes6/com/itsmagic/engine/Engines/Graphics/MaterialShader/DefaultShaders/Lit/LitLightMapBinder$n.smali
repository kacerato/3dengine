.class public Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitLightMapBinder$n;
.super La6/a$j;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitLightMapBinder;->H(Landroid/content/Context;Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder$b;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder$b;

.field public final synthetic c:Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitLightMapBinder;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitLightMapBinder;Ljava/lang/String;Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder$b;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$objectUID",
            "val$listener"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitLightMapBinder$n;->c:Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitLightMapBinder;

    iput-object p2, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitLightMapBinder$n;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitLightMapBinder$n;->b:Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder$b;

    invoke-direct {p0}, La6/a$j;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitLightMapBinder$n;->b:Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder$b;

    invoke-interface {v0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder$b;->a()V

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "file"
        }
    .end annotation

    invoke-static {p1}, LQb/b;->u(Ljava/lang/String;)LMb/g;

    move-result-object p1

    new-instance v0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitLightMapBinder$n$a;

    invoke-direct {v0, p0, p1}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitLightMapBinder$n$a;-><init>(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitLightMapBinder$n;LMb/g;)V

    invoke-static {v0}, Lc9/a;->I(Ljava/lang/Runnable;)V

    return-void
.end method

.method public f(Landroid/widget/LinearLayout;La6/a;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "parent",
            "advancedTextureEntry"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/LinearLayout;",
            "La6/a;",
            ")",
            "Ljava/util/List<",
            "LW5/b;",
            ">;"
        }
    .end annotation

    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    new-instance p2, LW5/b;

    new-instance v0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitLightMapBinder$n$b;

    invoke-direct {v0, p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitLightMapBinder$n$b;-><init>(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitLightMapBinder$n;)V

    const-string v1, "Intensity"

    sget-object v2, LW5/b$a;->SLFloat01:LW5/b$a;

    invoke-direct {p2, v0, v1, v2}, LW5/b;-><init>(LX5/h;Ljava/lang/String;LW5/b$a;)V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitLightMapBinder$n;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitLightMapBinder$n;->b:Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder$b;

    invoke-interface {v1}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder$b;->b()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    move-result-object v1

    const-string v2, "lightIntensity"

    sget-object v3, Lcom/itsmagic/engine/Engines/Engine/Animation/c;->FLOAT:Lcom/itsmagic/engine/Engines/Engine/Animation/c;

    invoke-virtual {p2, v0, v1, v2, v3}, LW5/b;->f(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Animation/c;)LW5/b;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p1
.end method

.method public get()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitLightMapBinder$n;->c:Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitLightMapBinder;

    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitLightMapBinder;->lightMap:LJAVARuntime/Texture;

    if-eqz v0, :cond_0

    iget-object v0, v0, LJAVARuntime/Texture;->instance:LMb/p;

    instance-of v1, v0, LMb/g;

    if-eqz v1, :cond_0

    check-cast v0, LMb/g;

    invoke-virtual {v0}, LMb/g;->getFile()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    return-object v0
.end method

.method public getInstance()LJAVARuntime/Texture;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitLightMapBinder$n;->c:Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitLightMapBinder;

    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitLightMapBinder;->lightMap:LJAVARuntime/Texture;

    return-object v0
.end method

.method public i(Ljava/lang/String;)Lqc/O1;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "fieldName"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitLightMapBinder$n;->c:Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitLightMapBinder;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitLightMapBinder;->t1(Ljava/lang/String;)Lqc/O1;

    move-result-object p1

    return-object p1
.end method

.method public k()V
    .locals 1

    new-instance v0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitLightMapBinder$n$c;

    invoke-direct {v0, p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitLightMapBinder$n$c;-><init>(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitLightMapBinder$n;)V

    invoke-static {v0}, Lc9/a;->I(Ljava/lang/Runnable;)V

    return-void
.end method
