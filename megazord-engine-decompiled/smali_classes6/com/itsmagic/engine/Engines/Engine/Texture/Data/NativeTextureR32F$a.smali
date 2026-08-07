.class public Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureR32F$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LTb/f$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureR32F;->B(Ljava/lang/Runnable;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/lang/Runnable;

.field public final synthetic b:Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureR32F;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureR32F;Ljava/lang/Runnable;)V
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

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureR32F$a;->b:Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureR32F;

    iput-object p2, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureR32F$a;->a:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(LTb/f$b;)V
    .locals 12
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

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureR32F$a;->b:Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureR32F;

    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureR32F;->o0(Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureR32F;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureR32F$a;->b:Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureR32F;

    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureR32F;->q0(Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureR32F;)Z

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

    goto/16 :goto_3

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureR32F$a;->b:Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureR32F;

    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureR32F;->t0(Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureR32F;)I

    move-result v0

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureR32F$a;->b:Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureR32F;

    invoke-static {v1}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureR32F;->u0(Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureR32F;)I

    move-result v1

    mul-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureR32F$a;->b:Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureR32F;

    invoke-static {v1}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureR32F;->v0(Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureR32F;)J

    move-result-wide v2

    invoke-static {v1, v2, v3, v0}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureR32F;->w0(Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureR32F;JLjava/nio/ByteBuffer;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v2, "apply failed"

    if-eqz v1, :cond_6

    if-eqz v0, :cond_5

    :try_start_1
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureR32F$a;->b:Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureR32F;

    invoke-static {v1}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureR32F;->x0(Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureR32F;)Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;

    move-result-object v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureR32F$a;->b:Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureR32F;

    invoke-static {v1}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureR32F;->z0(Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureR32F;)Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;

    move-result-object v1

    invoke-static {v1}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;->s(Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;)Lcom/google/android/filament/TextureSampler;

    move-result-object v8

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureR32F$a;->b:Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureR32F;

    invoke-static {v1}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureR32F;->z0(Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureR32F;)Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->i()I

    move-result v9

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureR32F$a;->b:Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureR32F;

    new-instance v11, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureR32F$a;->b:Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureR32F;

    invoke-static {v2}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureR32F;->t0(Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureR32F;)I

    move-result v3

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureR32F$a;->b:Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureR32F;

    invoke-static {v2}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureR32F;->u0(Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureR32F;)I

    move-result v4

    sget-object v5, Lcom/google/android/filament/Texture$e;->R:Lcom/google/android/filament/Texture$e;

    sget-object v6, Lcom/google/android/filament/Texture$k;->FLOAT:Lcom/google/android/filament/Texture$k;

    new-instance v2, Lcom/google/android/filament/Texture$b;

    invoke-direct {v2}, Lcom/google/android/filament/Texture$b;-><init>()V

    sget-object v7, Lcom/google/android/filament/Texture$f;->R32F:Lcom/google/android/filament/Texture$f;

    invoke-virtual {v2, v7}, Lcom/google/android/filament/Texture$b;->d(Lcom/google/android/filament/Texture$f;)Lcom/google/android/filament/Texture$b;

    move-result-object v7

    const/16 v10, 0x8

    move-object v2, v11

    invoke-direct/range {v2 .. v10}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;-><init>(IILcom/google/android/filament/Texture$e;Lcom/google/android/filament/Texture$k;Lcom/google/android/filament/Texture$b;Lcom/google/android/filament/TextureSampler;II)V

    invoke-static {v1, v11}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureR32F;->y0(Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureR32F;Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;)Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureR32F$a;->b:Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureR32F;

    invoke-static {v1}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureR32F;->x0(Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureR32F;)Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;

    move-result-object v1

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureR32F$a;->b:Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureR32F;

    invoke-static {v2}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureR32F;->z0(Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureR32F;)Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;

    move-result-object v2

    invoke-static {v2}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;->s(Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;)Lcom/google/android/filament/TextureSampler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;->E(Lcom/google/android/filament/TextureSampler;)V

    :goto_1
    if-eqz p1, :cond_3

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureR32F$a;->b:Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureR32F;

    invoke-static {v1}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureR32F;->x0(Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureR32F;)Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;

    move-result-object v1

    new-instance v2, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureR32F$a$a;

    invoke-direct {v2, p0, p1, v0}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureR32F$a$a;-><init>(Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureR32F$a;LTb/f$b;Ljava/nio/ByteBuffer;)V

    invoke-virtual {v1, v0, v2}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;->v(Ljava/nio/ByteBuffer;Ljava/lang/Runnable;)V

    goto :goto_2

    :cond_3
    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureR32F$a;->b:Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureR32F;

    invoke-static {p1}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureR32F;->x0(Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureR32F;)Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;->u(Ljava/nio/ByteBuffer;)V

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureR32F$a;->b:Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureR32F;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureR32F;->p0(Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureR32F;Z)Z

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureR32F$a;->a:Ljava/lang/Runnable;

    if-eqz p1, :cond_4

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_4
    :goto_2
    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureR32F$a;->b:Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureR32F;

    invoke-static {p1}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureR32F;->q0(Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureR32F;)Z

    return-void

    :cond_5
    :try_start_2
    new-instance p1, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/Exceptions/UnsupportedTextureOperation;

    invoke-direct {p1, v2}, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/Exceptions/UnsupportedTextureOperation;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    new-instance p1, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/Exceptions/UnsupportedTextureOperation;

    invoke-direct {p1, v2}, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/Exceptions/UnsupportedTextureOperation;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_3
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureR32F$a;->b:Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureR32F;

    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureR32F;->q0(Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureR32F;)Z

    throw p1
.end method
