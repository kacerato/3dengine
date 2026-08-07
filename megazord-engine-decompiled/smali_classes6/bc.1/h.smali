.class public Lbc/h;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbc/h$a;
    }
.end annotation


# static fields
.field public static F:Z = false


# instance fields
.field public final A:[D

.field public B:[I

.field public C:[I

.field public D:[Z

.field public E:[Z

.field public final a:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

.field public b:I

.field public c:I

.field public d:Ljava/nio/FloatBuffer;

.field public e:Ljava/nio/FloatBuffer;

.field public f:Ljava/nio/FloatBuffer;

.field public g:Ljava/nio/DoubleBuffer;

.field public h:Ljava/nio/IntBuffer;

.field public i:Ljava/nio/IntBuffer;

.field public j:Ljava/nio/ByteBuffer;

.field public k:Ljava/nio/IntBuffer;

.field public l:Ljava/nio/DoubleBuffer;

.field public m:Ljava/nio/ByteBuffer;

.field public n:Ljava/nio/ByteBuffer;

.field public o:Ljava/nio/FloatBuffer;

.field public p:Ljava/nio/IntBuffer;

.field public q:Ljava/nio/IntBuffer;

.field public r:I

.field public final s:Lbc/h$a;

.field public final t:Lbc/h$a;

.field public final u:Lbc/h$a;

.field public final v:Lbc/h$a;

.field public final w:Lbc/h$a;

.field public final x:Lbc/h$a;

.field public final y:Lbc/h$a;

.field public final z:Lbc/h$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, LS3/a;->g:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    sput-boolean v0, Lbc/h;->F:Z

    :cond_0
    return-void
.end method

.method public constructor <init>(Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mesh"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lbc/h$a;

    invoke-direct {v0}, Lbc/h$a;-><init>()V

    iput-object v0, p0, Lbc/h;->s:Lbc/h$a;

    new-instance v0, Lbc/h$a;

    invoke-direct {v0}, Lbc/h$a;-><init>()V

    iput-object v0, p0, Lbc/h;->t:Lbc/h$a;

    new-instance v0, Lbc/h$a;

    invoke-direct {v0}, Lbc/h$a;-><init>()V

    iput-object v0, p0, Lbc/h;->u:Lbc/h$a;

    new-instance v0, Lbc/h$a;

    invoke-direct {v0}, Lbc/h$a;-><init>()V

    iput-object v0, p0, Lbc/h;->v:Lbc/h$a;

    new-instance v0, Lbc/h$a;

    invoke-direct {v0}, Lbc/h$a;-><init>()V

    iput-object v0, p0, Lbc/h;->w:Lbc/h$a;

    new-instance v0, Lbc/h$a;

    invoke-direct {v0}, Lbc/h$a;-><init>()V

    iput-object v0, p0, Lbc/h;->x:Lbc/h$a;

    new-instance v0, Lbc/h$a;

    invoke-direct {v0}, Lbc/h$a;-><init>()V

    iput-object v0, p0, Lbc/h;->y:Lbc/h$a;

    new-instance v0, Lbc/h$a;

    invoke-direct {v0}, Lbc/h$a;-><init>()V

    iput-object v0, p0, Lbc/h;->z:Lbc/h$a;

    const/16 v0, 0xa

    new-array v0, v0, [D

    iput-object v0, p0, Lbc/h;->A:[D

    iput-object p1, p0, Lbc/h;->a:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    return-void
.end method

.method public static i(Lbc/h$a;Lbc/h$a;)D
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "b"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lbc/h$a;->d(Lbc/h$a;)D

    move-result-wide p0

    return-wide p0
.end method


# virtual methods
.method public final A(IFFF)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "vid",
            "x",
            "y",
            "z"
        }
    .end annotation

    mul-int/lit8 p1, p1, 0x3

    iget-object v0, p0, Lbc/h;->d:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, p1, p2}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    iget-object p2, p0, Lbc/h;->d:Ljava/nio/FloatBuffer;

    add-int/lit8 v0, p1, 0x1

    invoke-virtual {p2, v0, p3}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    iget-object p2, p0, Lbc/h;->d:Ljava/nio/FloatBuffer;

    add-int/lit8 p1, p1, 0x2

    invoke-virtual {p2, p1, p4}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    return-void
.end method

.method public final B(ILbc/h$a;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "vid",
            "p"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lbc/h$a;->e(I)F

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p2, v1}, Lbc/h$a;->e(I)F

    move-result v1

    const/4 v2, 0x2

    invoke-virtual {p2, v2}, Lbc/h$a;->e(I)F

    move-result p2

    invoke-virtual {p0, p1, v0, v1, p2}, Lbc/h;->A(IFFF)V

    return-void
.end method

.method public final C(IFF)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "vid",
            "u",
            "v"
        }
    .end annotation

    mul-int/lit8 p1, p1, 0x2

    iget-object v0, p0, Lbc/h;->e:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, p1, p2}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    iget-object p2, p0, Lbc/h;->e:Ljava/nio/FloatBuffer;

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {p2, p1, p3}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    return-void
.end method

.method public D(FD)Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "targetPercent",
            "aggressiveness"
        }
    .end annotation

    iget-object v0, p0, Lbc/h;->a:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->e1()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, p1

    float-to-int p1, v0

    invoke-virtual {p0, p1, p2, p3}, Lbc/h;->E(ID)Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    move-result-object p1

    return-object p1
.end method

.method public E(ID)Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;
    .locals 20
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "targetCount",
            "aggressiveness"
        }
    .end annotation

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-virtual/range {p0 .. p0}, Lbc/h;->u()V

    sget-boolean v2, Lbc/h;->F:Z

    if-eqz v2, :cond_0

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v4, v0, Lbc/h;->c:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    mul-int/lit8 v5, v1, 0x64

    iget v6, v0, Lbc/h;->c:I

    div-int/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    filled-new-array {v3, v4, v5}, [Ljava/lang/Object;

    move-result-object v3

    const-string v4, "SimplifyNative Target: %d of %d (%d%%)"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    goto :goto_0

    :cond_0
    const-wide/16 v2, 0x0

    :goto_0
    const/4 v4, 0x0

    move v5, v4

    :goto_1
    iget v6, v0, Lbc/h;->c:I

    if-ge v5, v6, :cond_1

    iget-object v6, v0, Lbc/h;->m:Ljava/nio/ByteBuffer;

    invoke-virtual {v6, v5, v4}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    iget-object v6, v0, Lbc/h;->n:Ljava/nio/ByteBuffer;

    invoke-virtual {v6, v5, v4}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_1
    const/16 v5, 0x10

    invoke-virtual {v0, v5}, Lbc/h;->k(I)V

    iget-object v5, v0, Lbc/h;->s:Lbc/h$a;

    const/4 v7, 0x0

    invoke-virtual {v5, v7, v4}, Lbc/h$a;->g(FI)V

    iget-object v5, v0, Lbc/h;->s:Lbc/h$a;

    const/4 v8, 0x1

    invoke-virtual {v5, v7, v8}, Lbc/h$a;->g(FI)V

    iget-object v5, v0, Lbc/h;->s:Lbc/h$a;

    const/4 v9, 0x2

    invoke-virtual {v5, v7, v9}, Lbc/h$a;->g(FI)V

    move v5, v4

    move v10, v5

    :goto_2
    const/16 v11, 0x3e8

    if-ge v5, v11, :cond_10

    sub-int v11, v6, v10

    if-gt v11, v1, :cond_2

    goto/16 :goto_d

    :cond_2
    invoke-virtual {v0, v5}, Lbc/h;->F(I)V

    rem-int/lit8 v11, v5, 0x5

    if-nez v11, :cond_3

    invoke-virtual/range {p0 .. p0}, Lbc/h;->g()V

    iget v6, v0, Lbc/h;->c:I

    :cond_3
    int-to-double v11, v5

    const-wide/high16 v13, 0x4008000000000000L    # 3.0

    add-double/2addr v11, v13

    move-wide/from16 v13, p2

    invoke-static {v11, v12, v13, v14}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v11

    const-wide v15, 0x3e112e0be826d695L    # 1.0E-9

    mul-double/2addr v11, v15

    iget v15, v0, Lbc/h;->c:I

    sub-int/2addr v15, v8

    :goto_3
    if-ltz v15, :cond_f

    invoke-virtual {v0, v15}, Lbc/h;->n(I)B

    move-result v16

    if-eqz v16, :cond_4

    goto :goto_4

    :cond_4
    iget-object v9, v0, Lbc/h;->l:Ljava/nio/DoubleBuffer;

    mul-int/lit8 v17, v15, 0x4

    add-int/lit8 v8, v17, 0x3

    invoke-virtual {v9, v8}, Ljava/nio/DoubleBuffer;->get(I)D

    move-result-wide v8

    cmpl-double v8, v8, v11

    if-lez v8, :cond_5

    :goto_4
    move v13, v4

    move-wide/from16 v18, v11

    const/4 v12, 0x1

    const/4 v14, 0x2

    goto/16 :goto_b

    :cond_5
    move v8, v4

    :goto_5
    const/4 v9, 0x3

    if-ge v8, v9, :cond_d

    iget-object v7, v0, Lbc/h;->l:Ljava/nio/DoubleBuffer;

    add-int v4, v17, v8

    invoke-virtual {v7, v4}, Ljava/nio/DoubleBuffer;->get(I)D

    move-result-wide v18

    cmpl-double v4, v18, v11

    if-ltz v4, :cond_7

    move-wide/from16 v18, v11

    :cond_6
    :goto_6
    const/4 v12, 0x1

    const/4 v13, 0x0

    const/4 v14, 0x2

    goto/16 :goto_9

    :cond_7
    invoke-virtual {v0, v15, v8}, Lbc/h;->p(II)I

    move-result v4

    add-int/lit8 v7, v8, 0x1

    rem-int/2addr v7, v9

    invoke-virtual {v0, v15, v7}, Lbc/h;->p(II)I

    move-result v7

    iget-object v9, v0, Lbc/h;->i:Ljava/nio/IntBuffer;

    invoke-virtual {v9, v4}, Ljava/nio/IntBuffer;->get(I)I

    move-result v9

    move-wide/from16 v18, v11

    iget-object v11, v0, Lbc/h;->i:Ljava/nio/IntBuffer;

    invoke-virtual {v11, v7}, Ljava/nio/IntBuffer;->get(I)I

    move-result v11

    iget-object v12, v0, Lbc/h;->j:Ljava/nio/ByteBuffer;

    invoke-virtual {v12, v4}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v12

    if-eqz v12, :cond_8

    const/4 v12, 0x1

    goto :goto_7

    :cond_8
    const/4 v12, 0x0

    :goto_7
    iget-object v13, v0, Lbc/h;->j:Ljava/nio/ByteBuffer;

    invoke-virtual {v13, v7}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v13

    if-eqz v13, :cond_9

    const/4 v13, 0x1

    goto :goto_8

    :cond_9
    const/4 v13, 0x0

    :goto_8
    if-nez v12, :cond_6

    if-eqz v13, :cond_a

    goto :goto_6

    :cond_a
    invoke-static {v9, v11}, Ljava/lang/Math;->max(II)I

    move-result v12

    invoke-virtual {v0, v12}, Lbc/h;->k(I)V

    iget-object v12, v0, Lbc/h;->D:[Z

    const/4 v13, 0x0

    invoke-static {v12, v13, v9, v13}, Ljava/util/Arrays;->fill([ZIIZ)V

    iget-object v9, v0, Lbc/h;->E:[Z

    invoke-static {v9, v13, v11, v13}, Ljava/util/Arrays;->fill([ZIIZ)V

    iget-object v9, v0, Lbc/h;->s:Lbc/h$a;

    const/4 v11, 0x0

    invoke-virtual {v9, v11, v13}, Lbc/h$a;->g(FI)V

    iget-object v9, v0, Lbc/h;->s:Lbc/h$a;

    const/4 v12, 0x1

    invoke-virtual {v9, v11, v12}, Lbc/h$a;->g(FI)V

    iget-object v9, v0, Lbc/h;->s:Lbc/h$a;

    const/4 v14, 0x2

    invoke-virtual {v9, v11, v14}, Lbc/h$a;->g(FI)V

    iget-object v9, v0, Lbc/h;->s:Lbc/h$a;

    invoke-virtual {v0, v4, v7, v9}, Lbc/h;->e(IILbc/h$a;)D

    iget-object v9, v0, Lbc/h;->s:Lbc/h$a;

    iget-object v11, v0, Lbc/h;->D:[Z

    invoke-virtual {v0, v9, v7, v4, v11}, Lbc/h;->m(Lbc/h$a;II[Z)Z

    move-result v9

    if-eqz v9, :cond_b

    goto :goto_9

    :cond_b
    iget-object v9, v0, Lbc/h;->s:Lbc/h$a;

    iget-object v11, v0, Lbc/h;->E:[Z

    invoke-virtual {v0, v9, v4, v7, v11}, Lbc/h;->m(Lbc/h$a;II[Z)Z

    move-result v9

    if-eqz v9, :cond_c

    goto :goto_9

    :cond_c
    iget-object v8, v0, Lbc/h;->s:Lbc/h$a;

    invoke-virtual {v0, v4, v8}, Lbc/h;->B(ILbc/h$a;)V

    invoke-virtual {v0, v4, v7}, Lbc/h;->b(II)V

    iget-object v8, v0, Lbc/h;->D:[Z

    invoke-virtual {v0, v4, v4, v8}, Lbc/h;->G(II[Z)I

    move-result v8

    add-int/2addr v10, v8

    iget-object v8, v0, Lbc/h;->E:[Z

    invoke-virtual {v0, v4, v7, v8}, Lbc/h;->G(II[Z)I

    move-result v4

    add-int/2addr v10, v4

    goto :goto_a

    :goto_9
    add-int/lit8 v8, v8, 0x1

    move v4, v13

    move-wide/from16 v11, v18

    const/4 v7, 0x0

    move-wide/from16 v13, p2

    goto/16 :goto_5

    :cond_d
    move v13, v4

    move-wide/from16 v18, v11

    const/4 v12, 0x1

    const/4 v14, 0x2

    :goto_a
    sub-int v4, v6, v10

    if-gt v4, v1, :cond_e

    goto :goto_c

    :cond_e
    :goto_b
    add-int/lit8 v15, v15, -0x1

    move v8, v12

    move v4, v13

    move v9, v14

    move-wide/from16 v11, v18

    const/4 v7, 0x0

    move-wide/from16 v13, p2

    goto/16 :goto_3

    :cond_f
    move v13, v4

    move v12, v8

    move v14, v9

    :goto_c
    add-int/lit8 v5, v5, 0x1

    move v8, v12

    move v4, v13

    move v9, v14

    const/4 v7, 0x0

    goto/16 :goto_2

    :cond_10
    :goto_d
    invoke-virtual/range {p0 .. p0}, Lbc/h;->g()V

    invoke-virtual/range {p0 .. p0}, Lbc/h;->d()Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    move-result-object v1

    sget-boolean v4, Lbc/h;->F:Z

    if-eqz v4, :cond_11

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget v6, v0, Lbc/h;->c:I

    iget-object v7, v0, Lbc/h;->a:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    invoke-virtual {v7}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->e1()I

    move-result v7

    sub-int/2addr v7, v6

    sget-object v8, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iget-object v9, v0, Lbc/h;->a:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    invoke-virtual {v9}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->e1()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    mul-int/lit8 v7, v7, 0x64

    iget-object v10, v0, Lbc/h;->a:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    invoke-virtual {v10}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->e1()I

    move-result v10

    div-int/2addr v7, v10

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    sub-long/2addr v4, v2

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    filled-new-array {v6, v9, v7, v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "SimplifyNative: %d/%d %d%% removed in %d ms"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_11
    return-object v1
.end method

.method public final F(I)V
    .locals 23
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "iteration"
        }
    .end annotation

    move-object/from16 v10, p0

    const/4 v11, 0x0

    if-nez p1, :cond_0

    move v0, v11

    :goto_0
    iget v1, v10, Lbc/h;->b:I

    if-ge v0, v1, :cond_0

    invoke-virtual {v10, v0}, Lbc/h;->f(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    move v12, v11

    :goto_1
    iget v0, v10, Lbc/h;->c:I

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-ge v12, v0, :cond_3

    invoke-virtual {v10, v12}, Lbc/h;->n(I)B

    move-result v0

    if-eqz v0, :cond_1

    goto/16 :goto_2

    :cond_1
    invoke-virtual {v10, v12, v11}, Lbc/h;->p(II)I

    move-result v3

    invoke-virtual {v10, v12, v2}, Lbc/h;->p(II)I

    move-result v13

    invoke-virtual {v10, v12, v1}, Lbc/h;->p(II)I

    move-result v14

    iget-object v0, v10, Lbc/h;->t:Lbc/h$a;

    invoke-virtual {v10, v3, v0}, Lbc/h;->r(ILbc/h$a;)V

    iget-object v0, v10, Lbc/h;->u:Lbc/h$a;

    invoke-virtual {v10, v13, v0}, Lbc/h;->r(ILbc/h$a;)V

    iget-object v0, v10, Lbc/h;->v:Lbc/h$a;

    invoke-virtual {v10, v14, v0}, Lbc/h;->r(ILbc/h$a;)V

    iget-object v0, v10, Lbc/h;->w:Lbc/h$a;

    iget-object v4, v10, Lbc/h;->u:Lbc/h$a;

    invoke-virtual {v0, v4}, Lbc/h$a;->h(Lbc/h$a;)V

    iget-object v0, v10, Lbc/h;->w:Lbc/h$a;

    iget-object v4, v10, Lbc/h;->t:Lbc/h$a;

    invoke-virtual {v0, v4}, Lbc/h$a;->j(Lbc/h$a;)Lbc/h$a;

    iget-object v0, v10, Lbc/h;->x:Lbc/h$a;

    iget-object v4, v10, Lbc/h;->v:Lbc/h$a;

    invoke-virtual {v0, v4}, Lbc/h$a;->h(Lbc/h$a;)V

    iget-object v0, v10, Lbc/h;->x:Lbc/h$a;

    iget-object v4, v10, Lbc/h;->t:Lbc/h$a;

    invoke-virtual {v0, v4}, Lbc/h$a;->j(Lbc/h$a;)Lbc/h$a;

    iget-object v0, v10, Lbc/h;->y:Lbc/h$a;

    iget-object v4, v10, Lbc/h;->w:Lbc/h$a;

    invoke-virtual {v0, v4}, Lbc/h$a;->h(Lbc/h$a;)V

    iget-object v0, v10, Lbc/h;->y:Lbc/h$a;

    iget-object v4, v10, Lbc/h;->x:Lbc/h$a;

    invoke-virtual {v0, v4}, Lbc/h$a;->b(Lbc/h$a;)Lbc/h$a;

    move-result-object v0

    invoke-virtual {v0}, Lbc/h$a;->f()Lbc/h$a;

    iget-object v0, v10, Lbc/h;->y:Lbc/h$a;

    invoke-virtual {v10, v12, v0}, Lbc/h;->x(ILbc/h$a;)V

    if-nez p1, :cond_2

    iget-object v0, v10, Lbc/h;->y:Lbc/h$a;

    invoke-virtual {v0, v11}, Lbc/h$a;->e(I)F

    move-result v0

    float-to-double v8, v0

    iget-object v0, v10, Lbc/h;->y:Lbc/h$a;

    invoke-virtual {v0, v2}, Lbc/h$a;->e(I)F

    move-result v0

    float-to-double v6, v0

    iget-object v0, v10, Lbc/h;->y:Lbc/h$a;

    invoke-virtual {v0, v1}, Lbc/h$a;->e(I)F

    move-result v0

    float-to-double v4, v0

    iget-object v0, v10, Lbc/h;->y:Lbc/h$a;

    iget-object v1, v10, Lbc/h;->t:Lbc/h$a;

    invoke-static {v0, v1}, Lbc/h;->i(Lbc/h$a;Lbc/h$a;)D

    move-result-wide v0

    neg-double v1, v0

    move-object/from16 v0, p0

    move-wide v15, v1

    move v1, v3

    move-wide v2, v8

    move-wide/from16 v17, v4

    move-wide v4, v6

    move-wide/from16 v19, v6

    move-wide/from16 v6, v17

    move-wide/from16 v21, v8

    move-wide v8, v15

    invoke-virtual/range {v0 .. v9}, Lbc/h;->a(IDDDD)V

    move v1, v13

    move-wide/from16 v2, v21

    move-wide/from16 v4, v19

    invoke-virtual/range {v0 .. v9}, Lbc/h;->a(IDDDD)V

    move v1, v14

    invoke-virtual/range {v0 .. v9}, Lbc/h;->a(IDDDD)V

    :cond_2
    :goto_2
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_1

    :cond_3
    const/4 v0, 0x3

    if-nez p1, :cond_6

    move v3, v11

    :goto_3
    iget v4, v10, Lbc/h;->c:I

    if-ge v3, v4, :cond_6

    invoke-virtual {v10, v3}, Lbc/h;->n(I)B

    move-result v4

    if-eqz v4, :cond_4

    goto :goto_5

    :cond_4
    move v4, v11

    :goto_4
    if-ge v4, v0, :cond_5

    invoke-virtual {v10, v3, v4}, Lbc/h;->p(II)I

    move-result v5

    add-int/lit8 v6, v4, 0x1

    rem-int/lit8 v7, v6, 0x3

    invoke-virtual {v10, v3, v7}, Lbc/h;->p(II)I

    move-result v7

    iget-object v8, v10, Lbc/h;->s:Lbc/h$a;

    invoke-virtual {v10, v5, v7, v8}, Lbc/h;->e(IILbc/h$a;)D

    move-result-wide v7

    iget-object v5, v10, Lbc/h;->l:Ljava/nio/DoubleBuffer;

    mul-int/lit8 v9, v3, 0x4

    add-int/2addr v9, v4

    invoke-virtual {v5, v9, v7, v8}, Ljava/nio/DoubleBuffer;->put(ID)Ljava/nio/DoubleBuffer;

    move v4, v6

    goto :goto_4

    :cond_5
    iget-object v4, v10, Lbc/h;->l:Ljava/nio/DoubleBuffer;

    mul-int/lit8 v5, v3, 0x4

    invoke-virtual {v4, v5}, Ljava/nio/DoubleBuffer;->get(I)D

    move-result-wide v6

    iget-object v4, v10, Lbc/h;->l:Ljava/nio/DoubleBuffer;

    add-int/lit8 v8, v5, 0x1

    invoke-virtual {v4, v8}, Ljava/nio/DoubleBuffer;->get(I)D

    move-result-wide v8

    iget-object v4, v10, Lbc/h;->l:Ljava/nio/DoubleBuffer;

    add-int/lit8 v12, v5, 0x2

    invoke-virtual {v4, v12}, Ljava/nio/DoubleBuffer;->get(I)D

    move-result-wide v12

    iget-object v4, v10, Lbc/h;->l:Ljava/nio/DoubleBuffer;

    add-int/2addr v5, v0

    invoke-static {v8, v9, v12, v13}, Ljava/lang/Math;->min(DD)D

    move-result-wide v8

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->min(DD)D

    move-result-wide v6

    invoke-virtual {v4, v5, v6, v7}, Ljava/nio/DoubleBuffer;->put(ID)Ljava/nio/DoubleBuffer;

    :goto_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_6
    move v3, v11

    :goto_6
    iget v4, v10, Lbc/h;->b:I

    if-ge v3, v4, :cond_7

    iget-object v4, v10, Lbc/h;->h:Ljava/nio/IntBuffer;

    invoke-virtual {v4, v3, v11}, Ljava/nio/IntBuffer;->put(II)Ljava/nio/IntBuffer;

    iget-object v4, v10, Lbc/h;->i:Ljava/nio/IntBuffer;

    invoke-virtual {v4, v3, v11}, Ljava/nio/IntBuffer;->put(II)Ljava/nio/IntBuffer;

    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    :cond_7
    move v3, v11

    move v4, v3

    :goto_7
    iget v5, v10, Lbc/h;->c:I

    if-ge v3, v5, :cond_9

    invoke-virtual {v10, v3}, Lbc/h;->n(I)B

    move-result v5

    if-eqz v5, :cond_8

    goto :goto_8

    :cond_8
    invoke-virtual {v10, v3, v11}, Lbc/h;->p(II)I

    move-result v5

    invoke-virtual {v10, v3, v2}, Lbc/h;->p(II)I

    move-result v6

    invoke-virtual {v10, v3, v1}, Lbc/h;->p(II)I

    move-result v7

    iget-object v8, v10, Lbc/h;->i:Ljava/nio/IntBuffer;

    invoke-virtual {v8, v5}, Ljava/nio/IntBuffer;->get(I)I

    move-result v9

    add-int/2addr v9, v2

    invoke-virtual {v8, v5, v9}, Ljava/nio/IntBuffer;->put(II)Ljava/nio/IntBuffer;

    iget-object v5, v10, Lbc/h;->i:Ljava/nio/IntBuffer;

    invoke-virtual {v5, v6}, Ljava/nio/IntBuffer;->get(I)I

    move-result v8

    add-int/2addr v8, v2

    invoke-virtual {v5, v6, v8}, Ljava/nio/IntBuffer;->put(II)Ljava/nio/IntBuffer;

    iget-object v5, v10, Lbc/h;->i:Ljava/nio/IntBuffer;

    invoke-virtual {v5, v7}, Ljava/nio/IntBuffer;->get(I)I

    move-result v6

    add-int/2addr v6, v2

    invoke-virtual {v5, v7, v6}, Ljava/nio/IntBuffer;->put(II)Ljava/nio/IntBuffer;

    add-int/lit8 v4, v4, 0x3

    :goto_8
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    :cond_9
    invoke-virtual {v10, v4}, Lbc/h;->l(I)V

    move v1, v11

    move v3, v1

    :goto_9
    iget v4, v10, Lbc/h;->b:I

    if-ge v1, v4, :cond_a

    iget-object v4, v10, Lbc/h;->h:Ljava/nio/IntBuffer;

    invoke-virtual {v4, v1, v3}, Ljava/nio/IntBuffer;->put(II)Ljava/nio/IntBuffer;

    iget-object v4, v10, Lbc/h;->i:Ljava/nio/IntBuffer;

    invoke-virtual {v4, v1}, Ljava/nio/IntBuffer;->get(I)I

    move-result v4

    add-int/2addr v3, v4

    iget-object v4, v10, Lbc/h;->i:Ljava/nio/IntBuffer;

    invoke-virtual {v4, v1, v11}, Ljava/nio/IntBuffer;->put(II)Ljava/nio/IntBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_a
    move v1, v11

    :goto_a
    iget v3, v10, Lbc/h;->c:I

    if-ge v1, v3, :cond_d

    invoke-virtual {v10, v1}, Lbc/h;->n(I)B

    move-result v3

    if-eqz v3, :cond_b

    goto :goto_c

    :cond_b
    move v3, v11

    :goto_b
    if-ge v3, v0, :cond_c

    invoke-virtual {v10, v1, v3}, Lbc/h;->p(II)I

    move-result v4

    iget-object v5, v10, Lbc/h;->h:Ljava/nio/IntBuffer;

    invoke-virtual {v5, v4}, Ljava/nio/IntBuffer;->get(I)I

    move-result v5

    iget-object v6, v10, Lbc/h;->i:Ljava/nio/IntBuffer;

    invoke-virtual {v6, v4}, Ljava/nio/IntBuffer;->get(I)I

    move-result v6

    add-int/2addr v5, v6

    iget-object v7, v10, Lbc/h;->p:Ljava/nio/IntBuffer;

    invoke-virtual {v7, v5, v1}, Ljava/nio/IntBuffer;->put(II)Ljava/nio/IntBuffer;

    iget-object v7, v10, Lbc/h;->q:Ljava/nio/IntBuffer;

    invoke-virtual {v7, v5, v3}, Ljava/nio/IntBuffer;->put(II)Ljava/nio/IntBuffer;

    iget-object v5, v10, Lbc/h;->i:Ljava/nio/IntBuffer;

    add-int/2addr v6, v2

    invoke-virtual {v5, v4, v6}, Ljava/nio/IntBuffer;->put(II)Ljava/nio/IntBuffer;

    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    :cond_c
    :goto_c
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    :cond_d
    if-nez p1, :cond_e

    invoke-virtual/range {p0 .. p0}, Lbc/h;->h()V

    :cond_e
    return-void
.end method

.method public final G(II[Z)I
    .locals 12
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "i0",
            "vIndex",
            "deleted"
        }
    .end annotation

    iget-object v0, p0, Lbc/h;->h:Ljava/nio/IntBuffer;

    invoke-virtual {v0, p2}, Ljava/nio/IntBuffer;->get(I)I

    move-result v0

    iget-object v1, p0, Lbc/h;->i:Ljava/nio/IntBuffer;

    invoke-virtual {v1, p2}, Ljava/nio/IntBuffer;->get(I)I

    move-result p2

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v1, p2, :cond_2

    add-int v3, v0, v1

    iget-object v4, p0, Lbc/h;->p:Ljava/nio/IntBuffer;

    invoke-virtual {v4, v3}, Ljava/nio/IntBuffer;->get(I)I

    move-result v4

    invoke-virtual {p0, v4}, Lbc/h;->n(I)B

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_1

    :cond_0
    aget-boolean v5, p3, v1

    const/4 v6, 0x1

    if-eqz v5, :cond_1

    invoke-virtual {p0, v4, v6}, Lbc/h;->v(IB)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    iget-object v5, p0, Lbc/h;->q:Ljava/nio/IntBuffer;

    invoke-virtual {v5, v3}, Ljava/nio/IntBuffer;->get(I)I

    move-result v3

    mul-int/lit8 v5, v4, 0x3

    iget-object v7, p0, Lbc/h;->k:Ljava/nio/IntBuffer;

    add-int/2addr v3, v5

    invoke-virtual {v7, v3, p1}, Ljava/nio/IntBuffer;->put(II)Ljava/nio/IntBuffer;

    iget-object v3, p0, Lbc/h;->n:Ljava/nio/ByteBuffer;

    invoke-virtual {v3, v4, v6}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    iget-object v3, p0, Lbc/h;->k:Ljava/nio/IntBuffer;

    invoke-virtual {v3, v5}, Ljava/nio/IntBuffer;->get(I)I

    move-result v3

    iget-object v6, p0, Lbc/h;->k:Ljava/nio/IntBuffer;

    add-int/lit8 v7, v5, 0x1

    invoke-virtual {v6, v7}, Ljava/nio/IntBuffer;->get(I)I

    move-result v6

    iget-object v7, p0, Lbc/h;->k:Ljava/nio/IntBuffer;

    add-int/lit8 v5, v5, 0x2

    invoke-virtual {v7, v5}, Ljava/nio/IntBuffer;->get(I)I

    move-result v5

    iget-object v7, p0, Lbc/h;->s:Lbc/h$a;

    invoke-virtual {p0, v3, v6, v7}, Lbc/h;->e(IILbc/h$a;)D

    move-result-wide v7

    iget-object v9, p0, Lbc/h;->s:Lbc/h$a;

    invoke-virtual {p0, v6, v5, v9}, Lbc/h;->e(IILbc/h$a;)D

    move-result-wide v9

    iget-object v6, p0, Lbc/h;->s:Lbc/h$a;

    invoke-virtual {p0, v5, v3, v6}, Lbc/h;->e(IILbc/h$a;)D

    move-result-wide v5

    mul-int/lit8 v4, v4, 0x4

    iget-object v3, p0, Lbc/h;->l:Ljava/nio/DoubleBuffer;

    invoke-virtual {v3, v4, v7, v8}, Ljava/nio/DoubleBuffer;->put(ID)Ljava/nio/DoubleBuffer;

    iget-object v3, p0, Lbc/h;->l:Ljava/nio/DoubleBuffer;

    add-int/lit8 v11, v4, 0x1

    invoke-virtual {v3, v11, v9, v10}, Ljava/nio/DoubleBuffer;->put(ID)Ljava/nio/DoubleBuffer;

    iget-object v3, p0, Lbc/h;->l:Ljava/nio/DoubleBuffer;

    add-int/lit8 v11, v4, 0x2

    invoke-virtual {v3, v11, v5, v6}, Ljava/nio/DoubleBuffer;->put(ID)Ljava/nio/DoubleBuffer;

    iget-object v3, p0, Lbc/h;->l:Ljava/nio/DoubleBuffer;

    add-int/lit8 v4, v4, 0x3

    invoke-static {v9, v10, v5, v6}, Ljava/lang/Math;->min(DD)D

    move-result-wide v5

    invoke-static {v7, v8, v5, v6}, Ljava/lang/Math;->min(DD)D

    move-result-wide v5

    invoke-virtual {v3, v4, v5, v6}, Ljava/nio/DoubleBuffer;->put(ID)Ljava/nio/DoubleBuffer;

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return v2
.end method

.method public final H(DDD)D
    .locals 7
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

    iget-object v0, p0, Lbc/h;->A:[D

    const/4 v1, 0x0

    aget-wide v1, v0, v1

    mul-double/2addr v1, p1

    mul-double/2addr v1, p1

    const/4 v3, 0x1

    aget-wide v3, v0, v3

    const-wide/high16 v5, 0x4000000000000000L    # 2.0

    mul-double/2addr v3, v5

    mul-double/2addr v3, p1

    mul-double/2addr v3, p3

    add-double/2addr v1, v3

    const/4 v3, 0x2

    aget-wide v3, v0, v3

    mul-double/2addr v3, v5

    mul-double/2addr v3, p1

    mul-double/2addr v3, p5

    add-double/2addr v1, v3

    const/4 v3, 0x3

    aget-wide v3, v0, v3

    mul-double/2addr v3, v5

    mul-double/2addr v3, p1

    add-double/2addr v1, v3

    const/4 p1, 0x4

    aget-wide p1, v0, p1

    mul-double/2addr p1, p3

    mul-double/2addr p1, p3

    add-double/2addr v1, p1

    const/4 p1, 0x5

    aget-wide p1, v0, p1

    mul-double/2addr p1, v5

    mul-double/2addr p1, p3

    mul-double/2addr p1, p5

    add-double/2addr v1, p1

    const/4 p1, 0x6

    aget-wide p1, v0, p1

    mul-double/2addr p1, v5

    mul-double/2addr p1, p3

    add-double/2addr v1, p1

    const/4 p1, 0x7

    aget-wide p1, v0, p1

    mul-double/2addr p1, p5

    mul-double/2addr p1, p5

    add-double/2addr v1, p1

    const/16 p1, 0x8

    aget-wide p1, v0, p1

    mul-double/2addr p1, v5

    mul-double/2addr p1, p5

    add-double/2addr v1, p1

    const/16 p1, 0x9

    aget-wide p1, v0, p1

    add-double/2addr v1, p1

    return-wide v1
.end method

.method public final a(IDDDD)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "vid",
            "a",
            "b",
            "c",
            "d"
        }
    .end annotation

    mul-int/lit8 p1, p1, 0xa

    iget-object v0, p0, Lbc/h;->g:Ljava/nio/DoubleBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/DoubleBuffer;->get(I)D

    move-result-wide v1

    mul-double v3, p2, p2

    add-double/2addr v1, v3

    invoke-virtual {v0, p1, v1, v2}, Ljava/nio/DoubleBuffer;->put(ID)Ljava/nio/DoubleBuffer;

    iget-object v0, p0, Lbc/h;->g:Ljava/nio/DoubleBuffer;

    add-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1}, Ljava/nio/DoubleBuffer;->get(I)D

    move-result-wide v2

    mul-double v4, p2, p4

    add-double/2addr v2, v4

    invoke-virtual {v0, v1, v2, v3}, Ljava/nio/DoubleBuffer;->put(ID)Ljava/nio/DoubleBuffer;

    iget-object v0, p0, Lbc/h;->g:Ljava/nio/DoubleBuffer;

    add-int/lit8 v1, p1, 0x2

    invoke-virtual {v0, v1}, Ljava/nio/DoubleBuffer;->get(I)D

    move-result-wide v2

    mul-double v4, p2, p6

    add-double/2addr v2, v4

    invoke-virtual {v0, v1, v2, v3}, Ljava/nio/DoubleBuffer;->put(ID)Ljava/nio/DoubleBuffer;

    iget-object v0, p0, Lbc/h;->g:Ljava/nio/DoubleBuffer;

    add-int/lit8 v1, p1, 0x3

    invoke-virtual {v0, v1}, Ljava/nio/DoubleBuffer;->get(I)D

    move-result-wide v2

    mul-double/2addr p2, p8

    add-double/2addr v2, p2

    invoke-virtual {v0, v1, v2, v3}, Ljava/nio/DoubleBuffer;->put(ID)Ljava/nio/DoubleBuffer;

    iget-object p2, p0, Lbc/h;->g:Ljava/nio/DoubleBuffer;

    add-int/lit8 p3, p1, 0x4

    invoke-virtual {p2, p3}, Ljava/nio/DoubleBuffer;->get(I)D

    move-result-wide v0

    mul-double v2, p4, p4

    add-double/2addr v0, v2

    invoke-virtual {p2, p3, v0, v1}, Ljava/nio/DoubleBuffer;->put(ID)Ljava/nio/DoubleBuffer;

    iget-object p2, p0, Lbc/h;->g:Ljava/nio/DoubleBuffer;

    add-int/lit8 p3, p1, 0x5

    invoke-virtual {p2, p3}, Ljava/nio/DoubleBuffer;->get(I)D

    move-result-wide v0

    mul-double v2, p4, p6

    add-double/2addr v0, v2

    invoke-virtual {p2, p3, v0, v1}, Ljava/nio/DoubleBuffer;->put(ID)Ljava/nio/DoubleBuffer;

    iget-object p2, p0, Lbc/h;->g:Ljava/nio/DoubleBuffer;

    add-int/lit8 p3, p1, 0x6

    invoke-virtual {p2, p3}, Ljava/nio/DoubleBuffer;->get(I)D

    move-result-wide v0

    mul-double/2addr p4, p8

    add-double/2addr v0, p4

    invoke-virtual {p2, p3, v0, v1}, Ljava/nio/DoubleBuffer;->put(ID)Ljava/nio/DoubleBuffer;

    iget-object p2, p0, Lbc/h;->g:Ljava/nio/DoubleBuffer;

    add-int/lit8 p3, p1, 0x7

    invoke-virtual {p2, p3}, Ljava/nio/DoubleBuffer;->get(I)D

    move-result-wide p4

    mul-double v0, p6, p6

    add-double/2addr p4, v0

    invoke-virtual {p2, p3, p4, p5}, Ljava/nio/DoubleBuffer;->put(ID)Ljava/nio/DoubleBuffer;

    iget-object p2, p0, Lbc/h;->g:Ljava/nio/DoubleBuffer;

    add-int/lit8 p3, p1, 0x8

    invoke-virtual {p2, p3}, Ljava/nio/DoubleBuffer;->get(I)D

    move-result-wide p4

    mul-double/2addr p6, p8

    add-double/2addr p4, p6

    invoke-virtual {p2, p3, p4, p5}, Ljava/nio/DoubleBuffer;->put(ID)Ljava/nio/DoubleBuffer;

    iget-object p2, p0, Lbc/h;->g:Ljava/nio/DoubleBuffer;

    add-int/lit8 p1, p1, 0x9

    invoke-virtual {p2, p1}, Ljava/nio/DoubleBuffer;->get(I)D

    move-result-wide p3

    mul-double/2addr p8, p8

    add-double/2addr p3, p8

    invoke-virtual {p2, p1, p3, p4}, Ljava/nio/DoubleBuffer;->put(ID)Ljava/nio/DoubleBuffer;

    return-void
.end method

.method public final b(II)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "destVid",
            "srcVid"
        }
    .end annotation

    const/16 v0, 0xa

    mul-int/2addr p1, v0

    mul-int/2addr p2, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lbc/h;->g:Ljava/nio/DoubleBuffer;

    add-int v3, p1, v1

    invoke-virtual {v2, v3}, Ljava/nio/DoubleBuffer;->get(I)D

    move-result-wide v4

    iget-object v6, p0, Lbc/h;->g:Ljava/nio/DoubleBuffer;

    add-int v7, p2, v1

    invoke-virtual {v6, v7}, Ljava/nio/DoubleBuffer;->get(I)D

    move-result-wide v6

    add-double/2addr v4, v6

    invoke-virtual {v2, v3, v4, v5}, Ljava/nio/DoubleBuffer;->put(ID)Ljava/nio/DoubleBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final c(II)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "v1",
            "v2"
        }
    .end annotation

    const/16 v0, 0xa

    mul-int/2addr p1, v0

    mul-int/2addr p2, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lbc/h;->A:[D

    iget-object v3, p0, Lbc/h;->g:Ljava/nio/DoubleBuffer;

    add-int v4, p1, v1

    invoke-virtual {v3, v4}, Ljava/nio/DoubleBuffer;->get(I)D

    move-result-wide v3

    iget-object v5, p0, Lbc/h;->g:Ljava/nio/DoubleBuffer;

    add-int v6, p2, v1

    invoke-virtual {v5, v6}, Ljava/nio/DoubleBuffer;->get(I)D

    move-result-wide v5

    add-double/2addr v3, v5

    aput-wide v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final d()Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;
    .locals 17

    move-object/from16 v0, p0

    iget v1, v0, Lbc/h;->b:I

    new-array v1, v1, [I

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljava/util/Arrays;->fill([II)V

    move v3, v2

    :goto_0
    iget v4, v0, Lbc/h;->c:I

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-ge v3, v4, :cond_0

    invoke-virtual {v0, v3, v2}, Lbc/h;->p(II)I

    move-result v4

    invoke-virtual {v0, v3, v6}, Lbc/h;->p(II)I

    move-result v7

    invoke-virtual {v0, v3, v5}, Lbc/h;->p(II)I

    move-result v5

    aput v6, v1, v4

    aput v6, v1, v7

    aput v6, v1, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    iget v3, v0, Lbc/h;->b:I

    new-array v3, v3, [I

    move v4, v2

    move v7, v4

    :goto_1
    iget v8, v0, Lbc/h;->b:I

    if-ge v4, v8, :cond_2

    aget v8, v1, v4

    if-eqz v8, :cond_1

    add-int/lit8 v8, v7, 0x1

    aput v7, v3, v4

    move v7, v8

    goto :goto_2

    :cond_1
    const/4 v8, -0x1

    aput v8, v3, v4

    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    new-instance v1, LOc/q;

    invoke-direct {v1, v7}, LOc/q;-><init>(I)V

    new-instance v4, LOc/p;

    invoke-direct {v4, v7}, LOc/p;-><init>(I)V

    new-instance v8, LOc/q;

    invoke-direct {v8, v7}, LOc/q;-><init>(I)V

    iget-object v9, v0, Lbc/h;->a:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    invoke-virtual {v9}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->w0()Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    move-result-object v9

    iget-object v10, v0, Lbc/h;->a:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    invoke-virtual {v10}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->s1()Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    move-result-object v10

    const/4 v11, 0x3

    if-eqz v9, :cond_3

    if-eqz v10, :cond_3

    invoke-virtual {v9}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->h()I

    move-result v12

    iget v13, v0, Lbc/h;->b:I

    mul-int/2addr v13, v11

    if-lt v12, v13, :cond_3

    invoke-virtual {v10}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->h()I

    move-result v12

    iget v13, v0, Lbc/h;->b:I

    mul-int/2addr v13, v11

    if-lt v12, v13, :cond_3

    move v12, v6

    goto :goto_3

    :cond_3
    move v12, v2

    :goto_3
    const/4 v13, 0x0

    if-eqz v12, :cond_4

    new-instance v14, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    mul-int/lit8 v15, v7, 0x3

    invoke-direct {v14, v15}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;-><init>(I)V

    goto :goto_4

    :cond_4
    move-object v14, v13

    :goto_4
    if-eqz v12, :cond_5

    new-instance v13, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    mul-int/2addr v7, v11

    invoke-direct {v13, v7}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;-><init>(I)V

    :cond_5
    invoke-virtual {v1, v2}, LOc/q;->r(I)V

    invoke-virtual {v4, v2}, LOc/p;->l(I)V

    invoke-virtual {v8, v2}, LOc/q;->r(I)V

    if-eqz v14, :cond_6

    invoke-virtual {v14, v2}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->j0(I)V

    :cond_6
    if-eqz v13, :cond_7

    invoke-virtual {v13, v2}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->j0(I)V

    :cond_7
    new-instance v7, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {v7}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>()V

    new-instance v15, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    invoke-direct {v15}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;-><init>()V

    new-instance v11, Lbc/h$a;

    invoke-direct {v11}, Lbc/h$a;-><init>()V

    move v5, v2

    :goto_5
    iget v6, v0, Lbc/h;->b:I

    if-ge v5, v6, :cond_a

    aget v6, v3, v5

    if-gez v6, :cond_9

    move-object/from16 v16, v3

    :cond_8
    const/4 v3, 0x3

    goto :goto_6

    :cond_9
    iget-object v2, v0, Lbc/h;->t:Lbc/h$a;

    invoke-virtual {v0, v5, v2}, Lbc/h;->r(ILbc/h$a;)V

    iget-object v2, v0, Lbc/h;->t:Lbc/h$a;

    move-object/from16 v16, v3

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lbc/h$a;->e(I)F

    move-result v2

    invoke-virtual {v7, v2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->e2(F)F

    iget-object v2, v0, Lbc/h;->t:Lbc/h$a;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lbc/h$a;->e(I)F

    move-result v2

    invoke-virtual {v7, v2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->i2(F)F

    iget-object v2, v0, Lbc/h;->t:Lbc/h$a;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lbc/h$a;->e(I)F

    move-result v2

    invoke-virtual {v7, v2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->j2(F)F

    invoke-virtual {v0, v5, v15}, Lbc/h;->s(ILcom/itsmagic/engine/Engines/Engine/Vector/Vector2;)V

    invoke-virtual {v0, v5, v11}, Lbc/h;->q(ILbc/h$a;)V

    invoke-virtual {v1, v7}, LOc/q;->u(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V

    invoke-virtual {v4, v15}, LOc/p;->n(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;)V

    const/4 v2, 0x0

    invoke-virtual {v11, v2}, Lbc/h$a;->e(I)F

    move-result v3

    invoke-virtual {v7, v3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->e2(F)F

    const/4 v2, 0x1

    invoke-virtual {v11, v2}, Lbc/h$a;->e(I)F

    move-result v3

    invoke-virtual {v7, v3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->i2(F)F

    const/4 v2, 0x2

    invoke-virtual {v11, v2}, Lbc/h$a;->e(I)F

    move-result v3

    invoke-virtual {v7, v3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->j2(F)F

    invoke-virtual {v8, v7}, LOc/q;->u(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V

    if-eqz v12, :cond_8

    mul-int/lit8 v2, v5, 0x3

    mul-int/lit8 v6, v6, 0x3

    const/4 v3, 0x3

    invoke-virtual {v14, v6, v9, v2, v3}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->G0(ILcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;II)V

    invoke-virtual {v13, v6, v10, v2, v3}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->G0(ILcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;II)V

    :goto_6
    add-int/lit8 v5, v5, 0x1

    move-object/from16 v3, v16

    const/4 v2, 0x0

    goto :goto_5

    :cond_a
    move-object/from16 v16, v3

    new-instance v2, LOc/n;

    iget v3, v0, Lbc/h;->c:I

    invoke-direct {v2, v3}, LOc/n;-><init>(I)V

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, LOc/n;->k(I)V

    move v5, v3

    :goto_7
    iget v6, v0, Lbc/h;->c:I

    if-ge v5, v6, :cond_b

    invoke-virtual {v0, v5, v3}, Lbc/h;->p(II)I

    move-result v6

    aget v6, v16, v6

    const/4 v7, 0x1

    invoke-virtual {v0, v5, v7}, Lbc/h;->p(II)I

    move-result v9

    aget v9, v16, v9

    const/4 v10, 0x2

    invoke-virtual {v0, v5, v10}, Lbc/h;->p(II)I

    move-result v11

    aget v11, v16, v11

    new-instance v15, LJAVARuntime/Point3;

    invoke-direct {v15, v6, v9, v11}, LJAVARuntime/Point3;-><init>(III)V

    invoke-virtual {v2, v15}, LOc/n;->m(LJAVARuntime/Point3;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_7

    :cond_b
    new-instance v3, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    invoke-direct {v3}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;-><init>()V

    invoke-virtual {v3, v1}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->v2(LOc/q;)V

    invoke-virtual {v3, v4}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->r2(LOc/p;)V

    invoke-virtual {v3, v2}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->n2(LOc/n;)V

    invoke-virtual {v3, v8}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->d2(LOc/q;)V

    if-eqz v12, :cond_c

    invoke-virtual {v3, v14}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->Y1(Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;)V

    invoke-virtual {v3, v13}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->y2(Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;)V

    :cond_c
    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->apply()V

    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->m0()Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;

    return-object v3
.end method

.method public final e(IILbc/h$a;)D
    .locals 20
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "v1",
            "v2",
            "pResult"
        }
    .end annotation

    move-object/from16 v10, p0

    move/from16 v11, p1

    move/from16 v12, p2

    move-object/from16 v13, p3

    invoke-virtual/range {p0 .. p2}, Lbc/h;->c(II)V

    iget-object v0, v10, Lbc/h;->j:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v11}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    const/4 v14, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v14

    :goto_0
    iget-object v1, v10, Lbc/h;->j:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v12}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    move v1, v14

    :goto_1
    and-int v16, v0, v1

    const/4 v8, 0x5

    const/4 v9, 0x7

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x4

    const/4 v6, 0x5

    const/4 v7, 0x2

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v9}, Lbc/h;->t(IIIIIIIII)D

    move-result-wide v17

    const-wide/16 v0, 0x0

    cmpl-double v0, v17, v0

    const/4 v9, 0x2

    if-eqz v0, :cond_2

    if-nez v16, :cond_2

    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    div-double v11, v0, v17

    const/4 v8, 0x7

    const/16 v16, 0x8

    const/4 v1, 0x1

    const/4 v2, 0x2

    const/4 v3, 0x3

    const/4 v4, 0x4

    const/4 v5, 0x5

    const/4 v6, 0x6

    const/4 v7, 0x5

    move-object/from16 v0, p0

    move/from16 v9, v16

    invoke-virtual/range {v0 .. v9}, Lbc/h;->t(IIIIIIIII)D

    move-result-wide v0

    mul-double/2addr v0, v11

    double-to-float v9, v0

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    div-double v16, v0, v17

    const/16 v18, 0x8

    const/4 v1, 0x0

    const/4 v4, 0x1

    const/4 v7, 0x2

    move-object/from16 v0, p0

    move v15, v9

    move/from16 v9, v18

    invoke-virtual/range {v0 .. v9}, Lbc/h;->t(IIIIIIIII)D

    move-result-wide v0

    mul-double v0, v0, v16

    double-to-float v9, v0

    const/4 v8, 0x5

    const/16 v16, 0x8

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v5, 0x4

    move-object/from16 v0, p0

    move/from16 v19, v9

    move/from16 v9, v16

    invoke-virtual/range {v0 .. v9}, Lbc/h;->t(IIIIIIIII)D

    move-result-wide v0

    mul-double/2addr v11, v0

    double-to-float v0, v11

    invoke-virtual {v13, v15, v14}, Lbc/h$a;->g(FI)V

    move/from16 v2, v19

    const/4 v1, 0x1

    invoke-virtual {v13, v2, v1}, Lbc/h$a;->g(FI)V

    const/4 v7, 0x2

    invoke-virtual {v13, v0, v7}, Lbc/h$a;->g(FI)V

    float-to-double v3, v15

    float-to-double v5, v2

    float-to-double v7, v0

    move-object/from16 v0, p0

    move-wide v1, v3

    move-wide v3, v5

    move-wide v5, v7

    invoke-virtual/range {v0 .. v6}, Lbc/h;->H(DDD)D

    move-result-wide v0

    goto/16 :goto_2

    :cond_2
    move v7, v9

    iget-object v0, v10, Lbc/h;->t:Lbc/h$a;

    invoke-virtual {v10, v11, v0}, Lbc/h;->r(ILbc/h$a;)V

    iget-object v0, v10, Lbc/h;->u:Lbc/h$a;

    invoke-virtual {v10, v12, v0}, Lbc/h;->r(ILbc/h$a;)V

    iget-object v0, v10, Lbc/h;->v:Lbc/h$a;

    iget-object v1, v10, Lbc/h;->t:Lbc/h$a;

    invoke-virtual {v0, v1}, Lbc/h$a;->h(Lbc/h$a;)V

    iget-object v0, v10, Lbc/h;->v:Lbc/h$a;

    iget-object v1, v10, Lbc/h;->u:Lbc/h$a;

    invoke-virtual {v0, v1}, Lbc/h$a;->a(Lbc/h$a;)Lbc/h$a;

    move-result-object v0

    const/high16 v1, 0x40000000    # 2.0f

    invoke-virtual {v0, v1}, Lbc/h$a;->c(F)Lbc/h$a;

    iget-object v0, v10, Lbc/h;->t:Lbc/h$a;

    invoke-virtual {v0, v14}, Lbc/h$a;->e(I)F

    move-result v0

    float-to-double v1, v0

    iget-object v0, v10, Lbc/h;->t:Lbc/h$a;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lbc/h$a;->e(I)F

    move-result v0

    float-to-double v3, v0

    iget-object v0, v10, Lbc/h;->t:Lbc/h$a;

    invoke-virtual {v0, v7}, Lbc/h$a;->e(I)F

    move-result v0

    float-to-double v5, v0

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v6}, Lbc/h;->H(DDD)D

    move-result-wide v8

    iget-object v0, v10, Lbc/h;->u:Lbc/h$a;

    invoke-virtual {v0, v14}, Lbc/h$a;->e(I)F

    move-result v0

    float-to-double v1, v0

    iget-object v0, v10, Lbc/h;->u:Lbc/h$a;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lbc/h$a;->e(I)F

    move-result v0

    float-to-double v3, v0

    iget-object v0, v10, Lbc/h;->u:Lbc/h$a;

    invoke-virtual {v0, v7}, Lbc/h$a;->e(I)F

    move-result v0

    float-to-double v5, v0

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v6}, Lbc/h;->H(DDD)D

    move-result-wide v11

    iget-object v0, v10, Lbc/h;->v:Lbc/h$a;

    invoke-virtual {v0, v14}, Lbc/h$a;->e(I)F

    move-result v0

    float-to-double v1, v0

    iget-object v0, v10, Lbc/h;->v:Lbc/h$a;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lbc/h$a;->e(I)F

    move-result v0

    float-to-double v3, v0

    iget-object v0, v10, Lbc/h;->v:Lbc/h$a;

    invoke-virtual {v0, v7}, Lbc/h$a;->e(I)F

    move-result v0

    float-to-double v5, v0

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v6}, Lbc/h;->H(DDD)D

    move-result-wide v0

    invoke-static {v11, v12, v0, v1}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    invoke-static {v8, v9, v0, v1}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    cmpl-double v2, v0, v8

    if-nez v2, :cond_3

    iget-object v2, v10, Lbc/h;->t:Lbc/h$a;

    invoke-virtual {v13, v2}, Lbc/h$a;->h(Lbc/h$a;)V

    goto :goto_2

    :cond_3
    cmpl-double v2, v0, v11

    if-nez v2, :cond_4

    iget-object v2, v10, Lbc/h;->u:Lbc/h$a;

    invoke-virtual {v13, v2}, Lbc/h$a;->h(Lbc/h$a;)V

    goto :goto_2

    :cond_4
    iget-object v2, v10, Lbc/h;->v:Lbc/h$a;

    invoke-virtual {v13, v2}, Lbc/h$a;->h(Lbc/h$a;)V

    :goto_2
    return-wide v0
.end method

.method public final f(I)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "vid"
        }
    .end annotation

    const/16 v0, 0xa

    mul-int/2addr p1, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lbc/h;->g:Ljava/nio/DoubleBuffer;

    add-int v3, p1, v1

    const-wide/16 v4, 0x0

    invoke-virtual {v2, v3, v4, v5}, Ljava/nio/DoubleBuffer;->put(ID)Ljava/nio/DoubleBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final g()V
    .locals 14

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget v2, p0, Lbc/h;->c:I

    if-ge v0, v2, :cond_2

    invoke-virtual {p0, v0}, Lbc/h;->n(I)B

    move-result v2

    if-eqz v2, :cond_0

    goto/16 :goto_1

    :cond_0
    if-eq v1, v0, :cond_1

    mul-int/lit8 v2, v0, 0x3

    mul-int/lit8 v3, v1, 0x3

    iget-object v4, p0, Lbc/h;->k:Ljava/nio/IntBuffer;

    invoke-virtual {v4, v2}, Ljava/nio/IntBuffer;->get(I)I

    move-result v5

    invoke-virtual {v4, v3, v5}, Ljava/nio/IntBuffer;->put(II)Ljava/nio/IntBuffer;

    iget-object v4, p0, Lbc/h;->k:Ljava/nio/IntBuffer;

    add-int/lit8 v5, v3, 0x1

    add-int/lit8 v6, v2, 0x1

    invoke-virtual {v4, v6}, Ljava/nio/IntBuffer;->get(I)I

    move-result v7

    invoke-virtual {v4, v5, v7}, Ljava/nio/IntBuffer;->put(II)Ljava/nio/IntBuffer;

    iget-object v4, p0, Lbc/h;->k:Ljava/nio/IntBuffer;

    add-int/lit8 v7, v3, 0x2

    add-int/lit8 v8, v2, 0x2

    invoke-virtual {v4, v8}, Ljava/nio/IntBuffer;->get(I)I

    move-result v9

    invoke-virtual {v4, v7, v9}, Ljava/nio/IntBuffer;->put(II)Ljava/nio/IntBuffer;

    mul-int/lit8 v4, v0, 0x4

    mul-int/lit8 v9, v1, 0x4

    iget-object v10, p0, Lbc/h;->l:Ljava/nio/DoubleBuffer;

    invoke-virtual {v10, v4}, Ljava/nio/DoubleBuffer;->get(I)D

    move-result-wide v11

    invoke-virtual {v10, v9, v11, v12}, Ljava/nio/DoubleBuffer;->put(ID)Ljava/nio/DoubleBuffer;

    iget-object v10, p0, Lbc/h;->l:Ljava/nio/DoubleBuffer;

    add-int/lit8 v11, v9, 0x1

    add-int/lit8 v12, v4, 0x1

    invoke-virtual {v10, v12}, Ljava/nio/DoubleBuffer;->get(I)D

    move-result-wide v12

    invoke-virtual {v10, v11, v12, v13}, Ljava/nio/DoubleBuffer;->put(ID)Ljava/nio/DoubleBuffer;

    iget-object v10, p0, Lbc/h;->l:Ljava/nio/DoubleBuffer;

    add-int/lit8 v11, v9, 0x2

    add-int/lit8 v12, v4, 0x2

    invoke-virtual {v10, v12}, Ljava/nio/DoubleBuffer;->get(I)D

    move-result-wide v12

    invoke-virtual {v10, v11, v12, v13}, Ljava/nio/DoubleBuffer;->put(ID)Ljava/nio/DoubleBuffer;

    iget-object v10, p0, Lbc/h;->l:Ljava/nio/DoubleBuffer;

    add-int/lit8 v9, v9, 0x3

    add-int/lit8 v4, v4, 0x3

    invoke-virtual {v10, v4}, Ljava/nio/DoubleBuffer;->get(I)D

    move-result-wide v11

    invoke-virtual {v10, v9, v11, v12}, Ljava/nio/DoubleBuffer;->put(ID)Ljava/nio/DoubleBuffer;

    iget-object v4, p0, Lbc/h;->o:Ljava/nio/FloatBuffer;

    invoke-virtual {v4, v2}, Ljava/nio/FloatBuffer;->get(I)F

    move-result v2

    invoke-virtual {v4, v3, v2}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    iget-object v2, p0, Lbc/h;->o:Ljava/nio/FloatBuffer;

    invoke-virtual {v2, v6}, Ljava/nio/FloatBuffer;->get(I)F

    move-result v3

    invoke-virtual {v2, v5, v3}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    iget-object v2, p0, Lbc/h;->o:Ljava/nio/FloatBuffer;

    invoke-virtual {v2, v8}, Ljava/nio/FloatBuffer;->get(I)F

    move-result v3

    invoke-virtual {v2, v7, v3}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    iget-object v2, p0, Lbc/h;->m:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v3

    invoke-virtual {v2, v1, v3}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    iget-object v2, p0, Lbc/h;->n:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v3

    invoke-virtual {v2, v1, v3}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    :cond_1
    add-int/lit8 v1, v1, 0x1

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_2
    iput v1, p0, Lbc/h;->c:I

    return-void
.end method

.method public final h()V
    .locals 13

    invoke-virtual {p0}, Lbc/h;->j()V

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget v2, p0, Lbc/h;->b:I

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lbc/h;->j:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, v1, v0}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_1
    iget v2, p0, Lbc/h;->b:I

    if-ge v1, v2, :cond_8

    iget-object v2, p0, Lbc/h;->h:Ljava/nio/IntBuffer;

    invoke-virtual {v2, v1}, Ljava/nio/IntBuffer;->get(I)I

    move-result v2

    iget-object v3, p0, Lbc/h;->i:Ljava/nio/IntBuffer;

    invoke-virtual {v3, v1}, Ljava/nio/IntBuffer;->get(I)I

    move-result v3

    move v4, v0

    :goto_2
    if-ge v4, v3, :cond_1

    iget-object v5, p0, Lbc/h;->B:[I

    const/4 v6, -0x1

    aput v6, v5, v4

    iget-object v5, p0, Lbc/h;->C:[I

    aput v0, v5, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_1
    move v4, v0

    move v5, v4

    :goto_3
    const/4 v6, 0x1

    if-ge v4, v3, :cond_5

    add-int v7, v2, v4

    iget-object v8, p0, Lbc/h;->p:Ljava/nio/IntBuffer;

    invoke-virtual {v8, v7}, Ljava/nio/IntBuffer;->get(I)I

    move-result v7

    const/4 v8, 0x3

    mul-int/2addr v7, v8

    move v9, v0

    :goto_4
    if-ge v9, v8, :cond_4

    iget-object v10, p0, Lbc/h;->k:Ljava/nio/IntBuffer;

    add-int v11, v7, v9

    invoke-virtual {v10, v11}, Ljava/nio/IntBuffer;->get(I)I

    move-result v10

    move v11, v0

    :goto_5
    if-ge v11, v5, :cond_2

    iget-object v12, p0, Lbc/h;->B:[I

    aget v12, v12, v11

    if-eq v12, v10, :cond_2

    add-int/lit8 v11, v11, 0x1

    goto :goto_5

    :cond_2
    if-ne v11, v5, :cond_3

    iget-object v12, p0, Lbc/h;->B:[I

    aput v10, v12, v11

    iget-object v10, p0, Lbc/h;->C:[I

    aput v6, v10, v11

    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    :cond_3
    iget-object v10, p0, Lbc/h;->C:[I

    aget v12, v10, v11

    add-int/2addr v12, v6

    aput v12, v10, v11

    :goto_6
    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_5
    move v2, v0

    :goto_7
    if-ge v2, v5, :cond_7

    iget-object v3, p0, Lbc/h;->C:[I

    aget v3, v3, v2

    if-ne v3, v6, :cond_6

    iget-object v3, p0, Lbc/h;->B:[I

    aget v3, v3, v2

    iget-object v4, p0, Lbc/h;->j:Ljava/nio/ByteBuffer;

    invoke-virtual {v4, v3, v6}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_8
    return-void
.end method

.method public final j()V
    .locals 2

    iget-object v0, p0, Lbc/h;->B:[I

    if-eqz v0, :cond_0

    array-length v0, v0

    iget v1, p0, Lbc/h;->b:I

    if-ge v0, v1, :cond_1

    :cond_0
    iget v0, p0, Lbc/h;->b:I

    new-array v1, v0, [I

    iput-object v1, p0, Lbc/h;->B:[I

    new-array v0, v0, [I

    iput-object v0, p0, Lbc/h;->C:[I

    :cond_1
    return-void
.end method

.method public final k(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "maxTcount"
        }
    .end annotation

    iget-object v0, p0, Lbc/h;->D:[Z

    if-eqz v0, :cond_0

    array-length v0, v0

    if-ge v0, p1, :cond_1

    :cond_0
    new-array v0, p1, [Z

    iput-object v0, p0, Lbc/h;->D:[Z

    new-array p1, p1, [Z

    iput-object p1, p0, Lbc/h;->E:[Z

    :cond_1
    return-void
.end method

.method public final l(I)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "needed"
        }
    .end annotation

    iget v0, p0, Lbc/h;->r:I

    if-gt p1, v0, :cond_0

    return-void

    :cond_0
    mul-int/lit8 v0, v0, 0x2

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    mul-int/lit8 v0, p1, 0x4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object v1

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object v0

    const/4 v2, 0x0

    :goto_0
    iget v3, p0, Lbc/h;->r:I

    if-ge v2, v3, :cond_1

    iget-object v3, p0, Lbc/h;->p:Ljava/nio/IntBuffer;

    invoke-virtual {v3, v2}, Ljava/nio/IntBuffer;->get(I)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Ljava/nio/IntBuffer;->put(II)Ljava/nio/IntBuffer;

    iget-object v3, p0, Lbc/h;->q:Ljava/nio/IntBuffer;

    invoke-virtual {v3, v2}, Ljava/nio/IntBuffer;->get(I)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Ljava/nio/IntBuffer;->put(II)Ljava/nio/IntBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iput-object v1, p0, Lbc/h;->p:Ljava/nio/IntBuffer;

    iput-object v0, p0, Lbc/h;->q:Ljava/nio/IntBuffer;

    iput p1, p0, Lbc/h;->r:I

    return-void
.end method

.method public final m(Lbc/h$a;II[Z)Z
    .locals 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "p",
            "i1",
            "vIndex",
            "deleted"
        }
    .end annotation

    iget-object v0, p0, Lbc/h;->h:Ljava/nio/IntBuffer;

    invoke-virtual {v0, p3}, Ljava/nio/IntBuffer;->get(I)I

    move-result v0

    iget-object v1, p0, Lbc/h;->i:Ljava/nio/IntBuffer;

    invoke-virtual {v1, p3}, Ljava/nio/IntBuffer;->get(I)I

    move-result p3

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, p3, :cond_5

    add-int v3, v0, v2

    iget-object v4, p0, Lbc/h;->p:Ljava/nio/IntBuffer;

    invoke-virtual {v4, v3}, Ljava/nio/IntBuffer;->get(I)I

    move-result v4

    iget-object v5, p0, Lbc/h;->q:Ljava/nio/IntBuffer;

    invoke-virtual {v5, v3}, Ljava/nio/IntBuffer;->get(I)I

    move-result v3

    invoke-virtual {p0, v4}, Lbc/h;->n(I)B

    move-result v5

    if-eqz v5, :cond_0

    goto/16 :goto_2

    :cond_0
    mul-int/lit8 v5, v4, 0x3

    iget-object v6, p0, Lbc/h;->k:Ljava/nio/IntBuffer;

    add-int/lit8 v7, v3, 0x1

    rem-int/lit8 v7, v7, 0x3

    add-int/2addr v7, v5

    invoke-virtual {v6, v7}, Ljava/nio/IntBuffer;->get(I)I

    move-result v6

    iget-object v7, p0, Lbc/h;->k:Ljava/nio/IntBuffer;

    add-int/lit8 v3, v3, 0x2

    rem-int/lit8 v3, v3, 0x3

    add-int/2addr v5, v3

    invoke-virtual {v7, v5}, Ljava/nio/IntBuffer;->get(I)I

    move-result v3

    const/4 v5, 0x1

    if-eq v6, p2, :cond_3

    if-ne v3, p2, :cond_1

    goto :goto_1

    :cond_1
    iget-object v7, p0, Lbc/h;->w:Lbc/h$a;

    invoke-virtual {p0, v6, v7}, Lbc/h;->r(ILbc/h$a;)V

    iget-object v6, p0, Lbc/h;->w:Lbc/h$a;

    invoke-virtual {v6, p1}, Lbc/h$a;->j(Lbc/h$a;)Lbc/h$a;

    move-result-object v6

    invoke-virtual {v6}, Lbc/h$a;->f()Lbc/h$a;

    iget-object v6, p0, Lbc/h;->x:Lbc/h$a;

    invoke-virtual {p0, v3, v6}, Lbc/h;->r(ILbc/h$a;)V

    iget-object v3, p0, Lbc/h;->x:Lbc/h$a;

    invoke-virtual {v3, p1}, Lbc/h$a;->j(Lbc/h$a;)Lbc/h$a;

    move-result-object v3

    invoke-virtual {v3}, Lbc/h$a;->f()Lbc/h$a;

    iget-object v3, p0, Lbc/h;->w:Lbc/h$a;

    iget-object v6, p0, Lbc/h;->x:Lbc/h$a;

    invoke-virtual {v3, v6}, Lbc/h$a;->d(Lbc/h$a;)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(D)D

    move-result-wide v6

    const-wide v8, 0x3fefff2e48e8a71eL    # 0.9999

    cmpl-double v3, v6, v8

    if-lez v3, :cond_2

    return v5

    :cond_2
    iget-object v3, p0, Lbc/h;->y:Lbc/h$a;

    iget-object v6, p0, Lbc/h;->w:Lbc/h$a;

    invoke-virtual {v3, v6}, Lbc/h$a;->h(Lbc/h$a;)V

    iget-object v3, p0, Lbc/h;->y:Lbc/h$a;

    iget-object v6, p0, Lbc/h;->x:Lbc/h$a;

    invoke-virtual {v3, v6}, Lbc/h$a;->b(Lbc/h$a;)Lbc/h$a;

    move-result-object v3

    invoke-virtual {v3}, Lbc/h$a;->f()Lbc/h$a;

    aput-boolean v1, p4, v2

    iget-object v3, p0, Lbc/h;->z:Lbc/h$a;

    invoke-virtual {p0, v4, v3}, Lbc/h;->o(ILbc/h$a;)V

    iget-object v3, p0, Lbc/h;->y:Lbc/h$a;

    iget-object v4, p0, Lbc/h;->z:Lbc/h$a;

    invoke-virtual {v3, v4}, Lbc/h$a;->d(Lbc/h$a;)D

    move-result-wide v3

    const-wide v6, 0x3fc999999999999aL    # 0.2

    cmpg-double v3, v3, v6

    if-gez v3, :cond_4

    return v5

    :cond_3
    :goto_1
    aput-boolean v5, p4, v2

    :cond_4
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_5
    return v1
.end method

.method public final n(I)B
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "tid"
        }
    .end annotation

    iget-object v0, p0, Lbc/h;->m:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result p1

    return p1
.end method

.method public final o(ILbc/h$a;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "tid",
            "out"
        }
    .end annotation

    mul-int/lit8 p1, p1, 0x3

    iget-object v0, p0, Lbc/h;->o:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/FloatBuffer;->get(I)F

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Lbc/h$a;->g(FI)V

    iget-object v0, p0, Lbc/h;->o:Ljava/nio/FloatBuffer;

    add-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->get(I)F

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p2, v0, v1}, Lbc/h$a;->g(FI)V

    iget-object v0, p0, Lbc/h;->o:Ljava/nio/FloatBuffer;

    const/4 v1, 0x2

    add-int/2addr p1, v1

    invoke-virtual {v0, p1}, Ljava/nio/FloatBuffer;->get(I)F

    move-result p1

    invoke-virtual {p2, p1, v1}, Lbc/h$a;->g(FI)V

    return-void
.end method

.method public final p(II)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "tid",
            "corner"
        }
    .end annotation

    mul-int/lit8 p1, p1, 0x3

    iget-object v0, p0, Lbc/h;->k:Ljava/nio/IntBuffer;

    add-int/2addr p1, p2

    invoke-virtual {v0, p1}, Ljava/nio/IntBuffer;->get(I)I

    move-result p1

    return p1
.end method

.method public final q(ILbc/h$a;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "vid",
            "out"
        }
    .end annotation

    mul-int/lit8 p1, p1, 0x3

    iget-object v0, p0, Lbc/h;->f:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/FloatBuffer;->get(I)F

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Lbc/h$a;->g(FI)V

    iget-object v0, p0, Lbc/h;->f:Ljava/nio/FloatBuffer;

    add-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->get(I)F

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p2, v0, v1}, Lbc/h$a;->g(FI)V

    iget-object v0, p0, Lbc/h;->f:Ljava/nio/FloatBuffer;

    const/4 v1, 0x2

    add-int/2addr p1, v1

    invoke-virtual {v0, p1}, Ljava/nio/FloatBuffer;->get(I)F

    move-result p1

    invoke-virtual {p2, p1, v1}, Lbc/h$a;->g(FI)V

    return-void
.end method

.method public final r(ILbc/h$a;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "vid",
            "out"
        }
    .end annotation

    mul-int/lit8 p1, p1, 0x3

    iget-object v0, p0, Lbc/h;->d:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/FloatBuffer;->get(I)F

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Lbc/h$a;->g(FI)V

    iget-object v0, p0, Lbc/h;->d:Ljava/nio/FloatBuffer;

    add-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->get(I)F

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p2, v0, v1}, Lbc/h$a;->g(FI)V

    iget-object v0, p0, Lbc/h;->d:Ljava/nio/FloatBuffer;

    const/4 v1, 0x2

    add-int/2addr p1, v1

    invoke-virtual {v0, p1}, Ljava/nio/FloatBuffer;->get(I)F

    move-result p1

    invoke-virtual {p2, p1, v1}, Lbc/h$a;->g(FI)V

    return-void
.end method

.method public final s(ILcom/itsmagic/engine/Engines/Engine/Vector/Vector2;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "vid",
            "out"
        }
    .end annotation

    mul-int/lit8 p1, p1, 0x2

    iget-object v0, p0, Lbc/h;->e:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/FloatBuffer;->get(I)F

    move-result v0

    invoke-virtual {p2, v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->X0(F)V

    iget-object v0, p0, Lbc/h;->e:Ljava/nio/FloatBuffer;

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {v0, p1}, Ljava/nio/FloatBuffer;->get(I)F

    move-result p1

    invoke-virtual {p2, p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->Y0(F)V

    return-void
.end method

.method public final t(IIIIIIIII)D
    .locals 24
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "a11",
            "a12",
            "a13",
            "a21",
            "a22",
            "a23",
            "a31",
            "a32",
            "a33"
        }
    .end annotation

    move-object/from16 v0, p0

    iget-object v1, v0, Lbc/h;->A:[D

    aget-wide v2, v1, p1

    aget-wide v4, v1, p5

    mul-double v6, v2, v4

    aget-wide v8, v1, p9

    mul-double/2addr v6, v8

    aget-wide v10, v1, p3

    aget-wide v12, v1, p4

    mul-double v14, v10, v12

    aget-wide v16, v1, p8

    mul-double v14, v14, v16

    add-double/2addr v6, v14

    aget-wide v14, v1, p2

    aget-wide v18, v1, p6

    mul-double v20, v14, v18

    aget-wide v22, v1, p7

    mul-double v20, v20, v22

    add-double v6, v6, v20

    mul-double/2addr v10, v4

    mul-double v10, v10, v22

    sub-double/2addr v6, v10

    mul-double v2, v2, v18

    mul-double v2, v2, v16

    sub-double/2addr v6, v2

    mul-double/2addr v14, v12

    mul-double/2addr v14, v8

    sub-double/2addr v6, v14

    return-wide v6
.end method

.method public final u()V
    .locals 9

    iget-object v0, p0, Lbc/h;->a:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->q1()I

    move-result v0

    iput v0, p0, Lbc/h;->b:I

    iget-object v0, p0, Lbc/h;->a:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->e1()I

    move-result v0

    iput v0, p0, Lbc/h;->c:I

    iget-object v0, p0, Lbc/h;->a:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->j1()I

    move-result v0

    iget-object v1, p0, Lbc/h;->a:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->I0()I

    move-result v1

    iget v2, p0, Lbc/h;->b:I

    mul-int/lit8 v2, v2, 0xc

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v2

    iput-object v2, p0, Lbc/h;->d:Ljava/nio/FloatBuffer;

    iget v2, p0, Lbc/h;->b:I

    mul-int/lit8 v2, v2, 0x8

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v2

    iput-object v2, p0, Lbc/h;->e:Ljava/nio/FloatBuffer;

    iget v2, p0, Lbc/h;->b:I

    mul-int/lit8 v2, v2, 0xc

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v2

    iput-object v2, p0, Lbc/h;->f:Ljava/nio/FloatBuffer;

    iget v2, p0, Lbc/h;->b:I

    mul-int/lit8 v2, v2, 0x50

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->asDoubleBuffer()Ljava/nio/DoubleBuffer;

    move-result-object v2

    iput-object v2, p0, Lbc/h;->g:Ljava/nio/DoubleBuffer;

    iget v2, p0, Lbc/h;->b:I

    mul-int/lit8 v2, v2, 0x4

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object v2

    iput-object v2, p0, Lbc/h;->h:Ljava/nio/IntBuffer;

    iget v2, p0, Lbc/h;->b:I

    mul-int/lit8 v2, v2, 0x4

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object v2

    iput-object v2, p0, Lbc/h;->i:Ljava/nio/IntBuffer;

    iget v2, p0, Lbc/h;->b:I

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v2

    iput-object v2, p0, Lbc/h;->j:Ljava/nio/ByteBuffer;

    iget v2, p0, Lbc/h;->c:I

    mul-int/lit8 v2, v2, 0xc

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object v2

    iput-object v2, p0, Lbc/h;->k:Ljava/nio/IntBuffer;

    iget v2, p0, Lbc/h;->c:I

    mul-int/lit8 v2, v2, 0x20

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->asDoubleBuffer()Ljava/nio/DoubleBuffer;

    move-result-object v2

    iput-object v2, p0, Lbc/h;->l:Ljava/nio/DoubleBuffer;

    iget v2, p0, Lbc/h;->c:I

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v2

    iput-object v2, p0, Lbc/h;->m:Ljava/nio/ByteBuffer;

    iget v2, p0, Lbc/h;->c:I

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v2

    iput-object v2, p0, Lbc/h;->n:Ljava/nio/ByteBuffer;

    iget v2, p0, Lbc/h;->c:I

    mul-int/lit8 v2, v2, 0xc

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v2

    iput-object v2, p0, Lbc/h;->o:Ljava/nio/FloatBuffer;

    iget v2, p0, Lbc/h;->c:I

    mul-int/lit8 v3, v2, 0x3

    iput v3, p0, Lbc/h;->r:I

    mul-int/lit8 v2, v2, 0xc

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object v2

    iput-object v2, p0, Lbc/h;->p:Ljava/nio/IntBuffer;

    iget v2, p0, Lbc/h;->r:I

    mul-int/lit8 v2, v2, 0x4

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object v2

    iput-object v2, p0, Lbc/h;->q:Ljava/nio/IntBuffer;

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    iget v4, p0, Lbc/h;->b:I

    if-ge v3, v4, :cond_2

    iget-object v4, p0, Lbc/h;->a:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    invoke-virtual {v4, v3}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->n1(I)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object v4

    if-le v0, v3, :cond_0

    iget-object v5, p0, Lbc/h;->a:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    invoke-virtual {v5, v3}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->g1(I)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    move-result-object v5

    goto :goto_1

    :cond_0
    new-instance v5, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    invoke-direct {v5}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;-><init>()V

    :goto_1
    if-le v1, v3, :cond_1

    iget-object v6, p0, Lbc/h;->a:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    invoke-virtual {v6, v3}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->F0(I)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object v6

    goto :goto_2

    :cond_1
    new-instance v6, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {v6}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>()V

    :goto_2
    invoke-virtual {v4}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->W0()F

    move-result v7

    invoke-virtual {v4}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->X0()F

    move-result v8

    invoke-virtual {v4}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->Y0()F

    move-result v4

    invoke-virtual {p0, v3, v7, v8, v4}, Lbc/h;->A(IFFF)V

    invoke-virtual {v5}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->k0()F

    move-result v4

    invoke-virtual {v5}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->l0()F

    move-result v5

    invoke-virtual {p0, v3, v4, v5}, Lbc/h;->C(IFF)V

    invoke-virtual {v6}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->W0()F

    move-result v4

    invoke-virtual {v6}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->X0()F

    move-result v5

    invoke-virtual {v6}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->Y0()F

    move-result v6

    invoke-virtual {p0, v3, v4, v5, v6}, Lbc/h;->z(IFFF)V

    invoke-virtual {p0, v3}, Lbc/h;->f(I)V

    iget-object v4, p0, Lbc/h;->h:Ljava/nio/IntBuffer;

    invoke-virtual {v4, v3, v2}, Ljava/nio/IntBuffer;->put(II)Ljava/nio/IntBuffer;

    iget-object v4, p0, Lbc/h;->i:Ljava/nio/IntBuffer;

    invoke-virtual {v4, v3, v2}, Ljava/nio/IntBuffer;->put(II)Ljava/nio/IntBuffer;

    iget-object v4, p0, Lbc/h;->j:Ljava/nio/ByteBuffer;

    invoke-virtual {v4, v3, v2}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_3
    iget v1, p0, Lbc/h;->c:I

    if-ge v0, v1, :cond_3

    iget-object v1, p0, Lbc/h;->a:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    invoke-virtual {v1, v0}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->S0(I)LUb/h;

    move-result-object v1

    invoke-virtual {v1}, LUb/h;->V()I

    move-result v3

    invoke-virtual {v1}, LUb/h;->W()I

    move-result v4

    invoke-virtual {v1}, LUb/h;->X()I

    move-result v1

    invoke-virtual {p0, v0, v2, v3}, Lbc/h;->y(III)V

    const/4 v3, 0x1

    invoke-virtual {p0, v0, v3, v4}, Lbc/h;->y(III)V

    const/4 v3, 0x2

    invoke-virtual {p0, v0, v3, v1}, Lbc/h;->y(III)V

    iget-object v1, p0, Lbc/h;->l:Ljava/nio/DoubleBuffer;

    mul-int/lit8 v3, v0, 0x4

    const-wide/16 v4, 0x0

    invoke-virtual {v1, v3, v4, v5}, Ljava/nio/DoubleBuffer;->put(ID)Ljava/nio/DoubleBuffer;

    iget-object v1, p0, Lbc/h;->l:Ljava/nio/DoubleBuffer;

    add-int/lit8 v6, v3, 0x1

    invoke-virtual {v1, v6, v4, v5}, Ljava/nio/DoubleBuffer;->put(ID)Ljava/nio/DoubleBuffer;

    iget-object v1, p0, Lbc/h;->l:Ljava/nio/DoubleBuffer;

    add-int/lit8 v6, v3, 0x2

    invoke-virtual {v1, v6, v4, v5}, Ljava/nio/DoubleBuffer;->put(ID)Ljava/nio/DoubleBuffer;

    iget-object v1, p0, Lbc/h;->l:Ljava/nio/DoubleBuffer;

    add-int/lit8 v3, v3, 0x3

    invoke-virtual {v1, v3, v4, v5}, Ljava/nio/DoubleBuffer;->put(ID)Ljava/nio/DoubleBuffer;

    iget-object v1, p0, Lbc/h;->m:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v0, v2}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    iget-object v1, p0, Lbc/h;->n:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v0, v2}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v1, v1}, Lbc/h;->w(IFFF)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_3
    return-void
.end method

.method public final v(IB)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "tid",
            "val"
        }
    .end annotation

    iget-object v0, p0, Lbc/h;->m:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1, p2}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    return-void
.end method

.method public final w(IFFF)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "tid",
            "nx",
            "ny",
            "nz"
        }
    .end annotation

    mul-int/lit8 p1, p1, 0x3

    iget-object v0, p0, Lbc/h;->o:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, p1, p2}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    iget-object p2, p0, Lbc/h;->o:Ljava/nio/FloatBuffer;

    add-int/lit8 v0, p1, 0x1

    invoke-virtual {p2, v0, p3}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    iget-object p2, p0, Lbc/h;->o:Ljava/nio/FloatBuffer;

    add-int/lit8 p1, p1, 0x2

    invoke-virtual {p2, p1, p4}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    return-void
.end method

.method public final x(ILbc/h$a;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "tid",
            "n"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lbc/h$a;->e(I)F

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p2, v1}, Lbc/h$a;->e(I)F

    move-result v1

    const/4 v2, 0x2

    invoke-virtual {p2, v2}, Lbc/h$a;->e(I)F

    move-result p2

    invoke-virtual {p0, p1, v0, v1, p2}, Lbc/h;->w(IFFF)V

    return-void
.end method

.method public final y(III)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "tid",
            "corner",
            "vid"
        }
    .end annotation

    mul-int/lit8 p1, p1, 0x3

    iget-object v0, p0, Lbc/h;->k:Ljava/nio/IntBuffer;

    add-int/2addr p1, p2

    invoke-virtual {v0, p1, p3}, Ljava/nio/IntBuffer;->put(II)Ljava/nio/IntBuffer;

    return-void
.end method

.method public final z(IFFF)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "vid",
            "nx",
            "ny",
            "nz"
        }
    .end annotation

    mul-int/lit8 p1, p1, 0x3

    iget-object v0, p0, Lbc/h;->f:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, p1, p2}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    iget-object p2, p0, Lbc/h;->f:Ljava/nio/FloatBuffer;

    add-int/lit8 v0, p1, 0x1

    invoke-virtual {p2, v0, p3}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    iget-object p2, p0, Lbc/h;->f:Ljava/nio/FloatBuffer;

    add-int/lit8 p1, p1, 0x2

    invoke-virtual {p2, p1, p4}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    return-void
.end method
