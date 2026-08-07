.class public Lwc/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lwc/l;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Custom/MaterialShader;

.field public c:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;

.field public d:Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Material/CustomShaderBinder;

.field public e:Z

.field public f:Lcom/itsmagic/engine/Engines/Engine/Material/Material;

.field public g:Z

.field public final h:Lcom/itsmagic/engine/Engines/Engine/Modules/UpdateModule;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Engines/Engine/Material/Material;Ljava/lang/String;Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Custom/MaterialShader;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "material",
            "shaderName",
            "materialShader"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lwc/a;->e:Z

    new-instance v0, Lwc/a$a;

    invoke-direct {v0, p0}, Lwc/a$a;-><init>(Lwc/a;)V

    iput-object v0, p0, Lwc/a;->h:Lcom/itsmagic/engine/Engines/Engine/Modules/UpdateModule;

    iput-object p2, p0, Lwc/a;->a:Ljava/lang/String;

    iput-object p3, p0, Lwc/a;->b:Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Custom/MaterialShader;

    iput-object p1, p0, Lwc/a;->f:Lcom/itsmagic/engine/Engines/Engine/Material/Material;

    invoke-virtual {p0}, Lwc/a;->n()V

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Modules/UpdateModule;->a()V

    return-void
.end method

.method public static synthetic m(Lwc/a;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lwc/a;->a:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Lwc/a;->d:Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Material/CustomShaderBinder;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;->W()V

    :cond_0
    iget-object v0, p0, Lwc/a;->h:Lcom/itsmagic/engine/Engines/Engine/Modules/UpdateModule;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Modules/UpdateModule;->b()V

    return-void
.end method

.method public b()Z
    .locals 1

    iget-object v0, p0, Lwc/a;->d:Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Material/CustomShaderBinder;

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

    iget-object v0, p0, Lwc/a;->d:Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Material/CustomShaderBinder;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p2}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Material/CustomShaderBinder;->a0(Ljava/util/List;)V

    iget-object p2, p0, Lwc/a;->d:Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Material/CustomShaderBinder;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;->n0(Z)V

    :cond_0
    iput-object p1, p0, Lwc/a;->f:Lcom/itsmagic/engine/Engines/Engine/Material/Material;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lwc/a;->e:Z

    return-void
.end method

.method public copy()Lwc/l;
    .locals 4

    new-instance v0, Lwc/a;

    iget-object v1, p0, Lwc/a;->f:Lcom/itsmagic/engine/Engines/Engine/Material/Material;

    iget-object v2, p0, Lwc/a;->a:Ljava/lang/String;

    iget-object v3, p0, Lwc/a;->b:Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Custom/MaterialShader;

    invoke-direct {v0, v1, v2, v3}, Lwc/a;-><init>(Lcom/itsmagic/engine/Engines/Engine/Material/Material;Ljava/lang/String;Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Custom/MaterialShader;)V

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

    iget-object v0, p0, Lwc/a;->d:Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Material/CustomShaderBinder;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Material/CustomShaderBinder;->b0(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method public e()Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;
    .locals 1

    invoke-virtual {p0}, Lwc/a;->n()V

    iget-object v0, p0, Lwc/a;->c:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;

    return-object v0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lwc/a;->b:Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Custom/MaterialShader;

    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Custom/MaterialShader;->b:Ljava/lang/String;

    return-object v0
.end method

.method public g()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lwc/a;->a:Ljava/lang/String;

    return-object v0
.end method

.method public h()V
    .locals 0

    return-void
.end method

.method public i()V
    .locals 1

    iget-object v0, p0, Lwc/a;->d:Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Material/CustomShaderBinder;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;->w0()V

    :cond_0
    return-void
.end method

.method public j(Lva/b;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "event"
        }
    .end annotation

    instance-of v0, p1, LIc/g;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lwc/a;->d:Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Material/CustomShaderBinder;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lwc/a;->f:Lcom/itsmagic/engine/Engines/Engine/Material/Material;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/Material/Material;->M()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Material/CustomShaderBinder;->b0(Ljava/util/List;)V

    iget-object v0, p0, Lwc/a;->d:Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Material/CustomShaderBinder;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;->R()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lwc/a;->f:Lcom/itsmagic/engine/Engines/Engine/Material/Material;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Material/Material;->i0()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lwc/a;->c:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;

    iput-object v0, p0, Lwc/a;->d:Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Material/CustomShaderBinder;

    :cond_1
    iget-object v0, p0, Lwc/a;->d:Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Material/CustomShaderBinder;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;->o(Lva/b;)V

    :cond_2
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

    iget-object v0, p0, Lwc/a;->d:Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Material/CustomShaderBinder;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :cond_0
    return-object v0
.end method

.method public l()V
    .locals 1

    iget-object v0, p0, Lwc/a;->d:Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Material/CustomShaderBinder;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;->V()V

    :cond_0
    return-void
.end method

.method public final n()V
    .locals 3

    iget-object v0, p0, Lwc/a;->c:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lwc/a;->d:Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Material/CustomShaderBinder;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lwc/a;->b:Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Custom/MaterialShader;

    if-eqz v0, :cond_4

    iget-boolean v1, v0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Custom/MaterialShader;->a:Z

    if-nez v1, :cond_4

    iget-object v1, v0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Custom/MaterialShader;->c:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterialTemplate;

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Custom/MaterialShader;->f:Ljava/util/List;

    invoke-virtual {v1, v0}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterialTemplate;->s(Ljava/util/List;)Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;

    move-result-object v0

    iput-object v0, p0, Lwc/a;->c:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;

    new-instance v0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Material/CustomShaderBinder;

    iget-object v1, p0, Lwc/a;->b:Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Custom/MaterialShader;

    invoke-direct {v0, v1}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Material/CustomShaderBinder;-><init>(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Custom/MaterialShader;)V

    iput-object v0, p0, Lwc/a;->d:Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Material/CustomShaderBinder;

    iget-object v1, p0, Lwc/a;->f:Lcom/itsmagic/engine/Engines/Engine/Material/Material;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/Material/Material;->M()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Material/CustomShaderBinder;->a0(Ljava/util/List;)V

    iget-object v0, p0, Lwc/a;->d:Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Material/CustomShaderBinder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;->n0(Z)V

    :cond_2
    iget-object v0, p0, Lwc/a;->d:Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Material/CustomShaderBinder;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;->C()LGc/b;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lwc/a;->d:Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Material/CustomShaderBinder;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;->C()LGc/b;

    move-result-object v0

    iget-object v1, p0, Lwc/a;->b:Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Custom/MaterialShader;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Custom/MaterialShader;->a()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, LGc/b;->m(J)V

    :cond_3
    iget-object v0, p0, Lwc/a;->d:Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Material/CustomShaderBinder;

    iget-object v1, p0, Lwc/a;->c:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;

    iget-object v2, p0, Lwc/a;->f:Lcom/itsmagic/engine/Engines/Engine/Material/Material;

    invoke-virtual {v0, v1, v2}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Material/CustomShaderBinder;->g0(Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;Lcom/itsmagic/engine/Engines/Engine/Material/Material;)V

    iget-object v0, p0, Lwc/a;->f:Lcom/itsmagic/engine/Engines/Engine/Material/Material;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Material/Material;->a0()V

    :cond_4
    :goto_0
    return-void
.end method

.method public o()V
    .locals 4

    invoke-virtual {p0}, Lwc/a;->n()V

    iget-object v0, p0, Lwc/a;->d:Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Material/CustomShaderBinder;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lwc/a;->f:Lcom/itsmagic/engine/Engines/Engine/Material/Material;

    const/4 v2, 0x0

    iget-object v3, p0, Lwc/a;->c:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;

    invoke-virtual {v0, v1, v2, v3}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Material/CustomShaderBinder;->Y0(Lcom/itsmagic/engine/Engines/Engine/Material/Material;Lxc/e;Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;)V

    :cond_0
    return-void
.end method
