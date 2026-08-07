.class public Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Matcap/MatcapLitBinder$k$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LJAVARuntime/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Matcap/MatcapLitBinder$k;->b(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:LMb/g;

.field public final synthetic c:Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Matcap/MatcapLitBinder$k;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Matcap/MatcapLitBinder$k;LMb/g;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$1",
            "val$fileTexture"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Matcap/MatcapLitBinder$k$a;->c:Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Matcap/MatcapLitBinder$k;

    iput-object p2, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Matcap/MatcapLitBinder$k$a;->b:LMb/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Matcap/MatcapLitBinder$k$a;->c:Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Matcap/MatcapLitBinder$k;

    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Matcap/MatcapLitBinder$k;->b:Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Matcap/MatcapLitBinder;

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Matcap/MatcapLitBinder$k$a;->b:LMb/g;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, LMb/p;->B0()LJAVARuntime/Texture;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Graphics/MaterialShader/DefaultShaders/Matcap/MatcapLitBinder;->e1(LJAVARuntime/Texture;)V

    return-void
.end method
