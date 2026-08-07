.class public Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;
.super LPc/a;
.source "SourceFile"

# interfaces
.implements LRc/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer$b;
    }
.end annotation


# static fields
.field public static final m:LQc/b;


# instance fields
.field public e:I

.field public g:J

.field public i:I

.field public j:Z

.field public k:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer$b;

.field public l:LJAVARuntime/NativeFloatBuffer;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, LQc/a;

    new-instance v1, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer$a;

    invoke-direct {v1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer$a;-><init>()V

    invoke-direct {v0, v1}, LQc/a;-><init>(LQc/b$a;)V

    sput-object v0, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->m:LQc/b;

    const-string v0, "native-float-buffer"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "capacity"
        }
    .end annotation

    .line 13
    sget-object v0, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer$b;->FLOAT32:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer$b;

    invoke-direct {p0, p1, v0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;-><init>(ILcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer$b;)V

    return-void
.end method

.method public constructor <init>(ILcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer$b;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "capacity",
            "precision"
        }
    .end annotation

    .line 14
    invoke-direct {p0}, LPc/a;-><init>()V

    const/4 v0, 0x0

    .line 15
    iput v0, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->e:I

    const-wide/16 v1, -0x1

    .line 16
    iput-wide v1, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->g:J

    .line 17
    iput v0, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->i:I

    const/4 v1, 0x1

    .line 18
    iput-boolean v1, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->j:Z

    .line 19
    sget-object v1, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer$b;->FLOAT32:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer$b;

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->k:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer$b;

    if-lez p1, :cond_1

    .line 20
    iput p1, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->e:I

    .line 21
    iput-object p2, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->k:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer$b;

    .line 22
    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer$b;->b()I

    move-result p2

    invoke-virtual {p0, p2}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->P(I)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->g:J

    int-to-long p1, p1

    .line 23
    invoke-direct {p0, v1, v2, p1, p2}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->B(JJ)J

    move-result-wide p1

    const-wide/16 v1, 0x0

    cmp-long p1, p1, v1

    if-ltz p1, :cond_0

    const/4 p1, 0x0

    .line 24
    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->U(F)V

    .line 25
    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->j0(I)V

    .line 26
    sget-object p1, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->m:LQc/b;

    new-instance p2, LQc/c;

    iget-wide v0, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->g:J

    invoke-direct {p2, p0, v0, v1}, LQc/c;-><init>(LPc/a;J)V

    invoke-virtual {p1, p2}, LQc/b;->a(LQc/c;)V

    return-void

    .line 27
    :cond_0
    new-instance p1, Lcom/itsmagic/engine/Engines/Native/OutOfNativeMemoryError;

    const-string p2, "Can\'t allocate buffer"

    invoke-direct {p1, p2}, Lcom/itsmagic/engine/Engines/Native/OutOfNativeMemoryError;-><init>(Ljava/lang/String;)V

    throw p1

    .line 28
    :cond_1
    new-instance p2, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid capacity:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public constructor <init>(JIIIZ)V
    .locals 3
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
            "precisionNativeType",
            "vboEnabled"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, LPc/a;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->e:I

    const-wide/16 v1, -0x1

    .line 3
    iput-wide v1, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->g:J

    .line 4
    iput v0, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->i:I

    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->j:Z

    .line 6
    sget-object v0, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer$b;->FLOAT32:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer$b;

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->k:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer$b;

    .line 7
    iput-wide p1, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->g:J

    .line 8
    iput p3, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->e:I

    .line 9
    iput p4, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->i:I

    .line 10
    invoke-static {p5}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->k0(I)Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer$b;

    move-result-object p3

    iput-object p3, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->k:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer$b;

    .line 11
    iput-boolean p6, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->j:Z

    .line 12
    sget-object p3, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->m:LQc/b;

    new-instance p4, LQc/c;

    invoke-direct {p4, p0, p1, p2}, LQc/c;-><init>(LPc/a;J)V

    invoke-virtual {p3, p4}, LQc/b;->a(LQc/c;)V

    return-void
.end method

.method public constructor <init>([F)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "array"
        }
    .end annotation

    .line 29
    sget-object v0, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer$b;->FLOAT32:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer$b;

    invoke-direct {p0, p1, v0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;-><init>([FLcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer$b;)V

    return-void
.end method

.method public constructor <init>([FLcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer$b;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "array",
            "precision"
        }
    .end annotation

    .line 30
    invoke-direct {p0}, LPc/a;-><init>()V

    const/4 v0, 0x0

    .line 31
    iput v0, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->e:I

    const-wide/16 v1, -0x1

    .line 32
    iput-wide v1, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->g:J

    .line 33
    iput v0, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->i:I

    const/4 v1, 0x1

    .line 34
    iput-boolean v1, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->j:Z

    .line 35
    sget-object v1, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer$b;->FLOAT32:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer$b;

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->k:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer$b;

    if-eqz p1, :cond_2

    .line 36
    array-length v1, p1

    if-lez v1, :cond_1

    .line 37
    array-length v1, p1

    iput v1, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->e:I

    .line 38
    iput-object p2, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->k:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer$b;

    .line 39
    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer$b;->b()I

    move-result p2

    invoke-virtual {p0, p2}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->P(I)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->g:J

    .line 40
    iget p2, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->e:I

    int-to-long v3, p2

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->B(JJ)J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long p2, v1, v3

    if-ltz p2, :cond_0

    .line 41
    sget-object p2, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->m:LQc/b;

    new-instance v1, LQc/c;

    iget-wide v2, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->g:J

    invoke-direct {v1, p0, v2, v3}, LQc/c;-><init>(LPc/a;J)V

    invoke-virtual {p2, v1}, LQc/b;->a(LQc/c;)V

    .line 42
    iput v0, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->i:I

    .line 43
    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->u0([F)V

    .line 44
    iput v0, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->i:I

    return-void

    .line 45
    :cond_0
    new-instance p1, Lcom/itsmagic/engine/Engines/Native/OutOfNativeMemoryError;

    const-string p2, "Can\'t allocate buffer"

    invoke-direct {p1, p2}, Lcom/itsmagic/engine/Engines/Native/OutOfNativeMemoryError;-><init>(Ljava/lang/String;)V

    throw p1

    .line 46
    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Array is empty"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 47
    :cond_2
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Invalid array"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private B(JJ)J
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

    invoke-static {p1, p2, p3, p4}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->nativeAllocBuffer(JJ)J

    move-result-wide p1

    return-wide p1
.end method

.method private C(J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pointer"
        }
    .end annotation

    invoke-static {p1, p2}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->nativeDeleteBuffer(J)V

    return-void
.end method

.method private D(JJ)Z
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

    invoke-static {p1, p2, p3, p4}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->nativeEquals(JJ)Z

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

    invoke-static {p1, p2}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->nativeLostOGLContext(J)F

    return-void
.end method

.method private S0()Z
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

.method public static f0(Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;J)J
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
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->e0()J

    move-result-wide p0

    return-wide p0
.end method

.method public static k0(I)Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer$b;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "nativeType"
        }
    .end annotation

    invoke-static {}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer$b;->values()[Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer$b;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer$b;->b()I

    move-result v4

    if-ne v4, p0, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    sget-object p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer$b;->FLOAT32:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer$b;

    return-object p0
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

.method public static native nativeFillFloats(JIFI)V
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

.method public static native nativeGetFloat(JI)F
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

.method public static native nativeGetFloats(JI[FII)F
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

.method public static native nativeGetVector3(JILcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)F
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "pointer",
            "baseIndex",
            "vector3"
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

.method private static native nativeReadFile(Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;
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

.method public static native nativeSetFloat(JIF)V
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

.method public static native nativeSetFloats(JI[FII)V
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

.method public static native nativeSetFloatsBuffer(JIJII)V
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

.method public static native nativeSetFloatsMemCp(JI[FII)V
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

.method public static native nativeSetVector2(JIFF)V
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
            "x",
            "y"
        }
    .end annotation
.end method

.method public static native nativeSetVector3(JIFFF)V
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
            "x",
            "y",
            "z"
        }
    .end annotation
.end method

.method public static native nativeSetVector4(JIFFFF)V
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
            "x",
            "y",
            "z",
            "w"
        }
    .end annotation
.end method

.method public static native nativeTryCreate(I)J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "type"
        }
    .end annotation
.end method

.method public static x0(Ljava/io/File;)Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;
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

    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->nativeReadFile(Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to read NativeFloatBuffer from file: "

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


# virtual methods
.method public A0(IFF)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "baseIndex",
            "x",
            "y"
        }
    .end annotation

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->S0()Z

    move-result v0

    if-eqz v0, :cond_2

    add-int/lit8 v0, p1, 0x1

    iget v1, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->e:I

    if-ge v0, v1, :cond_1

    if-ltz p1, :cond_0

    :try_start_0
    iget-wide v3, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->g:J

    move-object v2, p0

    move v5, p1

    move v6, p2

    move v7, p3

    invoke-virtual/range {v2 .. v7}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->M(JIFF)V
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

    const-string p3, "baseIndex + 1 cant be >= capacity ("

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ") >= ("

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->e:I

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

.method public B0(IFFF)V
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
            "x",
            "y",
            "z"
        }
    .end annotation

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->S0()Z

    move-result v0

    if-eqz v0, :cond_2

    add-int/lit8 v0, p1, 0x2

    iget v1, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->e:I

    if-ge v0, v1, :cond_1

    if-ltz p1, :cond_0

    :try_start_0
    iget-wide v3, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->g:J

    move-object v2, p0

    move v5, p1

    move v6, p2

    move v7, p3

    move v8, p4

    invoke-virtual/range {v2 .. v8}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->N(JIFFF)V
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

    const-string p3, "baseIndex + 2 cant be >= capacity ("

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ") >= ("

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->e:I

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

.method public C0(IFFFF)V
    .locals 10
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
            "x",
            "y",
            "z",
            "w"
        }
    .end annotation

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->S0()Z

    move-result v0

    if-eqz v0, :cond_2

    add-int/lit8 v0, p1, 0x3

    iget v1, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->e:I

    if-ge v0, v1, :cond_1

    if-ltz p1, :cond_0

    :try_start_0
    iget-wide v3, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->g:J

    move-object v2, p0

    move v5, p1

    move v6, p2

    move v7, p3

    move v8, p4

    move v9, p5

    invoke-virtual/range {v2 .. v9}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->O(JIFFFF)V
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
    new-instance p2, Ljava/lang/IndexOutOfBoundsException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "baseIndex + 2 cant be >= capacity ("

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 p1, p1, 0x2

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ") >= ("

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->e:I

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_2
    :goto_0
    return-void
.end method

.method public D0(ILcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "baseIndex",
            "vector3"
        }
    .end annotation

    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->W0()F

    move-result v0

    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->X0()F

    move-result v1

    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->Y0()F

    move-result p2

    invoke-virtual {p0, p1, v0, v1, p2}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->B0(IFFF)V

    return-void
.end method

.method public final E(JIFI)V
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

    invoke-static {p1, p2, p3, p4, p5}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->nativeFillFloats(JIFI)V

    return-void
.end method

.method public E0(ILcom/itsmagic/engine/Engines/Engine/Vector/Vector4;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "baseIndex",
            "vector4"
        }
    .end annotation

    iget v2, p2, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;->x:F

    iget v3, p2, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;->y:F

    iget v4, p2, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;->z:F

    iget v5, p2, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;->w:F

    move-object v0, p0

    move v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->C0(IFFFF)V

    return-void
.end method

.method public final F(JI)F
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

    invoke-static {p1, p2, p3}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->nativeGetFloat(JI)F

    move-result p1

    return p1
.end method

.method public F0(ILcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;)V
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

    iget v0, p2, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->e:I

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v1, v0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->G0(ILcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;II)V

    return-void
.end method

.method public final G(JI[FII)V
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

    invoke-static/range {p1 .. p6}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->nativeGetFloats(JI[FII)F

    return-void
.end method

.method public G0(ILcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;II)V
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

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->S0()Z

    move-result v0

    if-eqz v0, :cond_3

    add-int/lit8 v0, p4, -0x1

    add-int/2addr v0, p1

    iget v1, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->e:I

    if-ge v0, v1, :cond_2

    if-ltz p1, :cond_1

    iget v0, p2, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->e:I

    add-int v1, p3, p4

    if-lt v0, v1, :cond_0

    :try_start_0
    iget-wide v3, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->g:J

    iget-wide v6, p2, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->g:J

    move-object v2, p0

    move v5, p1

    move v8, p3

    move v9, p4

    invoke-virtual/range {v2 .. v9}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->L(JIJII)V
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

    iget p3, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->e:I

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

.method public final H(JILcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "pointer",
            "baseIndex",
            "vector3"
        }
    .end annotation

    invoke-static {p1, p2, p3, p4}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->nativeGetVector3(JILcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)F

    return-void
.end method

.method public H0(ILcom/jme3/math/Vector3f;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "baseIndex",
            "vector3"
        }
    .end annotation

    iget v0, p2, Lcom/jme3/math/Vector3f;->x:F

    iget v1, p2, Lcom/jme3/math/Vector3f;->y:F

    iget p2, p2, Lcom/jme3/math/Vector3f;->z:F

    invoke-virtual {p0, p1, v0, v1, p2}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->B0(IFFF)V

    return-void
.end method

.method public I0(I[F)V
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

    invoke-virtual {p0, p1, p2, v1, v0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->J0(I[FII)V

    return-void
.end method

.method public final J(JIF)V
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

    invoke-static {p1, p2, p3, p4}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->nativeSetFloat(JIF)V

    return-void
.end method

.method public J0(I[FII)V
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

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->S0()Z

    move-result v0

    if-eqz v0, :cond_3

    add-int/lit8 v0, p4, -0x1

    add-int/2addr v0, p1

    iget v1, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->e:I

    if-ge v0, v1, :cond_2

    if-ltz p1, :cond_1

    array-length v0, p2

    add-int v1, p3, p4

    if-lt v0, v1, :cond_0

    :try_start_0
    iget-wide v3, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->g:J

    move-object v2, p0

    move v5, p1

    move-object v6, p2

    move v7, p3

    move v8, p4

    invoke-virtual/range {v2 .. v8}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->K(JI[FII)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

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

    iget p3, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->e:I

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

.method public final K(JI[FII)V
    .locals 1
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

    if-nez p5, :cond_0

    array-length v0, p4

    if-ne p6, v0, :cond_0

    invoke-static/range {p1 .. p6}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->nativeSetFloatsMemCp(JI[FII)V

    goto :goto_0

    :cond_0
    invoke-static/range {p1 .. p6}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->nativeSetFloats(JI[FII)V

    :goto_0
    return-void
.end method

.method public K0([F)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "values"
        }
    .end annotation

    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, v1, p1, v1, v0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->J0(I[FII)V

    return-void
.end method

.method public final L(JIJII)V
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

    invoke-static/range {p1 .. p7}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->nativeSetFloatsBuffer(JIJII)V

    return-void
.end method

.method public L0([FI)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "values",
            "count"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, v0, p2}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->J0(I[FII)V

    return-void
.end method

.method public final M(JIFF)V
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
            "x",
            "y"
        }
    .end annotation

    invoke-static {p1, p2, p3, p4, p5}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->nativeSetVector2(JIFF)V

    return-void
.end method

.method public M0(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "position"
        }
    .end annotation

    iput p1, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->i:I

    return-void
.end method

.method public final N(JIFFF)V
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
            "x",
            "y",
            "z"
        }
    .end annotation

    invoke-static/range {p1 .. p6}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->nativeSetVector3(JIFFF)V

    return-void
.end method

.method public N0(LJAVARuntime/NativeFloatBuffer;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "run"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->l:LJAVARuntime/NativeFloatBuffer;

    return-void
.end method

.method public final O(JIFFFF)V
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
            "x",
            "y",
            "z",
            "w"
        }
    .end annotation

    invoke-static/range {p1 .. p7}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->nativeSetVector4(JIFFFF)V

    return-void
.end method

.method public O0()[F
    .locals 1

    iget v0, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->e:I

    new-array v0, v0, [F

    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->b0([F)V

    return-object v0
.end method

.method public final P(I)J
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "type"
        }
    .end annotation

    invoke-static {p1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->nativeTryCreate(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public P0()Ljava/nio/FloatBuffer;
    .locals 3

    iget v0, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->e:I

    invoke-static {v0}, LNc/a;->c(I)Ljava/nio/FloatBuffer;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->e:I

    if-ge v1, v2, :cond_0

    invoke-virtual {p0, v1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->X(I)F

    move-result v2

    invoke-virtual {v0, v2}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/nio/FloatBuffer;->flip()Ljava/nio/Buffer;

    return-object v0
.end method

.method public Q()Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;
    .locals 2

    new-instance v0, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    iget v1, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->e:I

    invoke-direct {v0, v1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;-><init>(I)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->j0(I)V

    invoke-virtual {v0, p0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->q0(Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;)V

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->j0(I)V

    return-object v0
.end method

.method public Q0()LJAVARuntime/NativeFloatBuffer;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->l:LJAVARuntime/NativeFloatBuffer;

    if-nez v0, :cond_0

    new-instance v0, LJAVARuntime/NativeFloatBuffer;

    invoke-direct {v0, p0}, LJAVARuntime/NativeFloatBuffer;-><init>(Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;)V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->l:LJAVARuntime/NativeFloatBuffer;

    :cond_0
    return-object v0
.end method

.method public R(Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;)Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "buffer"
        }
    .end annotation

    new-instance v0, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->h()I

    move-result v1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->h()I

    move-result v2

    add-int/2addr v1, v2

    invoke-direct {v0, v1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;-><init>(I)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->j0(I)V

    invoke-virtual {v0, p0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->q0(Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;)V

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->q0(Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;)V

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->j0(I)V

    return-object v0
.end method

.method public R0()Z
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

.method public S(Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;)Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "buffer"
        }
    .end annotation

    new-instance v0, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->h()I

    move-result v1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->h()I

    move-result v2

    add-int/2addr v1, v2

    invoke-direct {v0, v1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;-><init>(I)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->j0(I)V

    invoke-virtual {v0, p0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->q0(Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;)V

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->q0(Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;)V

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->j0(I)V

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->destroyImmediate()V

    return-object v0
.end method

.method public T(Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;)Z
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
    iget-wide v0, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->g:J

    iget-wide v2, p1, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->g:J

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->D(JJ)Z

    move-result p1

    return p1
.end method

.method public U(F)V
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

    iget v1, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->e:I

    invoke-virtual {p0, v0, p1, v1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->V(IFI)V

    return-void
.end method

.method public V(IFI)V
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

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->S0()Z

    move-result v0

    if-eqz v0, :cond_2

    add-int/lit8 v0, p3, -0x1

    add-int/2addr v0, p1

    iget v1, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->e:I

    if-ge v0, v1, :cond_1

    if-ltz p1, :cond_0

    :try_start_0
    iget-wide v3, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->g:J

    move-object v2, p0

    move v5, p1

    move v6, p2

    move v7, p3

    invoke-virtual/range {v2 .. v7}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->E(JIFI)V
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

    iget p3, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->e:I

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

.method public W([F)V
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

    iget v1, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->e:I

    if-ne v0, v1, :cond_0

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->b0([F)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Array size must be == buffer capacity"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public X(I)F
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->S0()Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->e:I

    if-ge p1, v0, :cond_1

    if-ltz p1, :cond_0

    :try_start_0
    iget-wide v0, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->g:J

    invoke-virtual {p0, v0, v1, p1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->F(JI)F

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
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "index cant be >= capacity ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ") vs ("

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->e:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public Y(ILcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "baseIndex",
            "vector3"
        }
    .end annotation

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->S0()Z

    move-result v0

    if-eqz v0, :cond_3

    add-int/lit8 v0, p1, 0x2

    iget v1, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->e:I

    if-ge v0, v1, :cond_2

    if-ltz p1, :cond_1

    if-eqz p2, :cond_0

    :try_start_0
    iget-wide v0, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->g:J

    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->H(JILcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "vector3 can\'t be null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

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

    const-string v1, "baseIndex + 2 cant be >= capacity ("

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ") >= ("

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->e:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    :goto_0
    return-void
.end method

.method public Z(I[F)V
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

    invoke-virtual {p0, p1, p2, v1, v0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->a0(I[FII)V

    return-void
.end method

.method public a0(I[FII)V
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

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->S0()Z

    move-result v0

    if-eqz v0, :cond_3

    add-int/lit8 v0, p4, -0x1

    add-int/2addr v0, p1

    iget v1, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->e:I

    if-ge v0, v1, :cond_2

    if-ltz p1, :cond_1

    array-length v0, p2

    add-int v1, p3, p4

    if-lt v0, v1, :cond_0

    :try_start_0
    iget-wide v3, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->g:J

    move-object v2, p0

    move v5, p1

    move-object v6, p2

    move v7, p3

    move v8, p4

    invoke-virtual/range {v2 .. v8}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->G(JI[FII)V
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

    iget p3, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->e:I

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

.method public b0([F)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "values"
        }
    .end annotation

    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, v1, p1, v1, v0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->a0(I[FII)V

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

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->X(I)F

    move-result p1

    float-to-int p1, p1

    return p1
.end method

.method public c0([FI)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "values",
            "count"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, v0, p2}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->a0(I[FII)V

    return-void
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->Q()Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

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

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->X(I)F

    move-result p1

    float-to-double v0, p1

    return-wide v0
.end method

.method public d0()I
    .locals 1

    iget v0, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->e:I

    return v0
.end method

.method public destroy()V
    .locals 0

    invoke-virtual {p0}, LPc/a;->A()V

    return-void
.end method

.method public destroyImmediate()V
    .locals 1

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->S0()Z

    invoke-virtual {p0}, LPc/a;->A()V

    sget-object v0, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->m:LQc/b;

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

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->X(I)F

    move-result p1

    float-to-int p1, p1

    int-to-short p1, p1

    return p1
.end method

.method public e0()J
    .locals 2

    iget-wide v0, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->g:J

    return-wide v0
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

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->X(I)F

    move-result p1

    float-to-int p1, p1

    int-to-byte p1, p1

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

    int-to-float p2, p2

    invoke-virtual {p0, p1, p2}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->z0(IF)V

    return-void
.end method

.method public g0()I
    .locals 1

    iget v0, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->i:I

    return v0
.end method

.method public h()I
    .locals 1

    iget v0, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->e:I

    return v0
.end method

.method public h0()Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer$b;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->k:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer$b;

    return-object v0
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

    double-to-float p2, p2

    invoke-virtual {p0, p1, p2}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->z0(IF)V

    return-void
.end method

.method public i0()Z
    .locals 2

    iget v0, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->i:I

    iget v1, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->e:I

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public j0(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "position"
        }
    .end annotation

    iput p1, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->i:I

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

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->X(I)F

    move-result p1

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

    invoke-virtual {p0, p1, p2}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->z0(IF)V

    return-void
.end method

.method public l0(F)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->S0()Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->i:I

    iget v1, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->e:I

    if-ge v0, v1, :cond_1

    if-ltz v0, :cond_0

    :try_start_0
    iget-wide v1, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->g:J

    invoke-virtual {p0, v1, v2, v0, p1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->J(JIF)V

    iget p1, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->i:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->i:I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :cond_0
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    const-string v0, "position cant be < 0"

    invoke-direct {p1, v0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "position cant be >= capacity ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->i:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ") vs ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    :goto_0
    return-void
.end method

.method public m0(FF)V
    .locals 7
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

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->S0()Z

    move-result v0

    if-eqz v0, :cond_2

    iget v4, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->i:I

    add-int/lit8 v0, v4, 0x1

    iget v1, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->e:I

    if-ge v0, v1, :cond_1

    if-ltz v4, :cond_0

    :try_start_0
    iget-wide v2, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->g:J

    move-object v1, p0

    move v5, p1

    move v6, p2

    invoke-virtual/range {v1 .. v6}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->M(JIFF)V

    iget p1, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->i:I

    add-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->i:I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    const-string p2, "position cant be < 0"

    invoke-direct {p1, p2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "position + 1 cant be >= capacity ("

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->i:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ") vs ("

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->e:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    :goto_0
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

    int-to-float p2, p2

    invoke-virtual {p0, p1, p2}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->z0(IF)V

    return-void
.end method

.method public n0(FFF)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "x",
            "y",
            "z"
        }
    .end annotation

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->S0()Z

    move-result v0

    if-eqz v0, :cond_2

    iget v4, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->i:I

    add-int/lit8 v0, v4, 0x2

    iget v1, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->e:I

    if-ge v0, v1, :cond_1

    if-ltz v4, :cond_0

    :try_start_0
    iget-wide v2, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->g:J

    move-object v1, p0

    move v5, p1

    move v6, p2

    move v7, p3

    invoke-virtual/range {v1 .. v7}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->N(JIFFF)V

    iget p1, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->i:I

    add-int/lit8 p1, p1, 0x3

    iput p1, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->i:I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    const-string p2, "position cant be < 0"

    invoke-direct {p1, p2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "position + 2 cant be >= capacity ("

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->i:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/4 p3, 0x2

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ") vs ("

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->e:I

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

.method public o(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    return-void
.end method

.method public o0(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    iget v0, p1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->x:F

    iget p1, p1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->y:F

    invoke-virtual {p0, v0, p1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->m0(FF)V

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

    int-to-float p2, p2

    invoke-virtual {p0, p1, p2}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->z0(IF)V

    return-void
.end method

.method public p0(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->W0()F

    move-result v0

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->X0()F

    move-result v1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->Y0()F

    move-result p1

    invoke-virtual {p0, v0, v1, p1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->n0(FFF)V

    return-void
.end method

.method public q0(Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "buffer"
        }
    .end annotation

    iget v0, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->i:I

    invoke-virtual {p0, v0, p1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->F0(ILcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;)V

    iget v0, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->i:I

    iget p1, p1, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->e:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->i:I

    return-void
.end method

.method public r()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public r0(Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;I)V
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

    iget v0, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->i:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1, p2}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->G0(ILcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;II)V

    iget p1, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->i:I

    add-int/2addr p1, p2

    iput p1, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->i:I

    return-void
.end method

.method public s0(Lcom/jme3/math/Vector2f;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    iget v0, p1, Lcom/jme3/math/Vector2f;->x:F

    iget p1, p1, Lcom/jme3/math/Vector2f;->y:F

    invoke-virtual {p0, v0, p1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->m0(FF)V

    return-void
.end method

.method public t0(Lcom/jme3/math/Vector3f;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    iget v0, p1, Lcom/jme3/math/Vector3f;->x:F

    iget v1, p1, Lcom/jme3/math/Vector3f;->y:F

    iget p1, p1, Lcom/jme3/math/Vector3f;->z:F

    invoke-virtual {p0, v0, v1, p1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->n0(FFF)V

    return-void
.end method

.method public u()J
    .locals 2

    iget-wide v0, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->g:J

    return-wide v0
.end method

.method public u0([F)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->S0()Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->i:I

    iget v1, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->e:I

    if-ge v0, v1, :cond_1

    if-ltz v0, :cond_0

    :try_start_0
    array-length v1, p1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, p1, v2, v1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->J0(I[FII)V

    iget v0, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->i:I

    array-length p1, p1

    add-int/2addr v0, p1

    iput v0, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->i:I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

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

.method public v0([S)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->S0()Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->i:I

    iget v1, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->e:I

    if-ge v0, v1, :cond_1

    if-ltz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    :try_start_0
    array-length v1, p1

    if-ge v0, v1, :cond_2

    iget v1, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->i:I

    aget-short v2, p1, v0

    int-to-float v2, v2

    invoke-virtual {p0, v1, v2}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->z0(IF)V

    iget v1, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->i:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->i:I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v0, 0x1

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

.method public w()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public w0(FI)V
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

    iget v0, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->i:I

    invoke-virtual {p0, v0, p1, p2}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->V(IFI)V

    iget p1, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->i:I

    add-int/2addr p1, p2

    iput p1, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->i:I

    return-void
.end method

.method public x()V
    .locals 2

    :try_start_0
    iget-wide v0, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->g:J

    invoke-direct {p0, v0, v1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->I(J)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public y0(Ljava/io/File;)V
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

    invoke-direct {p0, v0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->nativeSaveToFile(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to save NativeFloatBuffer to file: "

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

.method public z()V
    .locals 2

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->g:J

    invoke-super {p0}, LPc/a;->z()V

    return-void
.end method

.method public z0(IF)V
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

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->S0()Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->e:I

    if-ge p1, v0, :cond_1

    if-ltz p1, :cond_0

    :try_start_0
    iget-wide v0, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->g:J

    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->J(JIF)V
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
    new-instance p2, Ljava/lang/IndexOutOfBoundsException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "index cant be >= capacity ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " vs "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->e:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_2
    :goto_0
    return-void
.end method
