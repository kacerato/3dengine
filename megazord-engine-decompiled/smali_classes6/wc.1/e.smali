.class public Lwc/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lwc/l;


# instance fields
.field public final a:Lvc/b;

.field public final b:Ljava/lang/String;

.field public final c:Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;

.field public d:Z

.field public e:Lcom/itsmagic/engine/Engines/Engine/Material/Material;

.field public final f:Lvc/f;

.field public volatile g:Lxc/i;

.field public volatile h:Z

.field public volatile i:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;Lvc/b;Lcom/itsmagic/engine/Engines/Engine/Material/Material;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "shaderName",
            "shaderBinder",
            "forwardPass",
            "material"
        }
    .end annotation

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 1
    invoke-direct/range {v0 .. v5}, Lwc/e;-><init>(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;Lvc/b;Lcom/itsmagic/engine/Engines/Engine/Material/Material;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;Lvc/b;Lcom/itsmagic/engine/Engines/Engine/Material/Material;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "shaderName",
            "shaderBinder",
            "forwardPass",
            "material",
            "autoBuildVariance"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lwc/e;->d:Z

    .line 4
    new-instance v0, Lwc/c;

    invoke-direct {v0, p0}, Lwc/c;-><init>(Lwc/e;)V

    iput-object v0, p0, Lwc/e;->f:Lvc/f;

    if-eqz p2, :cond_3

    if-eqz p1, :cond_2

    .line 5
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    if-eqz p3, :cond_1

    .line 6
    iput-object p1, p0, Lwc/e;->b:Ljava/lang/String;

    .line 7
    iput-object p2, p0, Lwc/e;->c:Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;

    .line 8
    iput-object p3, p0, Lwc/e;->a:Lvc/b;

    .line 9
    iput-object p4, p0, Lwc/e;->e:Lcom/itsmagic/engine/Engines/Engine/Material/Material;

    .line 10
    invoke-virtual {p2, v0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;->s0(Lvc/f;)V

    if-eqz p5, :cond_0

    .line 11
    new-instance p1, Lwc/d;

    invoke-direct {p1, p0}, Lwc/d;-><init>(Lwc/e;)V

    invoke-static {p1}, Lc9/a;->I(Ljava/lang/Runnable;)V

    :cond_0
    return-void

    .line 12
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "forwardPass cant be null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 13
    :cond_2
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "shadername can`t empty or null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 14
    :cond_3
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "shaderBinder cant be null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static synthetic m(Lwc/e;)V
    .locals 0

    invoke-virtual {p0}, Lwc/e;->u()V

    return-void
.end method

.method public static synthetic n(Lwc/e;)V
    .locals 0

    invoke-virtual {p0}, Lwc/e;->u()V

    return-void
.end method

.method public static synthetic o(Lwc/e;)V
    .locals 0

    invoke-virtual {p0}, Lwc/e;->t()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Lwc/e;->c:Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;->W()V

    :cond_0
    return-void
.end method

.method public b()Z
    .locals 1

    iget-object v0, p0, Lwc/e;->c:Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;->R()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public c(Lcom/itsmagic/engine/Engines/Engine/Material/Material;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "material",
            "serializableShaderEntries"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/itsmagic/engine/Engines/Engine/Material/Material;",
            "Ljava/util/List<",
            "Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lwc/e;->e:Lcom/itsmagic/engine/Engines/Engine/Material/Material;

    iget-object p1, p0, Lwc/e;->c:Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;->s0(Lvc/f;)V

    iget-object p1, p0, Lwc/e;->c:Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;

    invoke-virtual {p1, p2}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;->a0(Ljava/util/List;)V

    iget-object p1, p0, Lwc/e;->c:Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;->n0(Z)V

    iget-object p1, p0, Lwc/e;->c:Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;

    iget-object p2, p0, Lwc/e;->f:Lvc/f;

    invoke-virtual {p1, p2}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;->s0(Lvc/f;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lwc/e;->d:Z

    invoke-virtual {p0}, Lwc/e;->u()V

    return-void
.end method

.method public bridge synthetic copy()Lwc/l;
    .locals 1

    invoke-virtual {p0}, Lwc/e;->s()Lwc/e;

    move-result-object v0

    return-object v0
.end method

.method public d(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "serializedShaderEntries"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/SerializableShaderEntry;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lwc/e;->c:Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;->b0(Ljava/util/List;)V

    return-void
.end method

.method public e()Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;
    .locals 1

    iget-object v0, p0, Lwc/e;->a:Lvc/b;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-virtual {v0}, Lvc/b;->e()Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;

    move-result-object v0

    return-object v0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lwc/e;->a:Lvc/b;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-virtual {v0}, Lvc/b;->h()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public g()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lwc/e;->b:Ljava/lang/String;

    return-object v0
.end method

.method public h()V
    .locals 1

    invoke-virtual {p0}, Lwc/e;->r()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lwc/e;->w()V

    :cond_0
    invoke-virtual {p0}, Lwc/e;->q()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lwc/e;->v()V

    :cond_1
    return-void
.end method

.method public i()V
    .locals 1

    iget-object v0, p0, Lwc/e;->c:Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;->w0()V

    :cond_0
    return-void
.end method

.method public j(Lva/b;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "event"
        }
    .end annotation

    instance-of v0, p1, LIc/g;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lwc/e;->a:Lvc/b;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lvc/b;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lwc/e;->i:Z

    :cond_0
    iget-object v0, p0, Lwc/e;->c:Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;->o(Lva/b;)V

    :cond_1
    return-void
.end method

.method public k()Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;",
            ">()TT;"
        }
    .end annotation

    iget-object v0, p0, Lwc/e;->c:Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;

    return-object v0
.end method

.method public l()V
    .locals 1

    iget-object v0, p0, Lwc/e;->c:Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;->V()V

    :cond_0
    return-void
.end method

.method public final p()V
    .locals 3

    iget-object v0, p0, Lwc/e;->c:Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;->C()LGc/b;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lwc/e;->a:Lvc/b;

    invoke-virtual {v1}, Lvc/b;->c()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, LGc/b;->m(J)V

    :cond_0
    iget-object v0, p0, Lwc/e;->c:Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;

    iget-object v1, p0, Lwc/e;->a:Lvc/b;

    invoke-virtual {v1}, Lvc/b;->e()Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;

    move-result-object v1

    iget-object v2, p0, Lwc/e;->e:Lcom/itsmagic/engine/Engines/Engine/Material/Material;

    invoke-virtual {v0, v1, v2}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;->g0(Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;Lcom/itsmagic/engine/Engines/Engine/Material/Material;)V

    return-void
.end method

.method public final q()Z
    .locals 3

    iget-boolean v0, p0, Lwc/e;->i:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iput-boolean v1, p0, Lwc/e;->i:Z

    iget-object v0, p0, Lwc/e;->a:Lvc/b;

    invoke-virtual {v0}, Lvc/b;->j()Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    iget-object v0, p0, Lwc/e;->a:Lvc/b;

    invoke-virtual {v0}, Lvc/b;->g()Lxc/i;

    move-result-object v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lwc/e;->a:Lvc/b;

    invoke-virtual {v0}, Lvc/b;->d()Lxc/i;

    move-result-object v0

    :cond_2
    if-nez v0, :cond_3

    return v1

    :cond_3
    iget-object v2, p0, Lwc/e;->a:Lvc/b;

    invoke-virtual {v2, v0}, Lvc/b;->l(Lxc/i;)Z

    move-result v0

    iget-object v2, p0, Lwc/e;->a:Lvc/b;

    invoke-virtual {v2}, Lvc/b;->h()Ljava/lang/String;

    move-result-object v2

    if-eqz v0, :cond_5

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_4
    const/4 v1, 0x1

    :cond_5
    return v1
.end method

.method public r()Z
    .locals 3

    iget-object v0, p0, Lwc/e;->g:Lxc/i;

    iget-boolean v1, p0, Lwc/e;->h:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lwc/e;->a:Lvc/b;

    invoke-virtual {v1, v0}, Lvc/b;->k(Lxc/i;)V

    iget-object v0, p0, Lwc/e;->a:Lvc/b;

    invoke-virtual {v0}, Lvc/b;->h()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    iput-object v1, p0, Lwc/e;->g:Lxc/i;

    iput-boolean v2, p0, Lwc/e;->h:Z

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v2, 0x1

    :cond_2
    :goto_0
    return v2
.end method

.method public s()Lwc/e;
    .locals 5

    new-instance v0, Lwc/e;

    iget-object v1, p0, Lwc/e;->b:Ljava/lang/String;

    iget-object v2, p0, Lwc/e;->c:Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;

    invoke-static {v2}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;->m(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;)Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;

    move-result-object v2

    iget-object v3, p0, Lwc/e;->a:Lvc/b;

    invoke-static {v3}, Lvc/b;->b(Lvc/b;)Lvc/b;

    move-result-object v3

    iget-object v4, p0, Lwc/e;->e:Lcom/itsmagic/engine/Engines/Engine/Material/Material;

    invoke-direct {v0, v1, v2, v3, v4}, Lwc/e;-><init>(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;Lvc/b;Lcom/itsmagic/engine/Engines/Engine/Material/Material;)V

    return-object v0
.end method

.method public final t()V
    .locals 3

    iget-object v0, p0, Lwc/e;->a:Lvc/b;

    invoke-virtual {v0}, Lvc/b;->g()Lxc/i;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lwc/e;->a:Lvc/b;

    invoke-virtual {v0}, Lvc/b;->d()Lxc/i;

    move-result-object v0

    :cond_0
    if-eqz v0, :cond_1

    iget-object v1, p0, Lwc/e;->a:Lvc/b;

    iget-object v2, p0, Lwc/e;->e:Lcom/itsmagic/engine/Engines/Engine/Material/Material;

    iget-object v2, v2, Lcom/itsmagic/engine/Engines/Engine/Material/Material;->e:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lvc/b;->n(Lxc/i;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lwc/e;->p()V

    iget-object v0, p0, Lwc/e;->e:Lcom/itsmagic/engine/Engines/Engine/Material/Material;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Material/Material;->a0()V

    :cond_1
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lwc/e;->a:Lvc/b;

    const-string v1, ""

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "Deferred:\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_0
    return-object v1
.end method

.method public final u()V
    .locals 4

    iget-object v0, p0, Lwc/e;->a:Lvc/b;

    invoke-virtual {v0}, Lvc/b;->g()Lxc/i;

    move-result-object v0

    if-eqz v0, :cond_0

    move-object v1, v0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lwc/e;->a:Lvc/b;

    invoke-virtual {v1}, Lvc/b;->d()Lxc/i;

    move-result-object v1

    :goto_0
    iget-object v2, p0, Lwc/e;->c:Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;

    iget-object v3, p0, Lwc/e;->a:Lvc/b;

    invoke-virtual {v2, v1, v3}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;->x0(Lxc/i;Lvc/b;)Lxc/i;

    move-result-object v2

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    move-object v1, v2

    :goto_1
    const/4 v2, 0x1

    if-eqz v1, :cond_2

    iget-object v3, p0, Lwc/e;->a:Lvc/b;

    invoke-virtual {v3, v1}, Lvc/b;->i(Lxc/i;)Z

    move-result v3

    if-nez v3, :cond_2

    iput-object v1, p0, Lwc/e;->g:Lxc/i;

    iput-boolean v2, p0, Lwc/e;->h:Z

    return-void

    :cond_2
    if-eqz v0, :cond_3

    if-eq v1, v0, :cond_4

    :cond_3
    if-eqz v1, :cond_4

    iget-object v0, p0, Lwc/e;->a:Lvc/b;

    iget-object v3, p0, Lwc/e;->e:Lcom/itsmagic/engine/Engines/Engine/Material/Material;

    iget-object v3, v3, Lcom/itsmagic/engine/Engines/Engine/Material/Material;->e:Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Lvc/b;->n(Lxc/i;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    iput-boolean v2, p0, Lwc/e;->d:Z

    :cond_4
    iget-object v0, p0, Lwc/e;->a:Lvc/b;

    iget-object v1, p0, Lwc/e;->e:Lcom/itsmagic/engine/Engines/Engine/Material/Material;

    iget-object v1, v1, Lcom/itsmagic/engine/Engines/Engine/Material/Material;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lvc/b;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    iput-boolean v2, p0, Lwc/e;->d:Z

    :cond_5
    iget-boolean v0, p0, Lwc/e;->d:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Lwc/e;->a:Lvc/b;

    invoke-virtual {v0}, Lvc/b;->e()Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Lwc/e;->p()V

    iget-object v0, p0, Lwc/e;->e:Lcom/itsmagic/engine/Engines/Engine/Material/Material;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Material/Material;->a0()V

    :cond_6
    const/4 v0, 0x0

    iput-object v0, p0, Lwc/e;->g:Lxc/i;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lwc/e;->h:Z

    return-void
.end method

.method public final v()V
    .locals 1

    new-instance v0, Lwc/b;

    invoke-direct {v0, p0}, Lwc/b;-><init>(Lwc/e;)V

    invoke-static {v0}, Lc9/a;->A(Ljava/lang/Runnable;)V

    return-void
.end method

.method public w()V
    .locals 1

    new-instance v0, Lwc/d;

    invoke-direct {v0, p0}, Lwc/d;-><init>(Lwc/e;)V

    invoke-static {v0}, Lc9/a;->A(Ljava/lang/Runnable;)V

    return-void
.end method
