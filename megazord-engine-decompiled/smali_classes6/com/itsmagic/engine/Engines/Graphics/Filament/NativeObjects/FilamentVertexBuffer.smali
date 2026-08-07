.class public Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentVertexBuffer;
.super Lcom/itsmagic/engine/Engines/Engine/GC/SGCListenerObject;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static final d:Lea/b;


# instance fields
.field public b:Z

.field public c:Ljava/lang/Runnable;

.field private final vertexBuffer:Lcom/google/android/filament/VertexBuffer;
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentVertexBuffer$a;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentVertexBuffer$a;-><init>()V

    sput-object v0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentVertexBuffer;->d:Lea/b;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/filament/VertexBuffer$b;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builder"
        }
    .end annotation

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/GC/SGCListenerObject;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentVertexBuffer;->c:Ljava/lang/Runnable;

    invoke-static {}, Lc9/a;->F()V

    invoke-static {}, Ljc/a;->d()V

    invoke-static {}, Ljc/a;->f()Lcom/google/android/filament/Engine;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/filament/VertexBuffer$b;->d(Lcom/google/android/filament/Engine;)Lcom/google/android/filament/VertexBuffer;

    move-result-object p1

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentVertexBuffer;->vertexBuffer:Lcom/google/android/filament/VertexBuffer;

    invoke-virtual {p1}, Lcom/google/android/filament/VertexBuffer;->j()J

    move-result-wide v0

    sget-object p1, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentVertexBuffer;->d:Lea/b;

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, p1, v2}, Lcom/itsmagic/engine/Engines/Engine/GC/SGC;->put(Ljava/lang/Object;JLea/b;Z)V

    return-void
.end method


# virtual methods
.method public destroyImmediate()V
    .locals 2

    invoke-static {}, Ljc/a;->d()V

    invoke-static {}, Lc9/a;->F()V

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentVertexBuffer;->b:Z

    if-nez v0, :cond_1

    invoke-static {p0}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;->isUsed(Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentVertexBuffer;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentVertexBuffer;->b:Z

    invoke-static {p0}, Lcom/itsmagic/engine/Engines/Engine/GC/SGC;->destroyImmediate(Ljava/lang/Object;)V

    return-void

    :cond_0
    new-instance v0, Lcom/itsmagic/engine/Engines/Graphics/Filament/Exceptions/FilamentContractViolationError;

    const-string v1, "Stills in use"

    invoke-direct {v0, v1}, Lcom/itsmagic/engine/Engines/Graphics/Filament/Exceptions/FilamentContractViolationError;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public r()Lcom/google/android/filament/VertexBuffer;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentVertexBuffer;->vertexBuffer:Lcom/google/android/filament/VertexBuffer;

    return-object v0
.end method

.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentVertexBuffer;->c:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentVertexBuffer;->c:Ljava/lang/Runnable;

    :cond_0
    return-void
.end method

.method public s(ILjava/nio/ByteBuffer;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "i",
            "value"
        }
    .end annotation

    invoke-static {}, Ljc/a;->d()V

    invoke-static {}, Lc9/a;->F()V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentVertexBuffer;->vertexBuffer:Lcom/google/android/filament/VertexBuffer;

    invoke-static {}, Ljc/a;->f()Lcom/google/android/filament/Engine;

    move-result-object v1

    invoke-virtual {v0, v1, p1, p2}, Lcom/google/android/filament/VertexBuffer;->l(Lcom/google/android/filament/Engine;ILjava/nio/Buffer;)V

    return-void
.end method

.method public u(ILjava/nio/ByteBuffer;IILjava/lang/Runnable;)V
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "i",
            "value",
            "destOffsetInBytes",
            "countInBytes",
            "post"
        }
    .end annotation

    invoke-static {}, Ljc/a;->d()V

    invoke-static {}, Lc9/a;->F()V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentVertexBuffer;->c:Ljava/lang/Runnable;

    if-nez v0, :cond_0

    iput-object p5, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentVertexBuffer;->c:Ljava/lang/Runnable;

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentVertexBuffer;->vertexBuffer:Lcom/google/android/filament/VertexBuffer;

    invoke-static {}, Ljc/a;->f()Lcom/google/android/filament/Engine;

    move-result-object v2

    invoke-static {}, Ljc/d;->a()Landroid/os/Handler;

    move-result-object v7

    move v3, p1

    move-object v4, p2

    move v5, p3

    move v6, p4

    move-object v8, p0

    invoke-virtual/range {v1 .. v8}, Lcom/google/android/filament/VertexBuffer;->n(Lcom/google/android/filament/Engine;ILjava/nio/Buffer;IILjava/lang/Object;Ljava/lang/Runnable;)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Double setBufferAt call, await callback"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public v(ILjava/nio/ByteBuffer;Ljava/lang/Runnable;)V
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "i",
            "value",
            "post"
        }
    .end annotation

    invoke-static {}, Ljc/a;->d()V

    invoke-static {}, Lc9/a;->F()V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentVertexBuffer;->c:Ljava/lang/Runnable;

    if-nez v0, :cond_0

    iput-object p3, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentVertexBuffer;->c:Ljava/lang/Runnable;

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentVertexBuffer;->vertexBuffer:Lcom/google/android/filament/VertexBuffer;

    invoke-static {}, Ljc/a;->f()Lcom/google/android/filament/Engine;

    move-result-object v2

    const/4 v6, 0x0

    invoke-static {}, Ljc/d;->a()Landroid/os/Handler;

    move-result-object v7

    const/4 v5, 0x0

    move v3, p1

    move-object v4, p2

    move-object v8, p0

    invoke-virtual/range {v1 .. v8}, Lcom/google/android/filament/VertexBuffer;->n(Lcom/google/android/filament/Engine;ILjava/nio/Buffer;IILjava/lang/Object;Ljava/lang/Runnable;)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Double setBufferAt call, await callback"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public w(ILjava/nio/FloatBuffer;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "i",
            "value"
        }
    .end annotation

    invoke-static {}, Ljc/a;->d()V

    invoke-static {}, Lc9/a;->F()V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentVertexBuffer;->vertexBuffer:Lcom/google/android/filament/VertexBuffer;

    invoke-static {}, Ljc/a;->f()Lcom/google/android/filament/Engine;

    move-result-object v1

    invoke-virtual {v0, v1, p1, p2}, Lcom/google/android/filament/VertexBuffer;->l(Lcom/google/android/filament/Engine;ILjava/nio/Buffer;)V

    return-void
.end method

.method public x(ILjava/nio/FloatBuffer;Ljava/lang/Runnable;)V
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "i",
            "value",
            "post"
        }
    .end annotation

    invoke-static {}, Ljc/a;->d()V

    invoke-static {}, Lc9/a;->F()V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentVertexBuffer;->c:Ljava/lang/Runnable;

    if-nez v0, :cond_0

    iput-object p3, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentVertexBuffer;->c:Ljava/lang/Runnable;

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentVertexBuffer;->vertexBuffer:Lcom/google/android/filament/VertexBuffer;

    invoke-static {}, Ljc/a;->f()Lcom/google/android/filament/Engine;

    move-result-object v2

    const/4 v6, 0x0

    invoke-static {}, Ljc/d;->a()Landroid/os/Handler;

    move-result-object v7

    const/4 v5, 0x0

    move v3, p1

    move-object v4, p2

    move-object v8, p0

    invoke-virtual/range {v1 .. v8}, Lcom/google/android/filament/VertexBuffer;->n(Lcom/google/android/filament/Engine;ILjava/nio/Buffer;IILjava/lang/Object;Ljava/lang/Runnable;)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Double setBufferAt call, await callback"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public y(ILjava/nio/ShortBuffer;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "i",
            "value"
        }
    .end annotation

    invoke-static {}, Ljc/a;->d()V

    invoke-static {}, Lc9/a;->F()V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentVertexBuffer;->vertexBuffer:Lcom/google/android/filament/VertexBuffer;

    invoke-static {}, Ljc/a;->f()Lcom/google/android/filament/Engine;

    move-result-object v1

    invoke-virtual {v0, v1, p1, p2}, Lcom/google/android/filament/VertexBuffer;->l(Lcom/google/android/filament/Engine;ILjava/nio/Buffer;)V

    return-void
.end method

.method public z(ILjava/nio/ShortBuffer;Ljava/lang/Runnable;)V
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "i",
            "value",
            "post"
        }
    .end annotation

    invoke-static {}, Ljc/a;->d()V

    invoke-static {}, Lc9/a;->F()V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentVertexBuffer;->c:Ljava/lang/Runnable;

    if-nez v0, :cond_0

    iput-object p3, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentVertexBuffer;->c:Ljava/lang/Runnable;

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentVertexBuffer;->vertexBuffer:Lcom/google/android/filament/VertexBuffer;

    invoke-static {}, Ljc/a;->f()Lcom/google/android/filament/Engine;

    move-result-object v2

    const/4 v6, 0x0

    invoke-static {}, Ljc/d;->a()Landroid/os/Handler;

    move-result-object v7

    const/4 v5, 0x0

    move v3, p1

    move-object v4, p2

    move-object v8, p0

    invoke-virtual/range {v1 .. v8}, Lcom/google/android/filament/VertexBuffer;->n(Lcom/google/android/filament/Engine;ILjava/nio/Buffer;IILjava/lang/Object;Ljava/lang/Runnable;)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Double setBufferAt call, await callback"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
