.class public Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRRefractiveBinder$i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LZ5/c$o0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRRefractiveBinder;->H(Landroid/content/Context;Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder$b;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRRefractiveBinder;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRRefractiveBinder;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRRefractiveBinder$i;->a:Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRRefractiveBinder;

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
            "entries"
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

    new-instance v1, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRRefractiveBinder$i$a;

    invoke-direct {v1, p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRRefractiveBinder$i$a;-><init>(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRRefractiveBinder$i;)V

    sget-object v2, LW5/b$a;->SLFloat:LW5/b$a;

    const-string v3, "Normal Strength"

    invoke-direct {v0, v1, v3, v2}, LW5/b;-><init>(LX5/h;Ljava/lang/String;LW5/b$a;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRRefractiveBinder$i;->a:Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRRefractiveBinder;

    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRRefractiveBinder;->uvSource:Lvc/e;

    new-instance v1, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRRefractiveBinder$i$b;

    invoke-direct {v1, p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRRefractiveBinder$i$b;-><init>(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRRefractiveBinder$i;)V

    const-string v3, "UV Source"

    const-class v4, Lvc/e;

    invoke-static {v3, v4, v0, v1}, LZ5/c;->i(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;LZ5/c$r0;)LW5/b;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, LW5/b;

    new-instance v1, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRRefractiveBinder$i$c;

    invoke-direct {v1, p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRRefractiveBinder$i$c;-><init>(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRRefractiveBinder$i;)V

    const-string v3, "Material ID"

    sget-object v4, LW5/b$a;->SLInt:LW5/b$a;

    invoke-direct {v0, v1, v3, v4}, LW5/b;-><init>(LX5/h;Ljava/lang/String;LW5/b$a;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, LW5/b;

    new-instance v1, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRRefractiveBinder$i$d;

    invoke-direct {v1, p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRRefractiveBinder$i$d;-><init>(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRRefractiveBinder$i;)V

    const-string v3, "World uv size"

    invoke-direct {v0, v1, v3, v2}, LW5/b;-><init>(LX5/h;Ljava/lang/String;LW5/b$a;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, LW5/b;

    new-instance v1, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRRefractiveBinder$i$e;

    invoke-direct {v1, p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRRefractiveBinder$i$e;-><init>(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRRefractiveBinder$i;)V

    sget-object v2, LW5/b$a;->SLBoolean:LW5/b$a;

    const-string v3, "Double sided"

    invoke-direct {v0, v1, v3, v2}, LW5/b;-><init>(LX5/h;Ljava/lang/String;LW5/b$a;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, LW5/b;

    new-instance v1, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRRefractiveBinder$i$f;

    invoke-direct {v1, p0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRRefractiveBinder$i$f;-><init>(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitPBRRefractiveBinder$i;)V

    const-string v3, "Draw in front"

    invoke-direct {v0, v1, v3, v2}, LW5/b;-><init>(LX5/h;Ljava/lang/String;LW5/b$a;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p1
.end method
