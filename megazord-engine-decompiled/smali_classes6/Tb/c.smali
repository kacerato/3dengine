.class public LTb/c;
.super Lcom/itsmagic/engine/Engines/Engine/Texture/Data/a;
.source "SourceFile"


# instance fields
.field public m:Lmc/a;


# direct methods
.method public constructor <init>(Lmc/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "frameBuffer"
        }
    .end annotation

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/a;-><init>()V

    iput-object p1, p0, LTb/c;->m:Lmc/a;

    return-void
.end method


# virtual methods
.method public B(Ljava/lang/Runnable;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "post"
        }
    .end annotation

    const/4 p1, 0x0

    return p1
.end method

.method public G()Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;
    .locals 2

    iget-object v0, p0, LTb/c;->m:Lmc/a;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {v0}, Lmc/a;->l()Lcom/itsmagic/engine/Engines/Engine/Texture/ColorTexture;

    move-result-object v0

    if-nez v0, :cond_1

    return-object v1

    :cond_1
    iget-object v0, p0, LTb/c;->m:Lmc/a;

    invoke-virtual {v0}, Lmc/a;->l()Lcom/itsmagic/engine/Engines/Engine/Texture/ColorTexture;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Texture/ColorTexture;->x()Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;

    move-result-object v0

    return-object v0
.end method

.method public L()J
    .locals 2

    iget-object v0, p0, LTb/c;->m:Lmc/a;

    invoke-virtual {v0}, Lmc/a;->l()Lcom/itsmagic/engine/Engines/Engine/Texture/ColorTexture;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Texture/ColorTexture;->D()J

    move-result-wide v0

    return-wide v0
.end method

.method public T()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public V()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public W()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getFrameBuffer()Lmc/a;
    .locals 1

    iget-object v0, p0, LTb/c;->m:Lmc/a;

    return-object v0
.end method

.method public n0(Lmc/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "frameBuffer"
        }
    .end annotation

    iput-object p1, p0, LTb/c;->m:Lmc/a;

    return-void
.end method
