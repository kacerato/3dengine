.class public Lcom/itsmagic/engine/Engines/Engine/ImGUI/Backend/ImguiBackend;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lbd/p;
.end annotation

.annotation runtime Lbd/q;
.end annotation

.annotation runtime Lbd/r;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/itsmagic/engine/Engines/Engine/ImGUI/Backend/ImguiBackend$DrawData;,
        Lcom/itsmagic/engine/Engines/Engine/ImGUI/Backend/ImguiBackend$DrawList;,
        Lcom/itsmagic/engine/Engines/Engine/ImGUI/Backend/ImguiBackend$DrawCmd;
    }
.end annotation


# static fields
.field private static final SHADER_HASH:I = -0x2739307e

.field private static final SHADER_HASH_KEY:Ljava/lang/String; = "imguibackend-2"

.field private static final SHADER_VERSION:I = 0x2

.field private static final background:[F

.field private static currentFrame:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Backend/ImguiBackend$DrawData;

.field private static final frameLock:Ljava/lang/Object;

.field private static materialInitWarned:Z

.field private static materialTemplate:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterialTemplate;

.field private static final sKeepAlive:Landroid/util/LongSparseArray;
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    sput-object v0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Backend/ImguiBackend;->sKeepAlive:Landroid/util/LongSparseArray;

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Backend/ImguiBackend$DrawData;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Backend/ImguiBackend$DrawData;-><init>()V

    sput-object v0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Backend/ImguiBackend;->currentFrame:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Backend/ImguiBackend$DrawData;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Backend/ImguiBackend;->frameLock:Ljava/lang/Object;

    const/4 v0, 0x4

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    sput-object v0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Backend/ImguiBackend;->background:[F

    return-void

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static afterFrame(Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "controller"
        }
    .end annotation

    sget-object v0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Backend/ImguiBackend;->materialTemplate:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterialTemplate;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lc9/a;->F()V

    invoke-static {}, Ljc/a;->d()V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;->Q:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Backend/a;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Backend/a;->a()V

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;->finishRenderFrame()V

    return-void
.end method

.method public static buildShaderCacheForce()V
    .locals 3

    :try_start_0
    invoke-static {}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Backend/ImguiBackend;->createMaterialBuilder()Llc/b;

    move-result-object v0

    const-string v1, "frag"

    invoke-static {v1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Backend/ImguiBackend;->loadFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/filament/filamat/MaterialBuilder;->q(Ljava/lang/String;)Lcom/google/android/filament/filamat/MaterialBuilder;

    invoke-virtual {v0}, Llc/b;->d()Lcom/google/android/filament/filamat/b;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/filament/filamat/b;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/google/android/filament/filamat/b;->a()Ljava/nio/ByteBuffer;

    move-result-object v0

    sget v1, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Backend/ImguiBackend;->SHADER_HASH:I

    invoke-static {v1, v0}, Lxc/b;->l(ILjava/nio/ByteBuffer;)V

    return-void

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Falha ao compilar material em runtime!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Erro criando material do ImguiBackend"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static native collectDrawData(JII)Lcom/itsmagic/engine/Engines/Engine/ImGUI/Backend/ImguiBackend$DrawData;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "nativePtr",
            "fbWidth",
            "fbHeight"
        }
    .end annotation
.end method

.method public static createFilamentTextureFromR8(Ljava/nio/ByteBuffer;II)J
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "pixels",
            "width",
            "height"
        }
    .end annotation

    if-eqz p0, :cond_5

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v0

    if-eqz v0, :cond_4

    if-lez p1, :cond_3

    if-lez p2, :cond_3

    invoke-virtual {p0}, Ljava/nio/Buffer;->capacity()I

    move-result v0

    mul-int v1, p1, p2

    if-lt v0, v1, :cond_2

    new-instance v0, LMb/i;

    invoke-direct {v0, p1, p2}, LMb/i;-><init>(II)V

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, p2, :cond_1

    mul-int v3, v2, p1

    move v4, v1

    :goto_1
    if-ge v4, p1, :cond_0

    add-int v5, v3, v4

    invoke-virtual {p0, v5}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v5

    and-int/lit16 v5, v5, 0xff

    invoke-virtual {v0, v4, v2, v5}, LMb/i;->w0(III)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, LMb/i;->apply()V

    invoke-virtual {v0}, LMb/i;->D()J

    move-result-wide p0

    sget-object p2, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Backend/ImguiBackend;->sKeepAlive:Landroid/util/LongSparseArray;

    invoke-virtual {p2, p0, p1, v0}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    return-wide p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "buffer too small"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "invalid size"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "pixels must be a direct ByteBuffer"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "pixels == null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static createFilamentTextureFromRGBA(Ljava/nio/ByteBuffer;II)J
    .locals 11
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "pixels",
            "width",
            "height"
        }
    .end annotation

    if-eqz p0, :cond_4

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v0

    if-eqz v0, :cond_3

    if-lez p1, :cond_2

    if-lez p2, :cond_2

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGBA8;

    const/4 v1, 0x1

    invoke-direct {v0, p1, p2, v1}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGBA8;-><init>(IIZ)V

    mul-int/lit8 v1, p1, 0x4

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, p2, :cond_1

    mul-int v4, v3, v1

    move v5, v2

    :goto_1
    if-ge v5, p1, :cond_0

    shl-int/lit8 v6, v5, 0x2

    add-int/2addr v6, v4

    invoke-virtual {p0, v6}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v7

    and-int/lit16 v7, v7, 0xff

    add-int/lit8 v8, v6, 0x1

    invoke-virtual {p0, v8}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v8

    and-int/lit16 v8, v8, 0xff

    add-int/lit8 v9, v6, 0x2

    invoke-virtual {p0, v9}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v9

    and-int/lit16 v9, v9, 0xff

    add-int/lit8 v6, v6, 0x3

    invoke-virtual {p0, v6}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v6

    and-int/lit16 v6, v6, 0xff

    new-instance v10, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    invoke-direct {v10, v6, v7, v8, v9}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;-><init>(IIII)V

    invoke-virtual {v0, v5, v3, v10}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGBA8;->c0(IILcom/itsmagic/engine/Engines/Engine/Color/ColorINT;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    invoke-virtual {v0, p0}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGBA8;->F0(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGBA8;->L()J

    move-result-wide p0

    sget-object p2, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Backend/ImguiBackend;->sKeepAlive:Landroid/util/LongSparseArray;

    invoke-virtual {p2, p0, p1, v0}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    return-wide p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "invalid size"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "pixels must be a direct ByteBuffer"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "pixels == null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static createMaterialBuilder()Llc/b;
    .locals 5

    new-instance v0, Llc/b;

    invoke-direct {v0}, Llc/b;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IMGUI-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lmd/b;->L()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/filament/filamat/MaterialBuilder;->u(Ljava/lang/String;)Lcom/google/android/filament/filamat/MaterialBuilder;

    move-result-object v0

    sget-object v1, Lcom/google/android/filament/filamat/MaterialBuilder$u;->OBJECT:Lcom/google/android/filament/filamat/MaterialBuilder$u;

    invoke-virtual {v0, v1}, Lcom/google/android/filament/filamat/MaterialBuilder;->U(Lcom/google/android/filament/filamat/MaterialBuilder$u;)Lcom/google/android/filament/filamat/MaterialBuilder;

    move-result-object v0

    sget-object v1, Lcom/google/android/filament/filamat/MaterialBuilder$h;->MOBILE:Lcom/google/android/filament/filamat/MaterialBuilder$h;

    invoke-virtual {v0, v1}, Lcom/google/android/filament/filamat/MaterialBuilder;->w(Lcom/google/android/filament/filamat/MaterialBuilder$h;)Lcom/google/android/filament/filamat/MaterialBuilder;

    move-result-object v0

    sget-object v1, Lcom/google/android/filament/filamat/MaterialBuilder$n;->UNLIT:Lcom/google/android/filament/filamat/MaterialBuilder$n;

    invoke-virtual {v0, v1}, Lcom/google/android/filament/filamat/MaterialBuilder;->D(Lcom/google/android/filament/filamat/MaterialBuilder$n;)Lcom/google/android/filament/filamat/MaterialBuilder;

    move-result-object v0

    sget-object v1, Lcom/google/android/filament/filamat/MaterialBuilder$t;->UV0:Lcom/google/android/filament/filamat/MaterialBuilder$t;

    invoke-virtual {v0, v1}, Lcom/google/android/filament/filamat/MaterialBuilder;->B(Lcom/google/android/filament/filamat/MaterialBuilder$t;)Lcom/google/android/filament/filamat/MaterialBuilder;

    move-result-object v0

    sget-object v1, Lcom/google/android/filament/filamat/MaterialBuilder$t;->COLOR:Lcom/google/android/filament/filamat/MaterialBuilder$t;

    invoke-virtual {v0, v1}, Lcom/google/android/filament/filamat/MaterialBuilder;->B(Lcom/google/android/filament/filamat/MaterialBuilder$t;)Lcom/google/android/filament/filamat/MaterialBuilder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/filament/filamat/MaterialBuilder;->l(Z)Lcom/google/android/filament/filamat/MaterialBuilder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/filament/filamat/MaterialBuilder;->k(Z)Lcom/google/android/filament/filamat/MaterialBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/google/android/filament/filamat/MaterialBuilder;->j(Z)Lcom/google/android/filament/filamat/MaterialBuilder;

    move-result-object v0

    sget-object v1, Lcom/google/android/filament/filamat/MaterialBuilder$c;->NONE:Lcom/google/android/filament/filamat/MaterialBuilder$c;

    invoke-virtual {v0, v1}, Lcom/google/android/filament/filamat/MaterialBuilder;->h(Lcom/google/android/filament/filamat/MaterialBuilder$c;)Lcom/google/android/filament/filamat/MaterialBuilder;

    move-result-object v0

    sget-object v1, Lcom/google/android/filament/filamat/MaterialBuilder$a;->TRANSPARENT:Lcom/google/android/filament/filamat/MaterialBuilder$a;

    invoke-virtual {v0, v1}, Lcom/google/android/filament/filamat/MaterialBuilder;->c(Lcom/google/android/filament/filamat/MaterialBuilder$a;)Lcom/google/android/filament/filamat/MaterialBuilder;

    move-result-object v0

    check-cast v0, Llc/b;

    sget-object v1, Lcom/google/android/filament/filamat/MaterialBuilder$r;->FLOAT4:Lcom/google/android/filament/filamat/MaterialBuilder$r;

    sget-object v2, Lcom/google/android/filament/filamat/MaterialBuilder$g;->MEDIUM:Lcom/google/android/filament/filamat/MaterialBuilder$g;

    const-string v3, "clipRect"

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/filament/filamat/MaterialBuilder;->N(Lcom/google/android/filament/filamat/MaterialBuilder$r;Lcom/google/android/filament/filamat/MaterialBuilder$g;Ljava/lang/String;)Lcom/google/android/filament/filamat/MaterialBuilder;

    sget-object v1, Lcom/google/android/filament/filamat/MaterialBuilder$m;->SAMPLER_2D:Lcom/google/android/filament/filamat/MaterialBuilder$m;

    sget-object v2, Lcom/google/android/filament/filamat/MaterialBuilder$l;->FLOAT:Lcom/google/android/filament/filamat/MaterialBuilder$l;

    sget-object v3, Lcom/google/android/filament/filamat/MaterialBuilder$g;->HIGH:Lcom/google/android/filament/filamat/MaterialBuilder$g;

    const-string v4, "albedo"

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/filament/filamat/MaterialBuilder;->C(Lcom/google/android/filament/filamat/MaterialBuilder$m;Lcom/google/android/filament/filamat/MaterialBuilder$l;Lcom/google/android/filament/filamat/MaterialBuilder$g;Ljava/lang/String;)Lcom/google/android/filament/filamat/MaterialBuilder;

    sget-object v1, Lcom/google/android/filament/filamat/MaterialBuilder$r;->FLOAT:Lcom/google/android/filament/filamat/MaterialBuilder$r;

    sget-object v2, Lcom/google/android/filament/filamat/MaterialBuilder$g;->LOW:Lcom/google/android/filament/filamat/MaterialBuilder$g;

    const-string v3, "isR8"

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/filament/filamat/MaterialBuilder;->N(Lcom/google/android/filament/filamat/MaterialBuilder$r;Lcom/google/android/filament/filamat/MaterialBuilder$g;Ljava/lang/String;)Lcom/google/android/filament/filamat/MaterialBuilder;

    return-object v0
.end method

.method public static destroyFilamentTexture(J)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "handle"
        }
    .end annotation

    sget-object v0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Backend/ImguiBackend;->sKeepAlive:Landroid/util/LongSparseArray;

    invoke-virtual {v0, p0, p1}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, p0, p1}, Landroid/util/LongSparseArray;->remove(J)V

    :cond_0
    return-void
.end method

.method private static ensureMaterialTemplate()V
    .locals 4

    sget-object v0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Backend/ImguiBackend;->materialTemplate:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterialTemplate;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    sget v0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Backend/ImguiBackend;->SHADER_HASH:I

    invoke-static {v0}, Lxc/b;->g(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

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

    sput-object v1, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Backend/ImguiBackend;->materialTemplate:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterialTemplate;

    return-void
.end method

.method public static extractTo(Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "controller"
        }
    .end annotation

    invoke-static {}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Backend/ImguiBackend;->ensureMaterialTemplate()V

    sget-object v0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Backend/ImguiBackend;->materialTemplate:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterialTemplate;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-wide v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;->O:J

    invoke-static {}, Lc9/a;->j()I

    move-result v2

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    invoke-static {}, Lc9/a;->j()I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;->O:J

    invoke-static {}, Ljc/a;->g()Lcom/google/android/filament/Renderer;

    invoke-static {}, Ljc/a;->f()Lcom/google/android/filament/Engine;

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;->Q:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Backend/a;

    sget-object v1, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Backend/ImguiBackend;->materialTemplate:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterialTemplate;

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Backend/a;->i(Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterialTemplate;)V

    iget-object p0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;->Q:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Backend/a;

    sget-object v0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Backend/ImguiBackend;->currentFrame:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Backend/ImguiBackend$DrawData;

    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Backend/a;->e(Lcom/itsmagic/engine/Engines/Engine/ImGUI/Backend/ImguiBackend$DrawData;)V

    return-void

    :cond_1
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "Double extract"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static initialize()V
    .locals 2

    invoke-static {}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Backend/ImguiBackend;->nativeInitialize()V

    invoke-static {}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Backend/ImguiBackend;->ensureMaterialTemplate()V

    sget-object v0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Backend/ImguiBackend;->materialTemplate:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterialTemplate;

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Backend/ImguiBackend;->materialInitWarned:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    sput-boolean v0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Backend/ImguiBackend;->materialInitWarned:Z

    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "ImguiBackend payload not ready. Build it in BuildMaterialShaders before initialize."

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private static loadFile(Ljava/lang/String;)Ljava/lang/String;
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

    const-string p0, ".vsc"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, LFc/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static native nativeInitialize()V
.end method

.method public static onFrameDataAvailable(JII)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "drawDataPtr",
            "fbWidth",
            "fbHeight"
        }
    .end annotation

    :try_start_0
    invoke-static {p0, p1, p2, p3}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Backend/ImguiBackend;->collectDrawData(JII)Lcom/itsmagic/engine/Engines/Engine/ImGUI/Backend/ImguiBackend$DrawData;

    move-result-object p0

    if-eqz p0, :cond_0

    sput-object p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Backend/ImguiBackend;->currentFrame:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Backend/ImguiBackend$DrawData;

    goto :goto_1

    :catch_0
    move-exception p0

    goto :goto_0

    :cond_0
    sget-object p0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string p1, "\u2717 Failed to collect ImGui frame data"

    invoke-virtual {p0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_0
    sget-object p1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "\u2717 Error collecting ImGui data: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_1
    return-void
.end method

.method public static preloadShaderCache()V
    .locals 2

    sget v0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Backend/ImguiBackend;->SHADER_HASH:I

    invoke-static {v0}, Lxc/b;->j(I)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Backend/ImguiBackend;->buildShaderCacheForce()V

    invoke-static {v0}, Lxc/b;->j(I)Z

    :cond_0
    return-void
.end method

.method public static renderTo(Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "controller"
        }
    .end annotation

    sget-object v0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Backend/ImguiBackend;->materialTemplate:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterialTemplate;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lc9/a;->F()V

    invoke-static {}, Ljc/a;->e()V

    invoke-static {}, Lc9/a;->j()I

    move-result v0

    int-to-long v0, v0

    sget-object v2, LS3/a;->g:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_3

    iget-wide v2, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;->N:J

    cmp-long v2, v2, v0

    if-eqz v2, :cond_2

    iget-wide v2, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;->O:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-ltz v2, :cond_1

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "Trying to render without extracted UI frame"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "Double render"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    :goto_0
    iput-wide v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;->N:J

    invoke-static {}, Ljc/a;->g()Lcom/google/android/filament/Renderer;

    move-result-object v0

    invoke-static {}, Ljc/a;->f()Lcom/google/android/filament/Engine;

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;->Q:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Backend/a;

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;->getFrameBuffer()Lmc/a;

    move-result-object v2

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;->getFrameBufferW()I

    move-result v3

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;->getFrameBufferH()I

    move-result v4

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Backend/a;->h()Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentView;

    move-result-object v5

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Backend/a;->f()Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentCamera;

    move-result-object v1

    invoke-virtual {v2, v5}, Lmc/a;->a(Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentView;)V

    const/4 v6, 0x0

    invoke-virtual {v5, v6, v6, v3, v4}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentView;->P(IIII)V

    invoke-virtual {v5, v1}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentView;->J(Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentCamera;)V

    invoke-virtual {v0}, Lcom/google/android/filament/Renderer;->e()Lcom/google/android/filament/Renderer$a;

    move-result-object v1

    const/4 v3, 0x1

    iput-boolean v3, v1, Lcom/google/android/filament/Renderer$a;->b:Z

    iput-boolean v3, v1, Lcom/google/android/filament/Renderer$a;->c:Z

    sget-object v3, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Backend/ImguiBackend;->background:[F

    iput-object v3, v1, Lcom/google/android/filament/Renderer$a;->a:[F

    invoke-virtual {v0, v1}, Lcom/google/android/filament/Renderer;->r(Lcom/google/android/filament/Renderer$a;)V

    invoke-static {}, Lm/a;->d()Z

    move-result v0

    if-eqz v0, :cond_5

    move v0, v6

    :goto_1
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->X()I

    move-result v1

    if-ge v0, v1, :cond_5

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-virtual {v1, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->V(I)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    move-result-object v1

    instance-of v3, v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/UIBasePostProcessing;

    if-eqz v3, :cond_4

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->isHierarchyActive()Z

    move-result v3

    if-eqz v3, :cond_4

    check-cast v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/UIBasePostProcessing;

    invoke-virtual {v1, p0, v2}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/UIBasePostProcessing;->applyBeforeRender(Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;Lmc/a;)V

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_5
    invoke-static {v5}, Ljc/a;->o(Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentView;)V

    invoke-virtual {v2}, Lmc/a;->z()V

    invoke-static {}, Lm/a;->d()Z

    move-result v0

    if-eqz v0, :cond_7

    :goto_2
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->X()I

    move-result v0

    if-ge v6, v0, :cond_7

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-virtual {v0, v6}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->V(I)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    move-result-object v0

    instance-of v1, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/UIBasePostProcessing;

    if-eqz v1, :cond_6

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->isHierarchyActive()Z

    move-result v1

    if-eqz v1, :cond_6

    check-cast v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/UIBasePostProcessing;

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;->getCacheBuffer()Lmc/a;

    move-result-object v1

    invoke-virtual {v0, p0, v2, v1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/UI/UIBasePostProcessing;->applyAfterRender(Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;Lmc/a;Lmc/a;)V

    :cond_6
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_7
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Controller/UIController;->afterRender()V

    return-void
.end method
