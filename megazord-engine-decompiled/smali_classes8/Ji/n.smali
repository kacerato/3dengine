.class public LJi/n;
.super LJi/b;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, LJi/b;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Ljava/util/zip/ZipFile;Ljava/lang/String;[I)[LJi/m;
    .locals 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "file",
            "filename",
            "indexToNode"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, LJi/b;->a(Ljava/util/zip/ZipFile;Ljava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result p2

    new-array v0, p2, [LJi/m;

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p2, :cond_0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v3

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v2

    aget v5, p3, v2

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v2

    aget v6, p3, v2

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    new-instance v7, LHi/d;

    invoke-direct {v7}, LHi/d;-><init>()V

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getFloat()F

    move-result v2

    iput v2, v7, LHi/d;->a:F

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getFloat()F

    move-result v2

    iput v2, v7, LHi/d;->b:F

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getFloat()F

    move-result v2

    iput v2, v7, LHi/d;->c:F

    new-instance v8, LHi/d;

    invoke-direct {v8}, LHi/d;-><init>()V

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getFloat()F

    move-result v2

    iput v2, v8, LHi/d;->a:F

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getFloat()F

    move-result v2

    iput v2, v8, LHi/d;->b:F

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getFloat()F

    move-result v2

    iput v2, v8, LHi/d;->c:F

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    new-instance v9, LJi/m;

    move-object v2, v9

    invoke-direct/range {v2 .. v8}, LJi/m;-><init>(JIILHi/d;LHi/d;)V

    aput-object v9, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method
