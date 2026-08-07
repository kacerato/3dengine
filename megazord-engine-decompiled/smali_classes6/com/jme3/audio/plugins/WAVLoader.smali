.class public Lcom/jme3/audio/plugins/WAVLoader;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/jme3/asset/AssetLoader;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jme3/audio/plugins/WAVLoader$ResettableInputStream;
    }
.end annotation


# static fields
.field private static final i_RIFF:I = 0x46464952

.field private static final i_WAVE:I = 0x45564157

.field private static final i_data:I = 0x61746164

.field private static final i_fmt:I = 0x20746d66

.field private static final logger:Ljava/util/logging/Logger;


# instance fields
.field private audioBuffer:Lcom/jme3/audio/AudioBuffer;

.field private audioData:Lcom/jme3/audio/AudioData;

.field private audioStream:Lcom/jme3/audio/AudioStream;

.field private bytesPerSec:I

.field private duration:F

.field private in:Lcom/jme3/audio/plugins/WAVLoader$ResettableInputStream;

.field private inOffset:I

.field private readStream:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/jme3/audio/plugins/WAVLoader;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/jme3/audio/plugins/WAVLoader;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jme3/audio/plugins/WAVLoader;->readStream:Z

    iput v0, p0, Lcom/jme3/audio/plugins/WAVLoader;->inOffset:I

    return-void
.end method

.method private load(Lcom/jme3/asset/AssetInfo;Ljava/io/InputStream;Z)Lcom/jme3/audio/AudioData;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/jme3/audio/plugins/WAVLoader$ResettableInputStream;

    invoke-direct {v0, p1, p2}, Lcom/jme3/audio/plugins/WAVLoader$ResettableInputStream;-><init>(Lcom/jme3/asset/AssetInfo;Ljava/io/InputStream;)V

    iput-object v0, p0, Lcom/jme3/audio/plugins/WAVLoader;->in:Lcom/jme3/audio/plugins/WAVLoader$ResettableInputStream;

    const/4 p1, 0x0

    .line 2
    iput p1, p0, Lcom/jme3/audio/plugins/WAVLoader;->inOffset:I

    .line 3
    invoke-virtual {v0}, Lcom/jme3/util/LittleEndien;->readInt()I

    move-result p1

    const p2, 0x46464952

    if-ne p1, p2, :cond_6

    .line 4
    iget-object p1, p0, Lcom/jme3/audio/plugins/WAVLoader;->in:Lcom/jme3/audio/plugins/WAVLoader$ResettableInputStream;

    invoke-virtual {p1}, Lcom/jme3/util/LittleEndien;->readInt()I

    .line 5
    iget-object p1, p0, Lcom/jme3/audio/plugins/WAVLoader;->in:Lcom/jme3/audio/plugins/WAVLoader$ResettableInputStream;

    invoke-virtual {p1}, Lcom/jme3/util/LittleEndien;->readInt()I

    move-result p1

    const p2, 0x45564157

    if-ne p1, p2, :cond_5

    .line 6
    iget p1, p0, Lcom/jme3/audio/plugins/WAVLoader;->inOffset:I

    add-int/lit8 p1, p1, 0xc

    iput p1, p0, Lcom/jme3/audio/plugins/WAVLoader;->inOffset:I

    .line 7
    iput-boolean p3, p0, Lcom/jme3/audio/plugins/WAVLoader;->readStream:Z

    if-eqz p3, :cond_0

    .line 8
    new-instance p1, Lcom/jme3/audio/AudioStream;

    invoke-direct {p1}, Lcom/jme3/audio/AudioStream;-><init>()V

    iput-object p1, p0, Lcom/jme3/audio/plugins/WAVLoader;->audioStream:Lcom/jme3/audio/AudioStream;

    .line 9
    iput-object p1, p0, Lcom/jme3/audio/plugins/WAVLoader;->audioData:Lcom/jme3/audio/AudioData;

    goto :goto_0

    .line 10
    :cond_0
    new-instance p1, Lcom/jme3/audio/AudioBuffer;

    invoke-direct {p1}, Lcom/jme3/audio/AudioBuffer;-><init>()V

    iput-object p1, p0, Lcom/jme3/audio/plugins/WAVLoader;->audioBuffer:Lcom/jme3/audio/AudioBuffer;

    .line 11
    iput-object p1, p0, Lcom/jme3/audio/plugins/WAVLoader;->audioData:Lcom/jme3/audio/AudioData;

    .line 12
    :goto_0
    iget-object p1, p0, Lcom/jme3/audio/plugins/WAVLoader;->in:Lcom/jme3/audio/plugins/WAVLoader$ResettableInputStream;

    invoke-virtual {p1}, Lcom/jme3/util/LittleEndien;->readInt()I

    move-result p1

    .line 13
    iget-object p2, p0, Lcom/jme3/audio/plugins/WAVLoader;->in:Lcom/jme3/audio/plugins/WAVLoader$ResettableInputStream;

    invoke-virtual {p2}, Lcom/jme3/util/LittleEndien;->readInt()I

    move-result p2

    .line 14
    iget p3, p0, Lcom/jme3/audio/plugins/WAVLoader;->inOffset:I

    add-int/lit8 p3, p3, 0x8

    iput p3, p0, Lcom/jme3/audio/plugins/WAVLoader;->inOffset:I

    const v0, 0x20746d66

    if-eq p1, v0, :cond_4

    const v0, 0x61746164

    if-eq p1, v0, :cond_2

    .line 15
    iget-object p1, p0, Lcom/jme3/audio/plugins/WAVLoader;->in:Lcom/jme3/audio/plugins/WAVLoader$ResettableInputStream;

    invoke-virtual {p1, p2}, Lcom/jme3/util/LittleEndien;->skipBytes(I)I

    move-result p1

    if-gtz p1, :cond_1

    const/4 p1, 0x0

    return-object p1

    .line 16
    :cond_1
    iget p2, p0, Lcom/jme3/audio/plugins/WAVLoader;->inOffset:I

    add-int/2addr p2, p1

    iput p2, p0, Lcom/jme3/audio/plugins/WAVLoader;->inOffset:I

    goto :goto_0

    .line 17
    :cond_2
    iget p1, p0, Lcom/jme3/audio/plugins/WAVLoader;->bytesPerSec:I

    div-int p1, p2, p1

    int-to-float p1, p1

    iput p1, p0, Lcom/jme3/audio/plugins/WAVLoader;->duration:F

    .line 18
    iget-boolean p1, p0, Lcom/jme3/audio/plugins/WAVLoader;->readStream:Z

    if-eqz p1, :cond_3

    .line 19
    invoke-direct {p0, p3, p2}, Lcom/jme3/audio/plugins/WAVLoader;->readDataChunkForStream(II)V

    goto :goto_1

    .line 20
    :cond_3
    invoke-direct {p0, p2}, Lcom/jme3/audio/plugins/WAVLoader;->readDataChunkForBuffer(I)V

    .line 21
    :goto_1
    iget-object p1, p0, Lcom/jme3/audio/plugins/WAVLoader;->audioData:Lcom/jme3/audio/AudioData;

    return-object p1

    .line 22
    :cond_4
    invoke-direct {p0, p2}, Lcom/jme3/audio/plugins/WAVLoader;->readFormatChunk(I)V

    .line 23
    iget p1, p0, Lcom/jme3/audio/plugins/WAVLoader;->inOffset:I

    add-int/2addr p1, p2

    iput p1, p0, Lcom/jme3/audio/plugins/WAVLoader;->inOffset:I

    goto :goto_0

    .line 24
    :cond_5
    new-instance p1, Ljava/io/IOException;

    const-string p2, "WAVE File does not contain audio"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 25
    :cond_6
    new-instance p1, Ljava/io/IOException;

    const-string p2, "File is not a WAVE file"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private readDataChunkForBuffer(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p1}, Lcom/jme3/util/BufferUtils;->createByteBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    const/16 v0, 0x200

    new-array v0, v0, [B

    :goto_0
    iget-object v1, p0, Lcom/jme3/audio/plugins/WAVLoader;->in:Lcom/jme3/audio/plugins/WAVLoader$ResettableInputStream;

    invoke-virtual {v1, v0}, Lcom/jme3/util/LittleEndien;->read([B)I

    move-result v1

    if-lez v1, :cond_0

    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v1}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    iget-object v0, p0, Lcom/jme3/audio/plugins/WAVLoader;->audioBuffer:Lcom/jme3/audio/AudioBuffer;

    invoke-virtual {v0, p1}, Lcom/jme3/audio/AudioBuffer;->updateData(Ljava/nio/ByteBuffer;)V

    iget-object p1, p0, Lcom/jme3/audio/plugins/WAVLoader;->in:Lcom/jme3/audio/plugins/WAVLoader$ResettableInputStream;

    invoke-virtual {p1}, Lcom/jme3/util/LittleEndien;->close()V

    return-void
.end method

.method private readDataChunkForStream(II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object p2, p0, Lcom/jme3/audio/plugins/WAVLoader;->in:Lcom/jme3/audio/plugins/WAVLoader$ResettableInputStream;

    invoke-virtual {p2, p1}, Lcom/jme3/audio/plugins/WAVLoader$ResettableInputStream;->setResetOffset(I)V

    iget-object p1, p0, Lcom/jme3/audio/plugins/WAVLoader;->audioStream:Lcom/jme3/audio/AudioStream;

    iget-object p2, p0, Lcom/jme3/audio/plugins/WAVLoader;->in:Lcom/jme3/audio/plugins/WAVLoader$ResettableInputStream;

    iget v0, p0, Lcom/jme3/audio/plugins/WAVLoader;->duration:F

    invoke-virtual {p1, p2, v0}, Lcom/jme3/audio/AudioStream;->updateData(Ljava/io/InputStream;F)V

    return-void
.end method

.method private readFormatChunk(I)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/jme3/audio/plugins/WAVLoader;->in:Lcom/jme3/audio/plugins/WAVLoader$ResettableInputStream;

    invoke-virtual {v0}, Lcom/jme3/util/LittleEndien;->readShort()S

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    iget-object v0, p0, Lcom/jme3/audio/plugins/WAVLoader;->in:Lcom/jme3/audio/plugins/WAVLoader$ResettableInputStream;

    invoke-virtual {v0}, Lcom/jme3/util/LittleEndien;->readShort()S

    move-result v0

    iget-object v1, p0, Lcom/jme3/audio/plugins/WAVLoader;->in:Lcom/jme3/audio/plugins/WAVLoader$ResettableInputStream;

    invoke-virtual {v1}, Lcom/jme3/util/LittleEndien;->readInt()I

    move-result v1

    iget-object v2, p0, Lcom/jme3/audio/plugins/WAVLoader;->in:Lcom/jme3/audio/plugins/WAVLoader$ResettableInputStream;

    invoke-virtual {v2}, Lcom/jme3/util/LittleEndien;->readInt()I

    move-result v2

    iput v2, p0, Lcom/jme3/audio/plugins/WAVLoader;->bytesPerSec:I

    iget-object v2, p0, Lcom/jme3/audio/plugins/WAVLoader;->in:Lcom/jme3/audio/plugins/WAVLoader$ResettableInputStream;

    invoke-virtual {v2}, Lcom/jme3/util/LittleEndien;->readShort()S

    move-result v2

    iget-object v3, p0, Lcom/jme3/audio/plugins/WAVLoader;->in:Lcom/jme3/audio/plugins/WAVLoader$ResettableInputStream;

    invoke-virtual {v3}, Lcom/jme3/util/LittleEndien;->readShort()S

    move-result v3

    mul-int v4, v3, v0

    mul-int/2addr v4, v1

    const/16 v5, 0x8

    div-int/2addr v4, v5

    iget v6, p0, Lcom/jme3/audio/plugins/WAVLoader;->bytesPerSec:I

    if-eq v4, v6, :cond_0

    sget-object v6, Lcom/jme3/audio/plugins/WAVLoader;->logger:Ljava/util/logging/Logger;

    sget-object v7, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget v8, p0, Lcom/jme3/audio/plugins/WAVLoader;->bytesPerSec:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    filled-new-array {v4, v8}, [Ljava/lang/Object;

    move-result-object v4

    const-string v8, "Expected {0} bytes per second, got {1}"

    invoke-virtual {v6, v7, v8, v4}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    const/16 v4, 0x10

    if-eq v3, v5, :cond_2

    if-ne v3, v4, :cond_1

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Only 8 and 16 bits per sample are supported!"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    :goto_0
    div-int/lit8 v5, v3, 0x8

    mul-int/2addr v5, v0

    if-ne v5, v2, :cond_5

    mul-int/2addr v2, v1

    iget v5, p0, Lcom/jme3/audio/plugins/WAVLoader;->bytesPerSec:I

    if-ne v2, v5, :cond_4

    iget-object v2, p0, Lcom/jme3/audio/plugins/WAVLoader;->audioData:Lcom/jme3/audio/AudioData;

    invoke-virtual {v2, v0, v3, v1}, Lcom/jme3/audio/AudioData;->setupFormat(III)V

    sub-int/2addr p1, v4

    if-lez p1, :cond_3

    iget-object v0, p0, Lcom/jme3/audio/plugins/WAVLoader;->in:Lcom/jme3/audio/plugins/WAVLoader$ResettableInputStream;

    invoke-virtual {v0, p1}, Lcom/jme3/util/LittleEndien;->skipBytes(I)I

    :cond_3
    return-void

    :cond_4
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Invalid bytes per second value"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Invalid bytes per sample value"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    new-instance p1, Ljava/io/IOException;

    const-string v0, "WAV Loader only supports PCM wave files"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public load(Lcom/jme3/asset/AssetInfo;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 26
    :try_start_0
    invoke-virtual {p1}, Lcom/jme3/asset/AssetInfo;->openStream()Ljava/io/InputStream;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 27
    :try_start_1
    invoke-virtual {p1}, Lcom/jme3/asset/AssetInfo;->getKey()Lcom/jme3/asset/AssetKey;

    move-result-object v2

    check-cast v2, Lcom/jme3/audio/AudioKey;

    invoke-virtual {v2}, Lcom/jme3/audio/AudioKey;->isStream()Z

    move-result v2

    invoke-direct {p0, p1, v1, v2}, Lcom/jme3/audio/plugins/WAVLoader;->load(Lcom/jme3/asset/AssetInfo;Ljava/io/InputStream;Z)Lcom/jme3/audio/AudioData;

    move-result-object p1

    .line 28
    instance-of v2, p1, Lcom/jme3/audio/AudioStream;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_1

    .line 29
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    :cond_1
    return-object p1

    :catchall_0
    move-exception p1

    move-object v0, v1

    goto :goto_1

    :catchall_1
    move-exception p1

    :goto_1
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 30
    :cond_2
    throw p1
.end method
