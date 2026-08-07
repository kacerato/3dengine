.class public Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;
.super LPc/a;
.source "SourceFile"

# interfaces
.implements LRc/a;


# static fields
.field public static final k:LQc/b;


# instance fields
.field public e:I

.field public g:J

.field public i:I

.field public j:LJAVARuntime/NativeIntBuffer;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, LQc/a;

    new-instance v1, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer$a;

    invoke-direct {v1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer$a;-><init>()V

    invoke-direct {v0, v1}, LQc/a;-><init>(LQc/b$a;)V

    sput-object v0, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->k:LQc/b;

    const-string v0, "native-int-buffer"

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

    .line 6
    invoke-direct {p0}, LPc/a;-><init>()V

    const/4 v0, 0x0

    .line 7
    iput v0, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->e:I

    const-wide/16 v1, -0x1

    .line 8
    iput-wide v1, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->g:J

    if-lez p1, :cond_1

    .line 9
    iput p1, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->e:I

    .line 10
    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->M()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->g:J

    int-to-long v3, p1

    .line 11
    invoke-direct {p0, v1, v2, v3, v4}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->C(JJ)J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long p1, v1, v3

    if-ltz p1, :cond_0

    .line 12
    sget-object p1, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->k:LQc/b;

    new-instance v1, LQc/c;

    iget-wide v2, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->g:J

    invoke-direct {v1, p0, v2, v3}, LQc/c;-><init>(LPc/a;J)V

    invoke-virtual {p1, v1}, LQc/b;->a(LQc/c;)V

    .line 13
    iput v0, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->i:I

    return-void

    .line 14
    :cond_0
    new-instance p1, Lcom/itsmagic/engine/Engines/Native/OutOfNativeMemoryError;

    const-string v0, "Can\'t allocate buffer"

    invoke-direct {p1, v0}, Lcom/itsmagic/engine/Engines/Native/OutOfNativeMemoryError;-><init>(Ljava/lang/String;)V

    throw p1

    .line 15
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

.method public constructor <init>(JII)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "pointer",
            "capacity",
            "position"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, LPc/a;-><init>()V

    .line 2
    iput-wide p1, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->g:J

    .line 3
    iput p3, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->e:I

    .line 4
    iput p4, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->i:I

    .line 5
    sget-object p3, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->k:LQc/b;

    new-instance p4, LQc/c;

    invoke-direct {p4, p0, p1, p2}, LQc/c;-><init>(LPc/a;J)V

    invoke-virtual {p3, p4}, LQc/b;->a(LQc/c;)V

    return-void
.end method

.method public constructor <init>([I)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "array"
        }
    .end annotation

    .line 16
    invoke-direct {p0}, LPc/a;-><init>()V

    const/4 v0, 0x0

    .line 17
    iput v0, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->e:I

    const-wide/16 v1, -0x1

    .line 18
    iput-wide v1, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->g:J

    if-eqz p1, :cond_2

    .line 19
    array-length v1, p1

    if-lez v1, :cond_1

    .line 20
    array-length v1, p1

    iput v1, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->e:I

    .line 21
    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->M()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->g:J

    .line 22
    iget v3, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->e:I

    int-to-long v3, v3

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->C(JJ)J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-ltz v1, :cond_0

    .line 23
    sget-object v1, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->k:LQc/b;

    new-instance v2, LQc/c;

    iget-wide v3, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->g:J

    invoke-direct {v2, p0, v3, v4}, LQc/c;-><init>(LPc/a;J)V

    invoke-virtual {v1, v2}, LQc/b;->a(LQc/c;)V

    .line 24
    iput v0, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->i:I

    .line 25
    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->g0([I)V

    .line 26
    iput v0, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->i:I

    return-void

    .line 27
    :cond_0
    new-instance p1, Lcom/itsmagic/engine/Engines/Native/OutOfNativeMemoryError;

    const-string v0, "Can\'t allocate buffer"

    invoke-direct {p1, v0}, Lcom/itsmagic/engine/Engines/Native/OutOfNativeMemoryError;-><init>(Ljava/lang/String;)V

    throw p1

    .line 28
    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Array is empty"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 29
    :cond_2
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Invalid array"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private C(JJ)J
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

    invoke-static {p1, p2, p3, p4}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->nativeAllocBuffer(JJ)J

    move-result-wide p1

    return-wide p1
.end method

.method private D(J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pointer"
        }
    .end annotation

    invoke-static {p1, p2}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->nativeDeleteBuffer(J)V

    return-void
.end method

.method private E(JJ)Z
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

    invoke-static {p1, p2, p3, p4}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->nativeEquals(JJ)Z

    move-result p1

    return p1
.end method

.method private I(J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pointer"
        }
    .end annotation

    invoke-static {p1, p2}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->nativeLostOGLContext(J)F

    return-void
.end method

.method private M()J
    .locals 2

    invoke-static {}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->nativeTryCreate()J

    move-result-wide v0

    return-wide v0
.end method

.method public static Y(Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;J)J
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "buffer",
            "failCase"
        }
    .end annotation

    if-nez p0, :cond_0

    return-wide p1

    :cond_0
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->X()J

    move-result-wide p0

    return-wide p0
.end method

.method public static j0(Ljava/io/File;)Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;
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

    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->nativeReadFile(Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to read NativeIntBuffer from file: "

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

.method public static native nativeFillInts(JIII)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "pointer",
            "baseIndex",
            "value",
            "count"
        }
    .end annotation
.end method

.method public static native nativeFindMaxValue(J)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pointer"
        }
    .end annotation
.end method

.method public static native nativeGetInt(JI)I
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

.method private static native nativeReadFile(Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;
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

.method public static native nativeSetInt(JII)V
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

.method public static native nativeSetIntsBuffer(JIJII)V
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
            "baseIndex",
            "otherPointer",
            "start",
            "count"
        }
    .end annotation
.end method

.method public static native nativeSetIntsBufferIncremented(JIJIII)V
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
            "pointer",
            "baseIndex",
            "otherPointer",
            "start",
            "count",
            "increment"
        }
    .end annotation
.end method

.method public static native nativeTryCreate()J
.end method

.method private w0()Z
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


# virtual methods
.method public B()Ljava/nio/ByteBuffer;
    .locals 5

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->U()I

    move-result v0

    const/4 v1, 0x0

    const v2, 0xffff

    if-gt v0, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->h()I

    move-result v3

    if-eqz v0, :cond_2

    mul-int/lit8 v0, v3, 0x2

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    :goto_1
    if-ge v1, v3, :cond_1

    invoke-virtual {p0, v1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->V(I)I

    move-result v4

    and-int/2addr v4, v2

    int-to-short v4, v4

    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    return-object v0

    :cond_2
    mul-int/lit8 v0, v3, 0x4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    :goto_2
    if-ge v1, v3, :cond_3

    invoke-virtual {p0, v1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->V(I)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_3
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    return-object v0
.end method

.method public final F(JIII)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "pointer",
            "baseIndex",
            "value",
            "count"
        }
    .end annotation

    invoke-static {p1, p2, p3, p4, p5}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->nativeFillInts(JIII)V

    return-void
.end method

.method public final G(J)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pointer"
        }
    .end annotation

    invoke-static {p1, p2}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->nativeFindMaxValue(J)I

    move-result p1

    return p1
.end method

.method public final H(JI)I
    .locals 0
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

    invoke-static {p1, p2, p3}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->nativeGetInt(JI)I

    move-result p1

    return p1
.end method

.method public final J(JII)V
    .locals 0
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

    invoke-static {p1, p2, p3, p4}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->nativeSetInt(JII)V

    return-void
.end method

.method public final K(JIJII)V
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
            "baseIndex",
            "otherPointer",
            "start",
            "count"
        }
    .end annotation

    invoke-static/range {p1 .. p7}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->nativeSetIntsBuffer(JIJII)V

    return-void
.end method

.method public final L(JIJIII)V
    .locals 0
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
            "pointer",
            "baseIndex",
            "otherPointer",
            "start",
            "count",
            "increment"
        }
    .end annotation

    invoke-static/range {p1 .. p8}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->nativeSetIntsBufferIncremented(JIJIII)V

    return-void
.end method

.method public N()Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;
    .locals 2

    new-instance v0, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;

    iget v1, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->e:I

    invoke-direct {v0, v1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;-><init>(I)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->c0(I)V

    invoke-virtual {v0, p0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->e0(Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;)V

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->c0(I)V

    return-object v0
.end method

.method public O(Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;)Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "buffer"
        }
    .end annotation

    new-instance v0, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->h()I

    move-result v1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->h()I

    move-result v2

    add-int/2addr v1, v2

    invoke-direct {v0, v1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;-><init>(I)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->c0(I)V

    invoke-virtual {v0, p0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->e0(Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;)V

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->e0(Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;)V

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->c0(I)V

    return-object v0
.end method

.method public P()V
    .locals 4

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Dumping NativeIntBuffer with capacity "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->e:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->e:I

    if-ge v0, v1, :cond_0

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->V(I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public Q(Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;)Z
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "buffer"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-wide v0, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->g:J

    iget-wide v2, p1, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->g:J

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->E(JJ)Z

    move-result p1

    return p1
.end method

.method public R(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    const/4 v0, 0x0

    iget v1, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->e:I

    invoke-virtual {p0, v0, p1, v1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->S(III)V

    return-void
.end method

.method public S(III)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "baseIndex",
            "value",
            "count"
        }
    .end annotation

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->w0()Z

    move-result v0

    if-eqz v0, :cond_2

    add-int/lit8 v0, p3, -0x1

    add-int/2addr v0, p1

    iget v1, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->e:I

    if-ge v0, v1, :cond_1

    if-ltz p1, :cond_0

    :try_start_0
    iget-wide v3, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->g:J

    move-object v2, p0

    move v5, p1

    move v6, p2

    move v7, p3

    invoke-virtual/range {v2 .. v7}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->F(JIII)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    const-string p2, "baseIndex cant be < 0"

    invoke-direct {p1, p2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "baseIndex + (count-1) cant be >= capacity ("

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ") >= ("

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->e:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ")"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    :goto_0
    return-void
.end method

.method public T([I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "array"
        }
    .end annotation

    array-length v0, p1

    iget v1, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->e:I

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->e:I

    if-ge v0, v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->V(I)I

    move-result v1

    aput v1, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Array size must be == buffer capacity"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public U()I
    .locals 2

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->w0()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->g:J

    invoke-virtual {p0, v0, v1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->G(J)I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public V(I)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->w0()Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->e:I

    if-ge p1, v0, :cond_1

    if-ltz p1, :cond_0

    :try_start_0
    iget-wide v0, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->g:J

    invoke-virtual {p0, v0, v1, p1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->H(JI)I

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

.method public W()I
    .locals 1

    iget v0, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->e:I

    return v0
.end method

.method public X()J
    .locals 2

    iget-wide v0, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->g:J

    return-wide v0
.end method

.method public Z()I
    .locals 1

    iget v0, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->i:I

    return v0
.end method

.method public a0()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public b0()Ljava/nio/ByteOrder;
    .locals 1

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v0

    return-object v0
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

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->V(I)I

    move-result p1

    return p1
.end method

.method public c0(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "position"
        }
    .end annotation

    iput p1, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->i:I

    return-void
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->N()Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;

    move-result-object v0

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

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->V(I)I

    move-result p1

    int-to-double v0, p1

    return-wide v0
.end method

.method public d0(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->w0()Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->i:I

    iget v1, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->e:I

    if-ge v0, v1, :cond_1

    if-ltz v0, :cond_0

    :try_start_0
    iget-wide v1, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->g:J

    invoke-virtual {p0, v1, v2, v0, p1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->J(JII)V

    iget p1, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->i:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->i:I
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

.method public destroy()V
    .locals 0

    invoke-virtual {p0}, LPc/a;->A()V

    return-void
.end method

.method public destroyImmediate()V
    .locals 1

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->w0()Z

    invoke-virtual {p0}, LPc/a;->A()V

    sget-object v0, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->k:LQc/b;

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

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->V(I)I

    move-result p1

    int-to-short p1, p1

    return p1
.end method

.method public e0(Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "buffer"
        }
    .end annotation

    iget v0, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->i:I

    invoke-virtual {p0, v0, p1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->m0(ILcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;)V

    iget v0, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->i:I

    iget p1, p1, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->e:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->i:I

    return-void
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

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->V(I)I

    move-result p1

    int-to-byte p1, p1

    return p1
.end method

.method public f0(Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "buffer",
            "count"
        }
    .end annotation

    iget v0, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->i:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1, p2}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->n0(ILcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;II)V

    iget p1, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->i:I

    add-int/2addr p1, p2

    iput p1, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->i:I

    return-void
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

    invoke-virtual {p0, p1, p2}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->l0(II)V

    return-void
.end method

.method public g0([I)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->w0()Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->i:I

    iget v1, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->e:I

    if-ge v0, v1, :cond_1

    if-ltz v0, :cond_0

    :try_start_0
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    aget v2, p1, v1

    iget-wide v3, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->g:J

    iget v5, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->i:I

    invoke-virtual {p0, v3, v4, v5, v2}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->J(JII)V

    iget v2, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->i:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->i:I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

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
    :goto_1
    return-void
.end method

.method public h()I
    .locals 1

    iget v0, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->e:I

    return v0
.end method

.method public h0(II)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "value",
            "count"
        }
    .end annotation

    iget v0, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->i:I

    invoke-virtual {p0, v0, p1, p2}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->S(III)V

    iget p1, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->i:I

    add-int/2addr p1, p2

    iput p1, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->i:I

    return-void
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

    invoke-virtual {p0, p1, p2}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->l0(II)V

    return-void
.end method

.method public i0(Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;I)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "buffer",
            "increment"
        }
    .end annotation

    iget v1, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->i:I

    iget v4, p1, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->e:I

    const/4 v3, 0x0

    move-object v0, p0

    move-object v2, p1

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->o0(ILcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;III)V

    iget p2, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->i:I

    iget p1, p1, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->e:I

    add-int/2addr p2, p1

    iput p2, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->i:I

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

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->V(I)I

    move-result p1

    int-to-float p1, p1

    return p1
.end method

.method public k0(Ljava/io/File;)V
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

    invoke-direct {p0, v0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->nativeSaveToFile(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to save NativeIntBuffer to file: "

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

    invoke-virtual {p0, p1, p2}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->l0(II)V

    return-void
.end method

.method public l0(II)V
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

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->w0()Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->e:I

    if-ge p1, v0, :cond_1

    if-ltz p1, :cond_0

    :try_start_0
    iget-wide v0, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->g:J

    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->J(JII)V
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

.method public m0(ILcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "baseIndex",
            "other"
        }
    .end annotation

    iget v0, p2, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->e:I

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v1, v0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->n0(ILcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;II)V

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

    invoke-virtual {p0, p1, p2}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->l0(II)V

    return-void
.end method

.method public n0(ILcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;II)V
    .locals 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "baseIndex",
            "other",
            "start",
            "count"
        }
    .end annotation

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->w0()Z

    move-result v0

    if-eqz v0, :cond_3

    add-int/lit8 v0, p4, -0x1

    add-int/2addr v0, p1

    iget v1, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->e:I

    if-ge v0, v1, :cond_2

    if-ltz p1, :cond_1

    iget v0, p2, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->e:I

    add-int v1, p3, p4

    if-lt v0, v1, :cond_0

    :try_start_0
    iget-wide v3, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->g:J

    iget-wide v6, p2, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->g:J

    move-object v2, p0

    move v5, p1

    move v8, p3

    move v9, p4

    invoke-virtual/range {v2 .. v9}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->K(JIJII)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    const-string p2, "start+count cant be > values.length"

    invoke-direct {p1, p2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    const-string p2, "baseIndex cant be < 0"

    invoke-direct {p1, p2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "baseIndex + (count-1) cant be >= capacity ("

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ") >= ("

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->e:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ")"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    :goto_0
    return-void
.end method

.method public o0(ILcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;III)V
    .locals 11
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "baseIndex",
            "other",
            "start",
            "count",
            "increment"
        }
    .end annotation

    move-object v10, p0

    move-object v0, p2

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->w0()Z

    move-result v1

    if-eqz v1, :cond_3

    add-int/lit8 v1, p4, -0x1

    add-int/2addr v1, p1

    iget v2, v10, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->e:I

    if-ge v1, v2, :cond_2

    if-ltz p1, :cond_1

    iget v1, v0, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->e:I

    add-int v2, p3, p4

    if-lt v1, v2, :cond_0

    :try_start_0
    iget-wide v2, v10, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->g:J

    iget-wide v5, v0, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->g:J

    move-object v1, p0

    move v4, p1

    move v7, p3

    move v8, p4

    move/from16 v9, p5

    invoke-virtual/range {v1 .. v9}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->L(JIJIII)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "start+count cant be > values.length"

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "baseIndex cant be < 0"

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "baseIndex + (count-1) cant be >= capacity ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ") >= ("

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v10, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->e:I

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    :goto_0
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

    invoke-virtual {p0, p1, p2}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->l0(II)V

    return-void
.end method

.method public p0(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "position"
        }
    .end annotation

    iput p1, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->i:I

    return-void
.end method

.method public q0(LJAVARuntime/NativeIntBuffer;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "run"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->j:LJAVARuntime/NativeIntBuffer;

    return-void
.end method

.method public r0()[I
    .locals 3

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->w0()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->e:I

    new-array v0, v0, [I

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->e:I

    if-ge v1, v2, :cond_0

    invoke-virtual {p0, v1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->V(I)I

    move-result v2

    aput v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public s0()Ljava/nio/ByteBuffer;
    .locals 3

    iget v0, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->e:I

    mul-int/lit8 v0, v0, 0x4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->e:I

    if-ge v1, v2, :cond_0

    invoke-virtual {p0, v1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->V(I)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    return-object v0
.end method

.method public t0()Ljava/nio/IntBuffer;
    .locals 3

    iget v0, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->e:I

    invoke-static {v0}, LNc/a;->e(I)Ljava/nio/IntBuffer;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->e:I

    if-ge v1, v2, :cond_0

    invoke-virtual {p0, v1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->V(I)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/nio/IntBuffer;->put(I)Ljava/nio/IntBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/nio/IntBuffer;->flip()Ljava/nio/Buffer;

    return-object v0
.end method

.method public u()J
    .locals 2

    iget-wide v0, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->g:J

    return-wide v0
.end method

.method public u0()LJAVARuntime/NativeIntBuffer;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->j:LJAVARuntime/NativeIntBuffer;

    if-nez v0, :cond_0

    new-instance v0, LJAVARuntime/NativeIntBuffer;

    invoke-direct {v0, p0}, LJAVARuntime/NativeIntBuffer;-><init>(Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;)V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->j:LJAVARuntime/NativeIntBuffer;

    :cond_0
    return-object v0
.end method

.method public v0()Z
    .locals 1

    invoke-virtual {p0}, LPc/a;->v()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public w()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public x()V
    .locals 2

    :try_start_0
    iget-wide v0, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->g:J

    invoke-direct {p0, v0, v1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->I(J)V
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

    iput-wide v0, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->g:J

    invoke-super {p0}, LPc/a;->z()V

    return-void
.end method
