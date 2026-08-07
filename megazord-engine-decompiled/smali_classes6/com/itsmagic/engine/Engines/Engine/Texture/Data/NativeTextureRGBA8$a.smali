.class public Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGBA8$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGBA8;->b1(Landroid/content/Context;Ljava/lang/String;ZLcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;Ljava/lang/Runnable;)Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGBA8;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Landroid/content/Context;

.field public final synthetic d:LTb/b$a;

.field public final synthetic e:Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGBA8;

.field public final synthetic f:Z

.field public final synthetic g:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/content/Context;LTb/b$a;Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGBA8;ZLjava/lang/Runnable;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "val$path",
            "val$context",
            "val$state",
            "val$nativeTexture",
            "val$applyOGL",
            "val$post"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGBA8$a;->b:Ljava/lang/String;

    iput-object p2, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGBA8$a;->c:Landroid/content/Context;

    iput-object p3, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGBA8$a;->d:LTb/b$a;

    iput-object p4, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGBA8$a;->e:Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGBA8;

    iput-boolean p5, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGBA8$a;->f:Z

    iput-object p6, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGBA8$a;->g:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGBA8$a;->b:Ljava/lang/String;

    const-string v1, ".ivo"

    invoke-static {v0, v1}, Lbd/l;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGBA8$a;->c:Landroid/content/Context;

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGBA8$a;->d:LTb/b$a;

    invoke-static {v0, v1}, LTb/b;->e(Landroid/content/Context;LTb/b$a;)V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGBA8$a;->e:Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGBA8;

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGBA8$a;->d:LTb/b$a;

    invoke-static {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGBA8;->o0(Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGBA8;LTb/b$a;)V

    :cond_0
    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGBA8$a;->f:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGBA8$a;->e:Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGBA8;

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGBA8$a;->g:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGBA8;->B(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method
