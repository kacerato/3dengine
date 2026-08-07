.class public LJAVARuntime/OHFloatDataBase;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime LJAVARuntime/ClassCategory;
    cat = {
        "Buffers"
    }
.end annotation


# instance fields
.field public transient buffer:LOc/k;
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
    new-instance v0, LOc/k;

    invoke-direct {v0, p1}, LOc/k;-><init>(I)V

    iput-object v0, p0, LJAVARuntime/OHFloatDataBase;->buffer:LOc/k;

    return-void
.end method

.method public constructor <init>(LOc/k;)V
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
    iput-object p1, p0, LJAVARuntime/OHFloatDataBase;->buffer:LOc/k;

    .line 4
    invoke-virtual {p1, p0}, LOc/k;->r(LJAVARuntime/OHFloatDataBase;)V

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

    iget-object v0, p0, LJAVARuntime/OHFloatDataBase;->buffer:LOc/k;

    invoke-virtual {v0}, LOc/k;->a()I

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

    iget-object v0, p0, LJAVARuntime/OHFloatDataBase;->buffer:LOc/k;

    invoke-virtual {v0, p1}, LOc/k;->c(I)V

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
            "idx"
        }
    .end annotation

    iget-object v0, p0, LJAVARuntime/OHFloatDataBase;->buffer:LOc/k;

    invoke-virtual {v0, p1}, LOc/k;->f(I)F

    move-result p1

    return p1
.end method

.method public getBytes()[F
    .locals 1

    iget-object v0, p0, LJAVARuntime/OHFloatDataBase;->buffer:LOc/k;

    invoke-virtual {v0}, LOc/k;->h()[F

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

    iget-object v0, p0, LJAVARuntime/OHFloatDataBase;->buffer:LOc/k;

    invoke-virtual {v0, p1}, LOc/k;->i(I)V

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

    iget-object v0, p0, LJAVARuntime/OHFloatDataBase;->buffer:LOc/k;

    invoke-virtual {v0, p1}, LOc/k;->j(I)V

    return-void
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

    .line 2
    iget-object v0, p0, LJAVARuntime/OHFloatDataBase;->buffer:LOc/k;

    invoke-virtual {v0, p1}, LOc/k;->k(F)V

    return-void
.end method

.method public put([F)V
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
    iget-object v0, p0, LJAVARuntime/OHFloatDataBase;->buffer:LOc/k;

    invoke-virtual {v0, p1}, LOc/k;->l([F)V

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
    iget-object v0, p0, LJAVARuntime/OHFloatDataBase;->buffer:LOc/k;

    invoke-virtual {v0, p1}, LOc/k;->n(I)V

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
    iget-object v0, p0, LJAVARuntime/OHFloatDataBase;->buffer:LOc/k;

    invoke-virtual {v0, p1, p2}, LOc/k;->o(IZ)V

    return-void
.end method

.method public set(IF)V
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

    iget-object v0, p0, LJAVARuntime/OHFloatDataBase;->buffer:LOc/k;

    invoke-virtual {v0, p1, p2}, LOc/k;->p(IF)V

    return-void
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, LJAVARuntime/OHFloatDataBase;->buffer:LOc/k;

    invoke-virtual {v0}, LOc/k;->s()I

    move-result v0

    return v0
.end method
