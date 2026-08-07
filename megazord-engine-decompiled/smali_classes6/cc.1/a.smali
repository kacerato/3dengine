.class public Lcc/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:LSc/a;

.field public b:LSc/a;

.field public c:LSc/a;

.field public d:LSc/b;

.field public e:Ljava/nio/ShortBuffer;


# direct methods
.method public constructor <init>(LSc/a;LSc/a;LSc/a;LSc/b;)V
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
            "normalsBuffer",
            "tangentsBuffer",
            "trianglesBuffer"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcc/a;->a:LSc/a;

    iput-object p2, p0, Lcc/a;->b:LSc/a;

    iput-object p3, p0, Lcc/a;->c:LSc/a;

    iput-object p4, p0, Lcc/a;->d:LSc/b;

    invoke-virtual {p0}, Lcc/a;->a()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 7

    invoke-static {}, Ljc/a;->f()Lcom/google/android/filament/Engine;

    invoke-virtual {p0}, Lcc/a;->c()I

    move-result v0

    iget-object v1, p0, Lcc/a;->d:LSc/b;

    invoke-virtual {v1}, LSc/b;->b()I

    move-result v1

    div-int/lit8 v1, v1, 0x3

    if-eqz v0, :cond_1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcc/a;->a:LSc/a;

    invoke-virtual {v2}, LSc/a;->l0()Ljava/nio/FloatBuffer;

    move-result-object v2

    iget-object v3, p0, Lcc/a;->b:LSc/a;

    invoke-virtual {v3}, LSc/a;->l0()Ljava/nio/FloatBuffer;

    move-result-object v3

    iget-object v4, p0, Lcc/a;->c:LSc/a;

    invoke-virtual {v4}, LSc/a;->l0()Ljava/nio/FloatBuffer;

    move-result-object v4

    iget-object v5, p0, Lcc/a;->d:LSc/b;

    invoke-virtual {v5}, LSc/b;->Z()Ljava/nio/IntBuffer;

    move-result-object v5

    new-instance v6, Lcom/google/android/filament/SurfaceOrientation$a;

    invoke-direct {v6}, Lcom/google/android/filament/SurfaceOrientation$a;-><init>()V

    invoke-virtual {v6, v0}, Lcom/google/android/filament/SurfaceOrientation$a;->i(I)Lcom/google/android/filament/SurfaceOrientation$a;

    move-result-object v6

    invoke-virtual {v6, v1}, Lcom/google/android/filament/SurfaceOrientation$a;->e(I)Lcom/google/android/filament/SurfaceOrientation$a;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/google/android/filament/SurfaceOrientation$a;->c(Ljava/nio/Buffer;)Lcom/google/android/filament/SurfaceOrientation$a;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/google/android/filament/SurfaceOrientation$a;->b(Ljava/nio/Buffer;)Lcom/google/android/filament/SurfaceOrientation$a;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/google/android/filament/SurfaceOrientation$a;->d(Ljava/nio/Buffer;)Lcom/google/android/filament/SurfaceOrientation$a;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/google/android/filament/SurfaceOrientation$a;->g(Ljava/nio/Buffer;)Lcom/google/android/filament/SurfaceOrientation$a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/filament/SurfaceOrientation$a;->a()Lcom/google/android/filament/SurfaceOrientation;

    move-result-object v1

    mul-int/lit8 v0, v0, 0x8

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v0

    iput-object v0, p0, Lcc/a;->e:Ljava/nio/ShortBuffer;

    invoke-virtual {v1, v0}, Lcom/google/android/filament/SurfaceOrientation;->p(Ljava/nio/Buffer;)V

    iget-object v0, p0, Lcc/a;->e:Ljava/nio/ShortBuffer;

    invoke-virtual {v0}, Ljava/nio/ShortBuffer;->rewind()Ljava/nio/Buffer;

    invoke-virtual {v1}, Lcom/google/android/filament/SurfaceOrientation;->l()V

    :cond_1
    :goto_0
    return-void
.end method

.method public b()Ljava/nio/ShortBuffer;
    .locals 1

    iget-object v0, p0, Lcc/a;->e:Ljava/nio/ShortBuffer;

    return-object v0
.end method

.method public final c()I
    .locals 1

    iget-object v0, p0, Lcc/a;->a:LSc/a;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-virtual {v0}, LSc/a;->a()I

    move-result v0

    div-int/lit8 v0, v0, 0x3

    return v0
.end method
