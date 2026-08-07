.class public Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex$n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->b0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:I

.field public final synthetic c:I

.field public final synthetic d:I

.field public final synthetic e:Z

.field public final synthetic f:Ljava/nio/ByteBuffer;

.field public final synthetic g:Ljava/nio/ShortBuffer;

.field public final synthetic h:Ljava/nio/ByteBuffer;

.field public final synthetic i:Ljava/nio/FloatBuffer;

.field public final synthetic j:Z

.field public final synthetic k:I

.field public final synthetic l:Ljava/nio/ByteBuffer;

.field public final synthetic m:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;IIIZLjava/nio/ByteBuffer;Ljava/nio/ShortBuffer;Ljava/nio/ByteBuffer;Ljava/nio/FloatBuffer;ZILjava/nio/ByteBuffer;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$vertexCount",
            "val$bufferCount",
            "val$boundsBufferIndex",
            "val$hasSkin",
            "val$posUvBufferSnapshot",
            "val$quatS4BufferSnapshot",
            "val$skinBufferSnapshot",
            "val$boundsBufferSnapshot",
            "val$useUshort",
            "val$indexCount",
            "val$indexDataBufferSnapshot"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex$n;->m:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    iput p2, p0, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex$n;->b:I

    iput p3, p0, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex$n;->c:I

    iput p4, p0, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex$n;->d:I

    iput-boolean p5, p0, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex$n;->e:Z

    iput-object p6, p0, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex$n;->f:Ljava/nio/ByteBuffer;

    iput-object p7, p0, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex$n;->g:Ljava/nio/ShortBuffer;

    iput-object p8, p0, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex$n;->h:Ljava/nio/ByteBuffer;

    iput-object p9, p0, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex$n;->i:Ljava/nio/FloatBuffer;

    iput-boolean p10, p0, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex$n;->j:Z

    iput p11, p0, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex$n;->k:I

    iput-object p12, p0, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex$n;->l:Ljava/nio/ByteBuffer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 17

    move-object/from16 v1, p0

    :try_start_0
    new-instance v0, Lcom/google/android/filament/VertexBuffer$b;

    invoke-direct {v0}, Lcom/google/android/filament/VertexBuffer$b;-><init>()V

    iget v2, v1, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex$n;->b:I

    invoke-virtual {v0, v2}, Lcom/google/android/filament/VertexBuffer$b;->h(I)Lcom/google/android/filament/VertexBuffer$b;

    move-result-object v0

    iget v2, v1, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex$n;->c:I

    invoke-virtual {v0, v2}, Lcom/google/android/filament/VertexBuffer$b;->c(I)Lcom/google/android/filament/VertexBuffer$b;

    move-result-object v3

    sget-object v4, Lcom/google/android/filament/VertexBuffer$c;->POSITION:Lcom/google/android/filament/VertexBuffer$c;

    sget-object v0, Lcom/google/android/filament/VertexBuffer$a;->FLOAT3:Lcom/google/android/filament/VertexBuffer$a;

    const/4 v7, 0x0

    const/16 v8, 0x14

    const/4 v5, 0x0

    move-object v6, v0

    invoke-virtual/range {v3 .. v8}, Lcom/google/android/filament/VertexBuffer$b;->b(Lcom/google/android/filament/VertexBuffer$c;ILcom/google/android/filament/VertexBuffer$a;II)Lcom/google/android/filament/VertexBuffer$b;

    move-result-object v9

    sget-object v10, Lcom/google/android/filament/VertexBuffer$c;->UV0:Lcom/google/android/filament/VertexBuffer$c;

    sget-object v12, Lcom/google/android/filament/VertexBuffer$a;->FLOAT2:Lcom/google/android/filament/VertexBuffer$a;

    const/16 v13, 0xc

    const/16 v14, 0x14

    const/4 v11, 0x0

    invoke-virtual/range {v9 .. v14}, Lcom/google/android/filament/VertexBuffer$b;->b(Lcom/google/android/filament/VertexBuffer$c;ILcom/google/android/filament/VertexBuffer$a;II)Lcom/google/android/filament/VertexBuffer$b;

    move-result-object v2

    sget-object v8, Lcom/google/android/filament/VertexBuffer$c;->TANGENTS:Lcom/google/android/filament/VertexBuffer$c;

    sget-object v5, Lcom/google/android/filament/VertexBuffer$a;->SHORT4:Lcom/google/android/filament/VertexBuffer$a;

    const/4 v6, 0x0

    const/16 v7, 0x8

    const/4 v4, 0x1

    move-object v3, v8

    invoke-virtual/range {v2 .. v7}, Lcom/google/android/filament/VertexBuffer$b;->b(Lcom/google/android/filament/VertexBuffer$c;ILcom/google/android/filament/VertexBuffer$a;II)Lcom/google/android/filament/VertexBuffer$b;

    move-result-object v2

    invoke-virtual {v2, v8}, Lcom/google/android/filament/VertexBuffer$b;->f(Lcom/google/android/filament/VertexBuffer$c;)Lcom/google/android/filament/VertexBuffer$b;

    move-result-object v5

    sget-object v2, Lcom/itsmagic/engine/Engines/Engine/Vertex/a;->a:Lcom/itsmagic/engine/Engines/Engine/Vertex/a$a;

    iget-object v6, v2, Lcom/itsmagic/engine/Engines/Engine/Vertex/a$a;->b:Lcom/google/android/filament/VertexBuffer$c;

    iget v7, v1, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex$n;->d:I

    const/4 v9, 0x0

    const/16 v10, 0x18

    move-object v8, v0

    invoke-virtual/range {v5 .. v10}, Lcom/google/android/filament/VertexBuffer$b;->b(Lcom/google/android/filament/VertexBuffer$c;ILcom/google/android/filament/VertexBuffer$a;II)Lcom/google/android/filament/VertexBuffer$b;

    move-result-object v5

    sget-object v2, Lcom/itsmagic/engine/Engines/Engine/Vertex/a;->b:Lcom/itsmagic/engine/Engines/Engine/Vertex/a$a;

    iget-object v6, v2, Lcom/itsmagic/engine/Engines/Engine/Vertex/a$a;->b:Lcom/google/android/filament/VertexBuffer$c;

    iget v7, v1, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex$n;->d:I

    const/16 v9, 0xc

    const/16 v10, 0x18

    move-object v8, v0

    invoke-virtual/range {v5 .. v10}, Lcom/google/android/filament/VertexBuffer$b;->b(Lcom/google/android/filament/VertexBuffer$c;ILcom/google/android/filament/VertexBuffer$a;II)Lcom/google/android/filament/VertexBuffer$b;

    move-result-object v0

    iget-boolean v2, v1, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex$n;->e:Z

    if-eqz v2, :cond_0

    sget-object v12, Lcom/google/android/filament/VertexBuffer$c;->BONE_INDICES:Lcom/google/android/filament/VertexBuffer$c;

    sget-object v2, Lcom/google/android/filament/VertexBuffer$a;->UBYTE4:Lcom/google/android/filament/VertexBuffer$a;

    const/4 v15, 0x0

    const/16 v16, 0x8

    const/4 v13, 0x2

    move-object v11, v0

    move-object v14, v2

    invoke-virtual/range {v11 .. v16}, Lcom/google/android/filament/VertexBuffer$b;->b(Lcom/google/android/filament/VertexBuffer$c;ILcom/google/android/filament/VertexBuffer$a;II)Lcom/google/android/filament/VertexBuffer$b;

    sget-object v3, Lcom/google/android/filament/VertexBuffer$c;->BONE_WEIGHTS:Lcom/google/android/filament/VertexBuffer$c;

    const/4 v15, 0x4

    const/16 v16, 0x8

    const/4 v13, 0x2

    move-object v11, v0

    move-object v12, v3

    move-object v14, v2

    invoke-virtual/range {v11 .. v16}, Lcom/google/android/filament/VertexBuffer$b;->b(Lcom/google/android/filament/VertexBuffer$c;ILcom/google/android/filament/VertexBuffer$a;II)Lcom/google/android/filament/VertexBuffer$b;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/google/android/filament/VertexBuffer$b;->f(Lcom/google/android/filament/VertexBuffer$c;)Lcom/google/android/filament/VertexBuffer$b;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_2

    :cond_0
    :goto_0
    new-instance v2, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentVertexBuffer;

    invoke-direct {v2, v0}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentVertexBuffer;-><init>(Lcom/google/android/filament/VertexBuffer$b;)V

    iget-object v0, v1, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex$n;->f:Ljava/nio/ByteBuffer;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v0}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentVertexBuffer;->s(ILjava/nio/ByteBuffer;)V

    iget-object v0, v1, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex$n;->g:Ljava/nio/ShortBuffer;

    const/4 v4, 0x1

    invoke-virtual {v2, v4, v0}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentVertexBuffer;->y(ILjava/nio/ShortBuffer;)V

    iget-boolean v0, v1, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex$n;->e:Z

    if-eqz v0, :cond_1

    iget-object v0, v1, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex$n;->h:Ljava/nio/ByteBuffer;

    const/4 v4, 0x2

    invoke-virtual {v2, v4, v0}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentVertexBuffer;->s(ILjava/nio/ByteBuffer;)V

    :cond_1
    iget v0, v1, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex$n;->d:I

    iget-object v4, v1, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex$n;->i:Ljava/nio/FloatBuffer;

    invoke-virtual {v2, v0, v4}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentVertexBuffer;->w(ILjava/nio/FloatBuffer;)V

    iget-boolean v0, v1, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex$n;->j:Z

    if-eqz v0, :cond_2

    sget-object v0, Lcom/google/android/filament/IndexBuffer$a$b;->USHORT:Lcom/google/android/filament/IndexBuffer$a$b;

    goto :goto_1

    :cond_2
    sget-object v0, Lcom/google/android/filament/IndexBuffer$a$b;->UINT:Lcom/google/android/filament/IndexBuffer$a$b;

    :goto_1
    new-instance v4, Lkc/d;

    new-instance v5, Lcom/google/android/filament/IndexBuffer$a;

    invoke-direct {v5}, Lcom/google/android/filament/IndexBuffer$a;-><init>()V

    iget v6, v1, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex$n;->k:I

    invoke-virtual {v5, v6}, Lcom/google/android/filament/IndexBuffer$a;->c(I)Lcom/google/android/filament/IndexBuffer$a;

    move-result-object v5

    invoke-virtual {v5, v0}, Lcom/google/android/filament/IndexBuffer$a;->a(Lcom/google/android/filament/IndexBuffer$a$b;)Lcom/google/android/filament/IndexBuffer$a;

    move-result-object v0

    invoke-direct {v4, v0}, Lkc/d;-><init>(Lcom/google/android/filament/IndexBuffer$a;)V

    iget-object v0, v1, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex$n;->l:Ljava/nio/ByteBuffer;

    invoke-virtual {v4, v0}, Lkc/d;->s(Ljava/nio/ByteBuffer;)V

    iget-object v0, v1, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex$n;->m:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->r(Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;)Ljava/nio/ByteBuffer;

    move-result-object v0

    iget-object v5, v1, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex$n;->f:Ljava/nio/ByteBuffer;

    const/4 v6, 0x0

    if-ne v0, v5, :cond_3

    iget-object v0, v1, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex$n;->m:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    invoke-static {v0, v6}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->s(Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    :cond_3
    iget-object v0, v1, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex$n;->m:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->u(Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;)Ljava/nio/ShortBuffer;

    move-result-object v0

    iget-object v5, v1, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex$n;->g:Ljava/nio/ShortBuffer;

    if-ne v0, v5, :cond_4

    iget-object v0, v1, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex$n;->m:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    invoke-static {v0, v6}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->w(Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;Ljava/nio/ShortBuffer;)Ljava/nio/ShortBuffer;

    :cond_4
    iget-object v0, v1, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex$n;->m:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->y(Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;)Ljava/nio/ByteBuffer;

    move-result-object v0

    iget-object v5, v1, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex$n;->l:Ljava/nio/ByteBuffer;

    if-ne v0, v5, :cond_5

    iget-object v0, v1, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex$n;->m:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    invoke-static {v0, v6}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->z(Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    :cond_5
    iget-object v0, v1, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex$n;->m:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->A(Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;)Ljava/nio/ByteBuffer;

    move-result-object v0

    iget-object v5, v1, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex$n;->h:Ljava/nio/ByteBuffer;

    if-ne v0, v5, :cond_6

    iget-object v0, v1, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex$n;->m:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    invoke-static {v0, v6}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->B(Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    :cond_6
    iget-object v0, v1, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex$n;->m:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->C(Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;)Z

    move-result v0

    iget-boolean v5, v1, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex$n;->j:Z

    if-ne v0, v5, :cond_7

    iget-object v0, v1, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex$n;->m:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    invoke-static {v0, v3}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->D(Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;Z)Z

    :cond_7
    iget-object v0, v1, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex$n;->m:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    invoke-static {v0, v2}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->E(Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentVertexBuffer;)Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentVertexBuffer;

    iget-object v0, v1, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex$n;->m:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    invoke-static {v0, v4}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->F(Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;Lkc/d;)Lkc/d;

    iget-object v0, v1, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex$n;->m:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->z1()V

    iget-object v0, v1, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex$n;->m:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->y1()V

    iget-object v0, v1, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex$n;->m:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->L1()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, v1, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex$n;->m:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->G(Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;)V

    return-void

    :goto_2
    iget-object v2, v1, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex$n;->m:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    invoke-static {v2}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->G(Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;)V

    throw v0
.end method
