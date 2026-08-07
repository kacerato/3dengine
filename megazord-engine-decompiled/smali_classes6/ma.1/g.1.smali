.class public Lma/g;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lma/g$a;
    }
.end annotation


# static fields
.field public static final o:I = 0x400

.field public static p:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterialTemplate;


# instance fields
.field public final a:Lma/g$a;

.field public b:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle;

.field public c:LMb/p;

.field public d:Lmc/a;

.field public e:Lmc/a;

.field public f:LMb/n;

.field public g:I

.field public h:I

.field public i:I

.field public j:I

.field public k:Z

.field public l:Z

.field public final m:Lma/c;

.field public final n:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(IILma/c;Ljava/lang/Runnable;)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "w",
            "h",
            "dpConversor",
            "dirtyListener"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, -0x80000000

    iput v0, p0, Lma/g;->i:I

    iput v0, p0, Lma/g;->j:I

    invoke-static {}, Lma/g;->t()V

    iput p1, p0, Lma/g;->g:I

    iput p2, p0, Lma/g;->h:I

    iput-object p3, p0, Lma/g;->m:Lma/c;

    iput-object p4, p0, Lma/g;->n:Ljava/lang/Runnable;

    new-instance v7, Lmc/a;

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/16 v4, 0x64

    move-object v1, v7

    move v2, p1

    move v3, p2

    invoke-direct/range {v1 .. v6}, Lmc/a;-><init>(IIIIZ)V

    iput-object v7, p0, Lma/g;->d:Lmc/a;

    new-instance v7, Lmc/a;

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lmc/a;-><init>(IIIIZ)V

    iput-object v7, p0, Lma/g;->e:Lmc/a;

    new-instance v0, Lma/g$a;

    invoke-direct {v0}, Lma/g$a;-><init>()V

    iput-object v0, p0, Lma/g;->a:Lma/g$a;

    invoke-virtual {p0}, Lma/g;->k()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lma/g;->k:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lma/g;->l:Z

    return-void
.end method

.method public static synthetic a()Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterialTemplate;
    .locals 1

    sget-object v0, Lma/g;->p:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterialTemplate;

    return-object v0
.end method

.method public static c()V
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0}, Lma/g;->d(Z)V

    return-void
.end method

.method public static d(Z)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "forceRebuild"
        }
    .end annotation

    :try_start_0
    const-string v0, "ui_style_renderer.vsc"

    invoke-static {v0}, Lma/g;->q(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ui-style-renderer-v1:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    if-nez p0, :cond_0

    invoke-static {v1}, Lxc/b;->c(I)Z

    move-result p0

    if-eqz p0, :cond_2

    return-void

    :catch_0
    move-exception p0

    goto/16 :goto_0

    :cond_0
    invoke-static {v1}, Lxc/b;->c(I)Z

    move-result p0

    if-eqz p0, :cond_1

    return-void

    :cond_1
    invoke-static {v1}, Lxc/b;->h(I)Z

    move-result p0

    if-eqz p0, :cond_2

    invoke-static {v1}, Lxc/b;->g(I)Ljava/nio/ByteBuffer;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-static {v1, p0}, Lxc/b;->l(ILjava/nio/ByteBuffer;)V

    return-void

    :cond_2
    new-instance p0, Llc/b;

    invoke-direct {p0}, Llc/b;-><init>()V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "UIStyleRenderer-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lmd/b;->L()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/filament/filamat/MaterialBuilder;->u(Ljava/lang/String;)Lcom/google/android/filament/filamat/MaterialBuilder;

    move-result-object p0

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/google/android/filament/filamat/MaterialBuilder;->l(Z)Lcom/google/android/filament/filamat/MaterialBuilder;

    move-result-object p0

    sget-object v2, Lcom/google/android/filament/filamat/MaterialBuilder$h;->MOBILE:Lcom/google/android/filament/filamat/MaterialBuilder$h;

    invoke-virtual {p0, v2}, Lcom/google/android/filament/filamat/MaterialBuilder;->w(Lcom/google/android/filament/filamat/MaterialBuilder$h;)Lcom/google/android/filament/filamat/MaterialBuilder;

    move-result-object p0

    sget-object v2, Lcom/google/android/filament/filamat/MaterialBuilder$n;->UNLIT:Lcom/google/android/filament/filamat/MaterialBuilder$n;

    invoke-virtual {p0, v2}, Lcom/google/android/filament/filamat/MaterialBuilder;->D(Lcom/google/android/filament/filamat/MaterialBuilder$n;)Lcom/google/android/filament/filamat/MaterialBuilder;

    move-result-object p0

    sget-object v2, Lcom/google/android/filament/filamat/MaterialBuilder$t;->UV0:Lcom/google/android/filament/filamat/MaterialBuilder$t;

    invoke-virtual {p0, v2}, Lcom/google/android/filament/filamat/MaterialBuilder;->B(Lcom/google/android/filament/filamat/MaterialBuilder$t;)Lcom/google/android/filament/filamat/MaterialBuilder;

    move-result-object p0

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/google/android/filament/filamat/MaterialBuilder;->k(Z)Lcom/google/android/filament/filamat/MaterialBuilder;

    move-result-object p0

    invoke-virtual {p0, v2}, Lcom/google/android/filament/filamat/MaterialBuilder;->j(Z)Lcom/google/android/filament/filamat/MaterialBuilder;

    move-result-object p0

    check-cast p0, Llc/b;

    sget-object v2, Lcom/google/android/filament/filamat/MaterialBuilder$r;->FLOAT2:Lcom/google/android/filament/filamat/MaterialBuilder$r;

    const-string v3, "size"

    invoke-virtual {p0, v2, v3}, Lcom/google/android/filament/filamat/MaterialBuilder;->O(Lcom/google/android/filament/filamat/MaterialBuilder$r;Ljava/lang/String;)Lcom/google/android/filament/filamat/MaterialBuilder;

    sget-object v2, Lcom/google/android/filament/filamat/MaterialBuilder$r;->FLOAT4:Lcom/google/android/filament/filamat/MaterialBuilder$r;

    const-string v3, "baseColor"

    invoke-virtual {p0, v2, v3}, Lcom/google/android/filament/filamat/MaterialBuilder;->O(Lcom/google/android/filament/filamat/MaterialBuilder$r;Ljava/lang/String;)Lcom/google/android/filament/filamat/MaterialBuilder;

    const-string v3, "strokeColor"

    invoke-virtual {p0, v2, v3}, Lcom/google/android/filament/filamat/MaterialBuilder;->O(Lcom/google/android/filament/filamat/MaterialBuilder$r;Ljava/lang/String;)Lcom/google/android/filament/filamat/MaterialBuilder;

    const-string v3, "innerGlowColor"

    invoke-virtual {p0, v2, v3}, Lcom/google/android/filament/filamat/MaterialBuilder;->O(Lcom/google/android/filament/filamat/MaterialBuilder$r;Ljava/lang/String;)Lcom/google/android/filament/filamat/MaterialBuilder;

    const-string v3, "outerGlowColor"

    invoke-virtual {p0, v2, v3}, Lcom/google/android/filament/filamat/MaterialBuilder;->O(Lcom/google/android/filament/filamat/MaterialBuilder$r;Ljava/lang/String;)Lcom/google/android/filament/filamat/MaterialBuilder;

    const-string v3, "innerShadowColor"

    invoke-virtual {p0, v2, v3}, Lcom/google/android/filament/filamat/MaterialBuilder;->O(Lcom/google/android/filament/filamat/MaterialBuilder$r;Ljava/lang/String;)Lcom/google/android/filament/filamat/MaterialBuilder;

    const-string v3, "outerShadowColor"

    invoke-virtual {p0, v2, v3}, Lcom/google/android/filament/filamat/MaterialBuilder;->O(Lcom/google/android/filament/filamat/MaterialBuilder$r;Ljava/lang/String;)Lcom/google/android/filament/filamat/MaterialBuilder;

    sget-object v3, Lcom/google/android/filament/filamat/MaterialBuilder$r;->FLOAT:Lcom/google/android/filament/filamat/MaterialBuilder$r;

    const-string v4, "gradientMode"

    invoke-virtual {p0, v3, v4}, Lcom/google/android/filament/filamat/MaterialBuilder;->O(Lcom/google/android/filament/filamat/MaterialBuilder$r;Ljava/lang/String;)Lcom/google/android/filament/filamat/MaterialBuilder;

    const-string v4, "gradientAngle"

    invoke-virtual {p0, v3, v4}, Lcom/google/android/filament/filamat/MaterialBuilder;->O(Lcom/google/android/filament/filamat/MaterialBuilder$r;Ljava/lang/String;)Lcom/google/android/filament/filamat/MaterialBuilder;

    const-string v4, "maskMode"

    invoke-virtual {p0, v3, v4}, Lcom/google/android/filament/filamat/MaterialBuilder;->O(Lcom/google/android/filament/filamat/MaterialBuilder$r;Ljava/lang/String;)Lcom/google/android/filament/filamat/MaterialBuilder;

    const-string v4, "maskValue"

    invoke-virtual {p0, v3, v4}, Lcom/google/android/filament/filamat/MaterialBuilder;->O(Lcom/google/android/filament/filamat/MaterialBuilder$r;Ljava/lang/String;)Lcom/google/android/filament/filamat/MaterialBuilder;

    const-string v4, "maskAngle"

    invoke-virtual {p0, v3, v4}, Lcom/google/android/filament/filamat/MaterialBuilder;->O(Lcom/google/android/filament/filamat/MaterialBuilder$r;Ljava/lang/String;)Lcom/google/android/filament/filamat/MaterialBuilder;

    const-string v4, "cornerTypes"

    invoke-virtual {p0, v2, v4}, Lcom/google/android/filament/filamat/MaterialBuilder;->O(Lcom/google/android/filament/filamat/MaterialBuilder$r;Ljava/lang/String;)Lcom/google/android/filament/filamat/MaterialBuilder;

    const-string v2, "cornerPx"

    invoke-virtual {p0, v3, v2}, Lcom/google/android/filament/filamat/MaterialBuilder;->O(Lcom/google/android/filament/filamat/MaterialBuilder$r;Ljava/lang/String;)Lcom/google/android/filament/filamat/MaterialBuilder;

    const-string v2, "strokePx"

    invoke-virtual {p0, v3, v2}, Lcom/google/android/filament/filamat/MaterialBuilder;->O(Lcom/google/android/filament/filamat/MaterialBuilder$r;Ljava/lang/String;)Lcom/google/android/filament/filamat/MaterialBuilder;

    const-string v2, "hole"

    invoke-virtual {p0, v3, v2}, Lcom/google/android/filament/filamat/MaterialBuilder;->O(Lcom/google/android/filament/filamat/MaterialBuilder$r;Ljava/lang/String;)Lcom/google/android/filament/filamat/MaterialBuilder;

    const-string v2, "innerGlowSizePx"

    invoke-virtual {p0, v3, v2}, Lcom/google/android/filament/filamat/MaterialBuilder;->O(Lcom/google/android/filament/filamat/MaterialBuilder$r;Ljava/lang/String;)Lcom/google/android/filament/filamat/MaterialBuilder;

    const-string v2, "innerGlowSmoothPx"

    invoke-virtual {p0, v3, v2}, Lcom/google/android/filament/filamat/MaterialBuilder;->O(Lcom/google/android/filament/filamat/MaterialBuilder$r;Ljava/lang/String;)Lcom/google/android/filament/filamat/MaterialBuilder;

    const-string v2, "outerGlowSizePx"

    invoke-virtual {p0, v3, v2}, Lcom/google/android/filament/filamat/MaterialBuilder;->O(Lcom/google/android/filament/filamat/MaterialBuilder$r;Ljava/lang/String;)Lcom/google/android/filament/filamat/MaterialBuilder;

    const-string v2, "outerGlowSmoothPx"

    invoke-virtual {p0, v3, v2}, Lcom/google/android/filament/filamat/MaterialBuilder;->O(Lcom/google/android/filament/filamat/MaterialBuilder$r;Ljava/lang/String;)Lcom/google/android/filament/filamat/MaterialBuilder;

    const-string v2, "innerShadowSizePx"

    invoke-virtual {p0, v3, v2}, Lcom/google/android/filament/filamat/MaterialBuilder;->O(Lcom/google/android/filament/filamat/MaterialBuilder$r;Ljava/lang/String;)Lcom/google/android/filament/filamat/MaterialBuilder;

    const-string v2, "innerShadowSmoothPx"

    invoke-virtual {p0, v3, v2}, Lcom/google/android/filament/filamat/MaterialBuilder;->O(Lcom/google/android/filament/filamat/MaterialBuilder$r;Ljava/lang/String;)Lcom/google/android/filament/filamat/MaterialBuilder;

    const-string v2, "innerShadowAngle"

    invoke-virtual {p0, v3, v2}, Lcom/google/android/filament/filamat/MaterialBuilder;->O(Lcom/google/android/filament/filamat/MaterialBuilder$r;Ljava/lang/String;)Lcom/google/android/filament/filamat/MaterialBuilder;

    const-string v2, "outerShadowSizePx"

    invoke-virtual {p0, v3, v2}, Lcom/google/android/filament/filamat/MaterialBuilder;->O(Lcom/google/android/filament/filamat/MaterialBuilder$r;Ljava/lang/String;)Lcom/google/android/filament/filamat/MaterialBuilder;

    const-string v2, "outerShadowSmoothPx"

    invoke-virtual {p0, v3, v2}, Lcom/google/android/filament/filamat/MaterialBuilder;->O(Lcom/google/android/filament/filamat/MaterialBuilder$r;Ljava/lang/String;)Lcom/google/android/filament/filamat/MaterialBuilder;

    const-string v2, "outerShadowAngle"

    invoke-virtual {p0, v3, v2}, Lcom/google/android/filament/filamat/MaterialBuilder;->O(Lcom/google/android/filament/filamat/MaterialBuilder$r;Ljava/lang/String;)Lcom/google/android/filament/filamat/MaterialBuilder;

    sget-object v2, Lcom/google/android/filament/filamat/MaterialBuilder$m;->SAMPLER_2D:Lcom/google/android/filament/filamat/MaterialBuilder$m;

    sget-object v3, Lcom/google/android/filament/filamat/MaterialBuilder$l;->FLOAT:Lcom/google/android/filament/filamat/MaterialBuilder$l;

    sget-object v4, Lcom/google/android/filament/filamat/MaterialBuilder$g;->HIGH:Lcom/google/android/filament/filamat/MaterialBuilder$g;

    const-string v5, "gradientTex"

    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/google/android/filament/filamat/MaterialBuilder;->C(Lcom/google/android/filament/filamat/MaterialBuilder$m;Lcom/google/android/filament/filamat/MaterialBuilder$l;Lcom/google/android/filament/filamat/MaterialBuilder$g;Ljava/lang/String;)Lcom/google/android/filament/filamat/MaterialBuilder;

    const-string v5, "albedo"

    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/google/android/filament/filamat/MaterialBuilder;->C(Lcom/google/android/filament/filamat/MaterialBuilder$m;Lcom/google/android/filament/filamat/MaterialBuilder$l;Lcom/google/android/filament/filamat/MaterialBuilder$g;Ljava/lang/String;)Lcom/google/android/filament/filamat/MaterialBuilder;

    invoke-virtual {p0, v0}, Lcom/google/android/filament/filamat/MaterialBuilder;->q(Ljava/lang/String;)Lcom/google/android/filament/filamat/MaterialBuilder;

    invoke-virtual {p0}, Llc/b;->d()Lcom/google/android/filament/filamat/b;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/filament/filamat/b;->a()Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-static {v1, p0}, Lxc/b;->l(ILjava/nio/ByteBuffer;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :goto_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Failed to build StyleRenderer shader cache"

    invoke-direct {v0, v1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static e()V
    .locals 1

    const/4 v0, 0x1

    invoke-static {v0}, Lma/g;->d(Z)V

    return-void
.end method

.method public static q(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "file"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Shaders/UI/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, LFc/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static t()V
    .locals 7

    invoke-static {}, LG9/a;->l()V

    sget-object v0, Lma/g;->p:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterialTemplate;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    const-string v0, "ui_style_renderer.vsc"

    invoke-static {v0}, Lma/g;->q(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ui-style-renderer-v1:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    invoke-static {v1}, Lxc/b;->f(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    new-instance v1, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterialTemplate;

    new-instance v2, Lcom/google/android/filament/Material$b;

    invoke-direct {v2}, Lcom/google/android/filament/Material$b;-><init>()V

    invoke-virtual {v0}, Ljava/nio/Buffer;->remaining()I

    move-result v3

    invoke-virtual {v2, v0, v3}, Lcom/google/android/filament/Material$b;->b(Ljava/nio/Buffer;I)Lcom/google/android/filament/Material$b;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterialTemplate;-><init>(Lcom/google/android/filament/Material$b;)V

    sput-object v1, Lma/g;->p:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterialTemplate;

    return-void

    :catch_0
    move-exception v0

    goto/16 :goto_0

    :cond_1
    new-instance v2, Llc/b;

    invoke-direct {v2}, Llc/b;-><init>()V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "UIStyleRenderer-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lmd/b;->L()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/filament/filamat/MaterialBuilder;->u(Ljava/lang/String;)Lcom/google/android/filament/filamat/MaterialBuilder;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/google/android/filament/filamat/MaterialBuilder;->l(Z)Lcom/google/android/filament/filamat/MaterialBuilder;

    move-result-object v2

    sget-object v3, Lcom/google/android/filament/filamat/MaterialBuilder$h;->MOBILE:Lcom/google/android/filament/filamat/MaterialBuilder$h;

    invoke-virtual {v2, v3}, Lcom/google/android/filament/filamat/MaterialBuilder;->w(Lcom/google/android/filament/filamat/MaterialBuilder$h;)Lcom/google/android/filament/filamat/MaterialBuilder;

    move-result-object v2

    sget-object v3, Lcom/google/android/filament/filamat/MaterialBuilder$n;->UNLIT:Lcom/google/android/filament/filamat/MaterialBuilder$n;

    invoke-virtual {v2, v3}, Lcom/google/android/filament/filamat/MaterialBuilder;->D(Lcom/google/android/filament/filamat/MaterialBuilder$n;)Lcom/google/android/filament/filamat/MaterialBuilder;

    move-result-object v2

    sget-object v3, Lcom/google/android/filament/filamat/MaterialBuilder$t;->UV0:Lcom/google/android/filament/filamat/MaterialBuilder$t;

    invoke-virtual {v2, v3}, Lcom/google/android/filament/filamat/MaterialBuilder;->B(Lcom/google/android/filament/filamat/MaterialBuilder$t;)Lcom/google/android/filament/filamat/MaterialBuilder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/google/android/filament/filamat/MaterialBuilder;->k(Z)Lcom/google/android/filament/filamat/MaterialBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/google/android/filament/filamat/MaterialBuilder;->j(Z)Lcom/google/android/filament/filamat/MaterialBuilder;

    move-result-object v2

    check-cast v2, Llc/b;

    sget-object v3, Lcom/google/android/filament/filamat/MaterialBuilder$r;->FLOAT2:Lcom/google/android/filament/filamat/MaterialBuilder$r;

    const-string v4, "size"

    invoke-virtual {v2, v3, v4}, Lcom/google/android/filament/filamat/MaterialBuilder;->O(Lcom/google/android/filament/filamat/MaterialBuilder$r;Ljava/lang/String;)Lcom/google/android/filament/filamat/MaterialBuilder;

    sget-object v3, Lcom/google/android/filament/filamat/MaterialBuilder$r;->FLOAT4:Lcom/google/android/filament/filamat/MaterialBuilder$r;

    const-string v4, "baseColor"

    invoke-virtual {v2, v3, v4}, Lcom/google/android/filament/filamat/MaterialBuilder;->O(Lcom/google/android/filament/filamat/MaterialBuilder$r;Ljava/lang/String;)Lcom/google/android/filament/filamat/MaterialBuilder;

    const-string v4, "strokeColor"

    invoke-virtual {v2, v3, v4}, Lcom/google/android/filament/filamat/MaterialBuilder;->O(Lcom/google/android/filament/filamat/MaterialBuilder$r;Ljava/lang/String;)Lcom/google/android/filament/filamat/MaterialBuilder;

    const-string v4, "innerGlowColor"

    invoke-virtual {v2, v3, v4}, Lcom/google/android/filament/filamat/MaterialBuilder;->O(Lcom/google/android/filament/filamat/MaterialBuilder$r;Ljava/lang/String;)Lcom/google/android/filament/filamat/MaterialBuilder;

    const-string v4, "outerGlowColor"

    invoke-virtual {v2, v3, v4}, Lcom/google/android/filament/filamat/MaterialBuilder;->O(Lcom/google/android/filament/filamat/MaterialBuilder$r;Ljava/lang/String;)Lcom/google/android/filament/filamat/MaterialBuilder;

    const-string v4, "innerShadowColor"

    invoke-virtual {v2, v3, v4}, Lcom/google/android/filament/filamat/MaterialBuilder;->O(Lcom/google/android/filament/filamat/MaterialBuilder$r;Ljava/lang/String;)Lcom/google/android/filament/filamat/MaterialBuilder;

    const-string v4, "outerShadowColor"

    invoke-virtual {v2, v3, v4}, Lcom/google/android/filament/filamat/MaterialBuilder;->O(Lcom/google/android/filament/filamat/MaterialBuilder$r;Ljava/lang/String;)Lcom/google/android/filament/filamat/MaterialBuilder;

    sget-object v4, Lcom/google/android/filament/filamat/MaterialBuilder$r;->FLOAT:Lcom/google/android/filament/filamat/MaterialBuilder$r;

    const-string v5, "gradientMode"

    invoke-virtual {v2, v4, v5}, Lcom/google/android/filament/filamat/MaterialBuilder;->O(Lcom/google/android/filament/filamat/MaterialBuilder$r;Ljava/lang/String;)Lcom/google/android/filament/filamat/MaterialBuilder;

    const-string v5, "gradientAngle"

    invoke-virtual {v2, v4, v5}, Lcom/google/android/filament/filamat/MaterialBuilder;->O(Lcom/google/android/filament/filamat/MaterialBuilder$r;Ljava/lang/String;)Lcom/google/android/filament/filamat/MaterialBuilder;

    const-string v5, "maskMode"

    invoke-virtual {v2, v4, v5}, Lcom/google/android/filament/filamat/MaterialBuilder;->O(Lcom/google/android/filament/filamat/MaterialBuilder$r;Ljava/lang/String;)Lcom/google/android/filament/filamat/MaterialBuilder;

    const-string v5, "maskValue"

    invoke-virtual {v2, v4, v5}, Lcom/google/android/filament/filamat/MaterialBuilder;->O(Lcom/google/android/filament/filamat/MaterialBuilder$r;Ljava/lang/String;)Lcom/google/android/filament/filamat/MaterialBuilder;

    const-string v5, "maskAngle"

    invoke-virtual {v2, v4, v5}, Lcom/google/android/filament/filamat/MaterialBuilder;->O(Lcom/google/android/filament/filamat/MaterialBuilder$r;Ljava/lang/String;)Lcom/google/android/filament/filamat/MaterialBuilder;

    const-string v5, "cornerTypes"

    invoke-virtual {v2, v3, v5}, Lcom/google/android/filament/filamat/MaterialBuilder;->O(Lcom/google/android/filament/filamat/MaterialBuilder$r;Ljava/lang/String;)Lcom/google/android/filament/filamat/MaterialBuilder;

    const-string v3, "cornerPx"

    invoke-virtual {v2, v4, v3}, Lcom/google/android/filament/filamat/MaterialBuilder;->O(Lcom/google/android/filament/filamat/MaterialBuilder$r;Ljava/lang/String;)Lcom/google/android/filament/filamat/MaterialBuilder;

    const-string v3, "strokePx"

    invoke-virtual {v2, v4, v3}, Lcom/google/android/filament/filamat/MaterialBuilder;->O(Lcom/google/android/filament/filamat/MaterialBuilder$r;Ljava/lang/String;)Lcom/google/android/filament/filamat/MaterialBuilder;

    const-string v3, "hole"

    invoke-virtual {v2, v4, v3}, Lcom/google/android/filament/filamat/MaterialBuilder;->O(Lcom/google/android/filament/filamat/MaterialBuilder$r;Ljava/lang/String;)Lcom/google/android/filament/filamat/MaterialBuilder;

    const-string v3, "innerGlowSizePx"

    invoke-virtual {v2, v4, v3}, Lcom/google/android/filament/filamat/MaterialBuilder;->O(Lcom/google/android/filament/filamat/MaterialBuilder$r;Ljava/lang/String;)Lcom/google/android/filament/filamat/MaterialBuilder;

    const-string v3, "innerGlowSmoothPx"

    invoke-virtual {v2, v4, v3}, Lcom/google/android/filament/filamat/MaterialBuilder;->O(Lcom/google/android/filament/filamat/MaterialBuilder$r;Ljava/lang/String;)Lcom/google/android/filament/filamat/MaterialBuilder;

    const-string v3, "outerGlowSizePx"

    invoke-virtual {v2, v4, v3}, Lcom/google/android/filament/filamat/MaterialBuilder;->O(Lcom/google/android/filament/filamat/MaterialBuilder$r;Ljava/lang/String;)Lcom/google/android/filament/filamat/MaterialBuilder;

    const-string v3, "outerGlowSmoothPx"

    invoke-virtual {v2, v4, v3}, Lcom/google/android/filament/filamat/MaterialBuilder;->O(Lcom/google/android/filament/filamat/MaterialBuilder$r;Ljava/lang/String;)Lcom/google/android/filament/filamat/MaterialBuilder;

    const-string v3, "innerShadowSizePx"

    invoke-virtual {v2, v4, v3}, Lcom/google/android/filament/filamat/MaterialBuilder;->O(Lcom/google/android/filament/filamat/MaterialBuilder$r;Ljava/lang/String;)Lcom/google/android/filament/filamat/MaterialBuilder;

    const-string v3, "innerShadowSmoothPx"

    invoke-virtual {v2, v4, v3}, Lcom/google/android/filament/filamat/MaterialBuilder;->O(Lcom/google/android/filament/filamat/MaterialBuilder$r;Ljava/lang/String;)Lcom/google/android/filament/filamat/MaterialBuilder;

    const-string v3, "innerShadowAngle"

    invoke-virtual {v2, v4, v3}, Lcom/google/android/filament/filamat/MaterialBuilder;->O(Lcom/google/android/filament/filamat/MaterialBuilder$r;Ljava/lang/String;)Lcom/google/android/filament/filamat/MaterialBuilder;

    const-string v3, "outerShadowSizePx"

    invoke-virtual {v2, v4, v3}, Lcom/google/android/filament/filamat/MaterialBuilder;->O(Lcom/google/android/filament/filamat/MaterialBuilder$r;Ljava/lang/String;)Lcom/google/android/filament/filamat/MaterialBuilder;

    const-string v3, "outerShadowSmoothPx"

    invoke-virtual {v2, v4, v3}, Lcom/google/android/filament/filamat/MaterialBuilder;->O(Lcom/google/android/filament/filamat/MaterialBuilder$r;Ljava/lang/String;)Lcom/google/android/filament/filamat/MaterialBuilder;

    const-string v3, "outerShadowAngle"

    invoke-virtual {v2, v4, v3}, Lcom/google/android/filament/filamat/MaterialBuilder;->O(Lcom/google/android/filament/filamat/MaterialBuilder$r;Ljava/lang/String;)Lcom/google/android/filament/filamat/MaterialBuilder;

    sget-object v3, Lcom/google/android/filament/filamat/MaterialBuilder$m;->SAMPLER_2D:Lcom/google/android/filament/filamat/MaterialBuilder$m;

    sget-object v4, Lcom/google/android/filament/filamat/MaterialBuilder$l;->FLOAT:Lcom/google/android/filament/filamat/MaterialBuilder$l;

    sget-object v5, Lcom/google/android/filament/filamat/MaterialBuilder$g;->HIGH:Lcom/google/android/filament/filamat/MaterialBuilder$g;

    const-string v6, "gradientTex"

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/google/android/filament/filamat/MaterialBuilder;->C(Lcom/google/android/filament/filamat/MaterialBuilder$m;Lcom/google/android/filament/filamat/MaterialBuilder$l;Lcom/google/android/filament/filamat/MaterialBuilder$g;Ljava/lang/String;)Lcom/google/android/filament/filamat/MaterialBuilder;

    const-string v6, "albedo"

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/google/android/filament/filamat/MaterialBuilder;->C(Lcom/google/android/filament/filamat/MaterialBuilder$m;Lcom/google/android/filament/filamat/MaterialBuilder$l;Lcom/google/android/filament/filamat/MaterialBuilder$g;Ljava/lang/String;)Lcom/google/android/filament/filamat/MaterialBuilder;

    invoke-virtual {v2, v0}, Lcom/google/android/filament/filamat/MaterialBuilder;->q(Ljava/lang/String;)Lcom/google/android/filament/filamat/MaterialBuilder;

    invoke-virtual {v2}, Llc/b;->d()Lcom/google/android/filament/filamat/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/filament/filamat/b;->a()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    invoke-static {v1, v0}, Lxc/b;->l(ILjava/nio/ByteBuffer;)V

    new-instance v0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterialTemplate;

    new-instance v1, Lcom/google/android/filament/Material$b;

    invoke-direct {v1}, Lcom/google/android/filament/Material$b;-><init>()V

    invoke-virtual {v2}, Ljava/nio/Buffer;->remaining()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/google/android/filament/Material$b;->b(Ljava/nio/Buffer;I)Lcom/google/android/filament/Material$b;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterialTemplate;-><init>(Lcom/google/android/filament/Material$b;)V

    sput-object v0, Lma/g;->p:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterialTemplate;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :goto_0
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Failed to create UIStyleRenderer material"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public final A()V
    .locals 2

    iget-object v0, p0, Lma/g;->d:Lmc/a;

    iget-object v1, p0, Lma/g;->e:Lmc/a;

    iput-object v1, p0, Lma/g;->d:Lmc/a;

    iput-object v0, p0, Lma/g;->e:Lmc/a;

    return-void
.end method

.method public final B(Lcom/itsmagic/engine/Engines/Engine/Gradient/Gradient;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "gradient"
        }
    .end annotation

    invoke-virtual {p0}, Lma/g;->k()V

    invoke-virtual {p0, p1}, Lma/g;->g(Lcom/itsmagic/engine/Engines/Engine/Gradient/Gradient;)I

    move-result v0

    iget v1, p0, Lma/g;->j:I

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    iput v0, p0, Lma/g;->j:I

    if-nez p1, :cond_1

    new-instance p1, Lcom/itsmagic/engine/Engines/Engine/Gradient/Gradient;

    invoke-direct {p1}, Lcom/itsmagic/engine/Engines/Engine/Gradient/Gradient;-><init>()V

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Gradient/Gradient;->A()V

    :cond_1
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    const/16 v3, 0x400

    if-ge v2, v3, :cond_2

    int-to-float v3, v2

    const/16 v4, 0x3ff

    int-to-float v4, v4

    div-float/2addr v3, v4

    invoke-virtual {p1, v3, v0}, Lcom/itsmagic/engine/Engines/Engine/Gradient/Gradient;->y(FLcom/itsmagic/engine/Engines/Engine/Color/ColorINT;)V

    iget-object v3, p0, Lma/g;->f:LMb/n;

    invoke-virtual {v3, v2, v1, v0}, LMb/n;->k0(IILcom/itsmagic/engine/Engines/Engine/Color/ColorINT;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lma/g;->f:LMb/n;

    invoke-virtual {p1}, LMb/n;->apply()V

    return-void
.end method

.method public final b()V
    .locals 18

    move-object/from16 v0, p0

    iget-object v1, v0, Lma/g;->b:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle;

    if-nez v1, :cond_0

    return-void

    :cond_0
    iget-object v2, v0, Lma/g;->m:Lma/c;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle;->W()F

    move-result v1

    invoke-interface {v2, v1}, Lma/c;->a(F)F

    move-result v1

    iget-object v2, v0, Lma/g;->m:Lma/c;

    iget-object v3, v0, Lma/g;->b:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle;

    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle;->t0()F

    move-result v3

    invoke-interface {v2, v3}, Lma/c;->a(F)F

    move-result v2

    iget-object v3, v0, Lma/g;->m:Lma/c;

    iget-object v4, v0, Lma/g;->b:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle;

    invoke-virtual {v4}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle;->b0()F

    move-result v4

    invoke-interface {v3, v4}, Lma/c;->a(F)F

    move-result v3

    iget-object v4, v0, Lma/g;->m:Lma/c;

    iget-object v5, v0, Lma/g;->b:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle;

    invoke-virtual {v5}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle;->c0()F

    move-result v5

    invoke-interface {v4, v5}, Lma/c;->a(F)F

    move-result v4

    iget-object v5, v0, Lma/g;->m:Lma/c;

    iget-object v6, v0, Lma/g;->b:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle;

    invoke-virtual {v6}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle;->n0()F

    move-result v6

    invoke-interface {v5, v6}, Lma/c;->a(F)F

    move-result v5

    iget-object v6, v0, Lma/g;->m:Lma/c;

    iget-object v7, v0, Lma/g;->b:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle;

    invoke-virtual {v7}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle;->o0()F

    move-result v7

    invoke-interface {v6, v7}, Lma/c;->a(F)F

    move-result v6

    iget-object v7, v0, Lma/g;->m:Lma/c;

    iget-object v8, v0, Lma/g;->b:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle;

    invoke-virtual {v8}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle;->f0()F

    move-result v8

    invoke-interface {v7, v8}, Lma/c;->a(F)F

    move-result v7

    iget-object v8, v0, Lma/g;->m:Lma/c;

    iget-object v9, v0, Lma/g;->b:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle;

    invoke-virtual {v9}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle;->g0()F

    move-result v9

    invoke-interface {v8, v9}, Lma/c;->a(F)F

    move-result v8

    iget-object v9, v0, Lma/g;->m:Lma/c;

    iget-object v10, v0, Lma/g;->b:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle;

    invoke-virtual {v10}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle;->r0()F

    move-result v10

    invoke-interface {v9, v10}, Lma/c;->a(F)F

    move-result v9

    iget-object v10, v0, Lma/g;->m:Lma/c;

    iget-object v11, v0, Lma/g;->b:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle;

    invoke-virtual {v11}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle;->s0()F

    move-result v11

    invoke-interface {v10, v11}, Lma/c;->a(F)F

    move-result v10

    iget-object v11, v0, Lma/g;->a:Lma/g$a;

    invoke-static {v11}, Lma/g$a;->a(Lma/g$a;)Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;

    move-result-object v11

    iget v12, v0, Lma/g;->g:I

    int-to-float v12, v12

    iget v13, v0, Lma/g;->h:I

    int-to-float v13, v13

    const-string v14, "size"

    invoke-virtual {v11, v14, v12, v13}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;->K(Ljava/lang/String;FF)V

    iget-object v11, v0, Lma/g;->b:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle;

    invoke-virtual {v11}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle;->U()Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    move-result-object v11

    const-string v12, "baseColor"

    invoke-virtual {v0, v12, v11}, Lma/g;->x(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;)V

    iget-object v11, v0, Lma/g;->b:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle;

    invoke-virtual {v11}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle;->u0()Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    move-result-object v11

    const-string v12, "strokeColor"

    invoke-virtual {v0, v12, v11}, Lma/g;->x(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;)V

    iget-object v11, v0, Lma/g;->b:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle;

    invoke-virtual {v11}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle;->a0()Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    move-result-object v11

    const-string v12, "innerGlowColor"

    invoke-virtual {v0, v12, v11}, Lma/g;->x(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;)V

    iget-object v11, v0, Lma/g;->b:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle;

    invoke-virtual {v11}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle;->m0()Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    move-result-object v11

    const-string v12, "outerGlowColor"

    invoke-virtual {v0, v12, v11}, Lma/g;->x(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;)V

    iget-object v11, v0, Lma/g;->b:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle;

    invoke-virtual {v11}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle;->e0()Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    move-result-object v11

    const-string v12, "innerShadowColor"

    invoke-virtual {v0, v12, v11}, Lma/g;->x(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;)V

    iget-object v11, v0, Lma/g;->b:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle;

    invoke-virtual {v11}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle;->q0()Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    move-result-object v11

    const-string v12, "outerShadowColor"

    invoke-virtual {v0, v12, v11}, Lma/g;->x(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;)V

    iget-object v11, v0, Lma/g;->a:Lma/g$a;

    invoke-static {v11}, Lma/g$a;->a(Lma/g$a;)Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;

    move-result-object v11

    iget-object v12, v0, Lma/g;->b:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle;

    invoke-virtual {v12}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle;->Y()Lma/d;

    move-result-object v12

    invoke-virtual {v0, v12}, Lma/g;->u(Lma/d;)F

    move-result v12

    const-string v13, "gradientMode"

    invoke-virtual {v11, v13, v12}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;->I(Ljava/lang/String;F)V

    iget-object v11, v0, Lma/g;->a:Lma/g$a;

    invoke-static {v11}, Lma/g$a;->a(Lma/g$a;)Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;

    move-result-object v11

    iget-object v12, v0, Lma/g;->b:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle;

    invoke-virtual {v12}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle;->X()F

    move-result v12

    const-string v13, "gradientAngle"

    invoke-virtual {v11, v13, v12}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;->I(Ljava/lang/String;F)V

    iget-object v11, v0, Lma/g;->a:Lma/g$a;

    invoke-static {v11}, Lma/g$a;->a(Lma/g$a;)Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;

    move-result-object v11

    iget-object v12, v0, Lma/g;->b:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle;

    invoke-virtual {v12}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle;->j0()Lma/e;

    move-result-object v12

    invoke-virtual {v0, v12}, Lma/g;->v(Lma/e;)F

    move-result v12

    const-string v13, "maskMode"

    invoke-virtual {v11, v13, v12}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;->I(Ljava/lang/String;F)V

    iget-object v11, v0, Lma/g;->a:Lma/g$a;

    invoke-static {v11}, Lma/g$a;->a(Lma/g$a;)Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;

    move-result-object v11

    iget-object v12, v0, Lma/g;->b:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle;

    invoke-virtual {v12}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle;->k0()F

    move-result v12

    const-string v13, "maskValue"

    invoke-virtual {v11, v13, v12}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;->I(Ljava/lang/String;F)V

    iget-object v11, v0, Lma/g;->a:Lma/g$a;

    invoke-static {v11}, Lma/g$a;->a(Lma/g$a;)Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;

    move-result-object v11

    iget-object v12, v0, Lma/g;->b:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle;

    invoke-virtual {v12}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle;->i0()F

    move-result v12

    const-string v13, "maskAngle"

    invoke-virtual {v11, v13, v12}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;->I(Ljava/lang/String;F)V

    iget-object v11, v0, Lma/g;->a:Lma/g$a;

    invoke-static {v11}, Lma/g$a;->a(Lma/g$a;)Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;

    move-result-object v12

    iget-object v11, v0, Lma/g;->b:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle;

    invoke-virtual {v11}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle;->v0()Lma/b;

    move-result-object v11

    invoke-static {v11}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle;->B0(Lma/b;)Lma/b;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Enum;->ordinal()I

    move-result v11

    int-to-float v14, v11

    iget-object v11, v0, Lma/g;->b:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle;

    invoke-virtual {v11}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle;->w0()Lma/b;

    move-result-object v11

    invoke-static {v11}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle;->B0(Lma/b;)Lma/b;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Enum;->ordinal()I

    move-result v11

    int-to-float v15, v11

    iget-object v11, v0, Lma/g;->b:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle;

    invoke-virtual {v11}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle;->T()Lma/b;

    move-result-object v11

    invoke-static {v11}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle;->B0(Lma/b;)Lma/b;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Enum;->ordinal()I

    move-result v11

    int-to-float v11, v11

    iget-object v13, v0, Lma/g;->b:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle;

    invoke-virtual {v13}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle;->S()Lma/b;

    move-result-object v13

    invoke-static {v13}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle;->B0(Lma/b;)Lma/b;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Enum;->ordinal()I

    move-result v13

    int-to-float v13, v13

    const-string v16, "cornerTypes"

    move/from16 v17, v13

    move-object/from16 v13, v16

    move/from16 v16, v11

    invoke-virtual/range {v12 .. v17}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;->Q(Ljava/lang/String;FFFF)V

    iget-object v11, v0, Lma/g;->a:Lma/g$a;

    invoke-static {v11}, Lma/g$a;->a(Lma/g$a;)Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;

    move-result-object v11

    const-string v12, "cornerPx"

    invoke-virtual {v11, v12, v1}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;->I(Ljava/lang/String;F)V

    iget-object v1, v0, Lma/g;->a:Lma/g$a;

    invoke-static {v1}, Lma/g$a;->a(Lma/g$a;)Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;

    move-result-object v1

    const-string v11, "strokePx"

    invoke-virtual {v1, v11, v2}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;->I(Ljava/lang/String;F)V

    iget-object v1, v0, Lma/g;->a:Lma/g$a;

    invoke-static {v1}, Lma/g$a;->a(Lma/g$a;)Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;

    move-result-object v1

    iget-object v2, v0, Lma/g;->b:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle;

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle;->Z()F

    move-result v2

    const-string v11, "hole"

    invoke-virtual {v1, v11, v2}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;->I(Ljava/lang/String;F)V

    iget-object v1, v0, Lma/g;->a:Lma/g$a;

    invoke-static {v1}, Lma/g$a;->a(Lma/g$a;)Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;

    move-result-object v1

    const-string v2, "innerGlowSizePx"

    invoke-virtual {v1, v2, v3}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;->I(Ljava/lang/String;F)V

    iget-object v1, v0, Lma/g;->a:Lma/g$a;

    invoke-static {v1}, Lma/g$a;->a(Lma/g$a;)Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;

    move-result-object v1

    const-string v2, "innerGlowSmoothPx"

    invoke-virtual {v1, v2, v4}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;->I(Ljava/lang/String;F)V

    iget-object v1, v0, Lma/g;->a:Lma/g$a;

    invoke-static {v1}, Lma/g$a;->a(Lma/g$a;)Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;

    move-result-object v1

    const-string v2, "outerGlowSizePx"

    invoke-virtual {v1, v2, v5}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;->I(Ljava/lang/String;F)V

    iget-object v1, v0, Lma/g;->a:Lma/g$a;

    invoke-static {v1}, Lma/g$a;->a(Lma/g$a;)Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;

    move-result-object v1

    const-string v2, "outerGlowSmoothPx"

    invoke-virtual {v1, v2, v6}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;->I(Ljava/lang/String;F)V

    iget-object v1, v0, Lma/g;->a:Lma/g$a;

    invoke-static {v1}, Lma/g$a;->a(Lma/g$a;)Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;

    move-result-object v1

    const-string v2, "innerShadowSizePx"

    invoke-virtual {v1, v2, v7}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;->I(Ljava/lang/String;F)V

    iget-object v1, v0, Lma/g;->a:Lma/g$a;

    invoke-static {v1}, Lma/g$a;->a(Lma/g$a;)Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;

    move-result-object v1

    const-string v2, "innerShadowSmoothPx"

    invoke-virtual {v1, v2, v8}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;->I(Ljava/lang/String;F)V

    iget-object v1, v0, Lma/g;->a:Lma/g$a;

    invoke-static {v1}, Lma/g$a;->a(Lma/g$a;)Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;

    move-result-object v1

    iget-object v2, v0, Lma/g;->b:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle;

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle;->d0()F

    move-result v2

    const-string v3, "innerShadowAngle"

    invoke-virtual {v1, v3, v2}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;->I(Ljava/lang/String;F)V

    iget-object v1, v0, Lma/g;->a:Lma/g$a;

    invoke-static {v1}, Lma/g$a;->a(Lma/g$a;)Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;

    move-result-object v1

    const-string v2, "outerShadowSizePx"

    invoke-virtual {v1, v2, v9}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;->I(Ljava/lang/String;F)V

    iget-object v1, v0, Lma/g;->a:Lma/g$a;

    invoke-static {v1}, Lma/g$a;->a(Lma/g$a;)Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;

    move-result-object v1

    const-string v2, "outerShadowSmoothPx"

    invoke-virtual {v1, v2, v10}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;->I(Ljava/lang/String;F)V

    iget-object v1, v0, Lma/g;->a:Lma/g$a;

    invoke-static {v1}, Lma/g$a;->a(Lma/g$a;)Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;

    move-result-object v1

    iget-object v2, v0, Lma/g;->b:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle;

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle;->p0()F

    move-result v2

    const-string v3, "outerShadowAngle"

    invoke-virtual {v1, v3, v2}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;->I(Ljava/lang/String;F)V

    iget-object v1, v0, Lma/g;->f:LMb/n;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, LMb/n;->W()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, v0, Lma/g;->f:LMb/n;

    iget-object v2, v0, Lma/g;->a:Lma/g$a;

    invoke-static {v2}, Lma/g$a;->a(Lma/g$a;)Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;

    move-result-object v2

    const-string v3, "gradientTex"

    invoke-virtual {v1, v2, v3}, LMb/n;->s(Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;Ljava/lang/String;)V

    :cond_1
    iget-object v1, v0, Lma/g;->c:LMb/p;

    if-eqz v1, :cond_2

    goto :goto_0

    :cond_2
    sget-object v1, LQb/b;->g:LMb/p;

    :goto_0
    invoke-static {v1}, LMb/p;->Y(LMb/p;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, v0, Lma/g;->a:Lma/g$a;

    invoke-static {v2}, Lma/g$a;->a(Lma/g$a;)Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;

    move-result-object v2

    const-string v3, "albedo"

    invoke-virtual {v1, v2, v3}, LMb/p;->s(Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;Ljava/lang/String;)V

    return-void

    :cond_3
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "StyleRenderer albedo fallback is not renderable"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final f(Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "colorINT"
        }
    .end annotation

    if-eqz p1, :cond_0

    iget p1, p1, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->intColor:I

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final g(Lcom/itsmagic/engine/Engines/Engine/Gradient/Gradient;)I
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "gradient"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Gradient/Gradient;->w()I

    move-result v1

    const/16 v2, 0x20f

    add-int/2addr v2, v1

    move v3, v0

    :goto_0
    if-ge v3, v1, :cond_2

    invoke-virtual {p1, v3}, Lcom/itsmagic/engine/Engines/Engine/Gradient/Gradient;->v(I)Lcom/itsmagic/engine/Engines/Engine/Gradient/Entry;

    move-result-object v4

    mul-int/lit8 v2, v2, 0x1f

    invoke-virtual {v4}, Lcom/itsmagic/engine/Engines/Engine/Gradient/Entry;->d()F

    move-result v5

    invoke-static {v5}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v5

    add-int/2addr v2, v5

    invoke-virtual {v4}, Lcom/itsmagic/engine/Engines/Engine/Gradient/Entry;->c()Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    move-result-object v4

    mul-int/lit8 v2, v2, 0x1f

    if-eqz v4, :cond_1

    iget v4, v4, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->intColor:I

    goto :goto_1

    :cond_1
    move v4, v0

    :goto_1
    add-int/2addr v2, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return v2
.end method

.method public final h(Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle;)I
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "s"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle;->W()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    const/16 v1, 0x20f

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle;->t0()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle;->U()Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    move-result-object v0

    invoke-virtual {p0, v0}, Lma/g;->f(Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle;->u0()Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    move-result-object v0

    invoke-virtual {p0, v0}, Lma/g;->f(Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle;->Y()Lma/d;

    move-result-object v0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle;->Y()Lma/d;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle;->X()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle;->v0()Lma/b;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle;->v0()Lma/b;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    goto :goto_1

    :cond_1
    move v0, v2

    :goto_1
    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle;->w0()Lma/b;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle;->w0()Lma/b;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    goto :goto_2

    :cond_2
    move v0, v2

    :goto_2
    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle;->T()Lma/b;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle;->T()Lma/b;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    goto :goto_3

    :cond_3
    move v0, v2

    :goto_3
    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle;->S()Lma/b;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle;->S()Lma/b;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    goto :goto_4

    :cond_4
    move v0, v2

    :goto_4
    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle;->Z()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle;->b0()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle;->c0()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle;->a0()Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    move-result-object v0

    invoke-virtual {p0, v0}, Lma/g;->f(Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle;->n0()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle;->o0()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle;->m0()Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    move-result-object v0

    invoke-virtual {p0, v0}, Lma/g;->f(Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle;->f0()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle;->g0()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle;->d0()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle;->e0()Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    move-result-object v0

    invoke-virtual {p0, v0}, Lma/g;->f(Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle;->r0()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle;->s0()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle;->p0()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle;->q0()Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    move-result-object v0

    invoke-virtual {p0, v0}, Lma/g;->f(Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle;->j0()Lma/e;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle;->j0()Lma/e;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    :cond_5
    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle;->k0()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle;->i0()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle;->V()Lcom/itsmagic/engine/Engines/Engine/Gradient/Gradient;

    move-result-object p1

    invoke-virtual {p0, p1}, Lma/g;->g(Lcom/itsmagic/engine/Engines/Engine/Gradient/Gradient;)I

    move-result p1

    add-int/2addr v1, p1

    return v1
.end method

.method public i()V
    .locals 3

    iget-object v0, p0, Lma/g;->a:Lma/g$a;

    invoke-virtual {v0}, Lma/g$a;->d()V

    iget-object v0, p0, Lma/g;->f:LMb/n;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, LMb/n;->destroyImmediate()V

    iput-object v1, p0, Lma/g;->f:LMb/n;

    :cond_0
    iget-object v0, p0, Lma/g;->d:Lmc/a;

    if-eqz v0, :cond_1

    iget-boolean v2, v0, Lmc/a;->r:Z

    if-nez v2, :cond_1

    invoke-virtual {v0}, Lmc/a;->c()V

    :cond_1
    iget-object v0, p0, Lma/g;->e:Lmc/a;

    if-eqz v0, :cond_2

    iget-object v2, p0, Lma/g;->d:Lmc/a;

    if-eq v0, v2, :cond_2

    iget-boolean v2, v0, Lmc/a;->r:Z

    if-nez v2, :cond_2

    invoke-virtual {v0}, Lmc/a;->c()V

    :cond_2
    iput-object v1, p0, Lma/g;->d:Lmc/a;

    iput-object v1, p0, Lma/g;->e:Lmc/a;

    return-void
.end method

.method public j()V
    .locals 3

    iget-boolean v0, p0, Lma/g;->k:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lma/g;->b:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lma/g;->d:Lmc/a;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lma/g;->e:Lmc/a;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lma/g;->a:Lma/g$a;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lma/g;->c:LMb/p;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, LMb/p;->W()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lma/g;->l:Z

    return-void

    :cond_0
    invoke-virtual {p0}, Lma/g;->l()V

    iget-object v0, p0, Lma/g;->b:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle;

    invoke-virtual {p0, v0}, Lma/g;->h(Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle;)I

    move-result v0

    iget v1, p0, Lma/g;->i:I

    const/4 v2, 0x1

    if-eq v0, v1, :cond_1

    iput v0, p0, Lma/g;->i:I

    iput-boolean v2, p0, Lma/g;->k:Z

    :cond_1
    iget-object v0, p0, Lma/g;->b:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle;->V()Lcom/itsmagic/engine/Engines/Engine/Gradient/Gradient;

    move-result-object v0

    invoke-virtual {p0, v0}, Lma/g;->B(Lcom/itsmagic/engine/Engines/Engine/Gradient/Gradient;)V

    invoke-virtual {p0}, Lma/g;->b()V

    iput-boolean v2, p0, Lma/g;->l:Z

    :cond_2
    return-void
.end method

.method public final k()V
    .locals 4

    iget-object v0, p0, Lma/g;->f:LMb/n;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;-><init>()V

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->genMipmaps:Z

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->allowModifications:Z

    sget-object v2, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$f;->Clamp:Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$f;

    iput-object v2, v0, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->wrap:Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$f;

    sget-object v2, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$a;->Linear:Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$a;

    invoke-virtual {v0, v2}, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->h0(Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$a;)Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;

    new-instance v2, LMb/n;

    const/16 v3, 0x400

    invoke-direct {v2, v3, v1, v0, v1}, LMb/n;-><init>(IILcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;Z)V

    iput-object v2, p0, Lma/g;->f:LMb/n;

    return-void
.end method

.method public final l()V
    .locals 7

    iget-object v0, p0, Lma/g;->e:Lmc/a;

    if-nez v0, :cond_0

    new-instance v0, Lmc/a;

    iget v2, p0, Lma/g;->g:I

    iget v3, p0, Lma/g;->h:I

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/16 v4, 0x64

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lmc/a;-><init>(IIIIZ)V

    iput-object v0, p0, Lma/g;->e:Lmc/a;

    return-void

    :cond_0
    invoke-virtual {v0}, Lmc/a;->p()I

    move-result v0

    iget v1, p0, Lma/g;->g:I

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lma/g;->e:Lmc/a;

    invoke-virtual {v0}, Lmc/a;->o()I

    move-result v0

    iget v1, p0, Lma/g;->h:I

    if-eq v0, v1, :cond_2

    :cond_1
    iget-object v0, p0, Lma/g;->e:Lmc/a;

    iget v1, p0, Lma/g;->g:I

    iget v2, p0, Lma/g;->h:I

    invoke-virtual {v0, v1, v2}, Lmc/a;->u(II)Z

    :cond_2
    return-void
.end method

.method public m()LMb/p;
    .locals 1

    iget-object v0, p0, Lma/g;->c:LMb/p;

    return-object v0
.end method

.method public n()LMb/p;
    .locals 2

    invoke-virtual {p0}, Lma/g;->p()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lma/g;->d:Lmc/a;

    invoke-virtual {v0}, Lmc/a;->l()Lcom/itsmagic/engine/Engines/Engine/Texture/ColorTexture;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Not renderable yet"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public o()Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle;
    .locals 1

    iget-object v0, p0, Lma/g;->b:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle;

    return-object v0
.end method

.method public p()Z
    .locals 1

    iget-object v0, p0, Lma/g;->d:Lmc/a;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lmc/a;->l()Lcom/itsmagic/engine/Engines/Engine/Texture/ColorTexture;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lma/g;->d:Lmc/a;

    invoke-virtual {v0}, Lmc/a;->l()Lcom/itsmagic/engine/Engines/Engine/Texture/ColorTexture;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Texture/ColorTexture;->W()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public r()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lma/g;->l:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lma/g;->k:Z

    return-void
.end method

.method public s()V
    .locals 3

    iget-boolean v0, p0, Lma/g;->k:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lma/g;->b:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lma/g;->e:Lmc/a;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lma/g;->a:Lma/g$a;

    if-eqz v1, :cond_0

    iget-boolean v2, p0, Lma/g;->l:Z

    if-eqz v2, :cond_0

    invoke-virtual {v1, v0}, Lma/g$a;->e(Lmc/a;)V

    invoke-virtual {p0}, Lma/g;->A()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lma/g;->k:Z

    iput-boolean v0, p0, Lma/g;->l:Z

    iget-object v0, p0, Lma/g;->n:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method

.method public final u(Lma/d;)F
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "gradientMode"
        }
    .end annotation

    if-eqz p1, :cond_0

    :goto_0
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    int-to-float p1, p1

    goto :goto_1

    :cond_0
    sget-object p1, Lma/d;->Solid:Lma/d;

    goto :goto_0

    :goto_1
    return p1
.end method

.method public final v(Lma/e;)F
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "maskMode"
        }
    .end annotation

    if-eqz p1, :cond_0

    :goto_0
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    int-to-float p1, p1

    goto :goto_1

    :cond_0
    sget-object p1, Lma/e;->Linear:Lma/e;

    goto :goto_0

    :goto_1
    return p1
.end method

.method public w(LMb/p;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "albedo"
        }
    .end annotation

    iget-object v0, p0, Lma/g;->c:LMb/p;

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Lma/g;->c:LMb/p;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lma/g;->k:Z

    const/4 p1, 0x0

    iput-boolean p1, p0, Lma/g;->l:Z

    return-void
.end method

.method public final x(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "param",
            "colorINT"
        }
    .end annotation

    if-nez p2, :cond_0

    iget-object p2, p0, Lma/g;->a:Lma/g$a;

    invoke-static {p2}, Lma/g$a;->a(Lma/g$a;)Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;

    move-result-object v0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;->Q(Ljava/lang/String;FFFF)V

    return-void

    :cond_0
    iget-object v0, p0, Lma/g;->a:Lma/g$a;

    invoke-static {v0}, Lma/g$a;->a(Lma/g$a;)Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;

    move-result-object v1

    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->I()F

    move-result v3

    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->G()F

    move-result v4

    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->F()F

    move-result v5

    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->E()F

    move-result v6

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;->Q(Ljava/lang/String;FFFF)V

    return-void
.end method

.method public y(II)Z
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "w",
            "h"
        }
    .end annotation

    invoke-static {}, Lc9/a;->F()V

    iget v0, p0, Lma/g;->g:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, p1, :cond_1

    iget v0, p0, Lma/g;->h:I

    if-eq v0, p2, :cond_0

    goto :goto_0

    :cond_0
    move v0, v2

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v1

    :goto_1
    iput p1, p0, Lma/g;->g:I

    iput p2, p0, Lma/g;->h:I

    if-eqz v0, :cond_2

    const/high16 p1, -0x80000000

    iput p1, p0, Lma/g;->i:I

    iput-boolean v1, p0, Lma/g;->k:Z

    iput-boolean v2, p0, Lma/g;->l:Z

    :cond_2
    return v0
.end method

.method public z(Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "style"
        }
    .end annotation

    iget-object v0, p0, Lma/g;->b:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle;

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Lma/g;->b:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle;

    const/high16 p1, -0x80000000

    iput p1, p0, Lma/g;->i:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Lma/g;->k:Z

    const/4 p1, 0x0

    iput-boolean p1, p0, Lma/g;->l:Z

    return-void
.end method
