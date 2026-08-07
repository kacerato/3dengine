.class public Lma/g$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lma/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public final a:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentView;

.field public final b:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene;

.field public final c:Lkc/c;

.field public final d:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;

.field public final e:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentCamera;

.field public final f:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;

.field public final g:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentVertexBuffer;

.field public final h:Lkc/d;

.field public i:Z


# direct methods
.method public constructor <init>()V
    .locals 20

    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lma/g;->a()Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterialTemplate;

    move-result-object v1

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterialTemplate;->r()Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;

    move-result-object v4

    iput-object v4, v0, Lma/g$a;->f:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;

    invoke-virtual/range {p0 .. p0}, Lma/g$a;->c()Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentVertexBuffer;

    move-result-object v6

    iput-object v6, v0, Lma/g$a;->g:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentVertexBuffer;

    invoke-virtual/range {p0 .. p0}, Lma/g$a;->b()Lkc/d;

    move-result-object v7

    iput-object v7, v0, Lma/g$a;->h:Lkc/d;

    new-instance v1, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene;

    invoke-direct {v1}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene;-><init>()V

    iput-object v1, v0, Lma/g$a;->b:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene;

    new-instance v10, Lkc/c;

    invoke-direct {v10}, Lkc/c;-><init>()V

    iput-object v10, v0, Lma/g$a;->c:Lkc/c;

    new-instance v11, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;

    new-instance v2, Lcom/google/android/filament/RenderableManager$a;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Lcom/google/android/filament/RenderableManager$a;-><init>(I)V

    const/4 v12, 0x0

    invoke-virtual {v2, v12}, Lcom/google/android/filament/RenderableManager$a;->f(Z)Lcom/google/android/filament/RenderableManager$a;

    move-result-object v3

    sget-object v8, Lcom/google/android/filament/RenderableManager$b;->TRIANGLES:Lcom/google/android/filament/RenderableManager$b;

    new-instance v9, Lcom/google/android/filament/Box;

    const/high16 v18, 0x3f800000    # 1.0f

    const/high16 v19, 0x3f800000    # 1.0f

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/high16 v17, 0x3f800000    # 1.0f

    move-object v13, v9

    invoke-direct/range {v13 .. v19}, Lcom/google/android/filament/Box;-><init>(FFFFFF)V

    move-object v2, v11

    move-object v5, v10

    invoke-direct/range {v2 .. v9}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;-><init>(Lcom/google/android/filament/RenderableManager$a;Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;Lkc/c;Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentVertexBuffer;Lkc/d;Lcom/google/android/filament/RenderableManager$b;Lcom/google/android/filament/Box;)V

    iput-object v11, v0, Lma/g$a;->d:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;

    invoke-virtual {v1, v10}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene;->w(Lkc/c;)V

    new-instance v2, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentView;

    invoke-direct {v2}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentView;-><init>()V

    iput-object v2, v0, Lma/g$a;->a:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentView;

    invoke-virtual {v2, v1}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentView;->O(Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene;)V

    invoke-virtual {v2, v12}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentView;->L(Z)V

    new-instance v10, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentCamera;

    invoke-direct {v10}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentCamera;-><init>()V

    iput-object v10, v0, Lma/g$a;->e:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentCamera;

    const/4 v8, 0x0

    const/high16 v9, 0x3f800000    # 1.0f

    const/high16 v4, -0x40800000    # -1.0f

    const/high16 v5, 0x3f800000    # 1.0f

    const/high16 v6, -0x40800000    # -1.0f

    const/high16 v7, 0x3f800000    # 1.0f

    move-object v3, v10

    invoke-virtual/range {v3 .. v9}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentCamera;->y(FFFFFF)V

    invoke-virtual {v2, v10}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentView;->J(Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentCamera;)V

    invoke-virtual {v10}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentCamera;->s()Lkc/c;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene;->w(Lkc/c;)V

    return-void
.end method

.method public static synthetic a(Lma/g$a;)Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;
    .locals 0

    iget-object p0, p0, Lma/g$a;->f:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;

    return-object p0
.end method


# virtual methods
.method public final b()Lkc/d;
    .locals 4

    const/4 v0, 0x6

    new-array v1, v0, [S

    fill-array-data v1, :array_0

    const/16 v2, 0xc

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/nio/ShortBuffer;->put([S)Ljava/nio/ShortBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ShortBuffer;->flip()Ljava/nio/Buffer;

    new-instance v1, Lkc/d;

    new-instance v3, Lcom/google/android/filament/IndexBuffer$a;

    invoke-direct {v3}, Lcom/google/android/filament/IndexBuffer$a;-><init>()V

    invoke-virtual {v3, v0}, Lcom/google/android/filament/IndexBuffer$a;->c(I)Lcom/google/android/filament/IndexBuffer$a;

    move-result-object v0

    sget-object v3, Lcom/google/android/filament/IndexBuffer$a$b;->USHORT:Lcom/google/android/filament/IndexBuffer$a$b;

    invoke-virtual {v0, v3}, Lcom/google/android/filament/IndexBuffer$a;->a(Lcom/google/android/filament/IndexBuffer$a$b;)Lcom/google/android/filament/IndexBuffer$a;

    move-result-object v0

    invoke-direct {v1, v0}, Lkc/d;-><init>(Lcom/google/android/filament/IndexBuffer$a;)V

    invoke-virtual {v1, v2}, Lkc/d;->s(Ljava/nio/ByteBuffer;)V

    return-object v1

    nop

    :array_0
    .array-data 2
        0x0s
        0x1s
        0x2s
        0x0s
        0x2s
        0x3s
    .end array-data
.end method

.method public final c()Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentVertexBuffer;
    .locals 12

    const/16 v0, 0x10

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    const/16 v1, 0x40

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/FloatBuffer;->flip()Ljava/nio/Buffer;

    new-instance v0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentVertexBuffer;

    new-instance v2, Lcom/google/android/filament/VertexBuffer$b;

    invoke-direct {v2}, Lcom/google/android/filament/VertexBuffer$b;-><init>()V

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/google/android/filament/VertexBuffer$b;->h(I)Lcom/google/android/filament/VertexBuffer$b;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/google/android/filament/VertexBuffer$b;->c(I)Lcom/google/android/filament/VertexBuffer$b;

    move-result-object v4

    sget-object v5, Lcom/google/android/filament/VertexBuffer$c;->POSITION:Lcom/google/android/filament/VertexBuffer$c;

    sget-object v2, Lcom/google/android/filament/VertexBuffer$a;->FLOAT2:Lcom/google/android/filament/VertexBuffer$a;

    const/4 v8, 0x0

    const/16 v9, 0x10

    const/4 v6, 0x0

    move-object v7, v2

    invoke-virtual/range {v4 .. v9}, Lcom/google/android/filament/VertexBuffer$b;->b(Lcom/google/android/filament/VertexBuffer$c;ILcom/google/android/filament/VertexBuffer$a;II)Lcom/google/android/filament/VertexBuffer$b;

    move-result-object v6

    sget-object v7, Lcom/google/android/filament/VertexBuffer$c;->UV0:Lcom/google/android/filament/VertexBuffer$c;

    const/16 v10, 0x8

    const/16 v11, 0x10

    move-object v9, v2

    invoke-virtual/range {v6 .. v11}, Lcom/google/android/filament/VertexBuffer$b;->b(Lcom/google/android/filament/VertexBuffer$c;ILcom/google/android/filament/VertexBuffer$a;II)Lcom/google/android/filament/VertexBuffer$b;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentVertexBuffer;-><init>(Lcom/google/android/filament/VertexBuffer$b;)V

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentVertexBuffer;->s(ILjava/nio/ByteBuffer;)V

    return-object v0

    nop

    :array_0
    .array-data 4
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        0x0
        0x0
    .end array-data
.end method

.method public d()V
    .locals 2

    iget-boolean v0, p0, Lma/g$a;->i:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lma/g$a;->i:Z

    iget-object v0, p0, Lma/g$a;->f:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;->x()V

    iget-object v0, p0, Lma/g$a;->a:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentView;->J(Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentCamera;)V

    iget-object v0, p0, Lma/g$a;->a:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentView;

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentView;->O(Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene;)V

    iget-object v0, p0, Lma/g$a;->b:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene;

    iget-object v1, p0, Lma/g$a;->c:Lkc/c;

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene;->F(Lkc/c;)V

    iget-object v0, p0, Lma/g$a;->b:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene;

    iget-object v1, p0, Lma/g$a;->e:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentCamera;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentCamera;->s()Lkc/c;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene;->F(Lkc/c;)V

    iget-object v0, p0, Lma/g$a;->d:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;->destroyImmediate()V

    iget-object v0, p0, Lma/g$a;->f:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;->destroyImmediate()V

    iget-object v0, p0, Lma/g$a;->g:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentVertexBuffer;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentVertexBuffer;->destroyImmediate()V

    iget-object v0, p0, Lma/g$a;->h:Lkc/d;

    invoke-virtual {v0}, Lkc/d;->destroyImmediate()V

    iget-object v0, p0, Lma/g$a;->c:Lkc/c;

    invoke-virtual {v0}, Lkc/c;->destroyImmediate()V

    iget-object v0, p0, Lma/g$a;->e:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentCamera;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentCamera;->destroyImmediate()V

    iget-object v0, p0, Lma/g$a;->b:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene;->destroyImmediate()V

    iget-object v0, p0, Lma/g$a;->a:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentView;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentView;->destroyImmediate()V

    return-void
.end method

.method public e(Lmc/a;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dst"
        }
    .end annotation

    iget-object v0, p0, Lma/g$a;->a:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentView;

    invoke-virtual {p1}, Lmc/a;->i()I

    move-result v1

    invoke-virtual {p1}, Lmc/a;->h()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v1, v2}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentView;->P(IIII)V

    iget-object v0, p0, Lma/g$a;->a:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentView;

    invoke-virtual {p1, v0}, Lmc/a;->a(Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentView;)V

    iget-object v0, p0, Lma/g$a;->a:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentView;

    invoke-static {v0}, Ljc/a;->o(Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentView;)V

    invoke-virtual {p1}, Lmc/a;->z()V

    return-void
.end method
