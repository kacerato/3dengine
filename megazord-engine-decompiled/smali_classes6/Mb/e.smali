.class public LMb/e;
.super LMb/g;
.source "SourceFile"


# instance fields
.field public s:Lmc/a;


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ioFile"
        }
    .end annotation

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, p1, v0}, LMb/g;-><init>(Ljava/io/File;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/io/File;Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "ioFile",
            "config"
        }
    .end annotation

    const/4 p2, 0x1

    .line 2
    invoke-direct {p0, p1, p2}, LMb/g;-><init>(Ljava/io/File;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/io/File;Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;ZZ)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "ioFile",
            "config",
            "applyOGL",
            "async"
        }
    .end annotation

    const/4 p2, 0x1

    .line 3
    invoke-direct {p0, p1, p2}, LMb/g;-><init>(Ljava/io/File;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "file"
        }
    .end annotation

    const/4 v0, 0x1

    .line 4
    invoke-direct {p0, p1, v0}, LMb/g;-><init>(Ljava/lang/String;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "file",
            "config"
        }
    .end annotation

    const/4 p2, 0x1

    .line 5
    invoke-direct {p0, p1, p2}, LMb/g;-><init>(Ljava/lang/String;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "file",
            "config",
            "applyOGL"
        }
    .end annotation

    const/4 p2, 0x1

    .line 6
    invoke-direct {p0, p1, p2}, LMb/g;-><init>(Ljava/lang/String;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;ZZ)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "file",
            "config",
            "applyOGL",
            "async"
        }
    .end annotation

    const/4 p2, 0x1

    .line 7
    invoke-direct {p0, p1, p2}, LMb/g;-><init>(Ljava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method public D()J
    .locals 2

    iget-object v0, p0, LMb/e;->s:Lmc/a;

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    :cond_0
    invoke-virtual {v0}, Lmc/a;->l()Lcom/itsmagic/engine/Engines/Engine/Texture/ColorTexture;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Texture/ColorTexture;->D()J

    move-result-wide v0

    return-wide v0
.end method

.method public R0()Lmc/a;
    .locals 1

    iget-object v0, p0, LMb/e;->s:Lmc/a;

    return-object v0
.end method

.method public S0(Lmc/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "buffer"
        }
    .end annotation

    iput-object p1, p0, LMb/e;->s:Lmc/a;

    invoke-virtual {p0}, LMb/p;->d0()V

    return-void
.end method

.method public W()Z
    .locals 1

    iget-object v0, p0, LMb/e;->s:Lmc/a;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public a0()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public apply()V
    .locals 0

    return-void
.end method

.method public getHeight()I
    .locals 1

    iget-object v0, p0, LMb/e;->s:Lmc/a;

    invoke-virtual {v0}, Lmc/a;->l()Lcom/itsmagic/engine/Engines/Engine/Texture/ColorTexture;

    move-result-object v0

    invoke-virtual {v0}, LMb/p;->getHeight()I

    move-result v0

    return v0
.end method

.method public getWidth()I
    .locals 1

    iget-object v0, p0, LMb/e;->s:Lmc/a;

    invoke-virtual {v0}, Lmc/a;->l()Lcom/itsmagic/engine/Engines/Engine/Texture/ColorTexture;

    move-result-object v0

    invoke-virtual {v0}, LMb/p;->getWidth()I

    move-result v0

    return v0
.end method

.method public s(Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "m",
            "attributeName"
        }
    .end annotation

    iget-object v0, p0, LMb/e;->s:Lmc/a;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lmc/a;->l()Lcom/itsmagic/engine/Engines/Engine/Texture/ColorTexture;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/itsmagic/engine/Engines/Engine/Texture/ColorTexture;->s(Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "No attached render data"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
