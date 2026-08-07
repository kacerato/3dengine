.class public Lna/q;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:LMb/g;

.field public b:LMb/g;

.field public c:LMb/g;

.field public d:LMb/g;

.field public e:LMb/g;

.field public f:LMb/g;

.field public g:LMb/g;

.field public h:LMb/g;

.field public i:LMb/g;

.field public j:LMb/g;

.field public k:LMb/g;

.field public l:LMb/g;

.field public m:LMb/g;

.field public n:LMb/g;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lna/q;->a:LMb/g;

    iput-object v0, p0, Lna/q;->b:LMb/g;

    iput-object v0, p0, Lna/q;->c:LMb/g;

    iput-object v0, p0, Lna/q;->d:LMb/g;

    iput-object v0, p0, Lna/q;->e:LMb/g;

    iput-object v0, p0, Lna/q;->f:LMb/g;

    iput-object v0, p0, Lna/q;->g:LMb/g;

    iput-object v0, p0, Lna/q;->h:LMb/g;

    iput-object v0, p0, Lna/q;->i:LMb/g;

    iput-object v0, p0, Lna/q;->j:LMb/g;

    iput-object v0, p0, Lna/q;->k:LMb/g;

    iput-object v0, p0, Lna/q;->l:LMb/g;

    iput-object v0, p0, Lna/q;->m:LMb/g;

    iput-object v0, p0, Lna/q;->n:LMb/g;

    return-void
.end method


# virtual methods
.method public a()LMb/g;
    .locals 1

    iget-object v0, p0, Lna/q;->g:LMb/g;

    return-object v0
.end method

.method public b()LMb/g;
    .locals 1

    iget-object v0, p0, Lna/q;->h:LMb/g;

    return-object v0
.end method

.method public c()LMb/g;
    .locals 1

    iget-object v0, p0, Lna/q;->d:LMb/g;

    return-object v0
.end method

.method public d()LMb/g;
    .locals 1

    iget-object v0, p0, Lna/q;->c:LMb/g;

    return-object v0
.end method

.method public e()LMb/g;
    .locals 1

    iget-object v0, p0, Lna/q;->n:LMb/g;

    return-object v0
.end method

.method public f()LMb/g;
    .locals 1

    iget-object v0, p0, Lna/q;->m:LMb/g;

    return-object v0
.end method

.method public g()LMb/g;
    .locals 1

    iget-object v0, p0, Lna/q;->j:LMb/g;

    return-object v0
.end method

.method public h()LMb/g;
    .locals 1

    iget-object v0, p0, Lna/q;->i:LMb/g;

    return-object v0
.end method

.method public i()LMb/g;
    .locals 1

    iget-object v0, p0, Lna/q;->b:LMb/g;

    return-object v0
.end method

.method public j()LMb/g;
    .locals 1

    iget-object v0, p0, Lna/q;->l:LMb/g;

    return-object v0
.end method

.method public k()LMb/g;
    .locals 1

    iget-object v0, p0, Lna/q;->k:LMb/g;

    return-object v0
.end method

.method public l()LMb/g;
    .locals 1

    iget-object v0, p0, Lna/q;->f:LMb/g;

    return-object v0
.end method

.method public m()LMb/g;
    .locals 1

    iget-object v0, p0, Lna/q;->e:LMb/g;

    return-object v0
.end method

.method public n()V
    .locals 5

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;

    sget-object v1, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$a;->Nearest:Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$a;

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1}, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;-><init>(ZLcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$a;)V

    iput-boolean v2, v0, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->genMipmaps:Z

    sget-object v1, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$f;->Clamp:Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$f;

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->G0(Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$f;)Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;

    const-string v1, "@@ASSET@@/Engine/UI/theme/sprite_v2.png"

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->a()Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;

    move-result-object v3

    invoke-static {v1, v3}, LQb/b;->v(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;)LMb/g;

    move-result-object v1

    iput-object v1, p0, Lna/q;->a:LMb/g;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, LMb/g;->z0(Z)V

    const-string v1, "@@ASSET@@/Engine/UI/theme/panel_v2.png"

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->a()Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;

    move-result-object v4

    invoke-static {v1, v4}, LQb/b;->v(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;)LMb/g;

    move-result-object v1

    iput-object v1, p0, Lna/q;->b:LMb/g;

    invoke-virtual {v1, v3}, LMb/g;->z0(Z)V

    const-string v1, "@@ASSET@@/Engine/UI/theme/checkboxOn.png"

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->a()Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;

    move-result-object v4

    invoke-static {v1, v4}, LQb/b;->v(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;)LMb/g;

    move-result-object v1

    iput-object v1, p0, Lna/q;->c:LMb/g;

    invoke-virtual {v1, v3}, LMb/g;->z0(Z)V

    const-string v1, "@@ASSET@@/Engine/UI/theme/checkboxOff.png"

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->a()Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;

    move-result-object v4

    invoke-static {v1, v4}, LQb/b;->v(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;)LMb/g;

    move-result-object v1

    iput-object v1, p0, Lna/q;->d:LMb/g;

    invoke-virtual {v1, v3}, LMb/g;->z0(Z)V

    const-string v1, "@@ASSET@@/Engine/UI/theme/radioBtnOn.png"

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->a()Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;

    move-result-object v4

    invoke-static {v1, v4}, LQb/b;->v(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;)LMb/g;

    move-result-object v1

    iput-object v1, p0, Lna/q;->e:LMb/g;

    invoke-virtual {v1, v2}, LMb/g;->z0(Z)V

    const-string v1, "@@ASSET@@/Engine/UI/theme/radioBtnOff.png"

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->a()Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;

    move-result-object v4

    invoke-static {v1, v4}, LQb/b;->v(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;)LMb/g;

    move-result-object v1

    iput-object v1, p0, Lna/q;->f:LMb/g;

    invoke-virtual {v1, v2}, LMb/g;->z0(Z)V

    const-string v1, "@@ASSET@@/Engine/UI/theme/buttonNormal_v2.png"

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->a()Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;

    move-result-object v2

    invoke-static {v1, v2}, LQb/b;->v(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;)LMb/g;

    move-result-object v1

    iput-object v1, p0, Lna/q;->g:LMb/g;

    invoke-virtual {v1, v3}, LMb/g;->z0(Z)V

    const-string v1, "@@ASSET@@/Engine/UI/theme/buttonPressed_v2.png"

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->a()Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;

    move-result-object v2

    invoke-static {v1, v2}, LQb/b;->v(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;)LMb/g;

    move-result-object v1

    iput-object v1, p0, Lna/q;->h:LMb/g;

    invoke-virtual {v1, v3}, LMb/g;->z0(Z)V

    const-string v1, "@@ASSET@@/Engine/UI/theme/joystick_handle_v3.png"

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->a()Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;

    move-result-object v2

    invoke-static {v1, v2}, LQb/b;->v(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;)LMb/g;

    move-result-object v1

    iput-object v1, p0, Lna/q;->i:LMb/g;

    const-string v1, "@@ASSET@@/Engine/UI/theme/joystick_background_v3.png"

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->a()Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;

    move-result-object v2

    invoke-static {v1, v2}, LQb/b;->v(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;)LMb/g;

    move-result-object v1

    iput-object v1, p0, Lna/q;->j:LMb/g;

    const-string v1, "@@ASSET@@/Engine/UI/theme/progressbar_handler_v2.png"

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->a()Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;

    move-result-object v2

    invoke-static {v1, v2}, LQb/b;->v(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;)LMb/g;

    move-result-object v1

    iput-object v1, p0, Lna/q;->k:LMb/g;

    invoke-virtual {v1, v3}, LMb/g;->z0(Z)V

    const-string v1, "@@ASSET@@/Engine/UI/theme/progressbar_background_v2.png"

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->a()Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;

    move-result-object v2

    invoke-static {v1, v2}, LQb/b;->v(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;)LMb/g;

    move-result-object v1

    iput-object v1, p0, Lna/q;->l:LMb/g;

    invoke-virtual {v1, v3}, LMb/g;->z0(Z)V

    const-string v1, "@@ASSET@@/Engine/UI/theme/driving_wheel.png"

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->a()Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;

    move-result-object v2

    invoke-static {v1, v2}, LQb/b;->v(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;)LMb/g;

    move-result-object v1

    iput-object v1, p0, Lna/q;->m:LMb/g;

    const-string v1, "@@ASSET@@/Engine/UI/theme/circular_progress_bar_handle.png"

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->a()Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;

    move-result-object v0

    invoke-static {v1, v0}, LQb/b;->v(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;)LMb/g;

    move-result-object v0

    iput-object v0, p0, Lna/q;->n:LMb/g;

    return-void
.end method
