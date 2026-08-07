.class public Lcc/k;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

.field public b:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

.field public c:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

.field public d:Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;

.field public e:Ljava/nio/ShortBuffer;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "verticesBuffer",
            "uvsBuffer",
            "normalsBuffer",
            "trianglesBuffer"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcc/k;->a:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    iput-object p2, p0, Lcc/k;->b:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    iput-object p3, p0, Lcc/k;->c:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    iput-object p4, p0, Lcc/k;->d:Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;

    invoke-virtual {p0}, Lcc/k;->a()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 10

    invoke-static {}, Ljc/a;->f()Lcom/google/android/filament/Engine;

    invoke-virtual {p0}, Lcc/k;->c()I

    move-result v0

    iget-object v1, p0, Lcc/k;->d:Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->h()I

    move-result v1

    div-int/lit8 v1, v1, 0x3

    if-eqz v0, :cond_a

    if-nez v1, :cond_0

    goto/16 :goto_5

    :cond_0
    iget-object v2, p0, Lcc/k;->b:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    const/4 v3, 0x0

    if-nez v2, :cond_1

    :try_start_0
    new-instance v4, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    mul-int/lit8 v5, v0, 0x2

    invoke-direct {v4, v5}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;-><init>(I)V

    iput-object v4, p0, Lcc/k;->b:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v0, :cond_4

    :try_start_1
    iget-object v6, p0, Lcc/k;->a:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    mul-int/lit8 v7, v5, 0x3

    invoke-virtual {v6, v7}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->X(I)F

    move-result v6

    iget-object v8, p0, Lcc/k;->a:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    add-int/lit8 v7, v7, 0x2

    invoke-virtual {v8, v7}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->X(I)F

    move-result v7

    iget-object v8, p0, Lcc/k;->b:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    mul-int/lit8 v9, v5, 0x2

    invoke-virtual {v8, v9, v6}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->z0(IF)V

    iget-object v6, p0, Lcc/k;->b:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    add-int/lit8 v9, v9, 0x1

    invoke-virtual {v6, v9, v7}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->z0(IF)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_4

    :catchall_1
    move-exception v0

    move-object v4, v3

    goto/16 :goto_4

    :cond_1
    :try_start_2
    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->h()I

    move-result v4

    mul-int/lit8 v5, v0, 0x2

    if-ge v4, v5, :cond_3

    new-instance v4, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    invoke-direct {v4, v5}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;-><init>(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    iget-object v5, p0, Lcc/k;->b:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    invoke-virtual {v4, v5}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->q0(Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;)V

    iget-object v5, p0, Lcc/k;->b:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    invoke-virtual {v5}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->h()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    :goto_1
    if-ge v5, v0, :cond_2

    iget-object v6, p0, Lcc/k;->a:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    mul-int/lit8 v7, v5, 0x3

    invoke-virtual {v6, v7}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->X(I)F

    move-result v6

    iget-object v8, p0, Lcc/k;->a:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    add-int/lit8 v7, v7, 0x2

    invoke-virtual {v8, v7}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->X(I)F

    move-result v7

    mul-int/lit8 v8, v5, 0x2

    invoke-virtual {v4, v8, v6}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->z0(IF)V

    add-int/lit8 v8, v8, 0x1

    invoke-virtual {v4, v8, v7}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->z0(IF)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_2
    iput-object v4, p0, Lcc/k;->b:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    goto :goto_2

    :cond_3
    move-object v4, v3

    :cond_4
    :goto_2
    iget-object v5, p0, Lcc/k;->a:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    invoke-virtual {v5}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->P0()Ljava/nio/FloatBuffer;

    move-result-object v5

    iget-object v6, p0, Lcc/k;->b:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    invoke-virtual {v6}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->P0()Ljava/nio/FloatBuffer;

    move-result-object v6

    iget-object v7, p0, Lcc/k;->c:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    if-eqz v7, :cond_5

    invoke-virtual {v7}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->h()I

    move-result v7

    iget-object v8, p0, Lcc/k;->a:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    invoke-virtual {v8}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->h()I

    move-result v8

    if-lt v7, v8, :cond_5

    iget-object v7, p0, Lcc/k;->c:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    invoke-virtual {v7}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->P0()Ljava/nio/FloatBuffer;

    move-result-object v7

    goto :goto_3

    :cond_5
    move-object v7, v3

    :goto_3
    iget-object v8, p0, Lcc/k;->d:Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;

    invoke-virtual {v8}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->t0()Ljava/nio/IntBuffer;

    move-result-object v8

    new-instance v9, Lcom/google/android/filament/SurfaceOrientation$a;

    invoke-direct {v9}, Lcom/google/android/filament/SurfaceOrientation$a;-><init>()V

    invoke-virtual {v9, v0}, Lcom/google/android/filament/SurfaceOrientation$a;->i(I)Lcom/google/android/filament/SurfaceOrientation$a;

    move-result-object v9

    invoke-virtual {v9, v1}, Lcom/google/android/filament/SurfaceOrientation$a;->e(I)Lcom/google/android/filament/SurfaceOrientation$a;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/google/android/filament/SurfaceOrientation$a;->c(Ljava/nio/Buffer;)Lcom/google/android/filament/SurfaceOrientation$a;

    move-result-object v1

    invoke-virtual {v1, v6}, Lcom/google/android/filament/SurfaceOrientation$a;->h(Ljava/nio/Buffer;)Lcom/google/android/filament/SurfaceOrientation$a;

    move-result-object v1

    invoke-virtual {v1, v8}, Lcom/google/android/filament/SurfaceOrientation$a;->g(Ljava/nio/Buffer;)Lcom/google/android/filament/SurfaceOrientation$a;

    move-result-object v1

    if-eqz v7, :cond_6

    invoke-virtual {v1, v7}, Lcom/google/android/filament/SurfaceOrientation$a;->b(Ljava/nio/Buffer;)Lcom/google/android/filament/SurfaceOrientation$a;

    :cond_6
    invoke-virtual {v1}, Lcom/google/android/filament/SurfaceOrientation$a;->a()Lcom/google/android/filament/SurfaceOrientation;

    move-result-object v3

    mul-int/lit8 v0, v0, 0x8

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v0

    iput-object v0, p0, Lcc/k;->e:Ljava/nio/ShortBuffer;

    invoke-virtual {v3, v0}, Lcom/google/android/filament/SurfaceOrientation;->p(Ljava/nio/Buffer;)V

    iget-object v0, p0, Lcc/k;->e:Ljava/nio/ShortBuffer;

    invoke-virtual {v0}, Ljava/nio/ShortBuffer;->rewind()Ljava/nio/Buffer;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-virtual {v3}, Lcom/google/android/filament/SurfaceOrientation;->l()V

    if-eqz v4, :cond_7

    iput-object v2, p0, Lcc/k;->b:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    invoke-virtual {v4}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->destroyImmediate()V

    :cond_7
    return-void

    :goto_4
    if-eqz v3, :cond_8

    invoke-virtual {v3}, Lcom/google/android/filament/SurfaceOrientation;->l()V

    :cond_8
    if-eqz v4, :cond_9

    iput-object v2, p0, Lcc/k;->b:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    invoke-virtual {v4}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->destroyImmediate()V

    :cond_9
    throw v0

    :cond_a
    :goto_5
    return-void
.end method

.method public b()Ljava/nio/ShortBuffer;
    .locals 1

    iget-object v0, p0, Lcc/k;->e:Ljava/nio/ShortBuffer;

    return-object v0
.end method

.method public final c()I
    .locals 1

    iget-object v0, p0, Lcc/k;->a:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->h()I

    move-result v0

    div-int/lit8 v0, v0, 0x3

    return v0
.end method
