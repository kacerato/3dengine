.class public LMb/l;
.super LMb/p;
.source "SourceFile"


# instance fields
.field public m:Lcom/itsmagic/engine/Engines/Engine/Texture/Data/a;

.field public n:Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Engines/Engine/Texture/Data/a;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "nativeTexture"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, LMb/l;-><init>(Lcom/itsmagic/engine/Engines/Engine/Texture/Data/a;Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;)V

    return-void
.end method

.method public constructor <init>(Lcom/itsmagic/engine/Engines/Engine/Texture/Data/a;Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "nativeTexture",
            "config"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, LMb/p;-><init>()V

    .line 3
    invoke-virtual {p0, p1, p2}, LMb/l;->H0(Lcom/itsmagic/engine/Engines/Engine/Texture/Data/a;Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;)V

    return-void
.end method

.method public static synthetic C0(LMb/l;)Lcom/itsmagic/engine/Engines/Engine/Texture/Data/a;
    .locals 0

    iget-object p0, p0, LMb/l;->m:Lcom/itsmagic/engine/Engines/Engine/Texture/Data/a;

    return-object p0
.end method

.method public static synthetic D0(LMb/l;Lcom/itsmagic/engine/Engines/Engine/Texture/Data/a;)Lcom/itsmagic/engine/Engines/Engine/Texture/Data/a;
    .locals 0

    iput-object p1, p0, LMb/l;->m:Lcom/itsmagic/engine/Engines/Engine/Texture/Data/a;

    return-object p1
.end method


# virtual methods
.method public A(II)F
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "x",
            "y"
        }
    .end annotation

    invoke-virtual {p0}, LMb/l;->F0()Lcom/itsmagic/engine/Engines/Engine/Texture/Data/a;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/a;->J(II)F

    move-result p1

    return p1
.end method

.method public A0(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enabled"
        }
    .end annotation

    invoke-virtual {p0}, LMb/l;->F0()Lcom/itsmagic/engine/Engines/Engine/Texture/Data/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/a;->j0(Z)V

    return-void
.end method

.method public B(II)F
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "x",
            "y"
        }
    .end annotation

    invoke-virtual {p0}, LMb/l;->F0()Lcom/itsmagic/engine/Engines/Engine/Texture/Data/a;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/a;->K(II)F

    move-result p1

    return p1
.end method

.method public D()J
    .locals 2

    invoke-virtual {p0}, LMb/l;->F0()Lcom/itsmagic/engine/Engines/Engine/Texture/Data/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/a;->L()J

    move-result-wide v0

    return-wide v0
.end method

.method public E(II)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "x",
            "y"
        }
    .end annotation

    invoke-virtual {p0}, LMb/l;->F0()Lcom/itsmagic/engine/Engines/Engine/Texture/Data/a;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/a;->M(II)I

    move-result p1

    return p1
.end method

.method public E0()Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;
    .locals 1

    iget-object v0, p0, LMb/l;->n:Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;

    return-object v0
.end method

.method public F(II)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "x",
            "y"
        }
    .end annotation

    invoke-virtual {p0}, LMb/l;->F0()Lcom/itsmagic/engine/Engines/Engine/Texture/Data/a;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/a;->N(II)I

    move-result p1

    return p1
.end method

.method public final F0()Lcom/itsmagic/engine/Engines/Engine/Texture/Data/a;
    .locals 2

    iget-object v0, p0, LMb/l;->m:Lcom/itsmagic/engine/Engines/Engine/Texture/Data/a;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Texture not loaded yet"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public G(II)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "x",
            "y"
        }
    .end annotation

    invoke-virtual {p0}, LMb/l;->F0()Lcom/itsmagic/engine/Engines/Engine/Texture/Data/a;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/a;->O(II)I

    move-result p1

    return p1
.end method

.method public G0(Lcom/itsmagic/engine/Engines/Engine/Texture/Data/a;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "nativeTexture"
        }
    .end annotation

    iget-object v0, p0, LMb/l;->n:Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;

    invoke-virtual {p0, p1, v0}, LMb/l;->H0(Lcom/itsmagic/engine/Engines/Engine/Texture/Data/a;Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;)V

    return-void
.end method

.method public H(II)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "x",
            "y"
        }
    .end annotation

    invoke-virtual {p0}, LMb/l;->F0()Lcom/itsmagic/engine/Engines/Engine/Texture/Data/a;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/a;->P(II)I

    move-result p1

    return p1
.end method

.method public H0(Lcom/itsmagic/engine/Engines/Engine/Texture/Data/a;Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "nativeTexture",
            "config"
        }
    .end annotation

    if-eqz p1, :cond_1

    iput-object p1, p0, LMb/l;->m:Lcom/itsmagic/engine/Engines/Engine/Texture/Data/a;

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p2, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;

    invoke-direct {p2}, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;-><init>()V

    :goto_0
    iput-object p2, p0, LMb/l;->n:Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/a;->getWidth()I

    move-result p2

    iput p2, p0, LMb/p;->c:I

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/a;->getHeight()I

    move-result p1

    iput p1, p0, LMb/p;->d:I

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, LMb/p;->s0(Z)V

    return-void

    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "nativeTexture can\'t be null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public I()Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$b;
    .locals 1

    invoke-virtual {p0}, LMb/l;->F0()Lcom/itsmagic/engine/Engines/Engine/Texture/Data/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/a;->Q()Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$b;

    move-result-object v0

    return-object v0
.end method

.method public J()Lcom/itsmagic/engine/Engines/Engine/Texture/Data/a;
    .locals 1

    invoke-virtual {p0}, LMb/l;->F0()Lcom/itsmagic/engine/Engines/Engine/Texture/Data/a;

    move-result-object v0

    return-object v0
.end method

.method public L(IIIILcom/itsmagic/engine/Engines/Engine/Texture/Data/a$b;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "ofx",
            "ofy",
            "w",
            "h",
            "extractCallback"
        }
    .end annotation

    invoke-virtual {p0}, LMb/l;->F0()Lcom/itsmagic/engine/Engines/Engine/Texture/Data/a;

    move-result-object v0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/a;->m0(IIIILcom/itsmagic/engine/Engines/Engine/Texture/Data/a$b;)V

    return-void
.end method

.method public N()Z
    .locals 1

    iget-object v0, p0, LMb/l;->n:Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->x()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public O()Z
    .locals 1

    invoke-virtual {p0}, LMb/l;->F0()Lcom/itsmagic/engine/Engines/Engine/Texture/Data/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/a;->S()Z

    move-result v0

    return v0
.end method

.method public U()Z
    .locals 1

    iget-object v0, p0, LMb/l;->m:Lcom/itsmagic/engine/Engines/Engine/Texture/Data/a;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/a;->T()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public V()Z
    .locals 1

    invoke-virtual {p0}, LMb/l;->F0()Lcom/itsmagic/engine/Engines/Engine/Texture/Data/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/a;->U()Z

    move-result v0

    return v0
.end method

.method public W()Z
    .locals 1

    iget-object v0, p0, LMb/l;->m:Lcom/itsmagic/engine/Engines/Engine/Texture/Data/a;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/a;->V()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public a0()Z
    .locals 1

    iget-object v0, p0, LMb/l;->m:Lcom/itsmagic/engine/Engines/Engine/Texture/Data/a;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/a;->W()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public apply()V
    .locals 2

    invoke-virtual {p0}, LMb/l;->F0()Lcom/itsmagic/engine/Engines/Engine/Texture/Data/a;

    move-result-object v0

    invoke-static {}, Lc9/a;->q()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, LMb/k;

    invoke-direct {v1, p0}, LMb/k;-><init>(LMb/l;)V

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/a;->B(Ljava/lang/Runnable;)Z

    return-void

    :cond_0
    new-instance v1, LMb/l$a;

    invoke-direct {v1, p0, v0}, LMb/l$a;-><init>(LMb/l;Lcom/itsmagic/engine/Engines/Engine/Texture/Data/a;)V

    invoke-static {v1}, Lc9/a;->I(Ljava/lang/Runnable;)V

    return-void
.end method

.method public destroyImmediate()V
    .locals 1

    iget-object v0, p0, LMb/l;->m:Lcom/itsmagic/engine/Engines/Engine/Texture/Data/a;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, LMb/p;->s0(Z)V

    new-instance v0, LMb/l$b;

    invoke-direct {v0, p0}, LMb/l$b;-><init>(LMb/l;)V

    invoke-static {v0}, Lc9/a;->I(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public e0(LMb/p;IIII)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "textureInstance",
            "startX",
            "startY",
            "width",
            "height"
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-virtual {p0}, LMb/l;->F0()Lcom/itsmagic/engine/Engines/Engine/Texture/Data/a;

    move-result-object v0

    invoke-virtual {p1}, LMb/p;->J()Lcom/itsmagic/engine/Engines/Engine/Texture/Data/a;

    move-result-object v1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/a;->X(Lcom/itsmagic/engine/Engines/Engine/Texture/Data/a;IIII)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "textureInstance can\'t be null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public h0(IILMb/p$e;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "w",
            "h",
            "resizeFilter"
        }
    .end annotation

    new-instance p1, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/Exceptions/UnsupportedTextureOperation;

    const-string p2, "ProvidedNativeTexture can\'t resize its provided native texture"

    invoke-direct {p1, p2}, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/Exceptions/UnsupportedTextureOperation;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public k0(IILcom/itsmagic/engine/Engines/Engine/Color/ColorINT;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "x",
            "y",
            "color"
        }
    .end annotation

    invoke-virtual {p0}, LMb/l;->F0()Lcom/itsmagic/engine/Engines/Engine/Texture/Data/a;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/a;->c0(IILcom/itsmagic/engine/Engines/Engine/Color/ColorINT;)V

    return-void
.end method

.method public m0(IIF)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "x",
            "y",
            "v"
        }
    .end annotation

    invoke-virtual {p0}, LMb/l;->F0()Lcom/itsmagic/engine/Engines/Engine/Texture/Data/a;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/a;->d0(IIF)V

    return-void
.end method

.method public n0(IIF)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "x",
            "y",
            "v"
        }
    .end annotation

    invoke-virtual {p0}, LMb/l;->F0()Lcom/itsmagic/engine/Engines/Engine/Texture/Data/a;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/a;->f0(IIF)V

    return-void
.end method

.method public o0(IIF)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "x",
            "y",
            "v"
        }
    .end annotation

    invoke-virtual {p0}, LMb/l;->F0()Lcom/itsmagic/engine/Engines/Engine/Texture/Data/a;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/a;->h0(IIF)V

    return-void
.end method

.method public p0(IIF)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "x",
            "y",
            "v"
        }
    .end annotation

    invoke-virtual {p0}, LMb/l;->F0()Lcom/itsmagic/engine/Engines/Engine/Texture/Data/a;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/a;->k0(IIF)V

    return-void
.end method

.method public q0(IIFFF)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "x",
            "y",
            "r",
            "g",
            "b"
        }
    .end annotation

    invoke-virtual {p0}, LMb/l;->F0()Lcom/itsmagic/engine/Engines/Engine/Texture/Data/a;

    move-result-object v0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/a;->Y(IIFFF)V

    return-void
.end method

.method public r0(IIFFFF)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "x",
            "y",
            "r",
            "g",
            "b",
            "a"
        }
    .end annotation

    invoke-virtual {p0}, LMb/l;->F0()Lcom/itsmagic/engine/Engines/Engine/Texture/Data/a;

    move-result-object v0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/a;->Z(IIFFFF)V

    return-void
.end method

.method public s(Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "m",
            "attributeName"
        }
    .end annotation

    if-eqz p1, :cond_2

    invoke-virtual {p0}, LMb/p;->T()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, LMb/l;->F0()Lcom/itsmagic/engine/Engines/Engine/Texture/Data/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/a;->V()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/a;->C(Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance p1, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/Exceptions/UnsupportedTextureOperation;

    const-string p2, "Texture not renderable"

    invoke-direct {p1, p2}, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/Exceptions/UnsupportedTextureOperation;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1}, Ljava/lang/RuntimeException;-><init>()V

    throw p1

    :cond_2
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Material can`t be null"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public t0(III)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "x",
            "y",
            "v"
        }
    .end annotation

    invoke-virtual {p0}, LMb/l;->F0()Lcom/itsmagic/engine/Engines/Engine/Texture/Data/a;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/a;->e0(III)V

    return-void
.end method

.method public u0(III)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "x",
            "y",
            "v"
        }
    .end annotation

    invoke-virtual {p0}, LMb/l;->F0()Lcom/itsmagic/engine/Engines/Engine/Texture/Data/a;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/a;->g0(III)V

    return-void
.end method

.method public v(II)Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "x",
            "y"
        }
    .end annotation

    invoke-virtual {p0}, LMb/l;->F0()Lcom/itsmagic/engine/Engines/Engine/Texture/Data/a;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/a;->E(II)Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    move-result-object p1

    return-object p1
.end method

.method public v0(III)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "x",
            "y",
            "v"
        }
    .end annotation

    invoke-virtual {p0}, LMb/l;->F0()Lcom/itsmagic/engine/Engines/Engine/Texture/Data/a;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/a;->i0(III)V

    return-void
.end method

.method public w(IILcom/itsmagic/engine/Engines/Engine/Color/ColorINT;)Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "x",
            "y",
            "out"
        }
    .end annotation

    invoke-virtual {p0}, LMb/l;->F0()Lcom/itsmagic/engine/Engines/Engine/Texture/Data/a;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/a;->F(IILcom/itsmagic/engine/Engines/Engine/Color/ColorINT;)Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    move-result-object p1

    return-object p1
.end method

.method public w0(III)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "x",
            "y",
            "v"
        }
    .end annotation

    invoke-virtual {p0}, LMb/l;->F0()Lcom/itsmagic/engine/Engines/Engine/Texture/Data/a;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/a;->l0(III)V

    return-void
.end method

.method public x()Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;
    .locals 1

    invoke-virtual {p0}, LMb/l;->F0()Lcom/itsmagic/engine/Engines/Engine/Texture/Data/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/a;->G()Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;

    move-result-object v0

    return-object v0
.end method

.method public x0(IIIII)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "x",
            "y",
            "r",
            "g",
            "b"
        }
    .end annotation

    invoke-virtual {p0}, LMb/l;->F0()Lcom/itsmagic/engine/Engines/Engine/Texture/Data/a;

    move-result-object v0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/a;->a0(IIIII)V

    return-void
.end method

.method public y(II)F
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "x",
            "y"
        }
    .end annotation

    invoke-virtual {p0}, LMb/l;->F0()Lcom/itsmagic/engine/Engines/Engine/Texture/Data/a;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/a;->H(II)F

    move-result p1

    return p1
.end method

.method public y0(IIIIII)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "x",
            "y",
            "r",
            "g",
            "b",
            "a"
        }
    .end annotation

    invoke-virtual {p0}, LMb/l;->F0()Lcom/itsmagic/engine/Engines/Engine/Texture/Data/a;

    move-result-object v0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/a;->b0(IIIIII)V

    return-void
.end method

.method public z(II)F
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "x",
            "y"
        }
    .end annotation

    invoke-virtual {p0}, LMb/l;->F0()Lcom/itsmagic/engine/Engines/Engine/Texture/Data/a;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/a;->I(II)F

    move-result p1

    return p1
.end method

.method public z0(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    iget-object v0, p0, LMb/l;->n:Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->s0(Z)V

    :cond_0
    return-void
.end method
