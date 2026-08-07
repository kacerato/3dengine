.class public Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureR32F$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureR32F$a;->a(LTb/f$b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:LTb/f$b;

.field public final synthetic c:Ljava/nio/ByteBuffer;

.field public final synthetic d:Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureR32F$a;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureR32F$a;LTb/f$b;Ljava/nio/ByteBuffer;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            "this$1",
            "val$callback",
            "val$finalPendingUploadBuffer"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureR32F$a$a;->d:Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureR32F$a;

    iput-object p2, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureR32F$a$a;->b:LTb/f$b;

    iput-object p3, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureR32F$a$a;->c:Ljava/nio/ByteBuffer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureR32F$a$a;->b:LTb/f$b;

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureR32F$a$a;->c:Ljava/nio/ByteBuffer;

    invoke-interface {v0, v1}, LTb/f$b;->b(Ljava/nio/ByteBuffer;)V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureR32F$a$a;->d:Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureR32F$a;

    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureR32F$a;->b:Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureR32F;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureR32F;->p0(Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureR32F;Z)Z

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureR32F$a$a$a;

    invoke-direct {v0, p0}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureR32F$a$a$a;-><init>(Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureR32F$a$a;)V

    invoke-static {v0}, Lc9/a;->I(Ljava/lang/Runnable;)V

    return-void
.end method
