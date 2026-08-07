.class public Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRRefractiveBinder$e$i;
.super La6/a$j;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRRefractiveBinder$e;->c(Landroid/widget/ImageView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroid/widget/ImageView;

.field public final synthetic b:Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRRefractiveBinder$e;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRRefractiveBinder$e;Landroid/widget/ImageView;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$1",
            "val$presetThumbnail"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRRefractiveBinder$e$i;->b:Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRRefractiveBinder$e;

    iput-object p2, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRRefractiveBinder$e$i;->a:Landroid/widget/ImageView;

    invoke-direct {p0}, La6/a$j;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRRefractiveBinder$e$i;->b:Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRRefractiveBinder$e;

    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRRefractiveBinder$e;->e:Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder$b;

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

    new-instance v0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRRefractiveBinder$e$i$a;

    invoke-direct {v0, p0, p1}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRRefractiveBinder$e$i$a;-><init>(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRRefractiveBinder$e$i;LMb/g;)V

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

    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    iget-object p2, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRRefractiveBinder$e$i;->b:Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRRefractiveBinder$e;

    iget-object p2, p2, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRRefractiveBinder$e;->f:Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRRefractiveBinder;

    iget-object v0, p2, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRRefractiveBinder;->uv:Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRRefractiveBinder$UVs;

    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRRefractiveBinder$UVs;->aoTilling:LJAVARuntime/Vector2;

    iget-object v0, v0, LJAVARuntime/Vector2;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v1, v2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;-><init>(F)V

    const-string v2, "tilling"

    invoke-static {p2, v2, v0, v1}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRRefractiveBinder;->B1(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRRefractiveBinder;Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;)LW5/b;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p2, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRRefractiveBinder$e$i;->b:Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRRefractiveBinder$e;

    iget-object p2, p2, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRRefractiveBinder$e;->f:Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRRefractiveBinder;

    iget-object v0, p2, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRRefractiveBinder;->uv:Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRRefractiveBinder$UVs;

    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRRefractiveBinder$UVs;->aoOffset:LJAVARuntime/Vector2;

    iget-object v0, v0, LJAVARuntime/Vector2;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;-><init>(F)V

    const-string v2, "offset"

    invoke-static {p2, v2, v0, v1}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRRefractiveBinder;->B1(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRRefractiveBinder;Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;)LW5/b;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p2, LW5/b;

    new-instance v0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRRefractiveBinder$e$i$b;

    invoke-direct {v0, p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRRefractiveBinder$e$i$b;-><init>(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRRefractiveBinder$e$i;)V

    const-string v1, "Sprite index"

    sget-object v2, LW5/b$a;->SLInt:LW5/b$a;

    invoke-direct {p2, v0, v1, v2}, LW5/b;-><init>(LX5/h;Ljava/lang/String;LW5/b$a;)V

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p1
.end method

.method public get()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRRefractiveBinder$e$i;->b:Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRRefractiveBinder$e;

    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRRefractiveBinder$e;->f:Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRRefractiveBinder;

    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRRefractiveBinder;->ao:LJAVARuntime/Texture;

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

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRRefractiveBinder$e$i;->b:Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRRefractiveBinder$e;

    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRRefractiveBinder$e;->f:Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRRefractiveBinder;

    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRRefractiveBinder;->ao:LJAVARuntime/Texture;

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

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRRefractiveBinder$e$i;->b:Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRRefractiveBinder$e;

    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRRefractiveBinder$e;->f:Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRRefractiveBinder;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRRefractiveBinder;->Y1(Ljava/lang/String;)Lqc/O1;

    move-result-object p1

    return-object p1
.end method

.method public k()V
    .locals 1

    new-instance v0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRRefractiveBinder$e$i$c;

    invoke-direct {v0, p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRRefractiveBinder$e$i$c;-><init>(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRRefractiveBinder$e$i;)V

    invoke-static {v0}, Lc9/a;->I(Ljava/lang/Runnable;)V

    return-void
.end method
