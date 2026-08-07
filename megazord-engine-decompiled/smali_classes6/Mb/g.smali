.class public LMb/g;
.super LMb/p;
.source "SourceFile"


# instance fields
.field public m:Ljava/lang/String;

.field public n:Ljava/lang/String;

.field public o:Z

.field public p:Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;

.field public q:Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;

.field public r:Lcom/itsmagic/engine/Engines/Engine/Texture/Data/a;


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ioFile"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, LMb/p;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, LMb/g;->o:Z

    if-eqz p1, :cond_1

    .line 3
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, LMb/g;->o:Z

    .line 5
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, LMb/g;->m:Ljava/lang/String;

    .line 6
    invoke-virtual {p0, v0}, LMb/g;->K0(Z)V

    return-void

    .line 7
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "File not found:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 8
    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "null file"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Ljava/io/File;Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;)V
    .locals 2
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

    .line 9
    invoke-direct {p0}, LMb/p;-><init>()V

    const/4 v0, 0x0

    .line 10
    iput-boolean v0, p0, LMb/g;->o:Z

    if-eqz p1, :cond_2

    .line 11
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 12
    iput-object p2, p0, LMb/g;->p:Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;

    if-eqz p2, :cond_0

    .line 13
    iput-object p2, p0, LMb/g;->q:Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;

    :cond_0
    const/4 p2, 0x1

    .line 14
    iput-boolean p2, p0, LMb/g;->o:Z

    .line 15
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, LMb/g;->m:Ljava/lang/String;

    .line 16
    invoke-virtual {p0, p2}, LMb/g;->K0(Z)V

    return-void

    .line 17
    :cond_1
    new-instance p2, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "File not found:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 18
    :cond_2
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "null file"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Ljava/io/File;Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;ZZ)V
    .locals 1
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

    .line 19
    invoke-direct {p0}, LMb/p;-><init>()V

    const/4 v0, 0x0

    .line 20
    iput-boolean v0, p0, LMb/g;->o:Z

    if-eqz p1, :cond_3

    .line 21
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 22
    iput-object p2, p0, LMb/g;->p:Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;

    if-eqz p2, :cond_0

    .line 23
    iput-object p2, p0, LMb/g;->q:Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;

    :cond_0
    const/4 p2, 0x1

    .line 24
    iput-boolean p2, p0, LMb/g;->o:Z

    .line 25
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, LMb/g;->m:Ljava/lang/String;

    if-nez p4, :cond_1

    .line 26
    invoke-virtual {p0, p3}, LMb/g;->K0(Z)V

    goto :goto_0

    .line 27
    :cond_1
    invoke-virtual {p0, p3}, LMb/g;->L0(Z)V

    :goto_0
    return-void

    .line 28
    :cond_2
    new-instance p2, Ljava/lang/RuntimeException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "File not found:"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 29
    :cond_3
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "null file"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Ljava/io/File;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "ioFile",
            "fromRenderTexture"
        }
    .end annotation

    .line 61
    invoke-direct {p0}, LMb/p;-><init>()V

    const/4 p2, 0x0

    .line 62
    iput-boolean p2, p0, LMb/g;->o:Z

    if-eqz p1, :cond_1

    .line 63
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    .line 64
    iput-boolean p2, p0, LMb/g;->o:Z

    .line 65
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, LMb/g;->m:Ljava/lang/String;

    return-void

    .line 66
    :cond_0
    new-instance p2, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "File not found:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 67
    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "null file"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
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

    .line 30
    invoke-direct {p0}, LMb/p;-><init>()V

    const/4 v0, 0x0

    .line 31
    iput-boolean v0, p0, LMb/g;->o:Z

    .line 32
    iput-object p1, p0, LMb/g;->m:Ljava/lang/String;

    if-eqz p1, :cond_0

    .line 33
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    .line 34
    invoke-virtual {p0, p1}, LMb/g;->K0(Z)V

    return-void

    .line 35
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "File can\'t be null or empty"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;)V
    .locals 1
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

    .line 36
    invoke-direct {p0}, LMb/p;-><init>()V

    const/4 v0, 0x0

    .line 37
    iput-boolean v0, p0, LMb/g;->o:Z

    .line 38
    iput-object p1, p0, LMb/g;->m:Ljava/lang/String;

    .line 39
    iput-object p2, p0, LMb/g;->p:Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;

    if-eqz p2, :cond_0

    .line 40
    iput-object p2, p0, LMb/g;->q:Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;

    :cond_0
    if-eqz p1, :cond_1

    .line 41
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    const/4 p1, 0x1

    .line 42
    invoke-virtual {p0, p1}, LMb/g;->K0(Z)V

    return-void

    .line 43
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "File can\'t be null or empty"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;Z)V
    .locals 1
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

    .line 44
    invoke-direct {p0}, LMb/p;-><init>()V

    const/4 v0, 0x0

    .line 45
    iput-boolean v0, p0, LMb/g;->o:Z

    .line 46
    iput-object p1, p0, LMb/g;->m:Ljava/lang/String;

    .line 47
    iput-object p2, p0, LMb/g;->p:Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;

    if-eqz p2, :cond_0

    .line 48
    iput-object p2, p0, LMb/g;->q:Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;

    :cond_0
    if-eqz p1, :cond_1

    .line 49
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    .line 50
    invoke-virtual {p0, p3}, LMb/g;->K0(Z)V

    return-void

    .line 51
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "File can\'t be null or empty"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;ZZ)V
    .locals 1
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

    .line 52
    invoke-direct {p0}, LMb/p;-><init>()V

    const/4 v0, 0x0

    .line 53
    iput-boolean v0, p0, LMb/g;->o:Z

    .line 54
    iput-object p1, p0, LMb/g;->m:Ljava/lang/String;

    .line 55
    iput-object p2, p0, LMb/g;->p:Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;

    if-eqz p2, :cond_0

    .line 56
    iput-object p2, p0, LMb/g;->q:Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;

    :cond_0
    if-eqz p1, :cond_2

    .line 57
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_2

    if-nez p4, :cond_1

    .line 58
    invoke-virtual {p0, p3}, LMb/g;->K0(Z)V

    goto :goto_0

    .line 59
    :cond_1
    invoke-virtual {p0, p3}, LMb/g;->L0(Z)V

    :goto_0
    return-void

    .line 60
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "File can\'t be null or empty"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "file",
            "fromRenderTexture"
        }
    .end annotation

    .line 68
    invoke-direct {p0}, LMb/p;-><init>()V

    const/4 p2, 0x0

    .line 69
    iput-boolean p2, p0, LMb/g;->o:Z

    .line 70
    iput-object p1, p0, LMb/g;->m:Ljava/lang/String;

    if-eqz p1, :cond_0

    .line 71
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 72
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "File can\'t be null or empty"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static synthetic C0(LMb/g;Z)V
    .locals 0

    invoke-virtual {p0, p1}, LMb/g;->K0(Z)V

    return-void
.end method

.method public static synthetic D0(LMb/g;)Ljava/lang/Runnable;
    .locals 0

    invoke-virtual {p0}, LMb/g;->H0()Ljava/lang/Runnable;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic E0(LMb/g;)Lcom/itsmagic/engine/Engines/Engine/Texture/Data/a;
    .locals 0

    iget-object p0, p0, LMb/g;->r:Lcom/itsmagic/engine/Engines/Engine/Texture/Data/a;

    return-object p0
.end method

.method public static synthetic F0(LMb/g;Lcom/itsmagic/engine/Engines/Engine/Texture/Data/a;)Lcom/itsmagic/engine/Engines/Engine/Texture/Data/a;
    .locals 0

    iput-object p1, p0, LMb/g;->r:Lcom/itsmagic/engine/Engines/Engine/Texture/Data/a;

    return-object p1
.end method

.method public static I0(LJAVARuntime/Texture;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "texture"
        }
    .end annotation

    if-eqz p0, :cond_0

    iget-object p0, p0, LJAVARuntime/Texture;->instance:LMb/p;

    invoke-static {p0}, LMb/g;->J0(LMb/p;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static J0(LMb/p;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "texture"
        }
    .end annotation

    if-eqz p0, :cond_0

    instance-of v0, p0, LMb/g;

    if-eqz v0, :cond_0

    check-cast p0, LMb/g;

    invoke-virtual {p0}, LMb/g;->G0()Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, LMb/g;->G0()Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;

    move-result-object p0

    iget-object p0, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->type:Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$d;

    sget-object v0, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$d;->Sprite:Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$d;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static M0(Ljava/lang/String;)LMb/g;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "file"
        }
    .end annotation

    invoke-static {p0}, LQb/b;->i(Ljava/lang/String;)LMb/g;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public A(II)F
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "x",
            "y"
        }
    .end annotation

    invoke-virtual {p0}, LMb/g;->Q0()V

    iget-object v0, p0, LMb/g;->r:Lcom/itsmagic/engine/Engines/Engine/Texture/Data/a;

    invoke-virtual {v0, p1, p2}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/a;->J(II)F

    move-result p1

    return p1
.end method

.method public A0(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enabled"
        }
    .end annotation

    iget-object v0, p0, LMb/g;->r:Lcom/itsmagic/engine/Engines/Engine/Texture/Data/a;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/a;->j0(Z)V

    return-void
.end method

.method public B(II)F
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "x",
            "y"
        }
    .end annotation

    invoke-virtual {p0}, LMb/g;->Q0()V

    iget-object v0, p0, LMb/g;->r:Lcom/itsmagic/engine/Engines/Engine/Texture/Data/a;

    invoke-virtual {v0, p1, p2}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/a;->K(II)F

    move-result p1

    return p1
.end method

.method public D()J
    .locals 2

    iget-object v0, p0, LMb/g;->r:Lcom/itsmagic/engine/Engines/Engine/Texture/Data/a;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/a;->L()J

    move-result-wide v0

    return-wide v0

    :cond_0
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/Exceptions/UnsupportedTextureOperation;

    const-string v1, "Texture not renderable"

    invoke-direct {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/Exceptions/UnsupportedTextureOperation;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public E(II)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "x",
            "y"
        }
    .end annotation

    invoke-virtual {p0}, LMb/g;->Q0()V

    iget-object v0, p0, LMb/g;->r:Lcom/itsmagic/engine/Engines/Engine/Texture/Data/a;

    invoke-virtual {v0, p1, p2}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/a;->M(II)I

    move-result p1

    return p1
.end method

.method public F(II)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "x",
            "y"
        }
    .end annotation

    invoke-virtual {p0}, LMb/g;->Q0()V

    iget-object v0, p0, LMb/g;->r:Lcom/itsmagic/engine/Engines/Engine/Texture/Data/a;

    invoke-virtual {v0, p1, p2}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/a;->N(II)I

    move-result p1

    return p1
.end method

.method public G(II)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "x",
            "y"
        }
    .end annotation

    invoke-virtual {p0}, LMb/g;->Q0()V

    iget-object v0, p0, LMb/g;->r:Lcom/itsmagic/engine/Engines/Engine/Texture/Data/a;

    invoke-virtual {v0, p1, p2}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/a;->O(II)I

    move-result p1

    return p1
.end method

.method public G0()Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;
    .locals 3

    iget-object v0, p0, LMb/g;->q:Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;

    if-eqz v0, :cond_0

    iput-object v0, p0, LMb/g;->p:Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;

    return-object v0

    :cond_0
    iget-object v0, p0, LMb/g;->p:Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;

    if-nez v0, :cond_1

    iget-object v0, p0, LMb/g;->m:Ljava/lang/String;

    invoke-static {}, Lf8/c;->t()Landroid/content/Context;

    move-result-object v1

    iget-boolean v2, p0, LMb/g;->o:Z

    invoke-static {v0, v1, v2}, LTb/b;->n(Ljava/lang/String;Landroid/content/Context;Z)Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;

    move-result-object v0

    iput-object v0, p0, LMb/g;->p:Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;

    :cond_1
    iget-object v0, p0, LMb/g;->p:Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;

    if-nez v0, :cond_2

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;-><init>()V

    iput-object v0, p0, LMb/g;->p:Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;

    :cond_2
    iget-object v0, p0, LMb/g;->p:Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;

    invoke-virtual {p0, v0}, LMb/g;->N0(Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;)V

    iget-object v0, p0, LMb/g;->p:Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;

    return-object v0
.end method

.method public H(II)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "x",
            "y"
        }
    .end annotation

    invoke-virtual {p0}, LMb/g;->Q0()V

    iget-object v0, p0, LMb/g;->r:Lcom/itsmagic/engine/Engines/Engine/Texture/Data/a;

    invoke-virtual {v0, p1, p2}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/a;->P(II)I

    move-result p1

    return p1
.end method

.method public final H0()Ljava/lang/Runnable;
    .locals 1

    new-instance v0, LMb/f;

    invoke-direct {v0, p0}, LMb/f;-><init>(LMb/g;)V

    return-object v0
.end method

.method public I()Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$b;
    .locals 2

    iget-object v0, p0, LMb/g;->r:Lcom/itsmagic/engine/Engines/Engine/Texture/Data/a;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/a;->Q()Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$b;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/Exceptions/UnsupportedTextureOperation;

    const-string v1, "Texture is not loaded"

    invoke-direct {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/Exceptions/UnsupportedTextureOperation;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public J()Lcom/itsmagic/engine/Engines/Engine/Texture/Data/a;
    .locals 1

    iget-object v0, p0, LMb/g;->r:Lcom/itsmagic/engine/Engines/Engine/Texture/Data/a;

    return-object v0
.end method

.method public final K0(Z)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "applyOGL"
        }
    .end annotation

    iget-object v0, p0, LMb/g;->n:Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, LMb/g;->n:Ljava/lang/String;

    iget-object v1, p0, LMb/g;->m:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-virtual {p0}, LMb/g;->O0()Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;

    :cond_1
    iget-object v0, p0, LMb/g;->n:Ljava/lang/String;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, LMb/g;->n:Ljava/lang/String;

    iget-object v1, p0, LMb/g;->m:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    :cond_2
    iget-object v0, p0, LMb/g;->m:Ljava/lang/String;

    iput-object v0, p0, LMb/g;->n:Ljava/lang/String;

    invoke-virtual {p0}, LMb/g;->G0()Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;

    iget-object v0, p0, LMb/g;->r:Lcom/itsmagic/engine/Engines/Engine/Texture/Data/a;

    if-eqz v0, :cond_3

    :try_start_0
    invoke-virtual {v0}, LPc/a;->destroyImmediate()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, LMb/g;->r:Lcom/itsmagic/engine/Engines/Engine/Texture/Data/a;

    :cond_3
    sget-object v0, LMb/g$d;->a:[I

    iget-object v1, p0, LMb/g;->p:Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->k()Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$b;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_8

    const/4 v1, 0x2

    if-eq v0, v1, :cond_6

    const/4 v1, 0x3

    if-ne v0, v1, :cond_5

    iget-boolean v0, p0, LMb/g;->o:Z

    if-nez v0, :cond_4

    invoke-static {}, Lf8/c;->t()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, LMb/g;->m:Ljava/lang/String;

    invoke-virtual {p0}, LMb/g;->G0()Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;

    move-result-object v2

    invoke-virtual {p0}, LMb/g;->H0()Ljava/lang/Runnable;

    move-result-object v3

    invoke-static {v0, v1, p1, v2, v3}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGB8;->U0(Landroid/content/Context;Ljava/lang/String;ZLcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;Ljava/lang/Runnable;)Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGB8;

    move-result-object p1

    iput-object p1, p0, LMb/g;->r:Lcom/itsmagic/engine/Engines/Engine/Texture/Data/a;

    goto/16 :goto_1

    :cond_4
    invoke-static {}, Lf8/c;->t()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, LMb/g;->m:Ljava/lang/String;

    invoke-virtual {p0}, LMb/g;->G0()Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;

    move-result-object v2

    invoke-virtual {p0}, LMb/g;->H0()Ljava/lang/Runnable;

    move-result-object v3

    invoke-static {v0, v1, p1, v2, v3}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGB8;->W0(Landroid/content/Context;Ljava/lang/String;ZLcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;Ljava/lang/Runnable;)Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGB8;

    move-result-object p1

    iput-object p1, p0, LMb/g;->r:Lcom/itsmagic/engine/Engines/Engine/Texture/Data/a;

    goto/16 :goto_1

    :cond_5
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid format "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, LMb/g;->p:Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->k()Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$b;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    iget-boolean v0, p0, LMb/g;->o:Z

    if-nez v0, :cond_7

    invoke-static {}, Lf8/c;->t()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, LMb/g;->m:Ljava/lang/String;

    invoke-virtual {p0}, LMb/g;->G0()Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;

    move-result-object v2

    invoke-virtual {p0}, LMb/g;->H0()Ljava/lang/Runnable;

    move-result-object v3

    invoke-static {v0, v1, p1, v2, v3}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGBA8;->b1(Landroid/content/Context;Ljava/lang/String;ZLcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;Ljava/lang/Runnable;)Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGBA8;

    move-result-object p1

    iput-object p1, p0, LMb/g;->r:Lcom/itsmagic/engine/Engines/Engine/Texture/Data/a;

    goto :goto_1

    :cond_7
    invoke-static {}, Lf8/c;->t()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, LMb/g;->m:Ljava/lang/String;

    invoke-virtual {p0}, LMb/g;->G0()Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;

    move-result-object v2

    invoke-virtual {p0}, LMb/g;->H0()Ljava/lang/Runnable;

    move-result-object v3

    invoke-static {v0, v1, p1, v2, v3}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGBA8;->d1(Landroid/content/Context;Ljava/lang/String;ZLcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;Ljava/lang/Runnable;)Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureRGBA8;

    move-result-object p1

    iput-object p1, p0, LMb/g;->r:Lcom/itsmagic/engine/Engines/Engine/Texture/Data/a;

    goto :goto_1

    :cond_8
    iget-boolean v0, p0, LMb/g;->o:Z

    if-nez v0, :cond_9

    invoke-static {}, Lf8/c;->t()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, LMb/g;->m:Ljava/lang/String;

    invoke-virtual {p0}, LMb/g;->G0()Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;

    move-result-object v2

    invoke-virtual {p0}, LMb/g;->H0()Ljava/lang/Runnable;

    move-result-object v3

    invoke-static {v0, v1, p1, v2, v3}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureR8;->Q0(Landroid/content/Context;Ljava/lang/String;ZLcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;Ljava/lang/Runnable;)Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureR8;

    move-result-object p1

    iput-object p1, p0, LMb/g;->r:Lcom/itsmagic/engine/Engines/Engine/Texture/Data/a;

    goto :goto_1

    :cond_9
    invoke-static {}, Lf8/c;->t()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, LMb/g;->m:Ljava/lang/String;

    invoke-virtual {p0}, LMb/g;->G0()Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;

    move-result-object v2

    invoke-virtual {p0}, LMb/g;->H0()Ljava/lang/Runnable;

    move-result-object v3

    invoke-static {v0, v1, p1, v2, v3}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureR8;->S0(Landroid/content/Context;Ljava/lang/String;ZLcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;Ljava/lang/Runnable;)Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureR8;

    move-result-object p1

    iput-object p1, p0, LMb/g;->r:Lcom/itsmagic/engine/Engines/Engine/Texture/Data/a;

    :cond_a
    :goto_1
    return-void
.end method

.method public L(IIIILcom/itsmagic/engine/Engines/Engine/Texture/Data/a$b;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "ofx",
            "ofy",
            "w",
            "h",
            "extractCallback"
        }
    .end annotation

    iget-object v0, p0, LMb/g;->r:Lcom/itsmagic/engine/Engines/Engine/Texture/Data/a;

    if-eqz v0, :cond_0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/a;->m0(IIIILcom/itsmagic/engine/Engines/Engine/Texture/Data/a$b;)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Texture is not renderable yet."

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final L0(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "applyOGL"
        }
    .end annotation

    invoke-static {}, LTb/f;->o()V

    :try_start_0
    new-instance v0, LMb/g$a;

    invoke-direct {v0, p0, p1}, LMb/g$a;-><init>(LMb/g;Z)V

    invoke-static {v0}, Lga/b;->d(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    invoke-static {}, LTb/f;->n()V

    throw p1
.end method

.method public N()Z
    .locals 1

    invoke-virtual {p0}, LMb/g;->G0()Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->x()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public N0(Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "config"
        }
    .end annotation

    return-void
.end method

.method public O()Z
    .locals 1

    invoke-virtual {p0}, LMb/g;->Q0()V

    iget-object v0, p0, LMb/g;->r:Lcom/itsmagic/engine/Engines/Engine/Texture/Data/a;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/a;->S()Z

    move-result v0

    return v0
.end method

.method public O0()Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;
    .locals 1

    iget-object v0, p0, LMb/g;->q:Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;

    if-eqz v0, :cond_0

    iput-object v0, p0, LMb/g;->p:Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, LMb/g;->p:Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;

    invoke-virtual {p0}, LMb/g;->G0()Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;

    move-result-object v0

    return-object v0
.end method

.method public P0()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, LMb/g;->p:Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;

    invoke-virtual {p0}, LMb/g;->G0()Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;

    iput-object v0, p0, LMb/g;->n:Ljava/lang/String;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, LMb/g;->K0(Z)V

    return-void
.end method

.method public final Q0()V
    .locals 2

    iget-object v0, p0, LMb/g;->r:Lcom/itsmagic/engine/Engines/Engine/Texture/Data/a;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Texture not loaded yet, you may need to wait for the next frame, before calling modifications"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public U()Z
    .locals 1

    iget-object v0, p0, LMb/g;->r:Lcom/itsmagic/engine/Engines/Engine/Texture/Data/a;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/a;->T()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public V()Z
    .locals 1

    iget-object v0, p0, LMb/g;->r:Lcom/itsmagic/engine/Engines/Engine/Texture/Data/a;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/a;->U()Z

    move-result v0

    return v0
.end method

.method public W()Z
    .locals 1

    iget-object v0, p0, LMb/g;->r:Lcom/itsmagic/engine/Engines/Engine/Texture/Data/a;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/a;->V()Z

    move-result v0

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

    iget-object v0, p0, LMb/g;->r:Lcom/itsmagic/engine/Engines/Engine/Texture/Data/a;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/a;->W()Z

    move-result v0

    return v0
.end method

.method public apply()V
    .locals 2

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, LMb/g;->K0(Z)V

    iget-object v1, p0, LMb/g;->r:Lcom/itsmagic/engine/Engines/Engine/Texture/Data/a;

    if-eqz v1, :cond_1

    invoke-virtual {p0, v0}, LMb/p;->l0(Z)V

    invoke-static {}, Lc9/a;->q()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, LMb/g;->r:Lcom/itsmagic/engine/Engines/Engine/Texture/Data/a;

    invoke-virtual {p0}, LMb/g;->H0()Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/a;->B(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_0
    new-instance v0, LMb/g$b;

    invoke-direct {v0, p0}, LMb/g$b;-><init>(LMb/g;)V

    invoke-static {v0}, Lc9/a;->I(Ljava/lang/Runnable;)V

    :goto_0
    return-void

    :cond_1
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/Exceptions/UnsupportedTextureOperation;

    const-string v1, "Can\'t apply a unloaded texture"

    invoke-direct {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/Exceptions/UnsupportedTextureOperation;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public destroyImmediate()V
    .locals 1

    iget-object v0, p0, LMb/g;->r:Lcom/itsmagic/engine/Engines/Engine/Texture/Data/a;

    if-eqz v0, :cond_0

    new-instance v0, LMb/g$c;

    invoke-direct {v0, p0}, LMb/g$c;-><init>(LMb/g;)V

    invoke-static {v0}, Lc9/a;->I(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public e0(LMb/p;IIII)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "textureInstance",
            "startX",
            "startY",
            "width",
            "height"
        }
    .end annotation

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, LMb/g;->K0(Z)V

    iget-object v1, p0, LMb/g;->r:Lcom/itsmagic/engine/Engines/Engine/Texture/Data/a;

    if-eqz v1, :cond_0

    invoke-virtual {p1}, LMb/p;->J()Lcom/itsmagic/engine/Engines/Engine/Texture/Data/a;

    move-result-object v2

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-virtual/range {v1 .. v6}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/a;->X(Lcom/itsmagic/engine/Engines/Engine/Texture/Data/a;IIII)V

    return-void

    :cond_0
    new-instance p1, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/Exceptions/UnsupportedTextureOperation;

    const-string p2, "Can\'t paint a unloaded texture"

    invoke-direct {p1, p2}, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/Exceptions/UnsupportedTextureOperation;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "textureInstance can\'t be null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getFile()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LMb/g;->m:Ljava/lang/String;

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    invoke-virtual {p0}, LMb/g;->Q0()V

    iget-object v0, p0, LMb/g;->r:Lcom/itsmagic/engine/Engines/Engine/Texture/Data/a;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/a;->getHeight()I

    move-result v0

    return v0
.end method

.method public getWidth()I
    .locals 1

    invoke-virtual {p0}, LMb/g;->Q0()V

    iget-object v0, p0, LMb/g;->r:Lcom/itsmagic/engine/Engines/Engine/Texture/Data/a;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/a;->getWidth()I

    move-result v0

    return v0
.end method

.method public h0(IILMb/p$e;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "w",
            "h",
            "resizeFilter"
        }
    .end annotation

    new-instance p1, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/Exceptions/UnsupportedTextureOperation;

    const-string p2, "Can\'t resize textures loaded from a file, copy pixels to a new resized texture"

    invoke-direct {p1, p2}, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/Exceptions/UnsupportedTextureOperation;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public k0(IILcom/itsmagic/engine/Engines/Engine/Color/ColorINT;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "x",
            "y",
            "color"
        }
    .end annotation

    invoke-virtual {p0}, LMb/g;->Q0()V

    iget-object v0, p0, LMb/g;->r:Lcom/itsmagic/engine/Engines/Engine/Texture/Data/a;

    invoke-virtual {v0, p1, p2, p3}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/a;->c0(IILcom/itsmagic/engine/Engines/Engine/Color/ColorINT;)V

    return-void
.end method

.method public m0(IIF)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "x",
            "y",
            "v"
        }
    .end annotation

    invoke-virtual {p0}, LMb/g;->Q0()V

    iget-object v0, p0, LMb/g;->r:Lcom/itsmagic/engine/Engines/Engine/Texture/Data/a;

    invoke-virtual {v0, p1, p2, p3}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/a;->d0(IIF)V

    return-void
.end method

.method public n0(IIF)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "x",
            "y",
            "v"
        }
    .end annotation

    invoke-virtual {p0}, LMb/g;->Q0()V

    iget-object v0, p0, LMb/g;->r:Lcom/itsmagic/engine/Engines/Engine/Texture/Data/a;

    invoke-virtual {v0, p1, p2, p3}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/a;->f0(IIF)V

    return-void
.end method

.method public o0(IIF)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "x",
            "y",
            "v"
        }
    .end annotation

    invoke-virtual {p0}, LMb/g;->Q0()V

    iget-object v0, p0, LMb/g;->r:Lcom/itsmagic/engine/Engines/Engine/Texture/Data/a;

    invoke-virtual {v0, p1, p2, p3}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/a;->h0(IIF)V

    return-void
.end method

.method public p0(IIF)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "x",
            "y",
            "v"
        }
    .end annotation

    invoke-virtual {p0}, LMb/g;->Q0()V

    iget-object v0, p0, LMb/g;->r:Lcom/itsmagic/engine/Engines/Engine/Texture/Data/a;

    invoke-virtual {v0, p1, p2, p3}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/a;->k0(IIF)V

    return-void
.end method

.method public q0(IIFFF)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "x",
            "y",
            "r",
            "g",
            "b"
        }
    .end annotation

    invoke-virtual {p0}, LMb/g;->Q0()V

    iget-object v0, p0, LMb/g;->r:Lcom/itsmagic/engine/Engines/Engine/Texture/Data/a;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/a;->Y(IIFFF)V

    return-void
.end method

.method public r0(IIFFFF)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "x",
            "y",
            "r",
            "g",
            "b",
            "a"
        }
    .end annotation

    invoke-virtual {p0}, LMb/g;->Q0()V

    iget-object v0, p0, LMb/g;->r:Lcom/itsmagic/engine/Engines/Engine/Texture/Data/a;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/a;->Z(IIFFFF)V

    return-void
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

    if-eqz p1, :cond_2

    invoke-virtual {p0}, LMb/p;->T()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, LMb/g;->r:Lcom/itsmagic/engine/Engines/Engine/Texture/Data/a;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/a;->V()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, LMb/g;->r:Lcom/itsmagic/engine/Engines/Engine/Texture/Data/a;

    invoke-virtual {v0, p1, p2}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/a;->C(Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance p1, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/Exceptions/UnsupportedTextureOperation;

    const-string p2, "Texture not renderable"

    invoke-direct {p1, p2}, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/Exceptions/UnsupportedTextureOperation;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1}, Ljava/lang/RuntimeException;-><init>()V

    throw p1

    :cond_2
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Material can`t be null"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public t0(III)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "x",
            "y",
            "v"
        }
    .end annotation

    invoke-virtual {p0}, LMb/g;->Q0()V

    iget-object v0, p0, LMb/g;->r:Lcom/itsmagic/engine/Engines/Engine/Texture/Data/a;

    invoke-virtual {v0, p1, p2, p3}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/a;->e0(III)V

    return-void
.end method

.method public u(Ljava/io/File;ILcom/itsmagic/engine/Engines/Engine/Texture/Data/a$a;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "file",
            "quality",
            "exportFormat"
        }
    .end annotation

    iget-object v0, p0, LMb/g;->r:Lcom/itsmagic/engine/Engines/Engine/Texture/Data/a;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2, p3}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/a;->D(Ljava/io/File;ILcom/itsmagic/engine/Engines/Engine/Texture/Data/a$a;)V

    return-void

    :cond_0
    new-instance p1, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/Exceptions/UnsupportedTextureOperation;

    const-string p2, "Texture not loaded yet!"

    invoke-direct {p1, p2}, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/Exceptions/UnsupportedTextureOperation;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public u0(III)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "x",
            "y",
            "v"
        }
    .end annotation

    invoke-virtual {p0}, LMb/g;->Q0()V

    iget-object v0, p0, LMb/g;->r:Lcom/itsmagic/engine/Engines/Engine/Texture/Data/a;

    invoke-virtual {v0, p1, p2, p3}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/a;->g0(III)V

    return-void
.end method

.method public v(II)Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "x",
            "y"
        }
    .end annotation

    invoke-virtual {p0}, LMb/g;->Q0()V

    iget-object v0, p0, LMb/g;->r:Lcom/itsmagic/engine/Engines/Engine/Texture/Data/a;

    invoke-virtual {v0, p1, p2}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/a;->E(II)Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    move-result-object p1

    return-object p1
.end method

.method public v0(III)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "x",
            "y",
            "v"
        }
    .end annotation

    invoke-virtual {p0}, LMb/g;->Q0()V

    iget-object v0, p0, LMb/g;->r:Lcom/itsmagic/engine/Engines/Engine/Texture/Data/a;

    invoke-virtual {v0, p1, p2, p3}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/a;->i0(III)V

    return-void
.end method

.method public w(IILcom/itsmagic/engine/Engines/Engine/Color/ColorINT;)Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "x",
            "y",
            "out"
        }
    .end annotation

    invoke-virtual {p0}, LMb/g;->Q0()V

    iget-object v0, p0, LMb/g;->r:Lcom/itsmagic/engine/Engines/Engine/Texture/Data/a;

    invoke-virtual {v0, p1, p2, p3}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/a;->F(IILcom/itsmagic/engine/Engines/Engine/Color/ColorINT;)Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    move-result-object p1

    return-object p1
.end method

.method public w0(III)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "x",
            "y",
            "v"
        }
    .end annotation

    invoke-virtual {p0}, LMb/g;->Q0()V

    iget-object v0, p0, LMb/g;->r:Lcom/itsmagic/engine/Engines/Engine/Texture/Data/a;

    invoke-virtual {v0, p1, p2, p3}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/a;->l0(III)V

    return-void
.end method

.method public x()Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;
    .locals 1

    iget-object v0, p0, LMb/g;->r:Lcom/itsmagic/engine/Engines/Engine/Texture/Data/a;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/a;->G()Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public x0(IIIII)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "x",
            "y",
            "r",
            "g",
            "b"
        }
    .end annotation

    invoke-virtual {p0}, LMb/g;->Q0()V

    iget-object v0, p0, LMb/g;->r:Lcom/itsmagic/engine/Engines/Engine/Texture/Data/a;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/a;->a0(IIIII)V

    return-void
.end method

.method public y(II)F
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "x",
            "y"
        }
    .end annotation

    invoke-virtual {p0}, LMb/g;->Q0()V

    iget-object v0, p0, LMb/g;->r:Lcom/itsmagic/engine/Engines/Engine/Texture/Data/a;

    invoke-virtual {v0, p1, p2}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/a;->H(II)F

    move-result p1

    return p1
.end method

.method public y0(IIIIII)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "x",
            "y",
            "r",
            "g",
            "b",
            "a"
        }
    .end annotation

    invoke-virtual {p0}, LMb/g;->Q0()V

    iget-object v0, p0, LMb/g;->r:Lcom/itsmagic/engine/Engines/Engine/Texture/Data/a;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/a;->b0(IIIIII)V

    return-void
.end method

.method public z(II)F
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "x",
            "y"
        }
    .end annotation

    invoke-virtual {p0}, LMb/g;->Q0()V

    iget-object v0, p0, LMb/g;->r:Lcom/itsmagic/engine/Engines/Engine/Texture/Data/a;

    invoke-virtual {v0, p1, p2}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/a;->I(II)F

    move-result p1

    return p1
.end method

.method public z0(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    invoke-virtual {p0}, LMb/g;->G0()Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->s0(Z)V

    :cond_0
    return-void
.end method
