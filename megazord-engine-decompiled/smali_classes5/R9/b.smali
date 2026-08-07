.class public LR9/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LR9/h;


# instance fields
.field public final a:I

.field public final b:Z

.field public final c:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

.field public final d:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

.field public final e:Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;

.field public final f:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

.field public final g:I

.field public final h:I

.field public final i:I

.field public final j:I

.field public final k:I

.field public final l:I

.field public final m:I

.field public final n:I

.field public final o:F


# direct methods
.method public constructor <init>(ILR9/i;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "resolution",
            "heightmap"
        }
    .end annotation

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, p1, p2, v0}, LR9/b;-><init>(ILR9/i;Z)V

    return-void
.end method

.method public constructor <init>(ILR9/i;Z)V
    .locals 16
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "resolution",
            "heightmap",
            "bordersEnabled"
        }
    .end annotation

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p3

    .line 2
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput v1, v0, LR9/b;->a:I

    .line 4
    iput-boolean v2, v0, LR9/b;->b:Z

    .line 5
    iput v1, v0, LR9/b;->g:I

    mul-int v3, v1, v1

    .line 6
    iput v3, v0, LR9/b;->h:I

    add-int/lit8 v4, v1, -0x1

    add-int/lit8 v5, v1, -0x1

    mul-int/2addr v4, v5

    mul-int/lit8 v4, v4, 0x2

    const/4 v5, 0x0

    if-eqz v2, :cond_0

    mul-int/lit8 v6, v1, 0x8

    goto :goto_0

    :cond_0
    move v6, v5

    :goto_0
    if-eqz v2, :cond_1

    add-int/lit8 v7, v1, -0x1

    mul-int/lit8 v7, v7, 0x8

    goto :goto_1

    :cond_1
    move v7, v5

    .line 7
    :goto_1
    new-instance v8, LOc/q;

    new-instance v9, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    add-int v10, v3, v6

    mul-int/lit8 v10, v10, 0x3

    invoke-direct {v9, v10}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;-><init>(I)V

    invoke-direct {v8, v9}, LOc/q;-><init>(Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;)V

    .line 8
    new-instance v9, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    add-int/2addr v3, v6

    mul-int/lit8 v3, v3, 0x2

    invoke-direct {v9, v3}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;-><init>(I)V

    .line 9
    new-instance v3, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;

    add-int/2addr v4, v7

    mul-int/lit8 v4, v4, 0x3

    invoke-direct {v3, v4}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;-><init>(I)V

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v6, 0x1

    if-le v1, v6, :cond_2

    sub-int/2addr v1, v6

    int-to-float v1, v1

    div-float v1, v4, v1

    goto :goto_2

    :cond_2
    move v1, v4

    .line 10
    :goto_2
    iput v1, v0, LR9/b;->o:F

    move v7, v5

    move v10, v7

    .line 11
    :goto_3
    iget v11, v0, LR9/b;->g:I

    if-ge v7, v11, :cond_4

    int-to-float v11, v7

    mul-float/2addr v11, v1

    move v12, v5

    .line 12
    :goto_4
    iget v13, v0, LR9/b;->g:I

    if-ge v12, v13, :cond_3

    int-to-float v14, v12

    mul-float/2addr v14, v1

    sub-int/2addr v13, v12

    sub-int/2addr v13, v6

    move-object/from16 v15, p2

    .line 13
    invoke-interface {v15, v7, v13}, LR9/i;->a(II)F

    move-result v13

    .line 14
    invoke-static {v14}, LR9/b;->q(F)F

    move-result v4

    invoke-virtual {v8, v10, v11, v13, v4}, LOc/q;->A(IFFF)V

    mul-int/lit8 v4, v10, 0x2

    .line 15
    invoke-virtual {v9, v4, v11}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->z0(IF)V

    add-int/2addr v4, v6

    .line 16
    invoke-virtual {v9, v4, v14}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->z0(IF)V

    add-int/lit8 v10, v10, 0x1

    add-int/lit8 v12, v12, 0x1

    const/high16 v4, 0x3f800000    # 1.0f

    goto :goto_4

    :cond_3
    move-object/from16 v15, p2

    add-int/lit8 v7, v7, 0x1

    const/high16 v4, 0x3f800000    # 1.0f

    goto :goto_3

    :cond_4
    move v1, v5

    move v4, v1

    .line 17
    :goto_5
    iget v7, v0, LR9/b;->g:I

    add-int/lit8 v10, v7, -0x1

    if-ge v1, v10, :cond_6

    move v7, v5

    .line 18
    :goto_6
    iget v10, v0, LR9/b;->g:I

    add-int/lit8 v11, v10, -0x1

    if-ge v7, v11, :cond_5

    mul-int v11, v1, v10

    add-int/2addr v11, v7

    add-int/lit8 v12, v7, 0x1

    mul-int v13, v1, v10

    add-int/2addr v13, v12

    add-int/lit8 v14, v1, 0x1

    mul-int v15, v14, v10

    add-int/2addr v7, v15

    mul-int/2addr v14, v10

    add-int/2addr v14, v12

    add-int/lit8 v10, v4, 0x1

    .line 19
    invoke-virtual {v3, v4, v11}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->l0(II)V

    add-int/lit8 v15, v4, 0x2

    invoke-virtual {v3, v10, v13}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->l0(II)V

    add-int/lit8 v10, v4, 0x3

    invoke-virtual {v3, v15, v14}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->l0(II)V

    add-int/lit8 v13, v4, 0x4

    .line 20
    invoke-virtual {v3, v10, v11}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->l0(II)V

    add-int/lit8 v10, v4, 0x5

    invoke-virtual {v3, v13, v14}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->l0(II)V

    add-int/lit8 v4, v4, 0x6

    invoke-virtual {v3, v10, v7}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->l0(II)V

    move v7, v12

    goto :goto_6

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 21
    :cond_6
    iget v1, v0, LR9/b;->h:I

    iput v1, v0, LR9/b;->i:I

    if-eqz v2, :cond_7

    mul-int/lit8 v10, v7, 0x8

    goto :goto_7

    :cond_7
    move v10, v5

    .line 22
    :goto_7
    iput v10, v0, LR9/b;->j:I

    .line 23
    iput v1, v0, LR9/b;->k:I

    mul-int/lit8 v10, v7, 0x2

    add-int/2addr v10, v1

    .line 24
    iput v10, v0, LR9/b;->l:I

    mul-int/lit8 v11, v7, 0x2

    add-int/2addr v10, v11

    .line 25
    iput v10, v0, LR9/b;->m:I

    mul-int/lit8 v7, v7, 0x2

    add-int/2addr v10, v7

    .line 26
    iput v10, v0, LR9/b;->n:I

    if-eqz v2, :cond_10

    move v2, v5

    .line 27
    :goto_8
    iget v7, v0, LR9/b;->g:I

    const/4 v10, 0x0

    if-ge v2, v7, :cond_9

    .line 28
    invoke-direct {v0, v2, v5}, LR9/b;->k(II)I

    move-result v7

    .line 29
    invoke-virtual {v8}, LOc/q;->k()Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    move-result-object v11

    invoke-static {v11, v7}, LR9/b;->p(Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;I)F

    move-result v7

    .line 30
    iget v11, v0, LR9/b;->g:I

    if-le v11, v6, :cond_8

    int-to-float v12, v2

    add-int/lit8 v11, v11, -0x1

    int-to-float v11, v11

    div-float/2addr v12, v11

    goto :goto_9

    :cond_8
    move v12, v10

    .line 31
    :goto_9
    invoke-static {v10}, LR9/b;->q(F)F

    move-result v11

    .line 32
    iget v13, v0, LR9/b;->o:F

    sub-float v13, v11, v13

    .line 33
    invoke-virtual {v8}, LOc/q;->k()Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    move-result-object v14

    add-int v15, v1, v2

    invoke-static {v14, v15, v12, v7, v11}, LR9/b;->n(Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;IFFF)V

    .line 34
    invoke-virtual {v8}, LOc/q;->k()Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    move-result-object v7

    iget v11, v0, LR9/b;->g:I

    add-int/2addr v11, v1

    add-int/2addr v11, v2

    invoke-static {v7, v11, v12, v10, v13}, LR9/b;->n(Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;IFFF)V

    .line 35
    invoke-static {v9, v15, v12, v10}, LR9/b;->m(Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;IFF)V

    .line 36
    iget v7, v0, LR9/b;->g:I

    add-int/2addr v7, v1

    add-int/2addr v7, v2

    invoke-static {v9, v7, v12, v10}, LR9/b;->m(Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;IFF)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 37
    :cond_9
    invoke-static {v3, v4, v1, v7, v5}, LR9/b;->g(Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;IIIZ)I

    move-result v1

    .line 38
    iget v2, v0, LR9/b;->l:I

    move v4, v5

    .line 39
    :goto_a
    iget v7, v0, LR9/b;->g:I

    if-ge v4, v7, :cond_b

    add-int/lit8 v7, v7, -0x1

    .line 40
    invoke-direct {v0, v4, v7}, LR9/b;->k(II)I

    move-result v7

    .line 41
    invoke-virtual {v8}, LOc/q;->k()Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    move-result-object v11

    invoke-static {v11, v7}, LR9/b;->p(Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;I)F

    move-result v7

    .line 42
    iget v11, v0, LR9/b;->g:I

    if-le v11, v6, :cond_a

    int-to-float v12, v4

    add-int/lit8 v11, v11, -0x1

    int-to-float v11, v11

    div-float/2addr v12, v11

    :goto_b
    const/high16 v11, 0x3f800000    # 1.0f

    goto :goto_c

    :cond_a
    move v12, v10

    goto :goto_b

    .line 43
    :goto_c
    invoke-static {v11}, LR9/b;->q(F)F

    move-result v13

    .line 44
    iget v14, v0, LR9/b;->o:F

    add-float/2addr v14, v13

    .line 45
    invoke-virtual {v8}, LOc/q;->k()Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    move-result-object v15

    add-int v5, v2, v4

    invoke-static {v15, v5, v12, v7, v13}, LR9/b;->n(Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;IFFF)V

    .line 46
    invoke-virtual {v8}, LOc/q;->k()Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    move-result-object v7

    iget v13, v0, LR9/b;->g:I

    add-int/2addr v13, v2

    add-int/2addr v13, v4

    invoke-static {v7, v13, v12, v10, v14}, LR9/b;->n(Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;IFFF)V

    .line 47
    invoke-static {v9, v5, v12, v11}, LR9/b;->m(Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;IFF)V

    .line 48
    iget v5, v0, LR9/b;->g:I

    add-int/2addr v5, v2

    add-int/2addr v5, v4

    invoke-static {v9, v5, v12, v11}, LR9/b;->m(Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;IFF)V

    add-int/lit8 v4, v4, 0x1

    const/4 v5, 0x0

    goto :goto_a

    .line 49
    :cond_b
    invoke-static {v3, v1, v2, v7, v6}, LR9/b;->g(Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;IIIZ)I

    move-result v1

    .line 50
    iget v2, v0, LR9/b;->m:I

    const/4 v4, 0x0

    .line 51
    :goto_d
    iget v5, v0, LR9/b;->g:I

    if-ge v4, v5, :cond_d

    const/4 v7, 0x0

    .line 52
    invoke-direct {v0, v7, v4}, LR9/b;->k(II)I

    move-result v5

    .line 53
    invoke-virtual {v8}, LOc/q;->k()Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    move-result-object v7

    invoke-static {v7, v5}, LR9/b;->p(Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;I)F

    move-result v5

    .line 54
    iget v7, v0, LR9/b;->g:I

    if-le v7, v6, :cond_c

    int-to-float v11, v4

    add-int/lit8 v7, v7, -0x1

    int-to-float v7, v7

    div-float/2addr v11, v7

    goto :goto_e

    :cond_c
    move v11, v10

    .line 55
    :goto_e
    invoke-static {v11}, LR9/b;->q(F)F

    move-result v7

    .line 56
    invoke-virtual {v8}, LOc/q;->k()Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    move-result-object v12

    add-int v13, v2, v4

    invoke-static {v12, v13, v10, v5, v7}, LR9/b;->n(Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;IFFF)V

    .line 57
    invoke-virtual {v8}, LOc/q;->k()Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    move-result-object v5

    iget v12, v0, LR9/b;->g:I

    add-int/2addr v12, v2

    add-int/2addr v12, v4

    iget v14, v0, LR9/b;->o:F

    neg-float v14, v14

    invoke-static {v5, v12, v14, v10, v7}, LR9/b;->n(Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;IFFF)V

    .line 58
    invoke-static {v9, v13, v10, v11}, LR9/b;->m(Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;IFF)V

    .line 59
    iget v5, v0, LR9/b;->g:I

    add-int/2addr v5, v2

    add-int/2addr v5, v4

    invoke-static {v9, v5, v10, v11}, LR9/b;->m(Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;IFF)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_d

    .line 60
    :cond_d
    invoke-static {v3, v1, v2, v5, v6}, LR9/b;->g(Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;IIIZ)I

    move-result v1

    .line 61
    iget v2, v0, LR9/b;->n:I

    const/4 v7, 0x0

    .line 62
    :goto_f
    iget v4, v0, LR9/b;->g:I

    if-ge v7, v4, :cond_f

    add-int/lit8 v4, v4, -0x1

    .line 63
    invoke-direct {v0, v4, v7}, LR9/b;->k(II)I

    move-result v4

    .line 64
    invoke-virtual {v8}, LOc/q;->k()Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    move-result-object v5

    invoke-static {v5, v4}, LR9/b;->p(Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;I)F

    move-result v4

    .line 65
    iget v5, v0, LR9/b;->g:I

    if-le v5, v6, :cond_e

    int-to-float v11, v7

    add-int/lit8 v5, v5, -0x1

    int-to-float v5, v5

    div-float/2addr v11, v5

    goto :goto_10

    :cond_e
    move v11, v10

    .line 66
    :goto_10
    invoke-static {v11}, LR9/b;->q(F)F

    move-result v5

    .line 67
    invoke-virtual {v8}, LOc/q;->k()Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    move-result-object v12

    add-int v13, v2, v7

    const/high16 v14, 0x3f800000    # 1.0f

    invoke-static {v12, v13, v14, v4, v5}, LR9/b;->n(Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;IFFF)V

    .line 68
    invoke-virtual {v8}, LOc/q;->k()Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    move-result-object v4

    iget v12, v0, LR9/b;->g:I

    add-int/2addr v12, v2

    add-int/2addr v12, v7

    iget v15, v0, LR9/b;->o:F

    add-float/2addr v15, v14

    invoke-static {v4, v12, v15, v10, v5}, LR9/b;->n(Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;IFFF)V

    .line 69
    invoke-static {v9, v13, v14, v11}, LR9/b;->m(Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;IFF)V

    .line 70
    iget v4, v0, LR9/b;->g:I

    add-int/2addr v4, v2

    add-int/2addr v4, v7

    invoke-static {v9, v4, v14, v11}, LR9/b;->m(Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;IFF)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_f

    :cond_f
    const/4 v5, 0x0

    .line 71
    invoke-static {v3, v1, v2, v4, v5}, LR9/b;->g(Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;IIIZ)I

    .line 72
    :cond_10
    invoke-virtual {v8}, LOc/q;->k()Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    move-result-object v1

    iput-object v1, v0, LR9/b;->c:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    .line 73
    iput-object v9, v0, LR9/b;->d:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    .line 74
    iput-object v3, v0, LR9/b;->e:Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;

    .line 75
    new-instance v2, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    invoke-direct {v2}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;-><init>()V

    iput-object v2, v0, LR9/b;->f:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    .line 76
    invoke-virtual {v2, v1}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->w2(Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;)V

    .line 77
    invoke-virtual {v2, v9}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->s2(Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;)V

    .line 78
    invoke-virtual {v2, v3}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->o2(Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;)V

    .line 79
    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->apply()V

    return-void
.end method

.method private static e(F)F
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "x"
        }
    .end annotation

    const/4 v0, 0x0

    cmpg-float v1, p0, v0

    if-gez v1, :cond_0

    :goto_0
    move p0, v0

    goto :goto_1

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v1, p0, v0

    if-lez v1, :cond_1

    goto :goto_0

    :cond_1
    :goto_1
    return p0
.end method

.method private static g(Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;IIIZ)I
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "tri",
            "ti",
            "base",
            "N",
            "invert"
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    add-int/lit8 v1, p3, -0x1

    if-ge v0, v1, :cond_1

    add-int v1, p2, v0

    add-int/lit8 v2, v1, 0x1

    add-int v3, v1, p3

    add-int/lit8 v4, v3, 0x1

    if-nez p4, :cond_0

    add-int/lit8 v5, p1, 0x1

    invoke-virtual {p0, p1, v1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->l0(II)V

    add-int/lit8 v1, p1, 0x2

    invoke-virtual {p0, v5, v2}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->l0(II)V

    add-int/lit8 v5, p1, 0x3

    invoke-virtual {p0, v1, v3}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->l0(II)V

    add-int/lit8 v1, p1, 0x4

    invoke-virtual {p0, v5, v2}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->l0(II)V

    add-int/lit8 v2, p1, 0x5

    invoke-virtual {p0, v1, v4}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->l0(II)V

    add-int/lit8 p1, p1, 0x6

    invoke-virtual {p0, v2, v3}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->l0(II)V

    goto :goto_1

    :cond_0
    add-int/lit8 v5, p1, 0x1

    invoke-virtual {p0, p1, v3}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->l0(II)V

    add-int/lit8 v6, p1, 0x2

    invoke-virtual {p0, v5, v2}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->l0(II)V

    add-int/lit8 v5, p1, 0x3

    invoke-virtual {p0, v6, v1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->l0(II)V

    add-int/lit8 v1, p1, 0x4

    invoke-virtual {p0, v5, v3}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->l0(II)V

    add-int/lit8 v3, p1, 0x5

    invoke-virtual {p0, v1, v4}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->l0(II)V

    add-int/lit8 p1, p1, 0x6

    invoke-virtual {p0, v3, v2}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->l0(II)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return p1
.end method

.method private k(II)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "ix",
            "iy"
        }
    .end annotation

    iget v0, p0, LR9/b;->g:I

    mul-int/2addr p1, v0

    add-int/2addr p1, p2

    return p1
.end method

.method public static m(Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;IFF)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "buf",
            "vi",
            "u",
            "v"
        }
    .end annotation

    mul-int/lit8 p1, p1, 0x2

    invoke-virtual {p0, p1, p2}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->z0(IF)V

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1, p3}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->z0(IF)V

    return-void
.end method

.method private static n(Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;IFFF)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "buf",
            "vi",
            "x",
            "y",
            "z"
        }
    .end annotation

    mul-int/lit8 p1, p1, 0x3

    invoke-virtual {p0, p1, p2}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->z0(IF)V

    add-int/lit8 p2, p1, 0x1

    invoke-virtual {p0, p2, p3}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->z0(IF)V

    add-int/lit8 p1, p1, 0x2

    invoke-virtual {p0, p1, p4}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->z0(IF)V

    return-void
.end method

.method private static p(Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;I)F
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "buf",
            "vi"
        }
    .end annotation

    mul-int/lit8 p1, p1, 0x3

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->X(I)F

    move-result p0

    return p0
.end method

.method public static q(F)F
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    return p0
.end method


# virtual methods
.method public a()Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;
    .locals 1

    iget-object v0, p0, LR9/b;->f:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    return-object v0
.end method

.method public b(ILcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "idx",
            "out"
        }
    .end annotation

    iget-object v0, p0, LR9/b;->c:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    mul-int/lit8 p1, p1, 0x3

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->X(I)F

    move-result v0

    invoke-virtual {p2, v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->e2(F)F

    iget-object v0, p0, LR9/b;->c:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    add-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->X(I)F

    move-result v0

    invoke-virtual {p2, v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->i2(F)F

    iget-object v0, p0, LR9/b;->c:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    add-int/lit8 p1, p1, 0x2

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->X(I)F

    move-result p1

    invoke-virtual {p2, p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->j2(F)F

    return-object p2
.end method

.method public c()Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;
    .locals 1

    iget-object v0, p0, LR9/b;->e:Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;

    return-object v0
.end method

.method public d()I
    .locals 1

    iget-object v0, p0, LR9/b;->c:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->h()I

    move-result v0

    div-int/lit8 v0, v0, 0x3

    :goto_0
    return v0
.end method

.method public f()V
    .locals 1

    iget-object v0, p0, LR9/b;->c:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->destroy()V

    :cond_0
    iget-object v0, p0, LR9/b;->d:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->destroy()V

    :cond_1
    iget-object v0, p0, LR9/b;->e:Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->destroy()V

    :cond_2
    return-void
.end method

.method public getVertices()Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;
    .locals 1

    iget-object v0, p0, LR9/b;->c:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    return-object v0
.end method

.method public h()F
    .locals 2

    iget v0, p0, LR9/b;->a:I

    int-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    div-float/2addr v1, v0

    return v1
.end method

.method public i()I
    .locals 1

    iget-object v0, p0, LR9/b;->e:Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->h()I

    move-result v0

    div-int/lit8 v0, v0, 0x3

    :goto_0
    return v0
.end method

.method public j()Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;
    .locals 1

    iget-object v0, p0, LR9/b;->d:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    return-object v0
.end method

.method public l()Z
    .locals 1

    iget-boolean v0, p0, LR9/b;->b:Z

    return v0
.end method

.method public o(LR9/i;)V
    .locals 12
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "heightmap"
        }
    .end annotation

    iget-object v0, p0, LR9/b;->c:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v0, p0, LR9/b;->a:I

    mul-int v1, v0, v0

    if-gtz v0, :cond_1

    return-void

    :cond_1
    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x1

    if-le v0, v3, :cond_2

    add-int/lit8 v4, v0, -0x1

    int-to-float v4, v4

    div-float v4, v2, v4

    goto :goto_0

    :cond_2
    move v4, v2

    :goto_0
    new-array v5, v1, [F

    const/4 v6, 0x0

    move v7, v6

    :goto_1
    if-ge v7, v0, :cond_4

    mul-int v8, v7, v0

    move v9, v6

    :goto_2
    if-ge v9, v0, :cond_3

    sub-int v10, v0, v9

    sub-int/2addr v10, v3

    invoke-interface {p1, v7, v10}, LR9/i;->a(II)F

    move-result v10

    add-int v11, v8, v9

    aput v10, v5, v11

    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_4
    new-array p1, v0, [F

    new-array v7, v0, [F

    const/4 v8, 0x0

    cmpl-float v9, v4, v8

    if-eqz v9, :cond_5

    div-float v8, v2, v4

    :cond_5
    move v2, v6

    :goto_3
    const/high16 v4, 0x3f000000    # 0.5f

    if-ge v2, v0, :cond_8

    if-eqz v2, :cond_7

    add-int/lit8 v9, v0, -0x1

    if-ne v2, v9, :cond_6

    goto :goto_4

    :cond_6
    mul-float/2addr v4, v8

    goto :goto_5

    :cond_7
    :goto_4
    move v4, v8

    :goto_5
    aput v4, p1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_8
    move p1, v6

    :goto_6
    if-ge p1, v0, :cond_b

    if-eqz p1, :cond_a

    add-int/lit8 v2, v0, -0x1

    if-ne p1, v2, :cond_9

    goto :goto_7

    :cond_9
    mul-float v2, v8, v4

    goto :goto_8

    :cond_a
    :goto_7
    move v2, v8

    :goto_8
    aput v2, v7, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_6

    :cond_b
    move v2, v3

    move p1, v6

    :goto_9
    if-ge p1, v1, :cond_c

    iget-object v4, p0, LR9/b;->c:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    aget v7, v5, p1

    invoke-virtual {v4, v2, v7}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->z0(IF)V

    add-int/lit8 p1, p1, 0x1

    add-int/lit8 v2, v2, 0x3

    goto :goto_9

    :cond_c
    iget-boolean p1, p0, LR9/b;->b:Z

    if-eqz p1, :cond_10

    move p1, v6

    :goto_a
    if-ge p1, v0, :cond_d

    invoke-direct {p0, p1, v6}, LR9/b;->k(II)I

    move-result v1

    iget-object v2, p0, LR9/b;->c:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    mul-int/lit8 v1, v1, 0x3

    add-int/2addr v1, v3

    invoke-virtual {v2, v1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->X(I)F

    move-result v1

    iget v2, p0, LR9/b;->k:I

    add-int/2addr v2, p1

    iget-object v4, p0, LR9/b;->c:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    mul-int/lit8 v2, v2, 0x3

    add-int/2addr v2, v3

    invoke-virtual {v4, v2, v1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->z0(IF)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_a

    :cond_d
    move p1, v6

    :goto_b
    if-ge p1, v0, :cond_e

    add-int/lit8 v1, v0, -0x1

    invoke-direct {p0, p1, v1}, LR9/b;->k(II)I

    move-result v1

    iget-object v2, p0, LR9/b;->c:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    mul-int/lit8 v1, v1, 0x3

    add-int/2addr v1, v3

    invoke-virtual {v2, v1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->X(I)F

    move-result v1

    iget v2, p0, LR9/b;->l:I

    add-int/2addr v2, p1

    iget-object v4, p0, LR9/b;->c:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    mul-int/lit8 v2, v2, 0x3

    add-int/2addr v2, v3

    invoke-virtual {v4, v2, v1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->z0(IF)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_b

    :cond_e
    move p1, v6

    :goto_c
    if-ge p1, v0, :cond_f

    invoke-direct {p0, v6, p1}, LR9/b;->k(II)I

    move-result v1

    iget-object v2, p0, LR9/b;->c:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    mul-int/lit8 v1, v1, 0x3

    add-int/2addr v1, v3

    invoke-virtual {v2, v1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->X(I)F

    move-result v1

    iget v2, p0, LR9/b;->m:I

    add-int/2addr v2, p1

    iget-object v4, p0, LR9/b;->c:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    mul-int/lit8 v2, v2, 0x3

    add-int/2addr v2, v3

    invoke-virtual {v4, v2, v1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->z0(IF)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_c

    :cond_f
    :goto_d
    if-ge v6, v0, :cond_10

    add-int/lit8 p1, v0, -0x1

    invoke-direct {p0, p1, v6}, LR9/b;->k(II)I

    move-result p1

    iget-object v1, p0, LR9/b;->c:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    mul-int/lit8 p1, p1, 0x3

    add-int/2addr p1, v3

    invoke-virtual {v1, p1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->X(I)F

    move-result p1

    iget v1, p0, LR9/b;->n:I

    add-int/2addr v1, v6

    iget-object v2, p0, LR9/b;->c:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    mul-int/lit8 v1, v1, 0x3

    add-int/2addr v1, v3

    invoke-virtual {v2, v1, p1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->z0(IF)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_d

    :cond_10
    iget-object p1, p0, LR9/b;->f:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->apply()V

    return-void
.end method
