.class public LJAVARuntime/NativeShortBuffer;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime LJAVARuntime/ClassCategory;
    cat = {
        "Buffers"
    }
.end annotation


# instance fields
.field public transient buffer:Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;
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
    new-instance v0, Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;

    invoke-direct {v0, p1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;-><init>(I)V

    iput-object v0, p0, LJAVARuntime/NativeShortBuffer;->buffer:Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;

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

.method public constructor <init>(Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;)V
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
    iput-object p1, p0, LJAVARuntime/NativeShortBuffer;->buffer:Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;

    .line 4
    invoke-virtual {p1, p0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;->Q0(LJAVARuntime/NativeShortBuffer;)V

    return-void
.end method

.method public constructor <init>([S)V
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

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    invoke-static {p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Profiler/MemoryProfiler/AllocatorWatcher;->notify(Ljava/lang/Object;)V

    .line 12
    new-instance v0, Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;

    invoke-direct {v0, p1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;-><init>([S)V

    iput-object v0, p0, LJAVARuntime/NativeShortBuffer;->buffer:Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;

    return-void
.end method

.method public static readFile(Ljava/io/File;)LJAVARuntime/NativeShortBuffer;
    .locals 0
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Loads a NativeShortBuffer from a file."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Carrega um NativeShortBuffer a partir de um arquivo."
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

    invoke-static {p0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;->z0(Ljava/io/File;)Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;

    move-result-object p0

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;->T0()LJAVARuntime/NativeShortBuffer;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public capacity()I
    .locals 1

    iget-object v0, p0, LJAVARuntime/NativeShortBuffer;->buffer:Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;->h()I

    move-result v0

    return v0
.end method

.method public clone()LJAVARuntime/NativeShortBuffer;
    .locals 1

    .line 2
    iget-object v0, p0, LJAVARuntime/NativeShortBuffer;->buffer:Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;->Q()Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;->T0()LJAVARuntime/NativeShortBuffer;

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
    invoke-virtual {p0}, LJAVARuntime/NativeShortBuffer;->clone()LJAVARuntime/NativeShortBuffer;

    move-result-object v0

    return-object v0
.end method

.method public concat(LJAVARuntime/NativeShortBuffer;)LJAVARuntime/NativeShortBuffer;
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

    iget-object v0, p0, LJAVARuntime/NativeShortBuffer;->buffer:Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;

    iget-object p1, p1, LJAVARuntime/NativeShortBuffer;->buffer:Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;->R(Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;)Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;->T0()LJAVARuntime/NativeShortBuffer;

    move-result-object p1

    return-object p1
.end method

.method public concatAndDestroyItselfImmediate(LJAVARuntime/NativeShortBuffer;)LJAVARuntime/NativeShortBuffer;
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

    iget-object v0, p0, LJAVARuntime/NativeShortBuffer;->buffer:Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;

    iget-object p1, p1, LJAVARuntime/NativeShortBuffer;->buffer:Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;->S(Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;)Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;->T0()LJAVARuntime/NativeShortBuffer;

    move-result-object p1

    return-object p1
.end method

.method public destroy()V
    .locals 1

    iget-object v0, p0, LJAVARuntime/NativeShortBuffer;->buffer:Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;->destroy()V

    return-void
.end method

.method public destroyImmediate()V
    .locals 1

    iget-object v0, p0, LJAVARuntime/NativeShortBuffer;->buffer:Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;->destroyImmediate()V

    return-void
.end method

.method public equalsNative(LJAVARuntime/NativeShortBuffer;)Z
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

    iget-object v0, p0, LJAVARuntime/NativeShortBuffer;->buffer:Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;

    if-eqz p1, :cond_0

    iget-object p1, p1, LJAVARuntime/NativeShortBuffer;->buffer:Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;->T(Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;)Z

    move-result p1

    return p1
.end method

.method public fill(ISI)V
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
    iget-object v0, p0, LJAVARuntime/NativeShortBuffer;->buffer:Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;

    invoke-virtual {v0, p1, p2, p3}, Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;->U(ISI)V

    return-void
.end method

.method public fill(S)V
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
    iget-object v0, p0, LJAVARuntime/NativeShortBuffer;->buffer:Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;->V(S)V

    return-void
.end method

.method public fillArray([S)V
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

    iget-object v0, p0, LJAVARuntime/NativeShortBuffer;->buffer:Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;->W([S)V

    return-void
.end method

.method public get(I)S
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
    iget-object v0, p0, LJAVARuntime/NativeShortBuffer;->buffer:Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;->X(I)S

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

    .line 5
    iget-object v0, p0, LJAVARuntime/NativeShortBuffer;->buffer:Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;

    iget-object p2, p2, LJAVARuntime/Vector3;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v0, p1, p2}, Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;->Y(ILcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V

    return-void
.end method

.method public get(I[S)V
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

    .line 3
    iget-object v0, p0, LJAVARuntime/NativeShortBuffer;->buffer:Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;

    invoke-virtual {v0, p1, p2}, Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;->Z(I[S)V

    return-void
.end method

.method public get(I[SII)V
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

    .line 4
    iget-object v0, p0, LJAVARuntime/NativeShortBuffer;->buffer:Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;->a0(I[SII)V

    return-void
.end method

.method public get([S)V
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
    iget-object v0, p0, LJAVARuntime/NativeShortBuffer;->buffer:Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;->b0([S)V

    return-void
.end method

.method public getCapacity()I
    .locals 1

    iget-object v0, p0, LJAVARuntime/NativeShortBuffer;->buffer:Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;->c0()I

    move-result v0

    return v0
.end method

.method public getPosition()I
    .locals 1

    iget-object v0, p0, LJAVARuntime/NativeShortBuffer;->buffer:Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;->f0()I

    move-result v0

    return v0
.end method

.method public hasNext()Z
    .locals 1

    iget-object v0, p0, LJAVARuntime/NativeShortBuffer;->buffer:Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;->g0()Z

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

    iget-object v0, p0, LJAVARuntime/NativeShortBuffer;->buffer:Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;

    mul-int/lit8 v1, p1, 0x3

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;->h0(I)V

    return p1
.end method

.method public pull([S)V
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

    .line 1
    iget-object v0, p0, LJAVARuntime/NativeShortBuffer;->buffer:Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;->i0([S)V

    return-void
.end method

.method public pull([SI)V
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

    .line 2
    iget-object v0, p0, LJAVARuntime/NativeShortBuffer;->buffer:Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;

    invoke-virtual {v0, p1, p2}, Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;->j0([SI)V

    return-void
.end method

.method public pull([SII)V
    .locals 1
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "values",
            "start",
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
            "values",
            "start",
            "count"
        }
    .end annotation

    .line 3
    iget-object v0, p0, LJAVARuntime/NativeShortBuffer;->buffer:Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;

    invoke-virtual {v0, p1, p2, p3}, Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;->k0([SII)V

    return-void
.end method

.method public push([S)V
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

    .line 1
    iget-object v0, p0, LJAVARuntime/NativeShortBuffer;->buffer:Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;->l0([S)V

    return-void
.end method

.method public push([SI)V
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

    .line 2
    iget-object v0, p0, LJAVARuntime/NativeShortBuffer;->buffer:Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;

    invoke-virtual {v0, p1, p2}, Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;->m0([SI)V

    return-void
.end method

.method public push([SII)V
    .locals 1
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "values",
            "start",
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
            "values",
            "start",
            "count"
        }
    .end annotation

    .line 3
    iget-object v0, p0, LJAVARuntime/NativeShortBuffer;->buffer:Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;

    invoke-virtual {v0, p1, p2, p3}, Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;->n0([SII)V

    return-void
.end method

.method public put(LJAVARuntime/NativeShortBuffer;)V
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
    iget-object v0, p0, LJAVARuntime/NativeShortBuffer;->buffer:Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;

    iget-object p1, p1, LJAVARuntime/NativeShortBuffer;->buffer:Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;->q0(Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;)V

    return-void
.end method

.method public put(LJAVARuntime/NativeShortBuffer;I)V
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
    iget-object v0, p0, LJAVARuntime/NativeShortBuffer;->buffer:Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;

    iget-object p1, p1, LJAVARuntime/NativeShortBuffer;->buffer:Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;

    invoke-virtual {v0, p1, p2}, Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;->r0(Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;I)V

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
    iget-object v0, p0, LJAVARuntime/NativeShortBuffer;->buffer:Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;

    iget-object p1, p1, LJAVARuntime/Vector2;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;->o0(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;)V

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
    iget-object v0, p0, LJAVARuntime/NativeShortBuffer;->buffer:Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;

    iget-object p1, p1, LJAVARuntime/Vector3;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;->p0(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V

    return-void
.end method

.method public put(S)V
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
    iget-object v0, p0, LJAVARuntime/NativeShortBuffer;->buffer:Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;->t0(S)V

    return-void
.end method

.method public put(SS)V
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
    iget-object v0, p0, LJAVARuntime/NativeShortBuffer;->buffer:Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;

    invoke-virtual {v0, p1, p2}, Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;->u0(SS)V

    return-void
.end method

.method public put(SSS)V
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
    iget-object v0, p0, LJAVARuntime/NativeShortBuffer;->buffer:Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;

    invoke-virtual {v0, p1, p2, p3}, Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;->v0(SSS)V

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

    .line 2
    iget-object v0, p0, LJAVARuntime/NativeShortBuffer;->buffer:Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;->w0([S)V

    return-void
.end method

.method public put([SII)V
    .locals 1
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "values",
            "start",
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
            "values",
            "start",
            "count"
        }
    .end annotation

    .line 3
    iget-object v0, p0, LJAVARuntime/NativeShortBuffer;->buffer:Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;

    invoke-virtual {v0, p1, p2, p3}, Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;->x0([SII)V

    return-void
.end method

.method public putFill(SI)V
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

    iget-object v0, p0, LJAVARuntime/NativeShortBuffer;->buffer:Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;

    invoke-virtual {v0, p1, p2}, Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;->y0(SI)V

    return-void
.end method

.method public saveToFile(Ljava/io/File;)V
    .locals 1
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Saves this NativeShortBuffer to a file."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Salva este NativeShortBuffer em um arquivo."
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

    iget-object v0, p0, LJAVARuntime/NativeShortBuffer;->buffer:Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;->A0(Ljava/io/File;)V

    return-void
.end method

.method public set(ILJAVARuntime/NativeShortBuffer;)V
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
    iget-object v0, p0, LJAVARuntime/NativeShortBuffer;->buffer:Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;

    iget-object p2, p2, LJAVARuntime/NativeShortBuffer;->buffer:Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;

    invoke-virtual {v0, p1, p2}, Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;->D0(ILcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;)V

    return-void
.end method

.method public set(ILJAVARuntime/NativeShortBuffer;II)V
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
    iget-object v0, p0, LJAVARuntime/NativeShortBuffer;->buffer:Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;

    iget-object p2, p2, LJAVARuntime/NativeShortBuffer;->buffer:Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;->E0(ILcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;II)V

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
    iget-object v0, p0, LJAVARuntime/NativeShortBuffer;->buffer:Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;

    iget-object p2, p2, LJAVARuntime/Vector3;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v0, p1, p2}, Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;->B0(ILcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V

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
    iget-object v0, p0, LJAVARuntime/NativeShortBuffer;->buffer:Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;

    iget-object p2, p2, LJAVARuntime/Vector4;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;

    invoke-virtual {v0, p1, p2}, Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;->C0(ILcom/itsmagic/engine/Engines/Engine/Vector/Vector4;)V

    return-void
.end method

.method public set(IS)V
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
    iget-object v0, p0, LJAVARuntime/NativeShortBuffer;->buffer:Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;

    invoke-virtual {v0, p1, p2}, Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;->G0(IS)V

    return-void
.end method

.method public set(ISS)V
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
    iget-object v0, p0, LJAVARuntime/NativeShortBuffer;->buffer:Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;

    invoke-virtual {v0, p1, p2, p3}, Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;->H0(ISS)V

    return-void
.end method

.method public set(ISSS)V
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
    iget-object v0, p0, LJAVARuntime/NativeShortBuffer;->buffer:Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;->I0(ISSS)V

    return-void
.end method

.method public set(ISSSS)V
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
    iget-object v0, p0, LJAVARuntime/NativeShortBuffer;->buffer:Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;->J0(ISSSS)V

    return-void
.end method

.method public set(I[S)V
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

    .line 9
    iget-object v0, p0, LJAVARuntime/NativeShortBuffer;->buffer:Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;

    invoke-virtual {v0, p1, p2}, Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;->K0(I[S)V

    return-void
.end method

.method public set(I[SII)V
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

    .line 10
    iget-object v0, p0, LJAVARuntime/NativeShortBuffer;->buffer:Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;->L0(I[SII)V

    return-void
.end method

.method public set([S)V
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

    .line 7
    iget-object v0, p0, LJAVARuntime/NativeShortBuffer;->buffer:Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;->M0([S)V

    return-void
.end method

.method public set([SI)V
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

    .line 8
    iget-object v0, p0, LJAVARuntime/NativeShortBuffer;->buffer:Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;

    invoke-virtual {v0, p1, p2}, Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;->N0([SI)V

    return-void
.end method

.method public setAttribute(III)Z
    .locals 1
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "location",
            "size",
            "stride"
        }
    .end annotation

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

    iget-object v0, p0, LJAVARuntime/NativeShortBuffer;->buffer:Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;

    invoke-virtual {v0, p1, p2, p3}, Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;->O0(III)Z

    move-result p1

    return p1
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

    iget-object v0, p0, LJAVARuntime/NativeShortBuffer;->buffer:Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;

    mul-int/lit8 p1, p1, 0x3

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;->h0(I)V

    return-void
.end method

.method public toArray()[S
    .locals 1

    iget-object v0, p0, LJAVARuntime/NativeShortBuffer;->buffer:Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;->S0()[S

    move-result-object v0

    return-object v0
.end method

.method public validate()Z
    .locals 1

    iget-object v0, p0, LJAVARuntime/NativeShortBuffer;->buffer:Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeShortBuffer;->U0()Z

    move-result v0

    return v0
.end method
