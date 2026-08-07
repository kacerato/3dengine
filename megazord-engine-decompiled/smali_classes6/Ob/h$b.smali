.class public LOb/h$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LOb/h;-><init>(Ljava/io/File;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:I

.field public final synthetic c:I

.field public final synthetic d:LOb/h;


# direct methods
.method public constructor <init>(LOb/h;II)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$finalMips",
            "val$finalWantedResolution"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, LOb/h$b;->d:LOb/h;

    iput p2, p0, LOb/h$b;->b:I

    iput p3, p0, LOb/h$b;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    sget-object v0, Lcom/google/android/filament/Texture$f;->RGBA8:Lcom/google/android/filament/Texture$f;

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;

    invoke-direct {v1}, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;-><init>()V

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->genMipmaps:Z

    iget v3, p0, LOb/h$b;->b:I

    iput v3, v1, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->mipmapLevels:I

    sget-object v3, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$f;->Clamp:Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$f;

    invoke-virtual {v1, v3}, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->G0(Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$f;)Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;

    invoke-static {v1}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;->s(Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;)Lcom/google/android/filament/TextureSampler;

    move-result-object v10

    new-instance v1, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;

    iget v6, p0, LOb/h$b;->c:I

    sget-object v7, Lcom/google/android/filament/Texture$e;->RGBA:Lcom/google/android/filament/Texture$e;

    sget-object v8, Lcom/google/android/filament/Texture$k;->UBYTE:Lcom/google/android/filament/Texture$k;

    new-instance v3, Lcom/google/android/filament/Texture$b;

    invoke-direct {v3}, Lcom/google/android/filament/Texture$b;-><init>()V

    invoke-virtual {v3, v0}, Lcom/google/android/filament/Texture$b;->d(Lcom/google/android/filament/Texture$f;)Lcom/google/android/filament/Texture$b;

    move-result-object v9

    iget v11, p0, LOb/h$b;->b:I

    const/4 v12, 0x1

    sget-object v13, Lcom/google/android/filament/Texture$i;->SAMPLER_CUBEMAP:Lcom/google/android/filament/Texture$i;

    move-object v4, v1

    move v5, v6

    invoke-direct/range {v4 .. v13}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;-><init>(IILcom/google/android/filament/Texture$e;Lcom/google/android/filament/Texture$k;Lcom/google/android/filament/Texture$b;Lcom/google/android/filament/TextureSampler;IILcom/google/android/filament/Texture$i;)V

    iget-object v0, p0, LOb/h$b;->d:LOb/h;

    invoke-virtual {v0, v1}, LOb/b;->b(Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;)V

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/4 v3, 0x6

    if-ge v1, v3, :cond_1

    iget-object v3, p0, LOb/h$b;->d:LOb/h;

    iget v4, p0, LOb/h$b;->c:I

    iget v5, p0, LOb/h$b;->b:I

    if-lez v5, :cond_0

    move v5, v2

    goto :goto_1

    :cond_0
    move v5, v0

    :goto_1
    invoke-static {v3, v1, v4, v5}, LOb/h;->c(LOb/h;IIZ)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
