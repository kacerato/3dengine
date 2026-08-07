.class public LMb/i;
.super LMb/p;
.source "SourceFile"


# instance fields
.field public m:Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;

.field public n:Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureR8;

.field public o:Z


# direct methods
.method public constructor <init>(II)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "width",
            "height"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, LMb/p;-><init>()V

    if-lez p1, :cond_0

    if-lez p2, :cond_0

    .line 2
    iput p1, p0, LMb/p;->c:I

    .line 3
    iput p2, p0, LMb/p;->d:I

    .line 4
    new-instance p1, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;

    invoke-direct {p1}, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;-><init>()V

    iput-object p1, p0, LMb/i;->m:Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;

    const/4 p2, 0x1

    .line 5
    iput-boolean p2, p1, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->allowModifications:Z

    const/4 p2, 0x0

    .line 6
    iput-boolean p2, p1, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->genMipmaps:Z

    .line 7
    iput p2, p1, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->mipmapLevels:I

    .line 8
    invoke-direct {p0}, LMb/i;->G0()V

    return-void

    .line 9
    :cond_0
    new-instance p1, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/Exceptions/InvalidTextureSizeException;

    const-string p2, "Width and height can\'t be <= 0"

    invoke-direct {p1, p2}, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/Exceptions/InvalidTextureSizeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(IILcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "width",
            "height",
            "config"
        }
    .end annotation

    .line 19
    invoke-direct {p0}, LMb/p;-><init>()V

    if-lez p1, :cond_0

    if-lez p2, :cond_0

    .line 20
    iput p1, p0, LMb/p;->c:I

    .line 21
    iput p2, p0, LMb/p;->d:I

    .line 22
    iput-object p3, p0, LMb/i;->m:Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;

    .line 23
    invoke-direct {p0}, LMb/i;->G0()V

    return-void

    .line 24
    :cond_0
    new-instance p1, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/Exceptions/InvalidTextureSizeException;

    const-string p2, "Width and height can\'t be <= 0"

    invoke-direct {p1, p2}, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/Exceptions/InvalidTextureSizeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(IILcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "width",
            "height",
            "config",
            "allowModifications"
        }
    .end annotation

    .line 25
    invoke-direct {p0}, LMb/p;-><init>()V

    if-lez p1, :cond_0

    if-lez p2, :cond_0

    .line 26
    iput p1, p0, LMb/p;->c:I

    .line 27
    iput p2, p0, LMb/p;->d:I

    .line 28
    iput-object p3, p0, LMb/i;->m:Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;

    .line 29
    iput-boolean p4, p3, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->allowModifications:Z

    .line 30
    invoke-direct {p0}, LMb/i;->G0()V

    return-void

    .line 31
    :cond_0
    new-instance p1, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/Exceptions/InvalidTextureSizeException;

    const-string p2, "Width and height can\'t be <= 0"

    invoke-direct {p1, p2}, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/Exceptions/InvalidTextureSizeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(IIZ)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "width",
            "height",
            "allowModifications"
        }
    .end annotation

    .line 10
    invoke-direct {p0}, LMb/p;-><init>()V

    if-lez p1, :cond_0

    if-lez p2, :cond_0

    .line 11
    iput p1, p0, LMb/p;->c:I

    .line 12
    iput p2, p0, LMb/p;->d:I

    .line 13
    new-instance p1, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;

    invoke-direct {p1}, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;-><init>()V

    iput-object p1, p0, LMb/i;->m:Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;

    .line 14
    iput-boolean p3, p1, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->allowModifications:Z

    const/4 p2, 0x0

    .line 15
    iput-boolean p2, p1, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->genMipmaps:Z

    .line 16
    iput p2, p1, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->mipmapLevels:I

    .line 17
    invoke-direct {p0}, LMb/i;->G0()V

    return-void

    .line 18
    :cond_0
    new-instance p1, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/Exceptions/InvalidTextureSizeException;

    const-string p2, "Width and height can\'t be <= 0"

    invoke-direct {p1, p2}, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/Exceptions/InvalidTextureSizeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static synthetic C0(LMb/i;)Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureR8;
    .locals 0

    iget-object p0, p0, LMb/i;->n:Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureR8;

    return-object p0
.end method

.method public static synthetic D0(LMb/i;Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureR8;)Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureR8;
    .locals 0

    iput-object p1, p0, LMb/i;->n:Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureR8;

    return-object p1
.end method

.method private F0()Ljava/lang/Runnable;
    .locals 1

    new-instance v0, LMb/h;

    invoke-direct {v0, p0}, LMb/h;-><init>(LMb/i;)V

    return-object v0
.end method

.method private G0()V
    .locals 5

    iget-boolean v0, p0, LMb/i;->o:Z

    if-nez v0, :cond_0

    iget-object v0, p0, LMb/i;->n:Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureR8;

    if-nez v0, :cond_3

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, LMb/i;->o:Z

    iget-object v1, p0, LMb/i;->n:Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureR8;

    if-eqz v1, :cond_1

    :try_start_0
    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureR8;->destroyImmediate()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    const/4 v1, 0x0

    iput-object v1, p0, LMb/i;->n:Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureR8;

    :cond_1
    iget-object v1, p0, LMb/i;->m:Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;

    if-eqz v1, :cond_2

    iget-boolean v0, v1, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->allowModifications:Z

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureR8;

    iget v2, p0, LMb/p;->c:I

    iget v3, p0, LMb/p;->d:I

    iget-object v4, p0, LMb/i;->m:Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;

    invoke-direct {v1, v2, v3, v0, v4}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureR8;-><init>(IIZLcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;)V

    iput-object v1, p0, LMb/i;->n:Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureR8;

    goto :goto_1

    :cond_2
    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureR8;

    iget v2, p0, LMb/p;->c:I

    iget v3, p0, LMb/p;->d:I

    iget-object v4, p0, LMb/i;->m:Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;

    invoke-direct {v1, v2, v3, v0, v4}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureR8;-><init>(IIZLcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;)V

    iput-object v1, p0, LMb/i;->n:Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureR8;

    :cond_3
    :goto_1
    return-void
.end method

.method public static H0(Ljava/lang/String;)LMb/i;
    .locals 11
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "urlString"
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p0

    check-cast p0, Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const v1, 0xea60

    :try_start_1
    invoke-virtual {p0, v1}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    invoke-virtual {p0, v1}, Ljava/net/URLConnection;->setReadTimeout(I)V

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    invoke-virtual {p0}, Ljava/net/URLConnection;->connect()V

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1

    const/16 v2, 0xc8

    if-ne v1, v2, :cond_8

    invoke-virtual {p0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_7

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    const/16 v3, 0x1000

    invoke-static {v2, v3}, Lgd/b;->K(II)I

    move-result v2

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    invoke-static {v4, v3}, Lgd/b;->K(II)I

    move-result v3

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    const/4 v5, 0x0

    if-ne v2, v4, :cond_3

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    if-ne v3, v2, :cond_3

    new-instance v2, LMb/i;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    invoke-direct {v2, v3, v4}, LMb/i;-><init>(II)V

    move v3, v5

    :goto_0
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    if-ge v3, v4, :cond_1

    move v4, v5

    :goto_1
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    if-ge v4, v6, :cond_0

    invoke-virtual {v1, v3, v4}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v6

    new-instance v7, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    invoke-direct {v7, v6}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;-><init>(I)V

    invoke-virtual {v2, v3, v4, v7}, LMb/i;->k0(IILcom/itsmagic/engine/Engines/Engine/Color/ColorINT;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :catchall_0
    move-exception v1

    goto/16 :goto_5

    :catch_0
    move-exception v1

    move-object v10, v0

    move-object v0, p0

    move-object p0, v10

    goto/16 :goto_4

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, LMb/i;->apply()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_2

    :try_start_2
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    :cond_2
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->disconnect()V

    return-object v2

    :cond_3
    :try_start_3
    new-instance v2, LMb/i;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    invoke-direct {v2, v3, v4}, LMb/i;-><init>(II)V

    move v3, v5

    :goto_2
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    if-ge v3, v4, :cond_5

    move v4, v5

    :goto_3
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    if-ge v4, v6, :cond_4

    int-to-float v6, v3

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v6, v7

    int-to-float v7, v4

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v7, v8

    invoke-virtual {v2}, LMb/p;->getWidth()I

    move-result v8

    int-to-float v8, v8

    mul-float/2addr v6, v8

    float-to-int v6, v6

    invoke-virtual {v2}, LMb/p;->getHeight()I

    move-result v8

    int-to-float v8, v8

    mul-float/2addr v7, v8

    float-to-int v7, v7

    invoke-virtual {v1, v3, v4}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v8

    new-instance v9, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    invoke-direct {v9, v8}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;-><init>(I)V

    invoke-virtual {v2, v6, v7, v9}, LMb/i;->k0(IILcom/itsmagic/engine/Engines/Engine/Color/ColorINT;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_5
    invoke-virtual {v2}, LMb/i;->apply()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v0, :cond_6

    :try_start_4
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    :catch_2
    :cond_6
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->disconnect()V

    return-object v2

    :cond_7
    :try_start_5
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "No image decoded from url"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_8
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "HTTP Error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :catchall_1
    move-exception v1

    move-object p0, v0

    goto :goto_5

    :catch_3
    move-exception v1

    move-object p0, v0

    :goto_4
    :try_start_6
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :catchall_2
    move-exception v1

    move-object v10, v0

    move-object v0, p0

    move-object p0, v10

    :goto_5
    if-eqz v0, :cond_9

    :try_start_7
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    :catch_4
    :cond_9
    if-eqz p0, :cond_a

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_a
    throw v1
.end method

.method private I0()V
    .locals 2

    iget-object v0, p0, LMb/i;->n:Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureR8;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Texture not loaded yet, you may need to wait for the next frame, before calling modifications"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
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

    invoke-direct {p0}, LMb/i;->I0()V

    iget-object v0, p0, LMb/i;->n:Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureR8;

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

    iget-object v0, p0, LMb/i;->n:Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureR8;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureR8;->j0(Z)V

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

    invoke-direct {p0}, LMb/i;->I0()V

    iget-object v0, p0, LMb/i;->n:Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureR8;

    invoke-virtual {v0, p1, p2}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureR8;->K(II)F

    move-result p1

    return p1
.end method

.method public D()J
    .locals 2

    invoke-direct {p0}, LMb/i;->G0()V

    iget-object v0, p0, LMb/i;->n:Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureR8;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureR8;->L()J

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

    invoke-direct {p0}, LMb/i;->I0()V

    iget-object v0, p0, LMb/i;->n:Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureR8;

    invoke-virtual {v0, p1, p2}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/a;->M(II)I

    move-result p1

    return p1
.end method

.method public E0()Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;
    .locals 1

    iget-object v0, p0, LMb/i;->m:Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;

    return-object v0
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

    invoke-direct {p0}, LMb/i;->I0()V

    iget-object v0, p0, LMb/i;->n:Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureR8;

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

    invoke-direct {p0}, LMb/i;->I0()V

    iget-object v0, p0, LMb/i;->n:Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureR8;

    invoke-virtual {v0, p1, p2}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/a;->O(II)I

    move-result p1

    return p1
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

    invoke-direct {p0}, LMb/i;->I0()V

    iget-object v0, p0, LMb/i;->n:Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureR8;

    invoke-virtual {v0, p1, p2}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureR8;->P(II)I

    move-result p1

    return p1
.end method

.method public I()Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$b;
    .locals 2

    iget-object v0, p0, LMb/i;->n:Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureR8;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureR8;->Q()Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$b;

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

    iget-object v0, p0, LMb/i;->n:Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureR8;

    return-object v0
.end method

.method public J0(Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "config"
        }
    .end annotation

    iput-object p1, p0, LMb/i;->m:Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;

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

    iget-object v0, p0, LMb/i;->n:Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureR8;

    if-eqz v0, :cond_0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureR8;->m0(IIIILcom/itsmagic/engine/Engines/Engine/Texture/Data/a$b;)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Texture is not renderable yet."

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public N()Z
    .locals 1

    invoke-virtual {p0}, LMb/i;->E0()Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->x()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public O()Z
    .locals 1

    invoke-direct {p0}, LMb/i;->I0()V

    iget-object v0, p0, LMb/i;->n:Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureR8;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureR8;->S()Z

    move-result v0

    return v0
.end method

.method public U()Z
    .locals 1

    iget-object v0, p0, LMb/i;->n:Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureR8;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureR8;->T()Z

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

    iget-object v0, p0, LMb/i;->n:Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureR8;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureR8;->U()Z

    move-result v0

    return v0
.end method

.method public W()Z
    .locals 1

    iget-object v0, p0, LMb/i;->n:Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureR8;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureR8;->V()Z

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

    iget-object v0, p0, LMb/i;->n:Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureR8;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureR8;->W()Z

    move-result v0

    return v0
.end method

.method public apply()V
    .locals 2

    invoke-direct {p0}, LMb/i;->G0()V

    iget-object v0, p0, LMb/i;->n:Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureR8;

    if-eqz v0, :cond_0

    invoke-direct {p0}, LMb/i;->F0()Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureR8;->F0(Ljava/lang/Runnable;)V

    return-void

    :cond_0
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/Exceptions/UnsupportedTextureOperation;

    const-string v1, "Can\'t apply a unloaded texture"

    invoke-direct {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/Exceptions/UnsupportedTextureOperation;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public destroyImmediate()V
    .locals 1

    iget-object v0, p0, LMb/i;->n:Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureR8;

    if-eqz v0, :cond_0

    new-instance v0, LMb/i$a;

    invoke-direct {v0, p0}, LMb/i$a;-><init>(LMb/i;)V

    invoke-static {v0}, Lc9/a;->I(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public e0(LMb/p;IIII)V
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
            "textureInstance",
            "startX",
            "startY",
            "width",
            "height"
        }
    .end annotation

    if-eqz p1, :cond_1

    invoke-direct {p0}, LMb/i;->G0()V

    iget-object v0, p0, LMb/i;->n:Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureR8;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, LMb/p;->J()Lcom/itsmagic/engine/Engines/Engine/Texture/Data/a;

    move-result-object v1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/a;->X(Lcom/itsmagic/engine/Engines/Engine/Texture/Data/a;IIII)V

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

.method public h0(IILMb/p$e;)V
    .locals 4
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

    invoke-virtual {p0}, LMb/i;->U()Z

    move-result v0

    if-eqz v0, :cond_5

    if-lez p1, :cond_4

    if-lez p2, :cond_3

    iget-object v0, p0, LMb/i;->m:Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-boolean v0, v0, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->allowModifications:Z

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    new-instance v2, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureR8;

    iget-object v3, p0, LMb/i;->m:Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;

    invoke-direct {v2, p1, p2, v0, v3}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureR8;-><init>(IIZLcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;)V

    iget-object v0, p0, LMb/i;->n:Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureR8;

    if-eqz v0, :cond_2

    invoke-static {v0}, LMb/p;->K(Lcom/itsmagic/engine/Engines/Engine/Texture/Data/a;)LMb/p$d;

    move-result-object v0

    invoke-static {v2}, LMb/p;->K(Lcom/itsmagic/engine/Engines/Engine/Texture/Data/a;)LMb/p$d;

    move-result-object v3

    if-eqz p3, :cond_1

    invoke-interface {p3, v0, v3}, LMb/p$e;->a(LMb/p$d;LMb/p$d;)V

    :cond_1
    :try_start_0
    iget-object p3, p0, LMb/i;->n:Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureR8;

    invoke-virtual {p3}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureR8;->destroyImmediate()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p3

    invoke-virtual {p3}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_1
    iput-object v2, p0, LMb/i;->n:Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureR8;

    goto :goto_2

    :cond_2
    iput-object v2, p0, LMb/i;->n:Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureR8;

    :goto_2
    iput p1, p0, LMb/p;->c:I

    iput p2, p0, LMb/p;->d:I

    iput-boolean v1, p0, LMb/i;->o:Z

    return-void

    :cond_3
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "height can\'t be <= 0"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "width can\'t be <= 0"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    new-instance p1, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/Exceptions/UnsupportedTextureOperation;

    const-string p2, "Can\'t resize a unloaded texture, you may need to wait a frame?"

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

    invoke-direct {p0}, LMb/i;->I0()V

    iget-object v0, p0, LMb/i;->n:Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureR8;

    invoke-virtual {v0, p1, p2, p3}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureR8;->c0(IILcom/itsmagic/engine/Engines/Engine/Color/ColorINT;)V

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

    invoke-direct {p0}, LMb/i;->I0()V

    iget-object v0, p0, LMb/i;->n:Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureR8;

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

    invoke-direct {p0}, LMb/i;->I0()V

    iget-object v0, p0, LMb/i;->n:Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureR8;

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

    invoke-direct {p0}, LMb/i;->I0()V

    iget-object v0, p0, LMb/i;->n:Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureR8;

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

    invoke-direct {p0}, LMb/i;->I0()V

    iget-object v0, p0, LMb/i;->n:Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureR8;

    invoke-virtual {v0, p1, p2, p3}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureR8;->k0(IIF)V

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

    invoke-direct {p0}, LMb/i;->I0()V

    iget-object v0, p0, LMb/i;->n:Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureR8;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureR8;->Y(IIFFF)V

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

    invoke-direct {p0}, LMb/i;->I0()V

    iget-object v0, p0, LMb/i;->n:Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureR8;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureR8;->Z(IIFFFF)V

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

    iget-object v0, p0, LMb/i;->n:Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureR8;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureR8;->C(Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;Ljava/lang/String;)V

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

.method public setHeight(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    iget v0, p0, LMb/p;->d:I

    if-eq v0, p1, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, LMb/i;->o:Z

    :cond_0
    iput p1, p0, LMb/p;->d:I

    return-void
.end method

.method public setWidth(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    iget v0, p0, LMb/p;->c:I

    if-eq v0, p1, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, LMb/i;->o:Z

    :cond_0
    iput p1, p0, LMb/p;->c:I

    return-void
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

    invoke-direct {p0}, LMb/i;->I0()V

    iget-object v0, p0, LMb/i;->n:Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureR8;

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

    iget-object v0, p0, LMb/i;->n:Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureR8;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2, p3}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureR8;->D(Ljava/io/File;ILcom/itsmagic/engine/Engines/Engine/Texture/Data/a$a;)V

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

    invoke-direct {p0}, LMb/i;->I0()V

    iget-object v0, p0, LMb/i;->n:Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureR8;

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

    invoke-direct {p0}, LMb/i;->I0()V

    iget-object v0, p0, LMb/i;->n:Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureR8;

    invoke-virtual {v0, p1, p2}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureR8;->E(II)Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

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

    invoke-direct {p0}, LMb/i;->I0()V

    iget-object v0, p0, LMb/i;->n:Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureR8;

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

    invoke-direct {p0}, LMb/i;->I0()V

    iget-object v0, p0, LMb/i;->n:Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureR8;

    invoke-virtual {v0, p1, p2, p3}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureR8;->F(IILcom/itsmagic/engine/Engines/Engine/Color/ColorINT;)Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

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

    invoke-direct {p0}, LMb/i;->I0()V

    iget-object v0, p0, LMb/i;->n:Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureR8;

    invoke-virtual {v0, p1, p2, p3}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureR8;->l0(III)V

    return-void
.end method

.method public x()Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;
    .locals 1

    iget-object v0, p0, LMb/i;->n:Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureR8;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureR8;->G()Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentTexture;

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

    invoke-direct {p0}, LMb/i;->I0()V

    iget-object v0, p0, LMb/i;->n:Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureR8;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureR8;->a0(IIIII)V

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

    invoke-direct {p0}, LMb/i;->I0()V

    iget-object v0, p0, LMb/i;->n:Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureR8;

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

    invoke-direct {p0}, LMb/i;->I0()V

    iget-object v0, p0, LMb/i;->n:Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureR8;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureR8;->b0(IIIIII)V

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

    invoke-direct {p0}, LMb/i;->I0()V

    iget-object v0, p0, LMb/i;->n:Lcom/itsmagic/engine/Engines/Engine/Texture/Data/NativeTextureR8;

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

    invoke-virtual {p0}, LMb/i;->E0()Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->s0(Z)V

    :cond_0
    return-void
.end method
