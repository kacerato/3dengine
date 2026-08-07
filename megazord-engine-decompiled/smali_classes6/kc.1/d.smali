.class public Lkc/d;
.super Lcom/itsmagic/engine/Engines/Engine/GC/SGCListenerObject;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static final e:Lea/b;


# instance fields
.field public final b:Lcom/google/android/filament/IndexBuffer;

.field public c:Z

.field public d:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lkc/d$a;

    invoke-direct {v0}, Lkc/d$a;-><init>()V

    sput-object v0, Lkc/d;->e:Lea/b;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/filament/IndexBuffer$a;)V
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

    iput-object v0, p0, Lkc/d;->d:Ljava/lang/Runnable;

    invoke-static {}, Lc9/a;->F()V

    invoke-static {}, Ljc/a;->d()V

    invoke-static {}, Ljc/a;->f()Lcom/google/android/filament/Engine;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/filament/IndexBuffer$a;->b(Lcom/google/android/filament/Engine;)Lcom/google/android/filament/IndexBuffer;

    move-result-object p1

    iput-object p1, p0, Lkc/d;->b:Lcom/google/android/filament/IndexBuffer;

    invoke-virtual {p1}, Lcom/google/android/filament/IndexBuffer;->h()J

    move-result-wide v0

    sget-object p1, Lkc/d;->e:Lea/b;

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, p1, v2}, Lcom/itsmagic/engine/Engines/Engine/GC/SGC;->put(Ljava/lang/Object;JLea/b;Z)V

    return-void
.end method


# virtual methods
.method public destroyImmediate()V
    .locals 2

    invoke-static {}, Ljc/a;->d()V

    invoke-static {}, Lc9/a;->F()V

    iget-boolean v0, p0, Lkc/d;->c:Z

    if-nez v0, :cond_1

    invoke-static {p0}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;->isUsed(Lkc/d;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lkc/d;->c:Z

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

.method public r()Lcom/google/android/filament/IndexBuffer;
    .locals 1

    iget-object v0, p0, Lkc/d;->b:Lcom/google/android/filament/IndexBuffer;

    return-object v0
.end method

.method public run()V
    .locals 1

    iget-object v0, p0, Lkc/d;->d:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    const/4 v0, 0x0

    iput-object v0, p0, Lkc/d;->d:Ljava/lang/Runnable;

    :cond_0
    return-void
.end method

.method public s(Ljava/nio/ByteBuffer;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "posUv"
        }
    .end annotation

    invoke-static {}, Ljc/a;->d()V

    invoke-static {}, Lc9/a;->F()V

    iget-object v0, p0, Lkc/d;->b:Lcom/google/android/filament/IndexBuffer;

    invoke-static {}, Ljc/a;->f()Lcom/google/android/filament/Engine;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/google/android/filament/IndexBuffer;->i(Lcom/google/android/filament/Engine;Ljava/nio/Buffer;)V

    return-void
.end method

.method public u(Ljava/nio/FloatBuffer;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "posUv"
        }
    .end annotation

    invoke-static {}, Ljc/a;->d()V

    invoke-static {}, Lc9/a;->F()V

    iget-object v0, p0, Lkc/d;->b:Lcom/google/android/filament/IndexBuffer;

    invoke-static {}, Ljc/a;->f()Lcom/google/android/filament/Engine;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/google/android/filament/IndexBuffer;->i(Lcom/google/android/filament/Engine;Ljava/nio/Buffer;)V

    return-void
.end method

.method public v(Ljava/nio/FloatBuffer;IILjava/lang/Runnable;)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "posUv",
            "destOffsetInBytes",
            "countInBytes",
            "post"
        }
    .end annotation

    invoke-static {}, Ljc/a;->d()V

    invoke-static {}, Lc9/a;->F()V

    iget-object v0, p0, Lkc/d;->d:Ljava/lang/Runnable;

    if-nez v0, :cond_0

    iput-object p4, p0, Lkc/d;->d:Ljava/lang/Runnable;

    iget-object v1, p0, Lkc/d;->b:Lcom/google/android/filament/IndexBuffer;

    invoke-static {}, Ljc/a;->f()Lcom/google/android/filament/Engine;

    move-result-object v2

    invoke-static {}, Ljc/d;->a()Landroid/os/Handler;

    move-result-object v6

    move-object v3, p1

    move v4, p2

    move v5, p3

    move-object v7, p0

    invoke-virtual/range {v1 .. v7}, Lcom/google/android/filament/IndexBuffer;->k(Lcom/google/android/filament/Engine;Ljava/nio/Buffer;IILjava/lang/Object;Ljava/lang/Runnable;)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Double setBufferAt call, await callback"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public w(Ljava/nio/FloatBuffer;Ljava/lang/Runnable;)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "posUv",
            "post"
        }
    .end annotation

    invoke-static {}, Ljc/a;->d()V

    invoke-static {}, Lc9/a;->F()V

    iget-object v0, p0, Lkc/d;->d:Ljava/lang/Runnable;

    if-nez v0, :cond_0

    iput-object p2, p0, Lkc/d;->d:Ljava/lang/Runnable;

    iget-object v1, p0, Lkc/d;->b:Lcom/google/android/filament/IndexBuffer;

    invoke-static {}, Ljc/a;->f()Lcom/google/android/filament/Engine;

    move-result-object v2

    const/4 v5, 0x0

    invoke-static {}, Ljc/d;->a()Landroid/os/Handler;

    move-result-object v6

    const/4 v4, 0x0

    move-object v3, p1

    move-object v7, p0

    invoke-virtual/range {v1 .. v7}, Lcom/google/android/filament/IndexBuffer;->k(Lcom/google/android/filament/Engine;Ljava/nio/Buffer;IILjava/lang/Object;Ljava/lang/Runnable;)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Double setBufferAt call, await callback"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public x(Ljava/nio/ShortBuffer;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "posUv"
        }
    .end annotation

    invoke-static {}, Ljc/a;->d()V

    invoke-static {}, Lc9/a;->F()V

    iget-object v0, p0, Lkc/d;->b:Lcom/google/android/filament/IndexBuffer;

    invoke-static {}, Ljc/a;->f()Lcom/google/android/filament/Engine;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/google/android/filament/IndexBuffer;->i(Lcom/google/android/filament/Engine;Ljava/nio/Buffer;)V

    return-void
.end method
