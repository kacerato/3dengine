.class public LNb/c;
.super LNb/a;
.source "SourceFile"


# instance fields
.field public final a:I

.field public final b:I

.field public final c:I

.field public final d:LNb/d;

.field public final e:Lcom/google/android/filament/TextureSampler;

.field public final f:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;

.field public final g:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

.field public h:Ljava/nio/ByteBuffer;

.field public i:Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;

.field public j:Ljava/nio/ByteBuffer;


# direct methods
.method public constructor <init>(III)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "width",
            "height",
            "depth"
        }
    .end annotation

    .line 1
    sget-object v0, LNb/d;->NATIVE:LNb/d;

    invoke-direct {p0, p1, p2, p3, v0}, LNb/c;-><init>(IIILNb/d;)V

    return-void
.end method

.method public constructor <init>(IIILNb/d;)V
    .locals 11
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "width",
            "height",
            "depth",
            "storageType"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, LNb/a;-><init>()V

    .line 3
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;-><init>()V

    iput-object v0, p0, LNb/c;->g:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    if-lez p1, :cond_2

    if-lez p2, :cond_2

    if-lez p3, :cond_2

    if-eqz p4, :cond_1

    .line 4
    invoke-static {}, Ljc/a;->d()V

    .line 5
    invoke-static {}, Lc9/a;->F()V

    .line 6
    iput p1, p0, LNb/c;->a:I

    .line 7
    iput p2, p0, LNb/c;->b:I

    .line 8
    iput p3, p0, LNb/c;->c:I

    .line 9
    iput-object p4, p0, LNb/c;->d:LNb/d;

    .line 10
    new-instance v7, Lcom/google/android/filament/TextureSampler;

    sget-object v0, Lcom/google/android/filament/TextureSampler$f;->LINEAR:Lcom/google/android/filament/TextureSampler$f;

    sget-object v1, Lcom/google/android/filament/TextureSampler$e;->LINEAR:Lcom/google/android/filament/TextureSampler$e;

    sget-object v2, Lcom/google/android/filament/TextureSampler$g;->CLAMP_TO_EDGE:Lcom/google/android/filament/TextureSampler$g;

    invoke-direct {v7, v0, v1, v2}, Lcom/google/android/filament/TextureSampler;-><init>(Lcom/google/android/filament/TextureSampler$f;Lcom/google/android/filament/TextureSampler$e;Lcom/google/android/filament/TextureSampler$g;)V

    iput-object v7, p0, LNb/c;->e:Lcom/google/android/filament/TextureSampler;

    .line 11
    sget-object v0, LNb/d;->NATIVE:LNb/d;

    if-ne p4, v0, :cond_0

    .line 12
    new-instance p4, Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;

    mul-int v0, p1, p2

    mul-int/2addr v0, p3

    mul-int/lit8 v0, v0, 0x4

    invoke-direct {p4, v0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;-><init>(I)V

    iput-object p4, p0, LNb/c;->i:Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;

    goto :goto_0

    :cond_0
    mul-int p4, p1, p2

    mul-int/2addr p4, p3

    mul-int/lit8 p4, p4, 0x4

    .line 13
    invoke-static {p4}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object p4

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v0

    invoke-virtual {p4, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object p4

    iput-object p4, p0, LNb/c;->h:Ljava/nio/ByteBuffer;

    .line 14
    :goto_0
    new-instance p4, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;

    sget-object v4, Lcom/google/android/filament/Texture$e;->RGBA:Lcom/google/android/filament/Texture$e;

    sget-object v5, Lcom/google/android/filament/Texture$k;->UBYTE:Lcom/google/android/filament/Texture$k;

    new-instance v0, Lcom/google/android/filament/Texture$b;

    invoke-direct {v0}, Lcom/google/android/filament/Texture$b;-><init>()V

    sget-object v1, Lcom/google/android/filament/Texture$f;->RGBA8:Lcom/google/android/filament/Texture$f;

    .line 15
    invoke-virtual {v0, v1}, Lcom/google/android/filament/Texture$b;->d(Lcom/google/android/filament/Texture$f;)Lcom/google/android/filament/Texture$b;

    move-result-object v0

    .line 16
    invoke-virtual {v0, p3}, Lcom/google/android/filament/Texture$b;->b(I)Lcom/google/android/filament/Texture$b;

    move-result-object v6

    const/16 v9, 0x18

    .line 17
    invoke-static {}, LNb/c;->d()Lcom/google/android/filament/Texture$i;

    move-result-object v10

    const/4 v8, 0x0

    move-object v1, p4

    move v2, p1

    move v3, p2

    invoke-direct/range {v1 .. v10}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;-><init>(IILcom/google/android/filament/Texture$e;Lcom/google/android/filament/Texture$k;Lcom/google/android/filament/Texture$b;Lcom/google/android/filament/TextureSampler;IILcom/google/android/filament/Texture$i;)V

    iput-object p4, p0, LNb/c;->f:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;

    const/16 p1, 0xff

    const/4 p2, 0x0

    .line 18
    invoke-virtual {p0, p2, p2, p2, p1}, LNb/c;->g(IIII)V

    return-void

    .line 19
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "storageType can\'t be null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 20
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Width, height and depth must be greater than zero"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static d()Lcom/google/android/filament/Texture$i;
    .locals 3

    :try_start_0
    const-string v0, "SAMPLER_2D_ARRAY"

    invoke-static {v0}, Lcom/google/android/filament/Texture$i;->valueOf(Ljava/lang/String;)Lcom/google/android/filament/Texture$i;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Filament does not support 2D array textures in this runtime"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public a(Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "material",
            "attributeName"
        }
    .end annotation

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, LNb/c;->f:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;

    iget-object v1, p0, LNb/c;->e:Lcom/google/android/filament/TextureSampler;

    invoke-virtual {p1, p2, v0, v1}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;->D(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;Lcom/google/android/filament/TextureSampler;)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "attributeName can\'t be null or empty"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "material can\'t be null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public b()Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;
    .locals 1

    iget-object v0, p0, LNb/c;->f:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;

    return-object v0
.end method

.method public c()V
    .locals 9

    invoke-static {}, Lc9/a;->F()V

    new-instance v8, Lcom/google/android/filament/Texture$g;

    invoke-virtual {p0}, LNb/c;->e()Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Lcom/google/android/filament/Texture$e;->RGBA:Lcom/google/android/filament/Texture$e;

    sget-object v2, Lcom/google/android/filament/Texture$k;->UBYTE:Lcom/google/android/filament/Texture$k;

    invoke-direct {v8, v0, v1, v2}, Lcom/google/android/filament/Texture$g;-><init>(Ljava/nio/Buffer;Lcom/google/android/filament/Texture$e;Lcom/google/android/filament/Texture$k;)V

    iget-object v0, p0, LNb/c;->f:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;

    iget v5, p0, LNb/c;->a:I

    iget v6, p0, LNb/c;->b:I

    iget v7, p0, LNb/c;->c:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual/range {v0 .. v8}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;->D(IIIIIIILcom/google/android/filament/Texture$g;)V

    return-void
.end method

.method public final e()Ljava/nio/ByteBuffer;
    .locals 4

    iget v0, p0, LNb/c;->a:I

    iget v1, p0, LNb/c;->b:I

    mul-int/2addr v0, v1

    iget v1, p0, LNb/c;->c:I

    mul-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x4

    iget-object v1, p0, LNb/c;->j:Ljava/nio/ByteBuffer;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/nio/Buffer;->capacity()I

    move-result v1

    if-eq v1, v0, :cond_1

    :cond_0
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, LNb/c;->j:Ljava/nio/ByteBuffer;

    :cond_1
    iget-object v0, p0, LNb/c;->j:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    iget-object v0, p0, LNb/c;->d:LNb/d;

    sget-object v1, LNb/d;->NATIVE:LNb/d;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_2

    iget-object v0, p0, LNb/c;->i:Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;->S0()[S

    move-result-object v0

    :goto_0
    array-length v1, v0

    if-ge v2, v1, :cond_3

    iget-object v1, p0, LNb/c;->j:Ljava/nio/ByteBuffer;

    aget-short v3, v0, v2

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    iget-object v0, p0, LNb/c;->h:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->capacity()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    iget-object v1, p0, LNb/c;->j:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    :cond_3
    iget-object v0, p0, LNb/c;->j:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    iget-object v0, p0, LNb/c;->j:Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method public f()V
    .locals 1

    invoke-static {}, Ljc/a;->d()V

    invoke-static {}, Lc9/a;->F()V

    iget-object v0, p0, LNb/c;->i:Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;->destroyImmediate()V

    const/4 v0, 0x0

    iput-object v0, p0, LNb/c;->i:Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;

    :cond_0
    iget-object v0, p0, LNb/c;->f:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;->destroyImmediate()V

    :cond_1
    return-void
.end method

.method public g(IIII)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "r",
            "g",
            "b",
            "a"
        }
    .end annotation

    iget-object v0, p0, LNb/c;->d:LNb/d;

    sget-object v1, LNb/d;->NATIVE:LNb/d;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_2

    move v0, v2

    :goto_0
    iget v1, p0, LNb/c;->c:I

    if-ge v0, v1, :cond_5

    move v1, v2

    :goto_1
    iget v3, p0, LNb/c;->b:I

    if-ge v1, v3, :cond_1

    move v3, v2

    :goto_2
    iget v4, p0, LNb/c;->a:I

    if-ge v3, v4, :cond_0

    invoke-virtual {p0, v3, v1, v0}, LNb/c;->o(III)I

    move-result v4

    iget-object v5, p0, LNb/c;->i:Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;

    and-int/lit16 v6, p4, 0xff

    int-to-short v6, v6

    invoke-virtual {v5, v4, v6}, Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;->G0(IS)V

    iget-object v5, p0, LNb/c;->i:Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;

    add-int/lit8 v6, v4, 0x1

    and-int/lit16 v7, p1, 0xff

    int-to-short v7, v7

    invoke-virtual {v5, v6, v7}, Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;->G0(IS)V

    iget-object v5, p0, LNb/c;->i:Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;

    add-int/lit8 v6, v4, 0x2

    and-int/lit16 v7, p2, 0xff

    int-to-short v7, v7

    invoke-virtual {v5, v6, v7}, Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;->G0(IS)V

    iget-object v5, p0, LNb/c;->i:Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;

    add-int/lit8 v4, v4, 0x3

    and-int/lit16 v6, p3, 0xff

    int-to-short v6, v6

    invoke-virtual {v5, v4, v6}, Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;->G0(IS)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_3
    iget v1, p0, LNb/c;->c:I

    if-ge v0, v1, :cond_5

    move v1, v2

    :goto_4
    iget v3, p0, LNb/c;->b:I

    if-ge v1, v3, :cond_4

    move v3, v2

    :goto_5
    iget v4, p0, LNb/c;->a:I

    if-ge v3, v4, :cond_3

    invoke-virtual {p0, v3, v1, v0}, LNb/c;->o(III)I

    move-result v4

    iget-object v5, p0, LNb/c;->h:Ljava/nio/ByteBuffer;

    and-int/lit16 v6, p4, 0xff

    int-to-byte v6, v6

    invoke-virtual {v5, v4, v6}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    iget-object v5, p0, LNb/c;->h:Ljava/nio/ByteBuffer;

    add-int/lit8 v6, v4, 0x1

    and-int/lit16 v7, p1, 0xff

    int-to-byte v7, v7

    invoke-virtual {v5, v6, v7}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    iget-object v5, p0, LNb/c;->h:Ljava/nio/ByteBuffer;

    add-int/lit8 v6, v4, 0x2

    and-int/lit16 v7, p2, 0xff

    int-to-byte v7, v7

    invoke-virtual {v5, v6, v7}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    iget-object v5, p0, LNb/c;->h:Ljava/nio/ByteBuffer;

    add-int/lit8 v4, v4, 0x3

    and-int/lit16 v6, p3, 0xff

    int-to-byte v6, v6

    invoke-virtual {v5, v4, v6}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_5
    invoke-virtual {p0}, LNb/c;->c()V

    return-void
.end method

.method public h(III)Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;
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
            "z"
        }
    .end annotation

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;-><init>()V

    invoke-virtual {p0, p1, p2, p3, v0}, LNb/c;->i(IIILcom/itsmagic/engine/Engines/Engine/Color/ColorINT;)Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    return-object v0
.end method

.method public i(IIILcom/itsmagic/engine/Engines/Engine/Color/ColorINT;)Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "x",
            "y",
            "z",
            "out"
        }
    .end annotation

    invoke-virtual {p0, p1, p2, p3}, LNb/c;->p(III)V

    invoke-virtual {p0, p1, p2, p3}, LNb/c;->o(III)I

    move-result p1

    iget-object p2, p0, LNb/c;->d:LNb/d;

    sget-object p3, LNb/d;->NATIVE:LNb/d;

    if-ne p2, p3, :cond_0

    iget-object p2, p0, LNb/c;->i:Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;

    invoke-virtual {p2, p1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;->X(I)S

    move-result p2

    const p3, 0xffff

    and-int/2addr p2, p3

    iget-object v0, p0, LNb/c;->i:Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;

    add-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;->X(I)S

    move-result v0

    and-int/2addr v0, p3

    iget-object v1, p0, LNb/c;->i:Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;

    add-int/lit8 v2, p1, 0x2

    invoke-virtual {v1, v2}, Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;->X(I)S

    move-result v1

    and-int/2addr v1, p3

    iget-object v2, p0, LNb/c;->i:Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;

    add-int/lit8 p1, p1, 0x3

    invoke-virtual {v2, p1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;->X(I)S

    move-result p1

    and-int/2addr p1, p3

    invoke-virtual {p4, p2, v0, v1, p1}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->k0(IIII)V

    goto :goto_0

    :cond_0
    iget-object p2, p0, LNb/c;->h:Ljava/nio/ByteBuffer;

    invoke-virtual {p2, p1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result p2

    and-int/lit16 p2, p2, 0xff

    iget-object p3, p0, LNb/c;->h:Ljava/nio/ByteBuffer;

    add-int/lit8 v0, p1, 0x1

    invoke-virtual {p3, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result p3

    and-int/lit16 p3, p3, 0xff

    iget-object v0, p0, LNb/c;->h:Ljava/nio/ByteBuffer;

    add-int/lit8 v1, p1, 0x2

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    iget-object v1, p0, LNb/c;->h:Ljava/nio/ByteBuffer;

    add-int/lit8 p1, p1, 0x3

    invoke-virtual {v1, p1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result p1

    and-int/lit16 p1, p1, 0xff

    invoke-virtual {p4, p2, p3, v0, p1}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->k0(IIII)V

    :goto_0
    return-object p4
.end method

.method public j()I
    .locals 1

    iget v0, p0, LNb/c;->c:I

    return v0
.end method

.method public k()I
    .locals 1

    iget v0, p0, LNb/c;->b:I

    return v0
.end method

.method public l()LNb/d;
    .locals 1

    iget-object v0, p0, LNb/c;->d:LNb/d;

    return-object v0
.end method

.method public m()I
    .locals 1

    iget v0, p0, LNb/c;->a:I

    return v0
.end method

.method public n()Z
    .locals 1

    iget-object v0, p0, LNb/c;->f:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;->B()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final o(III)I
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param
    .param p3    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "x",
            "y",
            "z"
        }
    .end annotation

    iget v0, p0, LNb/c;->b:I

    mul-int/2addr p3, v0

    add-int/2addr p3, p2

    iget p2, p0, LNb/c;->a:I

    mul-int/2addr p3, p2

    add-int/2addr p3, p1

    mul-int/lit8 p3, p3, 0x4

    return p3
.end method

.method public final p(III)V
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
            "z"
        }
    .end annotation

    if-ltz p1, :cond_2

    iget v0, p0, LNb/c;->a:I

    if-ge p1, v0, :cond_2

    if-ltz p2, :cond_1

    iget p1, p0, LNb/c;->b:I

    if-ge p2, p1, :cond_1

    if-ltz p3, :cond_0

    iget p1, p0, LNb/c;->c:I

    if-ge p3, p1, :cond_0

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    const-string p2, "z out of bounds"

    invoke-direct {p1, p2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    const-string p2, "y out of bounds"

    invoke-direct {p1, p2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    const-string p2, "x out of bounds"

    invoke-direct {p1, p2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public q(IIILcom/itsmagic/engine/Engines/Engine/Color/ColorINT;)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "x",
            "y",
            "z",
            "color"
        }
    .end annotation

    if-eqz p4, :cond_0

    invoke-virtual {p4}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->O()I

    move-result v4

    invoke-virtual {p4}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->J()I

    move-result v5

    invoke-virtual {p4}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->C()I

    move-result v6

    invoke-virtual {p4}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->B()I

    move-result v7

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v7}, LNb/c;->y(IIIIIII)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "color can\'t be null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public r(IIIFFF)V
    .locals 8
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
            "z",
            "r",
            "g",
            "b"
        }
    .end annotation

    const/high16 v7, 0x3f800000    # 1.0f

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v7}, LNb/c;->s(IIIFFFF)V

    return-void
.end method

.method public s(IIIFFFF)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
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
            "z",
            "r",
            "g",
            "b",
            "a"
        }
    .end annotation

    iget-object v0, p0, LNb/c;->g:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    invoke-virtual {v0, p7, p4, p5, p6}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->e0(FFFF)V

    iget-object p4, p0, LNb/c;->g:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    invoke-virtual {p0, p1, p2, p3, p4}, LNb/c;->q(IIILcom/itsmagic/engine/Engines/Engine/Color/ColorINT;)V

    return-void
.end method

.method public t(IIII)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "x",
            "y",
            "z",
            "v"
        }
    .end annotation

    invoke-virtual {p0, p1, p2, p3}, LNb/c;->p(III)V

    iget-object v0, p0, LNb/c;->d:LNb/d;

    sget-object v1, LNb/d;->NATIVE:LNb/d;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, LNb/c;->i:Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;

    invoke-virtual {p0, p1, p2, p3}, LNb/c;->o(III)I

    move-result p1

    and-int/lit16 p2, p4, 0xff

    int-to-short p2, p2

    invoke-virtual {v0, p1, p2}, Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;->G0(IS)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, LNb/c;->h:Ljava/nio/ByteBuffer;

    invoke-virtual {p0, p1, p2, p3}, LNb/c;->o(III)I

    move-result p1

    and-int/lit16 p2, p4, 0xff

    int-to-byte p2, p2

    invoke-virtual {v0, p1, p2}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    :goto_0
    invoke-virtual {p0}, LNb/c;->c()V

    return-void
.end method

.method public u(IIII)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "x",
            "y",
            "z",
            "v"
        }
    .end annotation

    invoke-virtual {p0, p1, p2, p3}, LNb/c;->p(III)V

    iget-object v0, p0, LNb/c;->d:LNb/d;

    sget-object v1, LNb/d;->NATIVE:LNb/d;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, LNb/c;->i:Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;

    invoke-virtual {p0, p1, p2, p3}, LNb/c;->o(III)I

    move-result p1

    add-int/lit8 p1, p1, 0x3

    and-int/lit16 p2, p4, 0xff

    int-to-short p2, p2

    invoke-virtual {v0, p1, p2}, Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;->G0(IS)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, LNb/c;->h:Ljava/nio/ByteBuffer;

    invoke-virtual {p0, p1, p2, p3}, LNb/c;->o(III)I

    move-result p1

    add-int/lit8 p1, p1, 0x3

    and-int/lit16 p2, p4, 0xff

    int-to-byte p2, p2

    invoke-virtual {v0, p1, p2}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    :goto_0
    invoke-virtual {p0}, LNb/c;->c()V

    return-void
.end method

.method public v(IIII)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "x",
            "y",
            "z",
            "v"
        }
    .end annotation

    invoke-virtual {p0, p1, p2, p3}, LNb/c;->p(III)V

    iget-object v0, p0, LNb/c;->d:LNb/d;

    sget-object v1, LNb/d;->NATIVE:LNb/d;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, LNb/c;->i:Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;

    invoke-virtual {p0, p1, p2, p3}, LNb/c;->o(III)I

    move-result p1

    add-int/lit8 p1, p1, 0x2

    and-int/lit16 p2, p4, 0xff

    int-to-short p2, p2

    invoke-virtual {v0, p1, p2}, Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;->G0(IS)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, LNb/c;->h:Ljava/nio/ByteBuffer;

    invoke-virtual {p0, p1, p2, p3}, LNb/c;->o(III)I

    move-result p1

    add-int/lit8 p1, p1, 0x2

    and-int/lit16 p2, p4, 0xff

    int-to-byte p2, p2

    invoke-virtual {v0, p1, p2}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    :goto_0
    invoke-virtual {p0}, LNb/c;->c()V

    return-void
.end method

.method public w(IIII)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "x",
            "y",
            "z",
            "v"
        }
    .end annotation

    invoke-virtual {p0, p1, p2, p3}, LNb/c;->p(III)V

    iget-object v0, p0, LNb/c;->d:LNb/d;

    sget-object v1, LNb/d;->NATIVE:LNb/d;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, LNb/c;->i:Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;

    invoke-virtual {p0, p1, p2, p3}, LNb/c;->o(III)I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    and-int/lit16 p2, p4, 0xff

    int-to-short p2, p2

    invoke-virtual {v0, p1, p2}, Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;->G0(IS)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, LNb/c;->h:Ljava/nio/ByteBuffer;

    invoke-virtual {p0, p1, p2, p3}, LNb/c;->o(III)I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    and-int/lit16 p2, p4, 0xff

    int-to-byte p2, p2

    invoke-virtual {v0, p1, p2}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    :goto_0
    invoke-virtual {p0}, LNb/c;->c()V

    return-void
.end method

.method public x(IIIIII)V
    .locals 8
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
            "z",
            "r",
            "g",
            "b"
        }
    .end annotation

    const/16 v7, 0xff

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v7}, LNb/c;->y(IIIIIII)V

    return-void
.end method

.method public y(IIIIIII)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
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
            "z",
            "r",
            "g",
            "b",
            "a"
        }
    .end annotation

    invoke-virtual {p0, p1, p2, p3}, LNb/c;->p(III)V

    invoke-virtual {p0, p1, p2, p3}, LNb/c;->o(III)I

    move-result p1

    iget-object p2, p0, LNb/c;->d:LNb/d;

    sget-object p3, LNb/d;->NATIVE:LNb/d;

    if-ne p2, p3, :cond_0

    iget-object p2, p0, LNb/c;->i:Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;

    and-int/lit16 p3, p7, 0xff

    int-to-short p3, p3

    invoke-virtual {p2, p1, p3}, Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;->G0(IS)V

    iget-object p2, p0, LNb/c;->i:Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;

    add-int/lit8 p3, p1, 0x1

    and-int/lit16 p4, p4, 0xff

    int-to-short p4, p4

    invoke-virtual {p2, p3, p4}, Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;->G0(IS)V

    iget-object p2, p0, LNb/c;->i:Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;

    add-int/lit8 p3, p1, 0x2

    and-int/lit16 p4, p5, 0xff

    int-to-short p4, p4

    invoke-virtual {p2, p3, p4}, Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;->G0(IS)V

    iget-object p2, p0, LNb/c;->i:Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;

    add-int/lit8 p1, p1, 0x3

    and-int/lit16 p3, p6, 0xff

    int-to-short p3, p3

    invoke-virtual {p2, p1, p3}, Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;->G0(IS)V

    goto :goto_0

    :cond_0
    iget-object p2, p0, LNb/c;->h:Ljava/nio/ByteBuffer;

    and-int/lit16 p3, p7, 0xff

    int-to-byte p3, p3

    invoke-virtual {p2, p1, p3}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    iget-object p2, p0, LNb/c;->h:Ljava/nio/ByteBuffer;

    add-int/lit8 p3, p1, 0x1

    and-int/lit16 p4, p4, 0xff

    int-to-byte p4, p4

    invoke-virtual {p2, p3, p4}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    iget-object p2, p0, LNb/c;->h:Ljava/nio/ByteBuffer;

    add-int/lit8 p3, p1, 0x2

    and-int/lit16 p4, p5, 0xff

    int-to-byte p4, p4

    invoke-virtual {p2, p3, p4}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    iget-object p2, p0, LNb/c;->h:Ljava/nio/ByteBuffer;

    add-int/lit8 p1, p1, 0x3

    and-int/lit16 p3, p6, 0xff

    int-to-byte p3, p3

    invoke-virtual {p2, p1, p3}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    :goto_0
    invoke-virtual {p0}, LNb/c;->c()V

    return-void
.end method
