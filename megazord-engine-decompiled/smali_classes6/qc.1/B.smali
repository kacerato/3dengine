.class public Lqc/B;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lvc/d;
    .locals 1

    const-string v0, "Lit/ORM"

    invoke-static {v0}, Lqc/B;->b(Ljava/lang/String;)Lvc/d;

    move-result-object v0

    return-object v0
.end method

.method public static b(Ljava/lang/String;)Lvc/d;
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "name"
        }
    .end annotation

    new-instance v0, Lvc/d;

    new-instance v1, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitORMBinder;

    invoke-direct {v1}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Lit/LitORMBinder;-><init>()V

    invoke-direct {v0, p0, v1}, Lvc/d;-><init>(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/Generic/ShaderBinder;)V

    const-string p0, "PBR/easy_lit_orm_frag.glsl"

    invoke-virtual {v0, p0}, Lvc/d;->r(Ljava/lang/String;)Lvc/d;

    const-string p0, "PBR/easy_lit_orm_vertex.glsl"

    invoke-virtual {v0, p0}, Lvc/d;->u(Ljava/lang/String;)Lvc/d;

    new-instance p0, Lxc/i;

    sget-object v1, Lcom/google/android/filament/filamat/MaterialBuilder$a;->OPAQUE:Lcom/google/android/filament/filamat/MaterialBuilder$a;

    sget-object v2, Lcom/google/android/filament/filamat/MaterialBuilder$c;->BACK:Lcom/google/android/filament/filamat/MaterialBuilder$c;

    const/4 v3, 0x0

    const/high16 v4, 0x3f000000    # 0.5f

    invoke-direct {p0, v1, v4, v2, v3}, Lxc/i;-><init>(Lcom/google/android/filament/filamat/MaterialBuilder$a;FLcom/google/android/filament/filamat/MaterialBuilder$c;Z)V

    invoke-virtual {v0, p0}, Lvc/d;->w(Lxc/i;)V

    new-instance p0, Lqc/B$a;

    invoke-direct {p0}, Lqc/B$a;-><init>()V

    invoke-virtual {v0, p0}, Lvc/d;->v(Lxc/c;)V

    sget-object p0, Lcom/google/android/filament/filamat/MaterialBuilder$m;->SAMPLER_2D:Lcom/google/android/filament/filamat/MaterialBuilder$m;

    sget-object v1, Lcom/google/android/filament/filamat/MaterialBuilder$l;->FLOAT:Lcom/google/android/filament/filamat/MaterialBuilder$l;

    sget-object v2, Lcom/google/android/filament/filamat/MaterialBuilder$g;->HIGH:Lcom/google/android/filament/filamat/MaterialBuilder$g;

    const-string v3, "albedo"

    invoke-virtual {v0, p0, v1, v2, v3}, Lvc/d;->a(Lcom/google/android/filament/filamat/MaterialBuilder$m;Lcom/google/android/filament/filamat/MaterialBuilder$l;Lcom/google/android/filament/filamat/MaterialBuilder$g;Ljava/lang/String;)V

    const-string v3, "opacity"

    invoke-virtual {v0, p0, v1, v2, v3}, Lvc/d;->a(Lcom/google/android/filament/filamat/MaterialBuilder$m;Lcom/google/android/filament/filamat/MaterialBuilder$l;Lcom/google/android/filament/filamat/MaterialBuilder$g;Ljava/lang/String;)V

    sget-object v3, Lcom/google/android/filament/filamat/MaterialBuilder$r;->FLOAT4:Lcom/google/android/filament/filamat/MaterialBuilder$r;

    sget-object v4, Lcom/google/android/filament/filamat/MaterialBuilder$g;->LOW:Lcom/google/android/filament/filamat/MaterialBuilder$g;

    const-string v5, "baseColor"

    invoke-virtual {v0, v3, v4, v5}, Lvc/d;->c(Lcom/google/android/filament/filamat/MaterialBuilder$r;Lcom/google/android/filament/filamat/MaterialBuilder$g;Ljava/lang/String;)V

    const-string v5, "emissive"

    invoke-virtual {v0, p0, v1, v2, v5}, Lvc/d;->a(Lcom/google/android/filament/filamat/MaterialBuilder$m;Lcom/google/android/filament/filamat/MaterialBuilder$l;Lcom/google/android/filament/filamat/MaterialBuilder$g;Ljava/lang/String;)V

    invoke-virtual {v0, v3, v4, v5}, Lvc/d;->c(Lcom/google/android/filament/filamat/MaterialBuilder$r;Lcom/google/android/filament/filamat/MaterialBuilder$g;Ljava/lang/String;)V

    sget-object v3, Lcom/google/android/filament/filamat/MaterialBuilder$r;->FLOAT:Lcom/google/android/filament/filamat/MaterialBuilder$r;

    const-string v5, "emissiveNits"

    invoke-virtual {v0, v3, v4, v5}, Lvc/d;->c(Lcom/google/android/filament/filamat/MaterialBuilder$r;Lcom/google/android/filament/filamat/MaterialBuilder$g;Ljava/lang/String;)V

    const-string v5, "normalMap"

    invoke-virtual {v0, p0, v1, v2, v5}, Lvc/d;->a(Lcom/google/android/filament/filamat/MaterialBuilder$m;Lcom/google/android/filament/filamat/MaterialBuilder$l;Lcom/google/android/filament/filamat/MaterialBuilder$g;Ljava/lang/String;)V

    sget-object v5, Lcom/google/android/filament/filamat/MaterialBuilder$g;->MEDIUM:Lcom/google/android/filament/filamat/MaterialBuilder$g;

    const-string v6, "normalStrength"

    invoke-virtual {v0, v3, v5, v6}, Lvc/d;->c(Lcom/google/android/filament/filamat/MaterialBuilder$r;Lcom/google/android/filament/filamat/MaterialBuilder$g;Ljava/lang/String;)V

    const-string v6, "ormMap"

    invoke-virtual {v0, p0, v1, v2, v6}, Lvc/d;->a(Lcom/google/android/filament/filamat/MaterialBuilder$m;Lcom/google/android/filament/filamat/MaterialBuilder$l;Lcom/google/android/filament/filamat/MaterialBuilder$g;Ljava/lang/String;)V

    const-string v6, "heightMap"

    invoke-virtual {v0, p0, v1, v2, v6}, Lvc/d;->a(Lcom/google/android/filament/filamat/MaterialBuilder$m;Lcom/google/android/filament/filamat/MaterialBuilder$l;Lcom/google/android/filament/filamat/MaterialBuilder$g;Ljava/lang/String;)V

    const-string p0, "heightIntensity"

    invoke-virtual {v0, v3, v5, p0}, Lvc/d;->c(Lcom/google/android/filament/filamat/MaterialBuilder$r;Lcom/google/android/filament/filamat/MaterialBuilder$g;Ljava/lang/String;)V

    const-string p0, "heightNormalStrength"

    invoke-virtual {v0, v3, v5, p0}, Lvc/d;->c(Lcom/google/android/filament/filamat/MaterialBuilder$r;Lcom/google/android/filament/filamat/MaterialBuilder$g;Ljava/lang/String;)V

    const-string p0, "heightMinLayers"

    invoke-virtual {v0, v3, v4, p0}, Lvc/d;->c(Lcom/google/android/filament/filamat/MaterialBuilder$r;Lcom/google/android/filament/filamat/MaterialBuilder$g;Ljava/lang/String;)V

    const-string p0, "heightMaxLayers"

    invoke-virtual {v0, v3, v4, p0}, Lvc/d;->c(Lcom/google/android/filament/filamat/MaterialBuilder$r;Lcom/google/android/filament/filamat/MaterialBuilder$g;Ljava/lang/String;)V

    sget-object p0, Lcom/google/android/filament/filamat/MaterialBuilder$r;->FLOAT2:Lcom/google/android/filament/filamat/MaterialBuilder$r;

    const-string v1, "albedoTilling"

    invoke-virtual {v0, p0, v2, v1}, Lvc/d;->c(Lcom/google/android/filament/filamat/MaterialBuilder$r;Lcom/google/android/filament/filamat/MaterialBuilder$g;Ljava/lang/String;)V

    const-string v1, "albedoOffset"

    invoke-virtual {v0, p0, v2, v1}, Lvc/d;->c(Lcom/google/android/filament/filamat/MaterialBuilder$r;Lcom/google/android/filament/filamat/MaterialBuilder$g;Ljava/lang/String;)V

    const-string v1, "normalTilling"

    invoke-virtual {v0, p0, v2, v1}, Lvc/d;->c(Lcom/google/android/filament/filamat/MaterialBuilder$r;Lcom/google/android/filament/filamat/MaterialBuilder$g;Ljava/lang/String;)V

    const-string v1, "normalOffset"

    invoke-virtual {v0, p0, v2, v1}, Lvc/d;->c(Lcom/google/android/filament/filamat/MaterialBuilder$r;Lcom/google/android/filament/filamat/MaterialBuilder$g;Ljava/lang/String;)V

    const-string v1, "ormTilling"

    invoke-virtual {v0, p0, v2, v1}, Lvc/d;->c(Lcom/google/android/filament/filamat/MaterialBuilder$r;Lcom/google/android/filament/filamat/MaterialBuilder$g;Ljava/lang/String;)V

    const-string v1, "ormOffset"

    invoke-virtual {v0, p0, v2, v1}, Lvc/d;->c(Lcom/google/android/filament/filamat/MaterialBuilder$r;Lcom/google/android/filament/filamat/MaterialBuilder$g;Ljava/lang/String;)V

    const-string v1, "heightTilling"

    invoke-virtual {v0, p0, v2, v1}, Lvc/d;->c(Lcom/google/android/filament/filamat/MaterialBuilder$r;Lcom/google/android/filament/filamat/MaterialBuilder$g;Ljava/lang/String;)V

    const-string v1, "heightOffset"

    invoke-virtual {v0, p0, v2, v1}, Lvc/d;->c(Lcom/google/android/filament/filamat/MaterialBuilder$r;Lcom/google/android/filament/filamat/MaterialBuilder$g;Ljava/lang/String;)V

    const-string v1, "emissiveTilling"

    invoke-virtual {v0, p0, v2, v1}, Lvc/d;->c(Lcom/google/android/filament/filamat/MaterialBuilder$r;Lcom/google/android/filament/filamat/MaterialBuilder$g;Ljava/lang/String;)V

    const-string v1, "emissiveOffset"

    invoke-virtual {v0, p0, v2, v1}, Lvc/d;->c(Lcom/google/android/filament/filamat/MaterialBuilder$r;Lcom/google/android/filament/filamat/MaterialBuilder$g;Ljava/lang/String;)V

    const-string p0, "worldUVScale"

    invoke-virtual {v0, v3, v5, p0}, Lvc/d;->c(Lcom/google/android/filament/filamat/MaterialBuilder$r;Lcom/google/android/filament/filamat/MaterialBuilder$g;Ljava/lang/String;)V

    new-instance p0, Lzc/a;

    const-string v1, "useWorldUV"

    invoke-direct {p0, v1}, Lzc/a;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Lvc/d;->b(Lzc/a;)V

    new-instance p0, Lzc/a;

    const-string v1, "hasHeight"

    invoke-direct {p0, v1}, Lzc/a;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Lvc/d;->b(Lzc/a;)V

    new-instance p0, Lzc/a;

    const-string v1, "discardEdges"

    invoke-direct {p0, v1}, Lzc/a;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Lvc/d;->b(Lzc/a;)V

    return-object v0
.end method
