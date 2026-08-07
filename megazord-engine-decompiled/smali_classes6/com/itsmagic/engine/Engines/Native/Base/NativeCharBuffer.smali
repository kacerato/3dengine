.class public Lcom/itsmagic/engine/Engines/Native/Base/NativeCharBuffer;
.super LPc/a;
.source "SourceFile"


# static fields
.field public static final k:Lea/b;


# instance fields
.field public e:I

.field public g:J

.field public i:I

.field public j:LJAVARuntime/NativeCharBuffer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/itsmagic/engine/Engines/Native/Base/NativeCharBuffer$a;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeCharBuffer$a;-><init>()V

    sput-object v0, Lcom/itsmagic/engine/Engines/Native/Base/NativeCharBuffer;->k:Lea/b;

    const-string v0, "native-char-buffer"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 4
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
    iput v0, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeCharBuffer;->e:I

    if-lez p1, :cond_1

    .line 8
    iput p1, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeCharBuffer;->e:I

    .line 9
    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeCharBuffer;->M()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeCharBuffer;->g:J

    int-to-long v2, p1

    .line 10
    invoke-direct {p0, v0, v1, v2, v3}, Lcom/itsmagic/engine/Engines/Native/Base/NativeCharBuffer;->C(JJ)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-ltz p1, :cond_0

    .line 11
    iget-wide v0, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeCharBuffer;->g:J

    sget-object p1, Lcom/itsmagic/engine/Engines/Native/Base/NativeCharBuffer;->k:Lea/b;

    const/4 v2, 0x1

    invoke-static {p0, v0, v1, p1, v2}, Lcom/itsmagic/engine/Engines/Engine/GC/SGC;->put(Ljava/lang/Object;JLea/b;Z)V

    return-void

    .line 12
    :cond_0
    new-instance p1, Lcom/itsmagic/engine/Engines/Native/OutOfNativeMemoryError;

    const-string v0, "Can\'t allocate buffer"

    invoke-direct {p1, v0}, Lcom/itsmagic/engine/Engines/Native/OutOfNativeMemoryError;-><init>(Ljava/lang/String;)V

    throw p1

    .line 13
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
    iput-wide p1, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeCharBuffer;->g:J

    .line 3
    iput p3, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeCharBuffer;->e:I

    .line 4
    iput p4, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeCharBuffer;->i:I

    .line 5
    sget-object p3, Lcom/itsmagic/engine/Engines/Native/Base/NativeCharBuffer;->k:Lea/b;

    const/4 p4, 0x1

    invoke-static {p0, p1, p2, p3, p4}, Lcom/itsmagic/engine/Engines/Engine/GC/SGC;->put(Ljava/lang/Object;JLea/b;Z)V

    return-void
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

    invoke-static {p1, p2, p3, p4}, Lcom/itsmagic/engine/Engines/Native/Base/NativeCharBuffer;->nativeAllocBuffer(JJ)J

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

    invoke-static {p1, p2}, Lcom/itsmagic/engine/Engines/Native/Base/NativeCharBuffer;->nativeDeleteBuffer(J)V

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

    invoke-static {p1, p2, p3, p4}, Lcom/itsmagic/engine/Engines/Native/Base/NativeCharBuffer;->nativeEquals(JJ)Z

    move-result p1

    return p1
.end method

.method private M()J
    .locals 2

    invoke-static {}, Lcom/itsmagic/engine/Engines/Native/Base/NativeCharBuffer;->nativeTryCreate()J

    move-result-wide v0

    return-wide v0
.end method

.method public static X(Ljava/io/File;)Lcom/itsmagic/engine/Engines/Native/Base/NativeCharBuffer;
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

    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeCharBuffer;->nativeReadFile(Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Native/Base/NativeCharBuffer;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to read NativeCharBuffer from file: "

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

.method private j0()Z
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

.method public static native nativeEqualsIgnoreCase(JJ)Z
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

.method public static native nativeGetChar(JI)C
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

.method public static native nativeIndexOf(JJ)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "pointer",
            "other"
        }
    .end annotation
.end method

.method private static native nativeReadFile(Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Native/Base/NativeCharBuffer;
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

.method public static native nativeSetChar(JIC)V
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

.method public static native nativeSetChars(JI[CII)V
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
            "values",
            "start",
            "count"
        }
    .end annotation
.end method

.method public static native nativeSetCharsBuffer(JIJII)V
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

.method public static native nativeStartsWith(JJ)Z
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

.method public static native nativeTryCreate()J
.end method


# virtual methods
.method public B()[C
    .locals 4

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeCharBuffer;->j0()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeCharBuffer;->e:I

    new-array v0, v0, [C

    const/4 v1, 0x0

    :goto_0
    :try_start_0
    iget v2, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeCharBuffer;->e:I

    if-ge v1, v2, :cond_0

    iget-wide v2, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeCharBuffer;->g:J

    invoke-virtual {p0, v2, v3, v1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeCharBuffer;->G(JI)C

    move-result v2

    aput-char v2, v0, v1
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

.method public final F(JJ)Z
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

    invoke-static {p1, p2, p3, p4}, Lcom/itsmagic/engine/Engines/Native/Base/NativeCharBuffer;->nativeEqualsIgnoreCase(JJ)Z

    move-result p1

    return p1
.end method

.method public final G(JI)C
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

    invoke-static {p1, p2, p3}, Lcom/itsmagic/engine/Engines/Native/Base/NativeCharBuffer;->nativeGetChar(JI)C

    move-result p1

    return p1
.end method

.method public final H(JJ)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "pointer",
            "other"
        }
    .end annotation

    invoke-static {p1, p2, p3, p4}, Lcom/itsmagic/engine/Engines/Native/Base/NativeCharBuffer;->nativeIndexOf(JJ)I

    move-result p1

    return p1
.end method

.method public final I(JIC)V
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

    invoke-static {p1, p2, p3, p4}, Lcom/itsmagic/engine/Engines/Native/Base/NativeCharBuffer;->nativeSetChar(JIC)V

    return-void
.end method

.method public final J(JI[CII)V
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
            "values",
            "start",
            "count"
        }
    .end annotation

    invoke-static/range {p1 .. p6}, Lcom/itsmagic/engine/Engines/Native/Base/NativeCharBuffer;->nativeSetChars(JI[CII)V

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

    invoke-static/range {p1 .. p7}, Lcom/itsmagic/engine/Engines/Native/Base/NativeCharBuffer;->nativeSetCharsBuffer(JIJII)V

    return-void
.end method

.method public final L(JJ)Z
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

    invoke-static {p1, p2, p3, p4}, Lcom/itsmagic/engine/Engines/Native/Base/NativeCharBuffer;->nativeStartsWith(JJ)Z

    move-result p1

    return p1
.end method

.method public N(Lcom/itsmagic/engine/Engines/Native/Base/NativeCharBuffer;)Z
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
    iget-wide v0, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeCharBuffer;->g:J

    iget-wide v2, p1, Lcom/itsmagic/engine/Engines/Native/Base/NativeCharBuffer;->g:J

    cmp-long p1, v0, v2

    if-nez p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    invoke-direct {p0, v0, v1, v2, v3}, Lcom/itsmagic/engine/Engines/Native/Base/NativeCharBuffer;->E(JJ)Z

    move-result p1

    return p1
.end method

.method public O(Lcom/itsmagic/engine/Engines/Native/Base/NativeCharBuffer;)Z
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
    iget-wide v0, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeCharBuffer;->g:J

    iget-wide v2, p1, Lcom/itsmagic/engine/Engines/Native/Base/NativeCharBuffer;->g:J

    cmp-long p1, v0, v2

    if-nez p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/itsmagic/engine/Engines/Native/Base/NativeCharBuffer;->F(JJ)Z

    move-result p1

    return p1
.end method

.method public P(I)C
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeCharBuffer;->j0()Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeCharBuffer;->e:I

    if-ge p1, v0, :cond_1

    if-ltz p1, :cond_0

    :try_start_0
    iget-wide v0, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeCharBuffer;->g:J

    invoke-virtual {p0, v0, v1, p1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeCharBuffer;->G(JI)C

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

.method public Q()I
    .locals 1

    iget v0, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeCharBuffer;->e:I

    return v0
.end method

.method public R()I
    .locals 1

    iget v0, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeCharBuffer;->i:I

    return v0
.end method

.method public S(Lcom/itsmagic/engine/Engines/Native/Base/NativeCharBuffer;)I
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "str"
        }
    .end annotation

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeCharBuffer;->j0()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeCharBuffer;->g:J

    iget-wide v2, p1, Lcom/itsmagic/engine/Engines/Native/Base/NativeCharBuffer;->g:J

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/itsmagic/engine/Engines/Native/Base/NativeCharBuffer;->H(JJ)I

    move-result p1

    return p1

    :cond_0
    const/4 p1, -0x1

    return p1
.end method

.method public T(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "position"
        }
    .end annotation

    iput p1, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeCharBuffer;->i:I

    return-void
.end method

.method public U(C)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeCharBuffer;->j0()Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeCharBuffer;->i:I

    iget v1, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeCharBuffer;->e:I

    if-ge v0, v1, :cond_1

    if-ltz v0, :cond_0

    :try_start_0
    iget-wide v1, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeCharBuffer;->g:J

    invoke-virtual {p0, v1, v2, v0, p1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeCharBuffer;->I(JIC)V

    iget p1, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeCharBuffer;->i:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeCharBuffer;->i:I
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

.method public V(Lcom/itsmagic/engine/Engines/Native/Base/NativeCharBuffer;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "values"
        }
    .end annotation

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeCharBuffer;->j0()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeCharBuffer;->i:I

    invoke-virtual {p0, v0, p1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeCharBuffer;->a0(ILcom/itsmagic/engine/Engines/Native/Base/NativeCharBuffer;)V

    iget v0, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeCharBuffer;->i:I

    iget p1, p1, Lcom/itsmagic/engine/Engines/Native/Base/NativeCharBuffer;->e:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeCharBuffer;->i:I

    :cond_0
    return-void
.end method

.method public W([C)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "values"
        }
    .end annotation

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeCharBuffer;->j0()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeCharBuffer;->i:I

    invoke-virtual {p0, v0, p1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeCharBuffer;->c0(I[C)V

    iget v0, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeCharBuffer;->i:I

    array-length p1, p1

    add-int/2addr v0, p1

    iput v0, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeCharBuffer;->i:I

    :cond_0
    return-void
.end method

.method public Y(Ljava/io/File;)V
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

    invoke-direct {p0, v0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeCharBuffer;->nativeSaveToFile(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to save NativeCharBuffer to file: "

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

.method public Z(IC)V
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

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeCharBuffer;->j0()Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeCharBuffer;->e:I

    if-ge p1, v0, :cond_1

    if-ltz p1, :cond_0

    :try_start_0
    iget-wide v0, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeCharBuffer;->g:J

    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/itsmagic/engine/Engines/Native/Base/NativeCharBuffer;->I(JIC)V
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

.method public a0(ILcom/itsmagic/engine/Engines/Native/Base/NativeCharBuffer;)V
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

    iget v0, p2, Lcom/itsmagic/engine/Engines/Native/Base/NativeCharBuffer;->e:I

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v1, v0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeCharBuffer;->b0(ILcom/itsmagic/engine/Engines/Native/Base/NativeCharBuffer;II)V

    return-void
.end method

.method public b0(ILcom/itsmagic/engine/Engines/Native/Base/NativeCharBuffer;II)V
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

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeCharBuffer;->j0()Z

    move-result v0

    if-eqz v0, :cond_3

    add-int/lit8 v0, p4, -0x1

    add-int/2addr v0, p1

    iget v1, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeCharBuffer;->e:I

    if-ge v0, v1, :cond_2

    if-ltz p1, :cond_1

    iget v0, p2, Lcom/itsmagic/engine/Engines/Native/Base/NativeCharBuffer;->e:I

    add-int v1, p3, p4

    if-lt v0, v1, :cond_0

    :try_start_0
    iget-wide v3, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeCharBuffer;->g:J

    iget-wide v6, p2, Lcom/itsmagic/engine/Engines/Native/Base/NativeCharBuffer;->g:J

    move-object v2, p0

    move v5, p1

    move v8, p3

    move v9, p4

    invoke-virtual/range {v2 .. v9}, Lcom/itsmagic/engine/Engines/Native/Base/NativeCharBuffer;->K(JIJII)V
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

    iget p3, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeCharBuffer;->e:I

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

.method public c0(I[C)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "baseIndex",
            "values"
        }
    .end annotation

    array-length v0, p2

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v1, v0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeCharBuffer;->d0(I[CII)V

    return-void
.end method

.method public d0(I[CII)V
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "baseIndex",
            "values",
            "start",
            "count"
        }
    .end annotation

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeCharBuffer;->j0()Z

    move-result v0

    if-eqz v0, :cond_3

    add-int/lit8 v0, p4, -0x1

    add-int/2addr v0, p1

    iget v1, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeCharBuffer;->e:I

    if-ge v0, v1, :cond_2

    if-ltz p1, :cond_1

    array-length v0, p2

    add-int v1, p3, p4

    if-lt v0, v1, :cond_0

    :try_start_0
    iget-wide v3, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeCharBuffer;->g:J

    move-object v2, p0

    move v5, p1

    move-object v6, p2

    move v7, p3

    move v8, p4

    invoke-virtual/range {v2 .. v8}, Lcom/itsmagic/engine/Engines/Native/Base/NativeCharBuffer;->J(JI[CII)V
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

    iget p3, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeCharBuffer;->e:I

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

.method public destroy()V
    .locals 0

    invoke-virtual {p0}, LPc/a;->A()V

    return-void
.end method

.method public destroyImmediate()V
    .locals 0

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeCharBuffer;->j0()Z

    invoke-virtual {p0}, LPc/a;->A()V

    invoke-static {p0}, Lcom/itsmagic/engine/Engines/Engine/GC/SGC;->destroyImmediate(Ljava/lang/Object;)V

    return-void
.end method

.method public e0(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "position"
        }
    .end annotation

    iput p1, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeCharBuffer;->i:I

    return-void
.end method

.method public f0(LJAVARuntime/NativeCharBuffer;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "run"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeCharBuffer;->j:LJAVARuntime/NativeCharBuffer;

    return-void
.end method

.method public g0(Lcom/itsmagic/engine/Engines/Native/Base/NativeCharBuffer;)Z
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
    iget-wide v0, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeCharBuffer;->g:J

    iget-wide v2, p1, Lcom/itsmagic/engine/Engines/Native/Base/NativeCharBuffer;->g:J

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/itsmagic/engine/Engines/Native/Base/NativeCharBuffer;->L(JJ)Z

    move-result p1

    return p1
.end method

.method public h()I
    .locals 1

    iget v0, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeCharBuffer;->e:I

    return v0
.end method

.method public h0()Ljava/nio/IntBuffer;
    .locals 4

    iget v0, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeCharBuffer;->e:I

    invoke-static {v0}, LNc/a;->e(I)Ljava/nio/IntBuffer;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    iget v3, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeCharBuffer;->e:I

    if-ge v2, v3, :cond_0

    invoke-virtual {p0, v2}, Lcom/itsmagic/engine/Engines/Native/Base/NativeCharBuffer;->P(I)C

    move-result v3

    invoke-virtual {v0, v3}, Ljava/nio/IntBuffer;->put(I)Ljava/nio/IntBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v1}, Ljava/nio/IntBuffer;->position(I)Ljava/nio/Buffer;

    return-object v0
.end method

.method public i0()LJAVARuntime/NativeCharBuffer;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeCharBuffer;->j:LJAVARuntime/NativeCharBuffer;

    if-nez v0, :cond_0

    new-instance v0, LJAVARuntime/NativeCharBuffer;

    invoke-direct {v0, p0}, LJAVARuntime/NativeCharBuffer;-><init>(Lcom/itsmagic/engine/Engines/Native/Base/NativeCharBuffer;)V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeCharBuffer;->j:LJAVARuntime/NativeCharBuffer;

    :cond_0
    return-object v0
.end method

.method public u()J
    .locals 2

    iget-wide v0, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeCharBuffer;->g:J

    return-wide v0
.end method

.method public w()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public z()V
    .locals 2

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeCharBuffer;->g:J

    invoke-super {p0}, LPc/a;->z()V

    return-void
.end method
