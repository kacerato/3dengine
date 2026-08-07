.class public LJAVARuntime/OHIntDataBase;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime LJAVARuntime/ClassCategory;
    cat = {
        "Buffers"
    }
.end annotation


# instance fields
.field public transient buffer:LOc/l;
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
    new-instance v0, LOc/l;

    invoke-direct {v0, p1}, LOc/l;-><init>(I)V

    iput-object v0, p0, LJAVARuntime/OHIntDataBase;->buffer:LOc/l;

    return-void
.end method

.method public constructor <init>(LOc/l;)V
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
    iput-object p1, p0, LJAVARuntime/OHIntDataBase;->buffer:LOc/l;

    .line 4
    invoke-virtual {p1, p0}, LOc/l;->q(LJAVARuntime/OHIntDataBase;)V

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


# virtual methods
.method public capacity()I
    .locals 1

    iget-object v0, p0, LJAVARuntime/OHIntDataBase;->buffer:LOc/l;

    invoke-virtual {v0}, LOc/l;->a()I

    move-result v0

    return v0
.end method

.method public decrementSize(I)V
    .locals 1
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "size"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "size"
        }
    .end annotation

    iget-object v0, p0, LJAVARuntime/OHIntDataBase;->buffer:LOc/l;

    invoke-virtual {v0, p1}, LOc/l;->c(I)V

    return-void
.end method

.method public get(I)I
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

    iget-object v0, p0, LJAVARuntime/OHIntDataBase;->buffer:LOc/l;

    invoke-virtual {v0, p1}, LOc/l;->e(I)I

    move-result p1

    return p1
.end method

.method public getBytes()[I
    .locals 1

    iget-object v0, p0, LJAVARuntime/OHIntDataBase;->buffer:LOc/l;

    invoke-virtual {v0}, LOc/l;->g()[I

    move-result-object v0

    return-object v0
.end method

.method public incrementSize(I)V
    .locals 1
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "size"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "size"
        }
    .end annotation

    iget-object v0, p0, LJAVARuntime/OHIntDataBase;->buffer:LOc/l;

    invoke-virtual {v0, p1}, LOc/l;->h(I)V

    return-void
.end method

.method public position(I)V
    .locals 1
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "position"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "position"
        }
    .end annotation

    iget-object v0, p0, LJAVARuntime/OHIntDataBase;->buffer:LOc/l;

    invoke-virtual {v0, p1}, LOc/l;->i(I)V

    return-void
.end method

.method public put(I)V
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

    .line 2
    iget-object v0, p0, LJAVARuntime/OHIntDataBase;->buffer:LOc/l;

    invoke-virtual {v0, p1}, LOc/l;->j(I)V

    return-void
.end method

.method public put([I)V
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
    iget-object v0, p0, LJAVARuntime/OHIntDataBase;->buffer:LOc/l;

    invoke-virtual {v0, p1}, LOc/l;->k([I)V

    return-void
.end method

.method public resize(I)V
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
            "newCapacity"
        }
    .end annotation

    .line 1
    iget-object v0, p0, LJAVARuntime/OHIntDataBase;->buffer:LOc/l;

    invoke-virtual {v0, p1}, LOc/l;->m(I)V

    return-void
.end method

.method public resize(IZ)V
    .locals 1
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "capacity",
            "copyData"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "newCapacity",
            "copyData"
        }
    .end annotation

    .line 2
    iget-object v0, p0, LJAVARuntime/OHIntDataBase;->buffer:LOc/l;

    invoke-virtual {v0, p1, p2}, LOc/l;->n(IZ)V

    return-void
.end method

.method public set(II)V
    .locals 1
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "position",
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "position",
            "value"
        }
    .end annotation

    iget-object v0, p0, LJAVARuntime/OHIntDataBase;->buffer:LOc/l;

    invoke-virtual {v0, p1, p2}, LOc/l;->o(II)V

    return-void
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, LJAVARuntime/OHIntDataBase;->buffer:LOc/l;

    invoke-virtual {v0}, LOc/l;->r()I

    move-result v0

    return v0
.end method
