.class public Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGBA8$d$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGBA8$d$a;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGBA8$d$a;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGBA8$d$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$2"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGBA8$d$a$a;->b:Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGBA8$d$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGBA8$d$a$a;->b:Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGBA8$d$a;

    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGBA8$d$a;->b:Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGBA8$d;

    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGBA8$d;->e:Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGBA8;

    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGBA8;->q0(Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGBA8;)Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderTarget;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderTarget;->destroyImmediate()V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGBA8$d$a$a;->b:Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGBA8$d$a;

    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGBA8$d$a;->b:Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGBA8$d;

    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGBA8$d;->e:Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGBA8;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGBA8;->r0(Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGBA8;Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderTarget;)Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderTarget;

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGBA8$d$a$a;->b:Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGBA8$d$a;

    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGBA8$d$a;->b:Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGBA8$d;

    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGBA8$d;->e:Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGBA8;

    invoke-static {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGBA8;->t0(Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGBA8;Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;)Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGBA8$d$a$a;->b:Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGBA8$d$a;

    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGBA8$d$a;->b:Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGBA8$d;

    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGBA8$d;->e:Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGBA8;

    invoke-static {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGBA8;->u0(Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGBA8;Lcom/google/android/filament/Texture$g;)Lcom/google/android/filament/Texture$g;

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGBA8$d$a$a;->b:Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGBA8$d$a;

    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGBA8$d$a;->b:Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGBA8$d;

    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGBA8$d;->e:Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGBA8;

    invoke-static {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGBA8;->E0(Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGBA8;Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    return-void
.end method
