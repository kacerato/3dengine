.class public LGc/h;
.super LGc/a;
.source "SourceFile"


# static fields
.field public static final f:Ljava/lang/String; = "gsp_windDirection"

.field public static final g:Ljava/lang/String; = "gsp_windIntensity"

.field public static final h:Ljava/lang/String; = "gsp_windVerticality"

.field public static final i:Ljava/lang/String; = "gsp_materialID"

.field public static final j:Ljava/lang/String; = "gsp_decals"


# instance fields
.field public b:F

.field public c:F

.field public d:I

.field public e:F


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, LGc/a;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, LGc/h;->b:F

    iput v0, p0, LGc/h;->c:F

    return-void
.end method

.method public static synthetic f(LGc/h;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V
    .locals 0

    invoke-virtual {p0, p1}, LGc/h;->s(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V

    return-void
.end method

.method public static synthetic g(LGc/h;F)V
    .locals 0

    invoke-virtual {p0, p1}, LGc/h;->u(F)V

    return-void
.end method

.method public static synthetic h(LGc/h;)V
    .locals 0

    invoke-virtual {p0}, LGc/h;->q()V

    return-void
.end method

.method public static synthetic i(LGc/h;F)V
    .locals 0

    invoke-virtual {p0, p1}, LGc/h;->t(F)V

    return-void
.end method

.method public static synthetic j(LGc/h;I)V
    .locals 0

    invoke-virtual {p0, p1}, LGc/h;->r(I)V

    return-void
.end method

.method public static o()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lxc/f;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lxc/f;

    sget-object v2, Lcom/google/android/filament/filamat/MaterialBuilder$r;->FLOAT3:Lcom/google/android/filament/filamat/MaterialBuilder$r;

    sget-object v3, Lcom/google/android/filament/filamat/MaterialBuilder$g;->LOW:Lcom/google/android/filament/filamat/MaterialBuilder$g;

    const-string v4, "gsp_windDirection"

    invoke-direct {v1, v2, v3, v4}, Lxc/f;-><init>(Lcom/google/android/filament/filamat/MaterialBuilder$r;Lcom/google/android/filament/filamat/MaterialBuilder$g;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lxc/f;

    sget-object v2, Lcom/google/android/filament/filamat/MaterialBuilder$r;->FLOAT:Lcom/google/android/filament/filamat/MaterialBuilder$r;

    const-string v4, "gsp_windIntensity"

    invoke-direct {v1, v2, v3, v4}, Lxc/f;-><init>(Lcom/google/android/filament/filamat/MaterialBuilder$r;Lcom/google/android/filament/filamat/MaterialBuilder$g;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lxc/f;

    const-string v4, "gsp_windVerticality"

    invoke-direct {v1, v2, v3, v4}, Lxc/f;-><init>(Lcom/google/android/filament/filamat/MaterialBuilder$r;Lcom/google/android/filament/filamat/MaterialBuilder$g;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lxc/f;

    sget-object v2, Lcom/google/android/filament/filamat/MaterialBuilder$r;->INT:Lcom/google/android/filament/filamat/MaterialBuilder$r;

    const-string v4, "gsp_materialID"

    invoke-direct {v1, v2, v3, v4}, Lxc/f;-><init>(Lcom/google/android/filament/filamat/MaterialBuilder$r;Lcom/google/android/filament/filamat/MaterialBuilder$g;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public static p()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lxc/g;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lxc/g;

    sget-object v2, Lcom/google/android/filament/filamat/MaterialBuilder$m;->SAMPLER_2D_ARRAY:Lcom/google/android/filament/filamat/MaterialBuilder$m;

    sget-object v3, Lcom/google/android/filament/filamat/MaterialBuilder$l;->FLOAT:Lcom/google/android/filament/filamat/MaterialBuilder$l;

    sget-object v4, Lcom/google/android/filament/filamat/MaterialBuilder$g;->HIGH:Lcom/google/android/filament/filamat/MaterialBuilder$g;

    const-string v5, "gsp_decals"

    invoke-direct {v1, v2, v3, v4, v5}, Lxc/g;-><init>(Lcom/google/android/filament/filamat/MaterialBuilder$m;Lcom/google/android/filament/filamat/MaterialBuilder$l;Lcom/google/android/filament/filamat/MaterialBuilder$g;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method


# virtual methods
.method public final A(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "id"
        }
    .end annotation

    invoke-virtual {p0}, LGc/a;->c()Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lc9/a;->q()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, LGc/a;->c()Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;

    move-result-object v0

    const-string v1, "gsp_materialID"

    invoke-virtual {v0, v1, p1}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;->T(Ljava/lang/String;I)V

    goto :goto_0

    :cond_1
    new-instance v0, LGc/g;

    invoke-direct {v0, p0, p1}, LGc/g;-><init>(LGc/h;I)V

    invoke-static {v0}, Lc9/a;->I(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method

.method public final B()V
    .locals 1

    invoke-static {}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Wind/WindEffect;->getFirst()Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Wind/WindEffect;

    move-result-object v0

    invoke-virtual {p0, v0}, LGc/h;->z(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Wind/WindEffect;)V

    iget v0, p0, LGc/h;->b:F

    invoke-virtual {p0, v0}, LGc/h;->E(F)V

    iget v0, p0, LGc/h;->d:I

    invoke-virtual {p0, v0}, LGc/h;->A(I)V

    invoke-virtual {p0}, LGc/h;->y()V

    return-void
.end method

.method public final C(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dir"
        }
    .end annotation

    invoke-virtual {p0}, LGc/a;->c()Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lc9/a;->q()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, LGc/a;->c()Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;

    move-result-object v0

    const-string v1, "gsp_windDirection"

    invoke-virtual {v0, v1, p1}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;->O(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V

    goto :goto_0

    :cond_1
    new-instance v0, LGc/f;

    invoke-direct {v0, p0, p1}, LGc/f;-><init>(LGc/h;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V

    invoke-static {v0}, Lc9/a;->I(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method

.method public final D(F)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "i"
        }
    .end annotation

    invoke-virtual {p0}, LGc/a;->c()Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iput p1, p0, LGc/h;->e:F

    iget v0, p0, LGc/h;->c:F

    mul-float/2addr p1, v0

    invoke-static {}, Lc9/a;->q()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, LGc/a;->c()Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;

    move-result-object v0

    const-string v1, "gsp_windIntensity"

    invoke-virtual {v0, v1, p1}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;->I(Ljava/lang/String;F)V

    goto :goto_0

    :cond_1
    new-instance v0, LGc/e;

    invoke-direct {v0, p0, p1}, LGc/e;-><init>(LGc/h;F)V

    invoke-static {v0}, Lc9/a;->I(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method

.method public final E(F)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "verticality"
        }
    .end annotation

    invoke-virtual {p0}, LGc/a;->c()Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v0, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    const/4 v0, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    invoke-static {}, Lc9/a;->q()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, LGc/a;->c()Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;

    move-result-object v0

    const-string v1, "gsp_windVerticality"

    invoke-virtual {v0, v1, p1}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;->I(Ljava/lang/String;F)V

    goto :goto_0

    :cond_1
    new-instance v0, LGc/c;

    invoke-direct {v0, p0, p1}, LGc/c;-><init>(LGc/h;F)V

    invoke-static {v0}, Lc9/a;->I(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method

.method public bridge synthetic a()LGc/a;
    .locals 1

    invoke-virtual {p0}, LGc/h;->k()LGc/h;

    move-result-object v0

    return-object v0
.end method

.method public b(Lva/b;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "event"
        }
    .end annotation

    invoke-super {p0, p1}, LGc/a;->b(Lva/b;)V

    instance-of v0, p1, Laa/a;

    if-eqz v0, :cond_0

    check-cast p1, Laa/a;

    invoke-virtual {p1}, Laa/a;->a()Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Wind/WindEffect;

    move-result-object p1

    invoke-virtual {p0, p1}, LGc/h;->z(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Wind/WindEffect;)V

    goto :goto_0

    :cond_0
    instance-of p1, p1, Lic/b;

    if-eqz p1, :cond_1

    invoke-virtual {p0}, LGc/h;->y()V

    :cond_1
    :goto_0
    return-void
.end method

.method public d(Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "filamentMaterial"
        }
    .end annotation

    invoke-super {p0, p1}, LGc/a;->d(Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;)V

    invoke-virtual {p0}, LGc/h;->B()V

    return-void
.end method

.method public k()LGc/h;
    .locals 2

    new-instance v0, LGc/h;

    invoke-direct {v0}, LGc/h;-><init>()V

    iget v1, p0, LGc/h;->c:F

    iput v1, v0, LGc/h;->c:F

    iget v1, p0, LGc/h;->b:F

    iput v1, v0, LGc/h;->b:F

    iget v1, p0, LGc/h;->d:I

    iput v1, v0, LGc/h;->d:I

    iget v1, p0, LGc/h;->e:F

    iput v1, v0, LGc/h;->e:F

    return-object v0
.end method

.method public l()F
    .locals 1

    iget v0, p0, LGc/h;->c:F

    return v0
.end method

.method public m()F
    .locals 1

    iget v0, p0, LGc/h;->b:F

    return v0
.end method

.method public n()I
    .locals 1

    iget v0, p0, LGc/h;->d:I

    return v0
.end method

.method public final synthetic q()V
    .locals 3

    invoke-virtual {p0}, LGc/a;->c()Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lic/a;->c()LNb/b;

    move-result-object v0

    const-string v1, "gsp_decals"

    if-eqz v0, :cond_1

    invoke-virtual {v0}, LNb/b;->w()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, LGc/a;->c()Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, LNb/b;->a(Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    sget-object v0, LQb/b;->j:LNb/c;

    invoke-virtual {p0}, LGc/a;->c()Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, LNb/c;->a(Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public final synthetic r(I)V
    .locals 2

    invoke-virtual {p0}, LGc/a;->c()Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, LGc/a;->c()Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;

    move-result-object v0

    const-string v1, "gsp_materialID"

    invoke-virtual {v0, v1, p1}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;->T(Ljava/lang/String;I)V

    return-void
.end method

.method public final synthetic s(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V
    .locals 2

    invoke-virtual {p0}, LGc/a;->c()Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, LGc/a;->c()Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;

    move-result-object v0

    const-string v1, "gsp_windDirection"

    invoke-virtual {v0, v1, p1}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;->O(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V

    return-void
.end method

.method public final synthetic t(F)V
    .locals 2

    invoke-virtual {p0}, LGc/a;->c()Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, LGc/a;->c()Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;

    move-result-object v0

    const-string v1, "gsp_windIntensity"

    invoke-virtual {v0, v1, p1}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;->I(Ljava/lang/String;F)V

    return-void
.end method

.method public final synthetic u(F)V
    .locals 2

    invoke-virtual {p0}, LGc/a;->c()Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, LGc/a;->c()Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;

    move-result-object v0

    const-string v1, "gsp_windVerticality"

    invoke-virtual {v0, v1, p1}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;->I(Ljava/lang/String;F)V

    return-void
.end method

.method public v(F)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "localWindIntensity"
        }
    .end annotation

    iget v0, p0, LGc/h;->c:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput p1, p0, LGc/h;->c:F

    if-eqz v0, :cond_1

    iget p1, p0, LGc/h;->e:F

    invoke-virtual {p0, p1}, LGc/h;->D(F)V

    :cond_1
    return-void
.end method

.method public w(F)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "localWindVerticality"
        }
    .end annotation

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v0, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    const/4 v0, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    iget v0, p0, LGc/h;->b:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput p1, p0, LGc/h;->b:F

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1}, LGc/h;->E(F)V

    :cond_1
    return-void
.end method

.method public x(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "materialID"
        }
    .end annotation

    const/16 v0, 0x7fff

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    const/16 v0, -0x8000

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iget v0, p0, LGc/h;->d:I

    if-eq v0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput p1, p0, LGc/h;->d:I

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1}, LGc/h;->A(I)V

    :cond_1
    return-void
.end method

.method public final y()V
    .locals 3

    invoke-virtual {p0}, LGc/a;->c()Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lc9/a;->q()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lic/a;->c()LNb/b;

    move-result-object v0

    const-string v1, "gsp_decals"

    if-eqz v0, :cond_1

    invoke-virtual {v0}, LNb/b;->w()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, LGc/a;->c()Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, LNb/b;->a(Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    sget-object v0, LQb/b;->j:LNb/c;

    invoke-virtual {p0}, LGc/a;->c()Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, LNb/c;->a(Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    new-instance v0, LGc/d;

    invoke-direct {v0, p0}, LGc/d;-><init>(LGc/h;)V

    invoke-static {v0}, Lc9/a;->I(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method

.method public final z(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Wind/WindEffect;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "windEffect"
        }
    .end annotation

    const-class v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Engine/JavaPool/JP;->acquire(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    if-eqz p1, :cond_0

    :try_start_0
    iget-object v1, p1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    iget-object v1, v1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    invoke-virtual {v1, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->o0(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Wind/WindEffect;->getIntensity()F

    move-result p1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->S1(F)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    :goto_0
    invoke-virtual {p0, v0}, LGc/h;->C(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V

    invoke-virtual {p0, p1}, LGc/h;->D(F)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Engine/JavaPool/JP;->release(Ljava/lang/Object;)V

    return-void

    :goto_1
    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Engine/JavaPool/JP;->release(Ljava/lang/Object;)V

    throw p1
.end method
