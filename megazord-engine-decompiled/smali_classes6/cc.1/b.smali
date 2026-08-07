.class public Lcc/b;
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
            "uvsBuffer",
            "normalsBuffer",
            "trianglesBuffer"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcc/b;->a:LSc/a;

    iput-object p2, p0, Lcc/b;->b:LSc/a;

    iput-object p3, p0, Lcc/b;->c:LSc/a;

    iput-object p4, p0, Lcc/b;->d:LSc/b;

    invoke-virtual {p0}, Lcc/b;->a()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 7

    invoke-static {}, Ljc/a;->f()Lcom/google/android/filament/Engine;

    invoke-virtual {p0}, Lcc/b;->c()I

    move-result v0

    iget-object v1, p0, Lcc/b;->d:LSc/b;

    invoke-virtual {v1}, LSc/b;->b()I

    move-result v1

    div-int/lit8 v1, v1, 0x3

    if-eqz v0, :cond_6

    if-nez v1, :cond_0

    goto/16 :goto_3

    :cond_0
    iget-object v2, p0, Lcc/b;->b:LSc/a;

    if-nez v2, :cond_1

    new-instance v2, LSc/a;

    mul-int/lit8 v3, v0, 0x2

    invoke-direct {v2, v3}, LSc/a;-><init>(I)V

    iput-object v2, p0, Lcc/b;->b:LSc/a;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_3

    iget-object v3, p0, Lcc/b;->a:LSc/a;

    mul-int/lit8 v4, v2, 0x3

    invoke-virtual {v3, v4}, LSc/a;->n(I)F

    move-result v3

    iget-object v5, p0, Lcc/b;->a:LSc/a;

    add-int/lit8 v4, v4, 0x2

    invoke-virtual {v5, v4}, LSc/a;->n(I)F

    move-result v4

    iget-object v5, p0, Lcc/b;->b:LSc/a;

    mul-int/lit8 v6, v2, 0x2

    invoke-virtual {v5, v6, v3}, LSc/a;->R(IF)V

    iget-object v3, p0, Lcc/b;->b:LSc/a;

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v3, v6, v4}, LSc/a;->R(IF)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, LSc/a;->a()I

    move-result v2

    mul-int/lit8 v3, v0, 0x2

    if-ge v2, v3, :cond_3

    new-instance v2, LSc/a;

    invoke-direct {v2, v3}, LSc/a;-><init>(I)V

    iget-object v3, p0, Lcc/b;->b:LSc/a;

    invoke-virtual {v2, v3}, LSc/a;->I(LSc/a;)V

    iget-object v3, p0, Lcc/b;->b:LSc/a;

    invoke-virtual {v3}, LSc/a;->a()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    :goto_1
    if-ge v3, v0, :cond_2

    iget-object v4, p0, Lcc/b;->a:LSc/a;

    mul-int/lit8 v5, v3, 0x3

    invoke-virtual {v4, v5}, LSc/a;->n(I)F

    move-result v4

    iget-object v6, p0, Lcc/b;->a:LSc/a;

    add-int/lit8 v5, v5, 0x2

    invoke-virtual {v6, v5}, LSc/a;->n(I)F

    move-result v5

    mul-int/lit8 v6, v3, 0x2

    invoke-virtual {v2, v6, v4}, LSc/a;->R(IF)V

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v2, v6, v5}, LSc/a;->R(IF)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    iput-object v2, p0, Lcc/b;->b:LSc/a;

    :cond_3
    iget-object v2, p0, Lcc/b;->a:LSc/a;

    invoke-virtual {v2}, LSc/a;->l0()Ljava/nio/FloatBuffer;

    move-result-object v2

    iget-object v3, p0, Lcc/b;->b:LSc/a;

    invoke-virtual {v3}, LSc/a;->l0()Ljava/nio/FloatBuffer;

    move-result-object v3

    iget-object v4, p0, Lcc/b;->c:LSc/a;

    if-eqz v4, :cond_4

    invoke-virtual {v4}, LSc/a;->a()I

    move-result v4

    iget-object v5, p0, Lcc/b;->a:LSc/a;

    invoke-virtual {v5}, LSc/a;->a()I

    move-result v5

    if-lt v4, v5, :cond_4

    iget-object v4, p0, Lcc/b;->c:LSc/a;

    invoke-virtual {v4}, LSc/a;->l0()Ljava/nio/FloatBuffer;

    move-result-object v4

    goto :goto_2

    :cond_4
    const/4 v4, 0x0

    :goto_2
    iget-object v5, p0, Lcc/b;->d:LSc/b;

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

    invoke-virtual {v1, v3}, Lcom/google/android/filament/SurfaceOrientation$a;->h(Ljava/nio/Buffer;)Lcom/google/android/filament/SurfaceOrientation$a;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/google/android/filament/SurfaceOrientation$a;->g(Ljava/nio/Buffer;)Lcom/google/android/filament/SurfaceOrientation$a;

    move-result-object v1

    if-eqz v4, :cond_5

    invoke-virtual {v1, v4}, Lcom/google/android/filament/SurfaceOrientation$a;->b(Ljava/nio/Buffer;)Lcom/google/android/filament/SurfaceOrientation$a;

    :cond_5
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

    iput-object v0, p0, Lcc/b;->e:Ljava/nio/ShortBuffer;

    invoke-virtual {v1, v0}, Lcom/google/android/filament/SurfaceOrientation;->p(Ljava/nio/Buffer;)V

    iget-object v0, p0, Lcc/b;->e:Ljava/nio/ShortBuffer;

    invoke-virtual {v0}, Ljava/nio/ShortBuffer;->rewind()Ljava/nio/Buffer;

    invoke-virtual {v1}, Lcom/google/android/filament/SurfaceOrientation;->l()V

    :cond_6
    :goto_3
    return-void
.end method

.method public b()Ljava/nio/ShortBuffer;
    .locals 1

    iget-object v0, p0, Lcc/b;->e:Ljava/nio/ShortBuffer;

    return-object v0
.end method

.method public final c()I
    .locals 1

    iget-object v0, p0, Lcc/b;->a:LSc/a;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-virtual {v0}, LSc/a;->a()I

    move-result v0

    div-int/lit8 v0, v0, 0x3

    return v0
.end method
