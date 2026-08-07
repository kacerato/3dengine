.class public Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;
.super LPc/a;
.source "SourceFile"

# interfaces
.implements LRc/a;


# static fields
.field public static final o:LQc/b;


# instance fields
.field public e:I

.field public g:J

.field public i:I

.field public j:Z

.field public k:Ljava/nio/ByteBuffer;

.field public l:Z

.field public m:Z

.field public n:LJAVARuntime/NativeByteBuffer;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, LQc/a;

    new-instance v1, Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer$a;

    invoke-direct {v1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer$a;-><init>()V

    invoke-direct {v0, v1}, LQc/a;-><init>(LQc/b$a;)V

    sput-object v0, Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;->o:LQc/b;

    const-string v0, "native-byte-buffer"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "capacity"
        }
    .end annotation

    .line 11
    invoke-direct {p0}, LPc/a;-><init>()V

    const/4 v0, 0x0

    .line 12
    iput v0, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;->e:I

    const/4 v0, 0x1

    .line 13
    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;->m:Z

    if-lez p1, :cond_1

    .line 14
    iput p1, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;->e:I

    .line 15
    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;->L()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;->g:J

    int-to-long v3, p1

    .line 16
    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;->C(JJ)J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long p1, v1, v3

    if-ltz p1, :cond_0

    .line 17
    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;->j:Z

    .line 18
    sget-object p1, Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;->o:LQc/b;

    new-instance v0, LQc/c;

    iget-wide v1, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;->g:J

    invoke-direct {v0, p0, v1, v2}, LQc/c;-><init>(LPc/a;J)V

    invoke-virtual {p1, v0}, LQc/b;->a(LQc/c;)V

    return-void

    .line 19
    :cond_0
    new-instance p1, Lcom/itsmagic/engine/Engines/Native/OutOfNativeMemoryError;

    const-string v0, "Can\'t allocate buffer"

    invoke-direct {p1, v0}, Lcom/itsmagic/engine/Engines/Native/OutOfNativeMemoryError;-><init>(Ljava/lang/String;)V

    throw p1

    .line 20
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid capacity:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(JIIZZ)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "pointer",
            "capacity",
            "position",
            "normalizeOGL",
            "vboEnabled"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, LPc/a;-><init>()V

    .line 2
    iput-wide p1, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;->g:J

    .line 3
    iput p3, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;->e:I

    .line 4
    iput p4, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;->i:I

    .line 5
    iput-boolean p5, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;->l:Z

    .line 6
    iput-boolean p6, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;->m:Z

    const/4 p3, 0x1

    .line 7
    iput-boolean p3, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;->j:Z

    .line 8
    sget-object p3, Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;->o:LQc/b;

    new-instance p4, LQc/c;

    invoke-direct {p4, p0, p1, p2}, LQc/c;-><init>(LPc/a;J)V

    invoke-virtual {p3, p4}, LQc/b;->a(LQc/c;)V

    .line 9
    invoke-virtual {p0, p1, p2, p5}, Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;->J(JI)V

    .line 10
    invoke-virtual {p0, p1, p2, p6}, Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;->K(JI)V

    return-void
.end method

.method private G(J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pointer"
        }
    .end annotation

    invoke-static {p1, p2}, Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;->nativeLostOGLContext(J)F

    return-void
.end method

.method private L()J
    .locals 2

    invoke-static {}, Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;->nativeTryCreate()J

    move-result-wide v0

    return-wide v0
.end method

.method public static V(Ljava/io/File;)Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "file"
        }
    .end annotation

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;->nativeReadFile(Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to read NativeByteBuffer from file: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "file can\'t be null"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private e0()Z
    .locals 2

    invoke-virtual {p0}, LPc/a;->v()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Buffer is garbage!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static native nativeAllocBuffer(JJ)J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "pointer",
            "capacity"
        }
    .end annotation
.end method

.method public static native nativeDeleteBuffer(J)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pointer"
        }
    .end annotation
.end method

.method public static native nativeEquals(JJ)Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "pointer",
            "otherPointer"
        }
    .end annotation
.end method

.method public static native nativeGetByte(JI)B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "pointer",
            "index"
        }
    .end annotation
.end method

.method public static native nativeLostOGLContext(J)F
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pointer"
        }
    .end annotation
.end method

.method public static native nativeOGLAttributePointer(JIII)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "pointer",
            "attributeLocation",
            "size",
            "stride"
        }
    .end annotation
.end method

.method private static native nativeReadFile(Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "path"
        }
    .end annotation
.end method

.method private native nativeSaveToFile(Ljava/lang/String;)Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "path"
        }
    .end annotation
.end method

.method public static native nativeSetByte(JIB)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "pointer",
            "index",
            "value"
        }
    .end annotation
.end method

.method public static native nativeSetNormalizeEnabled(JI)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "pointer",
            "enabled"
        }
    .end annotation
.end method

.method public static native nativeSetVBOEnabled(JI)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "pointer",
            "enabled"
        }
    .end annotation
.end method

.method public static native nativeTryCreate()J
.end method


# virtual methods
.method public B()[B
    .locals 4

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;->e0()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;->e:I

    new-array v0, v0, [B

    const/4 v1, 0x0

    :goto_0
    :try_start_0
    iget v2, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;->e:I

    if-ge v1, v2, :cond_0

    iget-wide v2, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;->g:J

    invoke-virtual {p0, v2, v3, v1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;->F(JI)B

    move-result v2

    aput-byte v2, v0, v1
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public final C(JJ)J
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "pointer",
            "capacity"
        }
    .end annotation

    invoke-static {p1, p2, p3, p4}, Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;->nativeAllocBuffer(JJ)J

    move-result-wide p1

    return-wide p1
.end method

.method public final D(J)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pointer"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;->j:Z

    if-eqz v0, :cond_0

    invoke-static {p1, p2}, Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;->nativeDeleteBuffer(J)V

    :cond_0
    return-void
.end method

.method public final E(JJ)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "pointer",
            "otherPointer"
        }
    .end annotation

    invoke-static {p1, p2, p3, p4}, Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;->nativeEquals(JJ)Z

    move-result p1

    return p1
.end method

.method public final F(JI)B
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "pointer",
            "index"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;->j:Z

    if-eqz v0, :cond_0

    invoke-static {p1, p2, p3}, Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;->nativeGetByte(JI)B

    move-result p1

    return p1

    :cond_0
    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;->k:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, p3}, Ljava/nio/ByteBuffer;->get(I)B

    move-result p1

    return p1
.end method

.method public final H(JIII)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "pointer",
            "attributeLocation",
            "size",
            "stride"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, LPc/a;->y(Z)V

    invoke-static {p1, p2, p3, p4, p5}, Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;->nativeOGLAttributePointer(JIII)V

    const/4 p1, 0x1

    return p1
.end method

.method public final I(JIB)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "pointer",
            "index",
            "value"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;->j:Z

    if-eqz v0, :cond_0

    invoke-static {p1, p2, p3, p4}, Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;->nativeSetByte(JIB)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;->k:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, p3, p4}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    :goto_0
    return-void
.end method

.method public final J(JI)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "pointer",
            "enabled"
        }
    .end annotation

    invoke-static {p1, p2, p3}, Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;->nativeSetNormalizeEnabled(JI)V

    return-void
.end method

.method public final K(JI)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "pointer",
            "enabled"
        }
    .end annotation

    invoke-static {p1, p2, p3}, Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;->nativeSetVBOEnabled(JI)V

    return-void
.end method

.method public M(Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;)Z
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "buffer"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    iget-boolean v1, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;->j:Z

    if-eqz v1, :cond_1

    iget-wide v0, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;->g:J

    iget-wide v2, p1, Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;->g:J

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;->E(JJ)Z

    move-result p1

    return p1

    :cond_1
    iget v1, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;->e:I

    iget v2, p1, Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;->e:I

    if-eq v1, v2, :cond_2

    return v0

    :cond_2
    iget-boolean v1, p1, Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;->j:Z

    if-nez v1, :cond_4

    move v1, v0

    :goto_0
    iget v2, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;->e:I

    if-ge v1, v2, :cond_6

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;->k:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, v1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v2

    iget-object v3, p1, Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;->k:Ljava/nio/ByteBuffer;

    invoke-virtual {v3, v1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v3

    if-eq v2, v3, :cond_3

    return v0

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    move v1, v0

    :goto_1
    iget v2, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;->e:I

    if-ge v1, v2, :cond_6

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;->k:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, v1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v2

    invoke-virtual {p1, v1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;->N(I)B

    move-result v3

    if-eq v2, v3, :cond_5

    return v0

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_6
    const/4 p1, 0x1

    return p1
.end method

.method public N(I)B
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;->e0()Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;->e:I

    if-ge p1, v0, :cond_1

    if-ltz p1, :cond_0

    :try_start_0
    iget-wide v0, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;->g:J

    invoke-virtual {p0, v0, v1, p1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;->F(JI)B

    move-result p1
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    const-string v0, "index cant be < 0"

    invoke-direct {p1, v0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    const-string v0, "index cant be >= capacity"

    invoke-direct {p1, v0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public O()I
    .locals 1

    iget v0, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;->e:I

    return v0
.end method

.method public P()I
    .locals 1

    iget v0, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;->i:I

    return v0
.end method

.method public Q()Z
    .locals 1

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;->l:Z

    return v0
.end method

.method public R()Z
    .locals 1

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;->m:Z

    return v0
.end method

.method public S(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "position"
        }
    .end annotation

    iput p1, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;->i:I

    return-void
.end method

.method public T(B)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;->e0()Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;->i:I

    iget v1, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;->e:I

    if-ge v0, v1, :cond_1

    if-ltz v0, :cond_0

    :try_start_0
    iget-wide v1, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;->g:J

    invoke-virtual {p0, v1, v2, v0, p1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;->I(JIB)V

    iget p1, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;->i:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;->i:I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    const-string v0, "position cant be < 0"

    invoke-direct {p1, v0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    const-string v0, "position cant be >= capacity"

    invoke-direct {p1, v0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    :goto_0
    return-void
.end method

.method public U([B)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;->e0()Z

    move-result v0

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;->i:I

    iget v1, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;->e:I

    if-ge v0, v1, :cond_2

    if-ltz v0, :cond_1

    :try_start_0
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-byte v2, p1, v1

    iget-wide v3, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;->g:J

    iget v5, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;->i:I

    invoke-virtual {p0, v3, v4, v5, v2}, Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;->I(JIB)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_0
    iget p1, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;->i:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;->i:I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2

    :cond_1
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    const-string v0, "position cant be < 0"

    invoke-direct {p1, v0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    const-string v0, "position cant be >= capacity"

    invoke-direct {p1, v0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    :goto_2
    return-void
.end method

.method public W(Ljava/io/File;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "file"
        }
    .end annotation

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;->nativeSaveToFile(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to save NativeByteBuffer to file: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "file can\'t be null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public X(IB)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "index",
            "value"
        }
    .end annotation

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;->e0()Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;->e:I

    if-ge p1, v0, :cond_1

    if-ltz p1, :cond_0

    :try_start_0
    iget-wide v0, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;->g:J

    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;->I(JIB)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    const-string p2, "index cant be < 0"

    invoke-direct {p1, p2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    const-string p2, "index cant be >= capacity"

    invoke-direct {p1, p2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    :goto_0
    return-void
.end method

.method public Y(III)Z
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "location",
            "size",
            "stride"
        }
    .end annotation

    :try_start_0
    iget-wide v1, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;->g:J

    move-object v0, p0

    move v3, p1

    move v4, p2

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;->H(JIII)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 p1, 0x0

    return p1
.end method

.method public Z(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "position"
        }
    .end annotation

    iput p1, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;->i:I

    return-void
.end method

.method public a0(LJAVARuntime/NativeByteBuffer;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "run"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;->n:LJAVARuntime/NativeByteBuffer;

    return-void
.end method

.method public b0(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "vboEnabled"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;->m:Z

    if-eq v0, p1, :cond_0

    iget-wide v0, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;->g:J

    invoke-virtual {p0, v0, v1, p1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;->K(JI)V

    :cond_0
    iput-boolean p1, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;->m:Z

    return-void
.end method

.method public c(I)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;->N(I)B

    move-result p1

    return p1
.end method

.method public c0()Ljava/nio/ByteBuffer;
    .locals 4

    iget v0, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;->e:I

    invoke-static {v0}, LNc/a;->a(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    iget v3, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;->e:I

    if-ge v2, v3, :cond_0

    invoke-virtual {p0, v2}, Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;->N(I)B

    move-result v3

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    return-object v0
.end method

.method public d(I)D
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;->N(I)B

    move-result p1

    int-to-double v0, p1

    return-wide v0
.end method

.method public d0()LJAVARuntime/NativeByteBuffer;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;->n:LJAVARuntime/NativeByteBuffer;

    if-nez v0, :cond_0

    new-instance v0, LJAVARuntime/NativeByteBuffer;

    invoke-direct {v0, p0}, LJAVARuntime/NativeByteBuffer;-><init>(Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;)V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;->n:LJAVARuntime/NativeByteBuffer;

    :cond_0
    return-object v0
.end method

.method public destroy()V
    .locals 0

    invoke-virtual {p0}, LPc/a;->A()V

    return-void
.end method

.method public destroyImmediate()V
    .locals 1

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;->e0()Z

    invoke-virtual {p0}, LPc/a;->A()V

    sget-object v0, Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;->o:LQc/b;

    invoke-virtual {v0, p0}, LQc/b;->b(LPc/a;)V

    return-void
.end method

.method public e(I)S
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;->N(I)B

    move-result p1

    int-to-short p1, p1

    return p1
.end method

.method public f(I)B
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;->N(I)B

    move-result p1

    return p1
.end method

.method public g(II)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "index",
            "value"
        }
    .end annotation

    int-to-byte p2, p2

    invoke-virtual {p0, p1, p2}, Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;->X(IB)V

    return-void
.end method

.method public h()I
    .locals 1

    iget v0, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;->e:I

    return v0
.end method

.method public i(ID)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "index",
            "value"
        }
    .end annotation

    double-to-int p2, p2

    int-to-byte p2, p2

    invoke-virtual {p0, p1, p2}, Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;->X(IB)V

    return-void
.end method

.method public k(I)F
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;->N(I)B

    move-result p1

    int-to-float p1, p1

    return p1
.end method

.method public l(IF)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "index",
            "value"
        }
    .end annotation

    float-to-int p2, p2

    int-to-byte p2, p2

    invoke-virtual {p0, p1, p2}, Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;->X(IB)V

    return-void
.end method

.method public n(IB)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "index",
            "value"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;->X(IB)V

    return-void
.end method

.method public o(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "normalizeOGL"
        }
    .end annotation

    iput-boolean p1, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;->l:Z

    iget-wide v0, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;->g:J

    invoke-virtual {p0, v0, v1, p1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;->J(JI)V

    return-void
.end method

.method public p(IS)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "index",
            "value"
        }
    .end annotation

    int-to-byte p2, p2

    invoke-virtual {p0, p1, p2}, Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;->X(IB)V

    return-void
.end method

.method public u()J
    .locals 2

    iget-wide v0, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;->g:J

    return-wide v0
.end method

.method public x()V
    .locals 2

    :try_start_0
    iget-wide v0, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;->g:J

    invoke-direct {p0, v0, v1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;->G(J)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public z()V
    .locals 2

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;->g:J

    invoke-super {p0}, LPc/a;->z()V

    return-void
.end method
