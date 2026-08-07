.class public LJAVARuntime/NativeFloatBuffer;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime LJAVARuntime/ClassCategory;
    cat = {
        "Buffers"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LJAVARuntime/NativeFloatBuffer$Precision;
    }
.end annotation


# instance fields
.field public transient buffer:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;
    .annotation runtime LZ6/g;
    .end annotation
.end field


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "capacity"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "capacity"
        }
    .end annotation

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    invoke-static {p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Profiler/MemoryProfiler/AllocatorWatcher;->notify(Ljava/lang/Object;)V

    .line 9
    new-instance v0, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    invoke-direct {v0, p1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;-><init>(I)V

    iput-object v0, p0, LJAVARuntime/NativeFloatBuffer;->buffer:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    return-void
.end method

.method public constructor <init>(ILJAVARuntime/NativeFloatBuffer$Precision;)V
    .locals 1
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "capacity",
            "precision"
        }
    .end annotation

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

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    invoke-static {p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Profiler/MemoryProfiler/AllocatorWatcher;->notify(Ljava/lang/Object;)V

    .line 12
    new-instance v0, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer$b;->valueOf(Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer$b;

    move-result-object p2

    invoke-direct {v0, p1, p2}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;-><init>(ILcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer$b;)V

    iput-object v0, p0, LJAVARuntime/NativeFloatBuffer;->buffer:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    return-void
.end method

.method public constructor <init>(Lc9/a;)V
    .locals 0
    .annotation runtime LG8/c;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "engine"
        }
    .end annotation

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    invoke-static {p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Profiler/MemoryProfiler/AllocatorWatcher;->notify(Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;)V
    .locals 0
    .annotation runtime LZ6/g;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "buffer"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Profiler/MemoryProfiler/AllocatorWatcher;->notify(Ljava/lang/Object;)V

    .line 3
    iput-object p1, p0, LJAVARuntime/NativeFloatBuffer;->buffer:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    .line 4
    invoke-virtual {p1, p0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->N0(LJAVARuntime/NativeFloatBuffer;)V

    return-void
.end method

.method public constructor <init>([F)V
    .locals 1
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "values"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "values"
        }
    .end annotation

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    invoke-static {p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Profiler/MemoryProfiler/AllocatorWatcher;->notify(Ljava/lang/Object;)V

    .line 15
    new-instance v0, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    invoke-direct {v0, p1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;-><init>([F)V

    iput-object v0, p0, LJAVARuntime/NativeFloatBuffer;->buffer:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    return-void
.end method

.method public constructor <init>([FLJAVARuntime/NativeFloatBuffer$Precision;)V
    .locals 1
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "values",
            "precision"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "values",
            "precision"
        }
    .end annotation

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    invoke-static {p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Profiler/MemoryProfiler/AllocatorWatcher;->notify(Ljava/lang/Object;)V

    .line 18
    new-instance v0, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer$b;->valueOf(Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer$b;

    move-result-object p2

    invoke-direct {v0, p1, p2}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;-><init>([FLcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer$b;)V

    iput-object v0, p0, LJAVARuntime/NativeFloatBuffer;->buffer:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    return-void
.end method

.method public static readFile(Ljava/io/File;)LJAVARuntime/NativeFloatBuffer;
    .locals 0
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Loads a NativeFloatBuffer from a file."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Carrega um NativeFloatBuffer a partir de um arquivo."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "file"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "file"
        }
    .end annotation

    invoke-static {p0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->x0(Ljava/io/File;)Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    move-result-object p0

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->Q0()LJAVARuntime/NativeFloatBuffer;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public capacity()I
    .locals 1

    iget-object v0, p0, LJAVARuntime/NativeFloatBuffer;->buffer:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->h()I

    move-result v0

    return v0
.end method

.method public clone()LJAVARuntime/NativeFloatBuffer;
    .locals 1

    .line 2
    iget-object v0, p0, LJAVARuntime/NativeFloatBuffer;->buffer:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->Q()Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->Q0()LJAVARuntime/NativeFloatBuffer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, LJAVARuntime/NativeFloatBuffer;->clone()LJAVARuntime/NativeFloatBuffer;

    move-result-object v0

    return-object v0
.end method

.method public concat(LJAVARuntime/NativeFloatBuffer;)LJAVARuntime/NativeFloatBuffer;
    .locals 1
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "other"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "other"
        }
    .end annotation

    iget-object v0, p0, LJAVARuntime/NativeFloatBuffer;->buffer:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    iget-object p1, p1, LJAVARuntime/NativeFloatBuffer;->buffer:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->R(Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;)Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->Q0()LJAVARuntime/NativeFloatBuffer;

    move-result-object p1

    return-object p1
.end method

.method public concatAndDestroyItselfImmediate(LJAVARuntime/NativeFloatBuffer;)LJAVARuntime/NativeFloatBuffer;
    .locals 1
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "other"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "other"
        }
    .end annotation

    iget-object v0, p0, LJAVARuntime/NativeFloatBuffer;->buffer:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    iget-object p1, p1, LJAVARuntime/NativeFloatBuffer;->buffer:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->S(Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;)Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->Q0()LJAVARuntime/NativeFloatBuffer;

    move-result-object p1

    return-object p1
.end method

.method public destroy()V
    .locals 1

    iget-object v0, p0, LJAVARuntime/NativeFloatBuffer;->buffer:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->destroy()V

    return-void
.end method

.method public destroyImmediate()V
    .locals 1

    iget-object v0, p0, LJAVARuntime/NativeFloatBuffer;->buffer:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->destroyImmediate()V

    return-void
.end method

.method public equalsNative(LJAVARuntime/NativeFloatBuffer;)Z
    .locals 1
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "other"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "other"
        }
    .end annotation

    iget-object v0, p0, LJAVARuntime/NativeFloatBuffer;->buffer:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    if-eqz p1, :cond_0

    iget-object p1, p1, LJAVARuntime/NativeFloatBuffer;->buffer:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->T(Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;)Z

    move-result p1

    return p1
.end method

.method public fill(F)V
    .locals 1
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1
    iget-object v0, p0, LJAVARuntime/NativeFloatBuffer;->buffer:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->U(F)V

    return-void
.end method

.method public fill(IFI)V
    .locals 1
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "baseIndex",
            "value",
            "count"
        }
    .end annotation

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

    .line 2
    iget-object v0, p0, LJAVARuntime/NativeFloatBuffer;->buffer:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    invoke-virtual {v0, p1, p2, p3}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->V(IFI)V

    return-void
.end method

.method public fillArray([F)V
    .locals 1
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "values"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "values"
        }
    .end annotation

    iget-object v0, p0, LJAVARuntime/NativeFloatBuffer;->buffer:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->W([F)V

    return-void
.end method

.method public get(I)F
    .locals 1
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "idx"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 1
    iget-object v0, p0, LJAVARuntime/NativeFloatBuffer;->buffer:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->X(I)F

    move-result p1

    return p1
.end method

.method public get(ILJAVARuntime/Vector3;)V
    .locals 1
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "baseIndex",
            "vector"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "baseIndex",
            "vector"
        }
    .end annotation

    .line 6
    iget-object v0, p0, LJAVARuntime/NativeFloatBuffer;->buffer:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    iget-object p2, p2, LJAVARuntime/Vector3;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v0, p1, p2}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->Y(ILcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V

    return-void
.end method

.method public get(I[F)V
    .locals 1
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "baseIndex",
            "values"
        }
    .end annotation

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

    .line 4
    iget-object v0, p0, LJAVARuntime/NativeFloatBuffer;->buffer:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    invoke-virtual {v0, p1, p2}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->Z(I[F)V

    return-void
.end method

.method public get(I[FII)V
    .locals 1
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "baseIndex",
            "values",
            "start",
            "count"
        }
    .end annotation

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

    .line 5
    iget-object v0, p0, LJAVARuntime/NativeFloatBuffer;->buffer:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->a0(I[FII)V

    return-void
.end method

.method public get([F)V
    .locals 1
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "values"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "values"
        }
    .end annotation

    .line 2
    iget-object v0, p0, LJAVARuntime/NativeFloatBuffer;->buffer:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->b0([F)V

    return-void
.end method

.method public get([FI)V
    .locals 1
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "values",
            "count"
        }
    .end annotation

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

    .line 3
    iget-object v0, p0, LJAVARuntime/NativeFloatBuffer;->buffer:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    invoke-virtual {v0, p1, p2}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->c0([FI)V

    return-void
.end method

.method public getCapacity()I
    .locals 1

    iget-object v0, p0, LJAVARuntime/NativeFloatBuffer;->buffer:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->d0()I

    move-result v0

    return v0
.end method

.method public getPosition()I
    .locals 1

    iget-object v0, p0, LJAVARuntime/NativeFloatBuffer;->buffer:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->g0()I

    move-result v0

    return v0
.end method

.method public getPrecision()LJAVARuntime/NativeFloatBuffer$Precision;
    .locals 1

    iget-object v0, p0, LJAVARuntime/NativeFloatBuffer;->buffer:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->h0()Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer$b;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, LJAVARuntime/NativeFloatBuffer$Precision;->valueOf(Ljava/lang/String;)LJAVARuntime/NativeFloatBuffer$Precision;

    move-result-object v0

    return-object v0
.end method

.method public hasNext()Z
    .locals 1

    iget-object v0, p0, LJAVARuntime/NativeFloatBuffer;->buffer:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->i0()Z

    move-result v0

    return v0
.end method

.method public position(I)I
    .locals 2
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "idx"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "idx"
        }
    .end annotation

    iget-object v0, p0, LJAVARuntime/NativeFloatBuffer;->buffer:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    mul-int/lit8 v1, p1, 0x3

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->j0(I)V

    return p1
.end method

.method public put(F)V
    .locals 1
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1
    iget-object v0, p0, LJAVARuntime/NativeFloatBuffer;->buffer:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->l0(F)V

    return-void
.end method

.method public put(FF)V
    .locals 1
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "x",
            "y"
        }
    .end annotation

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

    .line 9
    iget-object v0, p0, LJAVARuntime/NativeFloatBuffer;->buffer:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    invoke-virtual {v0, p1, p2}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->m0(FF)V

    return-void
.end method

.method public put(FFF)V
    .locals 1
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "x",
            "y",
            "z"
        }
    .end annotation

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

    .line 8
    iget-object v0, p0, LJAVARuntime/NativeFloatBuffer;->buffer:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    invoke-virtual {v0, p1, p2, p3}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->n0(FFF)V

    return-void
.end method

.method public put(LJAVARuntime/NativeFloatBuffer;)V
    .locals 1
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "values"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "values"
        }
    .end annotation

    .line 4
    iget-object v0, p0, LJAVARuntime/NativeFloatBuffer;->buffer:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    iget-object p1, p1, LJAVARuntime/NativeFloatBuffer;->buffer:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->q0(Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;)V

    return-void
.end method

.method public put(LJAVARuntime/NativeFloatBuffer;I)V
    .locals 1
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "values",
            "count"
        }
    .end annotation

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

    .line 5
    iget-object v0, p0, LJAVARuntime/NativeFloatBuffer;->buffer:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    iget-object p1, p1, LJAVARuntime/NativeFloatBuffer;->buffer:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    invoke-virtual {v0, p1, p2}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->r0(Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;I)V

    return-void
.end method

.method public put(LJAVARuntime/Vector2;)V
    .locals 1
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 7
    iget-object v0, p0, LJAVARuntime/NativeFloatBuffer;->buffer:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    iget-object p1, p1, LJAVARuntime/Vector2;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->o0(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;)V

    return-void
.end method

.method public put(LJAVARuntime/Vector3;)V
    .locals 1
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 6
    iget-object v0, p0, LJAVARuntime/NativeFloatBuffer;->buffer:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    iget-object p1, p1, LJAVARuntime/Vector3;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->p0(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V

    return-void
.end method

.method public put([F)V
    .locals 1
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "values"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "values"
        }
    .end annotation

    .line 2
    iget-object v0, p0, LJAVARuntime/NativeFloatBuffer;->buffer:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->u0([F)V

    return-void
.end method

.method public put([S)V
    .locals 1
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "values"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "values"
        }
    .end annotation

    .line 3
    iget-object v0, p0, LJAVARuntime/NativeFloatBuffer;->buffer:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->v0([S)V

    return-void
.end method

.method public putFill(FI)V
    .locals 1
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "value",
            "count"
        }
    .end annotation

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

    iget-object v0, p0, LJAVARuntime/NativeFloatBuffer;->buffer:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    invoke-virtual {v0, p1, p2}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->w0(FI)V

    return-void
.end method

.method public saveToFile(Ljava/io/File;)V
    .locals 1
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Saves this NativeFloatBuffer to a file."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Salva este NativeFloatBuffer em um arquivo."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "file"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "file"
        }
    .end annotation

    iget-object v0, p0, LJAVARuntime/NativeFloatBuffer;->buffer:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->y0(Ljava/io/File;)V

    return-void
.end method

.method public set(IF)V
    .locals 1
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "idx",
            "value"
        }
    .end annotation

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

    .line 1
    iget-object v0, p0, LJAVARuntime/NativeFloatBuffer;->buffer:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    invoke-virtual {v0, p1, p2}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->z0(IF)V

    return-void
.end method

.method public set(IFF)V
    .locals 1
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "baseIndex",
            "x",
            "y"
        }
    .end annotation

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

    .line 6
    iget-object v0, p0, LJAVARuntime/NativeFloatBuffer;->buffer:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    invoke-virtual {v0, p1, p2, p3}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->A0(IFF)V

    return-void
.end method

.method public set(IFFF)V
    .locals 1
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "baseIndex",
            "x",
            "y",
            "z"
        }
    .end annotation

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

    .line 4
    iget-object v0, p0, LJAVARuntime/NativeFloatBuffer;->buffer:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->B0(IFFF)V

    return-void
.end method

.method public set(IFFFF)V
    .locals 6
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "baseIndex",
            "x",
            "y",
            "z",
            "w"
        }
    .end annotation

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

    .line 5
    iget-object v0, p0, LJAVARuntime/NativeFloatBuffer;->buffer:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->C0(IFFFF)V

    return-void
.end method

.method public set(ILJAVARuntime/NativeFloatBuffer;)V
    .locals 1
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "baseIndex",
            "values"
        }
    .end annotation

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

    .line 7
    iget-object v0, p0, LJAVARuntime/NativeFloatBuffer;->buffer:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    iget-object p2, p2, LJAVARuntime/NativeFloatBuffer;->buffer:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    invoke-virtual {v0, p1, p2}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->F0(ILcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;)V

    return-void
.end method

.method public set(ILJAVARuntime/NativeFloatBuffer;II)V
    .locals 1
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "baseIndex",
            "values",
            "start",
            "count"
        }
    .end annotation

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

    .line 8
    iget-object v0, p0, LJAVARuntime/NativeFloatBuffer;->buffer:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    iget-object p2, p2, LJAVARuntime/NativeFloatBuffer;->buffer:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->G0(ILcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;II)V

    return-void
.end method

.method public set(ILJAVARuntime/Vector3;)V
    .locals 1
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "baseIndex",
            "vector"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "baseIndex",
            "vector"
        }
    .end annotation

    .line 3
    iget-object v0, p0, LJAVARuntime/NativeFloatBuffer;->buffer:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    iget-object p2, p2, LJAVARuntime/Vector3;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v0, p1, p2}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->D0(ILcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V

    return-void
.end method

.method public set(ILJAVARuntime/Vector4;)V
    .locals 1
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "baseIndex",
            "vector"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "baseIndex",
            "vector"
        }
    .end annotation

    .line 2
    iget-object v0, p0, LJAVARuntime/NativeFloatBuffer;->buffer:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    iget-object p2, p2, LJAVARuntime/Vector4;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;

    invoke-virtual {v0, p1, p2}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->E0(ILcom/itsmagic/engine/Engines/Engine/Vector/Vector4;)V

    return-void
.end method

.method public set(I[F)V
    .locals 1
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "baseIndex",
            "values"
        }
    .end annotation

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

    .line 11
    iget-object v0, p0, LJAVARuntime/NativeFloatBuffer;->buffer:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    invoke-virtual {v0, p1, p2}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->I0(I[F)V

    return-void
.end method

.method public set(I[FII)V
    .locals 1
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "baseIndex",
            "values",
            "start",
            "count"
        }
    .end annotation

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

    .line 12
    iget-object v0, p0, LJAVARuntime/NativeFloatBuffer;->buffer:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->J0(I[FII)V

    return-void
.end method

.method public set([F)V
    .locals 1
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "values"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "values"
        }
    .end annotation

    .line 9
    iget-object v0, p0, LJAVARuntime/NativeFloatBuffer;->buffer:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->K0([F)V

    return-void
.end method

.method public set([FI)V
    .locals 1
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "values",
            "count"
        }
    .end annotation

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

    .line 10
    iget-object v0, p0, LJAVARuntime/NativeFloatBuffer;->buffer:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    invoke-virtual {v0, p1, p2}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->L0([FI)V

    return-void
.end method

.method public setPosition(I)V
    .locals 1
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "idx"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "idx"
        }
    .end annotation

    iget-object v0, p0, LJAVARuntime/NativeFloatBuffer;->buffer:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    mul-int/lit8 p1, p1, 0x3

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->j0(I)V

    return-void
.end method

.method public toArray()[F
    .locals 1

    iget-object v0, p0, LJAVARuntime/NativeFloatBuffer;->buffer:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->O0()[F

    move-result-object v0

    return-object v0
.end method

.method public validate()Z
    .locals 1

    iget-object v0, p0, LJAVARuntime/NativeFloatBuffer;->buffer:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->R0()Z

    move-result v0

    return v0
.end method
