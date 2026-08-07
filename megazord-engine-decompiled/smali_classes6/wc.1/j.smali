.class public final synthetic Lwc/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LZ5/c$u0;


# instance fields
.field public final synthetic a:Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Material/CustomShaderBinder;

.field public final synthetic b:Loc/b;

.field public final synthetic c:Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder$b;


# direct methods
.method public synthetic constructor <init>(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Material/CustomShaderBinder;Loc/b;Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder$b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lwc/j;->a:Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Material/CustomShaderBinder;

    iput-object p2, p0, Lwc/j;->b:Loc/b;

    iput-object p3, p0, Lwc/j;->c:Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder$b;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    iget-object v0, p0, Lwc/j;->a:Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Material/CustomShaderBinder;

    iget-object v1, p0, Lwc/j;->b:Loc/b;

    iget-object v2, p0, Lwc/j;->c:Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder$b;

    invoke-static {v0, v1, v2}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Material/CustomShaderBinder;->A0(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Material/CustomShaderBinder;Loc/b;Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder$b;)V

    return-void
.end method
