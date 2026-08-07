.class public LOb/h;
.super LOb/b;
.source "SourceFile"


# instance fields
.field public final b:Lcom/itsmagic/engine/Engines/Engine/Texture/Cubemap/CubemapConfig;

.field public final c:Ljava/lang/String;

.field public final d:[Ljava/nio/ByteBuffer;

.field public final e:I

.field public final f:I


# direct methods
.method public constructor <init>(Ljava/io/File;I)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "file",
            "maxSize"
        }
    .end annotation

    .line 35
    invoke-direct {p0}, LOb/b;-><init>()V

    const/4 v0, 0x6

    .line 36
    new-array v1, v0, [Ljava/nio/ByteBuffer;

    iput-object v1, p0, LOb/h;->d:[Ljava/nio/ByteBuffer;

    if-eqz p1, :cond_7

    .line 37
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 38
    iput p2, p0, LOb/h;->f:I

    .line 39
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, LOb/h;->c:Ljava/lang/String;

    .line 40
    :try_start_0
    const-string v2, "px.bin"

    const-string v3, "nx.bin"

    const-string v4, "py.bin"

    const-string v5, "ny.bin"

    const-string v6, "pz.bin"

    const-string v7, "nz.bin"

    filled-new-array/range {v2 .. v7}, [Ljava/lang/String;

    move-result-object v1

    .line 41
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 42
    :try_start_1
    invoke-static {v2, v1}, LOb/e;->e(Ljava/io/InputStream;[Ljava/lang/String;)Z

    move-result v2
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    if-eqz v2, :cond_6

    .line 43
    :try_start_2
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 44
    invoke-static {v2}, LOb/e;->g(Ljava/io/InputStream;)Lcom/itsmagic/engine/Engines/Engine/Texture/Cubemap/CubemapConfig;

    move-result-object v2

    iput-object v2, p0, LOb/h;->b:Lcom/itsmagic/engine/Engines/Engine/Texture/Cubemap/CubemapConfig;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 45
    const-string v3, "invalid cubemap"

    if-eqz v2, :cond_5

    .line 46
    :try_start_3
    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/Texture/Cubemap/CubemapConfig;->c()I

    move-result v4

    if-lez v4, :cond_4

    .line 47
    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/Texture/Cubemap/CubemapConfig;->c()I

    move-result v3

    if-lez p2, :cond_0

    .line 48
    invoke-static {p2, v3}, Lgd/b;->Z0(II)I

    move-result p2

    .line 49
    iput p2, p0, LOb/h;->e:I

    goto :goto_0

    :catch_0
    move-exception p1

    goto/16 :goto_4

    :cond_0
    const/4 p2, -0x1

    .line 50
    iput p2, p0, LOb/h;->e:I

    move p2, v3

    .line 51
    :goto_0
    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/Texture/Cubemap/CubemapConfig;->m()Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->i()I

    move-result v2
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_0

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v0, :cond_3

    .line 52
    :try_start_4
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 53
    aget-object v6, v1, v4

    invoke-static {v5, v6}, LOb/e;->h(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v5

    if-eqz v5, :cond_2

    if-ge p2, v3, :cond_1

    .line 54
    invoke-static {v5, p2, p2}, LOb/f;->a(Landroid/graphics/Bitmap;II)Ljava/nio/ByteBuffer;

    move-result-object v5

    goto :goto_2

    :catch_1
    move-exception p1

    goto :goto_3

    .line 55
    :cond_1
    invoke-static {v5}, LOb/f;->b(Landroid/graphics/Bitmap;)Ljava/nio/ByteBuffer;

    move-result-object v5

    .line 56
    :goto_2
    iget-object v6, p0, LOb/h;->d:[Ljava/nio/ByteBuffer;

    aput-object v5, v6, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 57
    :cond_2
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "faceBuf is null for:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v0, v1, v4

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    .line 58
    :goto_3
    :try_start_5
    iget-object p2, p0, LOb/h;->d:[Ljava/nio/ByteBuffer;

    const/4 v0, 0x0

    invoke-static {p2, v0}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 59
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    .line 60
    :cond_3
    new-instance p1, LOb/h$b;

    invoke-direct {p1, p0, v2, p2}, LOb/h$b;-><init>(LOb/h;II)V

    invoke-static {p1}, Lc9/a;->I(Ljava/lang/Runnable;)V

    return-void

    .line 61
    :cond_4
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 62
    :cond_5
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :catch_2
    move-exception p1

    .line 63
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
    :try_end_5
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_0

    .line 64
    :cond_6
    :try_start_6
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Cubemap doesn`t have 6 faces!"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    :catch_3
    move-exception p1

    .line 65
    :try_start_7
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
    :try_end_7
    .catch Ljava/io/FileNotFoundException; {:try_start_7 .. :try_end_7} :catch_0

    .line 66
    :goto_4
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    .line 67
    :cond_7
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "file is null or not exists"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ipp"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, LOb/h;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "ipp",
            "maxSize"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, LOb/b;-><init>()V

    const/4 v0, 0x6

    .line 3
    new-array v1, v0, [Ljava/nio/ByteBuffer;

    iput-object v1, p0, LOb/h;->d:[Ljava/nio/ByteBuffer;

    if-eqz p1, :cond_8

    .line 4
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_8

    .line 5
    iput p2, p0, LOb/h;->f:I

    .line 6
    iput-object p1, p0, LOb/h;->c:Ljava/lang/String;

    .line 7
    const-string v6, "pz.bin"

    const-string v7, "nz.bin"

    const-string v2, "px.bin"

    const-string v3, "nx.bin"

    const-string v4, "py.bin"

    const-string v5, "ny.bin"

    filled-new-array/range {v2 .. v7}, [Ljava/lang/String;

    move-result-object v1

    .line 8
    invoke-static {p1}, Lp8/a;->o(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    if-eqz v2, :cond_7

    .line 9
    :try_start_0
    invoke-static {v2, v1}, LOb/e;->e(Ljava/io/InputStream;[Ljava/lang/String;)Z

    move-result v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    if-eqz v2, :cond_6

    .line 10
    :try_start_1
    invoke-static {p1}, Lp8/a;->o(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    .line 11
    invoke-static {v2}, LOb/e;->g(Ljava/io/InputStream;)Lcom/itsmagic/engine/Engines/Engine/Texture/Cubemap/CubemapConfig;

    move-result-object v2

    iput-object v2, p0, LOb/h;->b:Lcom/itsmagic/engine/Engines/Engine/Texture/Cubemap/CubemapConfig;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 12
    const-string v3, "invalid cubemap"

    if-eqz v2, :cond_5

    .line 13
    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/Texture/Cubemap/CubemapConfig;->c()I

    move-result v4

    if-lez v4, :cond_4

    .line 14
    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/Texture/Cubemap/CubemapConfig;->c()I

    move-result v3

    if-lez p2, :cond_0

    .line 15
    invoke-static {p2, v3}, Lgd/b;->Z0(II)I

    move-result p2

    .line 16
    iput p2, p0, LOb/h;->e:I

    goto :goto_0

    :cond_0
    const/4 p2, -0x1

    .line 17
    iput p2, p0, LOb/h;->e:I

    move p2, v3

    .line 18
    :goto_0
    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/Texture/Cubemap/CubemapConfig;->m()Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->i()I

    move-result v2

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v0, :cond_3

    .line 19
    :try_start_2
    invoke-static {p1}, Lp8/a;->o(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v5

    .line 20
    aget-object v6, v1, v4

    invoke-static {v5, v6}, LOb/e;->h(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v5

    if-eqz v5, :cond_2

    if-ge p2, v3, :cond_1

    .line 21
    invoke-static {v5, p2, p2}, LOb/f;->a(Landroid/graphics/Bitmap;II)Ljava/nio/ByteBuffer;

    move-result-object v5

    goto :goto_2

    :catch_0
    move-exception p1

    goto :goto_3

    .line 22
    :cond_1
    invoke-static {v5}, LOb/f;->b(Landroid/graphics/Bitmap;)Ljava/nio/ByteBuffer;

    move-result-object v5

    .line 23
    :goto_2
    iget-object v6, p0, LOb/h;->d:[Ljava/nio/ByteBuffer;

    aput-object v5, v6, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 24
    :cond_2
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "faceBuf is null for:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v0, v1, v4

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 25
    :goto_3
    iget-object p2, p0, LOb/h;->d:[Ljava/nio/ByteBuffer;

    const/4 v0, 0x0

    invoke-static {p2, v0}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 26
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    .line 27
    :cond_3
    new-instance p1, LOb/h$a;

    invoke-direct {p1, p0, v2, p2}, LOb/h$a;-><init>(LOb/h;II)V

    invoke-static {p1}, Lc9/a;->I(Ljava/lang/Runnable;)V

    return-void

    .line 28
    :cond_4
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 29
    :cond_5
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :catch_1
    move-exception p1

    .line 30
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    .line 31
    :cond_6
    :try_start_3
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Cubemap doesn`t have 6 faces!"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    :catch_2
    move-exception p1

    .line 32
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    .line 33
    :cond_7
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Cubemap not found!"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 34
    :cond_8
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "ip == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static synthetic c(LOb/h;IIZ)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, LOb/h;->e(IIZ)V

    return-void
.end method

.method public static synthetic d(LOb/h;)[Ljava/nio/ByteBuffer;
    .locals 0

    iget-object p0, p0, LOb/h;->d:[Ljava/nio/ByteBuffer;

    return-object p0
.end method


# virtual methods
.method public final e(IIZ)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "f",
            "wantedResolution",
            "genMipmaps"
        }
    .end annotation

    new-instance p3, LOb/h$c;

    invoke-direct {p3, p0, p1, p2}, LOb/h$c;-><init>(LOb/h;II)V

    invoke-static {p3}, Lc9/a;->I(Ljava/lang/Runnable;)V

    return-void
.end method

.method public f()I
    .locals 1

    iget v0, p0, LOb/h;->e:I

    return v0
.end method

.method public g()Lcom/itsmagic/engine/Engines/Engine/Texture/Cubemap/CubemapConfig;
    .locals 1

    iget-object v0, p0, LOb/h;->b:Lcom/itsmagic/engine/Engines/Engine/Texture/Cubemap/CubemapConfig;

    return-object v0
.end method

.method public h()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LOb/h;->c:Ljava/lang/String;

    return-object v0
.end method

.method public i()I
    .locals 1

    iget v0, p0, LOb/h;->f:I

    return v0
.end method
