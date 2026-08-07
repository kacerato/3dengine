.class public Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGB8$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LTb/f$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGB8;->B(Ljava/lang/Runnable;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/lang/Runnable;

.field public final synthetic b:Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGB8;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGB8;Ljava/lang/Runnable;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$post"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGB8$c;->b:Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGB8;

    iput-object p2, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGB8$c;->a:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(LTb/f$b;)V
    .locals 13
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "callback"
        }
    .end annotation

    :try_start_0
    invoke-static {}, Ljc/a;->d()V

    invoke-static {}, Lc9/a;->F()V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGB8$c;->b:Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGB8;

    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGB8;->p0(Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGB8;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGB8$c;->b:Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGB8;

    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGB8;->v0(Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGB8;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/Exceptions/UnsupportedTextureOperation;

    const-string v0, "Can not reapply a texture without allow modifications flag"

    invoke-direct {p1, v0}, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/Exceptions/UnsupportedTextureOperation;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_0
    move-exception p1

    goto/16 :goto_6

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGB8$c;->b:Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGB8;

    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGB8;->w0(Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGB8;)I

    move-result v0

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGB8$c;->b:Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGB8;

    invoke-static {v1}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGB8;->x0(Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGB8;)I

    move-result v1

    mul-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x3

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGB8$c;->b:Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGB8;

    invoke-static {v1}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGB8;->y0(Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGB8;)J

    move-result-wide v2

    invoke-static {v1, v2, v3, v0}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGB8;->z0(Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGB8;JLjava/nio/ByteBuffer;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v2, "apply failed"

    if-eqz v1, :cond_a

    if-eqz v0, :cond_9

    :try_start_1
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGB8$c;->b:Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGB8;

    invoke-static {v1}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGB8;->A0(Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGB8;)Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;

    move-result-object v1

    const/4 v2, 0x1

    if-nez v1, :cond_6

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGB8$c;->b:Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGB8;

    invoke-static {v1}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGB8;->C0(Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGB8;)Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;

    move-result-object v1

    invoke-static {v1}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;->s(Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;)Lcom/google/android/filament/TextureSampler;

    move-result-object v9

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGB8$c;->b:Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGB8;

    invoke-static {v1}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGB8;->C0(Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGB8;)Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;

    move-result-object v1

    iget v1, v1, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->mipmapLevels:I

    iget-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGB8$c;->b:Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGB8;

    invoke-static {v3}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGB8;->C0(Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGB8;)Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;

    move-result-object v3

    iget-boolean v3, v3, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->genMipmaps:Z

    const/4 v4, 0x0

    if-nez v3, :cond_2

    move v1, v4

    goto :goto_1

    :cond_2
    if-gtz v1, :cond_3

    move v1, v2

    :cond_3
    :goto_1
    iget-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGB8$c;->b:Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGB8;

    invoke-static {v3}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGB8;->C0(Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGB8;)Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;

    move-result-object v3

    iget-boolean v3, v3, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->gammaCorrection:Z

    if-eqz v3, :cond_4

    move v10, v4

    goto :goto_2

    :cond_4
    move v10, v1

    :goto_2
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGB8$c;->b:Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGB8;

    new-instance v12, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;

    iget-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGB8$c;->b:Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGB8;

    invoke-static {v3}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGB8;->w0(Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGB8;)I

    move-result v4

    iget-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGB8$c;->b:Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGB8;

    invoke-static {v3}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGB8;->x0(Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGB8;)I

    move-result v5

    sget-object v6, Lcom/google/android/filament/Texture$e;->RGB:Lcom/google/android/filament/Texture$e;

    sget-object v7, Lcom/google/android/filament/Texture$k;->UBYTE:Lcom/google/android/filament/Texture$k;

    new-instance v3, Lcom/google/android/filament/Texture$b;

    invoke-direct {v3}, Lcom/google/android/filament/Texture$b;-><init>()V

    iget-object v8, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGB8$c;->b:Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGB8;

    invoke-static {v8}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGB8;->C0(Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGB8;)Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;

    move-result-object v8

    iget-boolean v8, v8, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->gammaCorrection:Z

    if-eqz v8, :cond_5

    sget-object v8, Lcom/google/android/filament/Texture$f;->SRGB8:Lcom/google/android/filament/Texture$f;

    goto :goto_3

    :cond_5
    sget-object v8, Lcom/google/android/filament/Texture$f;->RGB8:Lcom/google/android/filament/Texture$f;

    :goto_3
    invoke-virtual {v3, v8}, Lcom/google/android/filament/Texture$b;->d(Lcom/google/android/filament/Texture$f;)Lcom/google/android/filament/Texture$b;

    move-result-object v8

    const/16 v11, 0x8

    move-object v3, v12

    invoke-direct/range {v3 .. v11}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;-><init>(IILcom/google/android/filament/Texture$e;Lcom/google/android/filament/Texture$k;Lcom/google/android/filament/Texture$b;Lcom/google/android/filament/TextureSampler;II)V

    invoke-static {v1, v12}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGB8;->B0(Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGB8;Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;)Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;

    goto :goto_4

    :cond_6
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGB8$c;->b:Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGB8;

    invoke-static {v1}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGB8;->A0(Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGB8;)Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;

    move-result-object v1

    iget-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGB8$c;->b:Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGB8;

    invoke-static {v3}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGB8;->C0(Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGB8;)Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;

    move-result-object v3

    invoke-static {v3}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;->s(Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;)Lcom/google/android/filament/TextureSampler;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;->E(Lcom/google/android/filament/TextureSampler;)V

    :goto_4
    if-eqz p1, :cond_7

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGB8$c;->b:Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGB8;

    invoke-static {v1}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGB8;->A0(Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGB8;)Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;

    move-result-object v1

    new-instance v2, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGB8$c$a;

    invoke-direct {v2, p0, p1, v0}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGB8$c$a;-><init>(Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGB8$c;LTb/f$b;Ljava/nio/ByteBuffer;)V

    invoke-virtual {v1, v0, v2}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;->v(Ljava/nio/ByteBuffer;Ljava/lang/Runnable;)V

    goto :goto_5

    :cond_7
    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGB8$c;->b:Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGB8;

    invoke-static {p1}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGB8;->A0(Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGB8;)Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;->u(Ljava/nio/ByteBuffer;)V

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGB8$c;->b:Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGB8;

    invoke-static {p1, v2}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGB8;->s0(Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGB8;Z)Z

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGB8$c;->a:Ljava/lang/Runnable;

    if-eqz p1, :cond_8

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_8
    :goto_5
    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGB8$c;->b:Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGB8;

    invoke-static {p1}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGB8;->v0(Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGB8;)Z

    return-void

    :cond_9
    :try_start_2
    new-instance p1, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/Exceptions/UnsupportedTextureOperation;

    invoke-direct {p1, v2}, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/Exceptions/UnsupportedTextureOperation;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_a
    new-instance p1, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/Exceptions/UnsupportedTextureOperation;

    invoke-direct {p1, v2}, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/Exceptions/UnsupportedTextureOperation;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_6
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGB8$c;->b:Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGB8;

    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGB8;->v0(Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGB8;)Z

    throw p1
.end method
