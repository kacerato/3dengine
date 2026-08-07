.class public Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGB8$c$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGB8$c$a;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGB8$c$a;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGB8$c$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$2"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGB8$c$a$a;->b:Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGB8$c$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGB8$c$a$a;->b:Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGB8$c$a;

    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGB8$c$a;->d:Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGB8$c;

    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGB8$c;->a:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method
