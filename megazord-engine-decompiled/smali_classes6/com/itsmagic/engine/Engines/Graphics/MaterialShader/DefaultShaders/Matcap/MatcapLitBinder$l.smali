.class public Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Matcap/MatcapLitBinder$l;
.super La6/a$j;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Matcap/MatcapLitBinder;->H(Landroid/content/Context;Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder$b;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder$b;

.field public final synthetic b:Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Matcap/MatcapLitBinder;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Matcap/MatcapLitBinder;Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder$b;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$listener"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Matcap/MatcapLitBinder$l;->b:Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Matcap/MatcapLitBinder;

    iput-object p2, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Matcap/MatcapLitBinder$l;->a:Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder$b;

    invoke-direct {p0}, La6/a$j;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Matcap/MatcapLitBinder$l;->a:Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder$b;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder$b;->a()V

    :cond_0
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

    new-instance v0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Matcap/MatcapLitBinder$l$a;

    invoke-direct {v0, p0, p1}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Matcap/MatcapLitBinder$l$a;-><init>(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Matcap/MatcapLitBinder$l;LMb/g;)V

    invoke-static {v0}, Lc9/a;->I(Ljava/lang/Runnable;)V

    return-void
.end method

.method public f(Landroid/widget/LinearLayout;La6/a;)Ljava/util/List;
    .locals 3
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

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iget-object p2, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Matcap/MatcapLitBinder$l;->b:Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Matcap/MatcapLitBinder;

    iget-object v0, p2, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Matcap/MatcapLitBinder;->uv:Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Matcap/MatcapLitBinder$UVs;

    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Matcap/MatcapLitBinder$UVs;->metallicTilling:LJAVARuntime/Vector2;

    iget-object v0, v0, LJAVARuntime/Vector2;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v1, v2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;-><init>(F)V

    const-string v2, "tilling"

    invoke-static {p2, v2, v0, v1}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Matcap/MatcapLitBinder;->K0(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Matcap/MatcapLitBinder;Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;)LW5/b;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p2, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Matcap/MatcapLitBinder$l;->b:Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Matcap/MatcapLitBinder;

    iget-object v0, p2, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Matcap/MatcapLitBinder;->uv:Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Matcap/MatcapLitBinder$UVs;

    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Matcap/MatcapLitBinder$UVs;->metallicOffset:LJAVARuntime/Vector2;

    iget-object v0, v0, LJAVARuntime/Vector2;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;-><init>(F)V

    const-string v2, "offset"

    invoke-static {p2, v2, v0, v1}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Matcap/MatcapLitBinder;->K0(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Matcap/MatcapLitBinder;Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;)LW5/b;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p1
.end method

.method public g()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public get()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Matcap/MatcapLitBinder$l;->b:Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Matcap/MatcapLitBinder;

    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Matcap/MatcapLitBinder;->metallic:LJAVARuntime/Texture;

    if-eqz v0, :cond_0

    iget-object v0, v0, LJAVARuntime/Texture;->instance:LMb/p;

    instance-of v1, v0, LMb/g;

    if-eqz v1, :cond_0

    check-cast v0, LMb/g;

    invoke-virtual {v0}, LMb/g;->getFile()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public getFloatValue()F
    .locals 2

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Matcap/MatcapLitBinder$l;->b:Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Matcap/MatcapLitBinder;

    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Matcap/MatcapLitBinder;->L0(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Matcap/MatcapLitBinder;)LMb/n;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, LMb/n;->B(II)F

    move-result v0

    return v0
.end method

.method public getInstance()LJAVARuntime/Texture;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Matcap/MatcapLitBinder$l;->b:Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Matcap/MatcapLitBinder;

    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Matcap/MatcapLitBinder;->metallic:LJAVARuntime/Texture;

    return-object v0
.end method

.method public j(F)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Matcap/MatcapLitBinder$l;->b:Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Matcap/MatcapLitBinder;

    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Matcap/MatcapLitBinder;->L0(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Matcap/MatcapLitBinder;)LMb/n;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1, p1}, LMb/n;->p0(IIF)V

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Matcap/MatcapLitBinder$l;->b:Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Matcap/MatcapLitBinder;

    invoke-static {p1}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Matcap/MatcapLitBinder;->L0(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Matcap/MatcapLitBinder;)LMb/n;

    move-result-object p1

    invoke-virtual {p1}, LMb/n;->apply()V

    return-void
.end method
