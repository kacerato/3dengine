.class public LRi/s;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:I = 0x3e

.field public static final b:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget v0, LRi/u;->d:I

    sput v0, LRi/s;->b:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(LRi/N;IILRi/h;)LRi/c;
    .locals 21
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "ctx",
            "walkableHeight",
            "walkableClimb",
            "hf"
        }
    .end annotation

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    const-string v4, "BUILD_COMPACTHEIGHTFIELD"

    invoke-virtual {v0, v4}, LRi/N;->f(Ljava/lang/String;)V

    new-instance v5, LRi/c;

    invoke-direct {v5}, LRi/c;-><init>()V

    iget v6, v3, LRi/h;->a:I

    iget v7, v3, LRi/h;->b:I

    invoke-static/range {p3 .. p3}, LRi/s;->b(LRi/h;)I

    move-result v8

    iput v6, v5, LRi/c;->a:I

    iput v7, v5, LRi/c;->b:I

    iget v9, v3, LRi/h;->h:I

    iput v9, v5, LRi/c;->f:I

    iput v8, v5, LRi/c;->c:I

    iput v1, v5, LRi/c;->d:I

    iput v2, v5, LRi/c;->e:I

    const/4 v9, 0x0

    iput v9, v5, LRi/c;->h:I

    iget-object v10, v5, LRi/c;->i:[F

    iget-object v11, v3, LRi/h;->c:[F

    invoke-static {v10, v11}, LRi/I;->e([F[F)V

    iget-object v10, v5, LRi/c;->j:[F

    iget-object v11, v3, LRi/h;->d:[F

    invoke-static {v10, v11}, LRi/I;->e([F[F)V

    iget-object v10, v5, LRi/c;->j:[F

    const/4 v11, 0x1

    aget v12, v10, v11

    int-to-float v13, v1

    iget v14, v3, LRi/h;->f:F

    mul-float/2addr v13, v14

    add-float/2addr v12, v13

    aput v12, v10, v11

    iget v10, v3, LRi/h;->e:F

    iput v10, v5, LRi/c;->k:F

    iput v14, v5, LRi/c;->l:F

    mul-int v10, v6, v7

    new-array v10, v10, [LRi/b;

    iput-object v10, v5, LRi/c;->m:[LRi/b;

    new-array v10, v8, [LRi/d;

    iput-object v10, v5, LRi/c;->n:[LRi/d;

    new-array v8, v8, [I

    iput-object v8, v5, LRi/c;->p:[I

    move v8, v9

    :goto_0
    iget-object v10, v5, LRi/c;->m:[LRi/b;

    array-length v12, v10

    if-ge v8, v12, :cond_0

    new-instance v12, LRi/b;

    invoke-direct {v12}, LRi/b;-><init>()V

    aput-object v12, v10, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_0
    move v8, v9

    :goto_1
    iget-object v10, v5, LRi/c;->n:[LRi/d;

    array-length v12, v10

    if-ge v8, v12, :cond_1

    new-instance v12, LRi/d;

    invoke-direct {v12}, LRi/d;-><init>()V

    aput-object v12, v10, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_1
    move v8, v9

    move v10, v8

    :goto_2
    if-ge v8, v7, :cond_7

    move v12, v9

    :goto_3
    if-ge v12, v6, :cond_6

    iget-object v13, v3, LRi/h;->g:[LRi/K;

    mul-int v14, v8, v6

    add-int/2addr v14, v12

    aget-object v13, v13, v14

    if-nez v13, :cond_3

    :cond_2
    move-object/from16 v16, v4

    move v0, v9

    move v4, v11

    goto :goto_7

    :cond_3
    iget-object v15, v5, LRi/c;->m:[LRi/b;

    aget-object v14, v15, v14

    iput v10, v14, LRi/b;->a:I

    iput v9, v14, LRi/b;->b:I

    :goto_4
    if-eqz v13, :cond_2

    iget v15, v13, LRi/K;->c:I

    if-eqz v15, :cond_5

    iget v15, v13, LRi/K;->b:I

    iget-object v11, v13, LRi/K;->d:LRi/K;

    if-eqz v11, :cond_4

    iget v11, v11, LRi/K;->a:I

    goto :goto_5

    :cond_4
    sget v11, LRi/s;->b:I

    :goto_5
    iget-object v9, v5, LRi/c;->n:[LRi/d;

    aget-object v9, v9, v10

    sget v3, LRi/s;->b:I

    move-object/from16 v16, v4

    const/4 v0, 0x0

    invoke-static {v15, v0, v3}, LRi/r;->e(III)I

    move-result v4

    iput v4, v9, LRi/d;->a:I

    iget-object v4, v5, LRi/c;->n:[LRi/d;

    aget-object v4, v4, v10

    sub-int/2addr v11, v15

    invoke-static {v11, v0, v3}, LRi/r;->e(III)I

    move-result v3

    iput v3, v4, LRi/d;->d:I

    iget-object v3, v5, LRi/c;->p:[I

    iget v4, v13, LRi/K;->c:I

    aput v4, v3, v10

    add-int/lit8 v10, v10, 0x1

    iget v3, v14, LRi/b;->b:I

    const/4 v4, 0x1

    add-int/2addr v3, v4

    iput v3, v14, LRi/b;->b:I

    goto :goto_6

    :cond_5
    move-object/from16 v16, v4

    move v0, v9

    move v4, v11

    :goto_6
    iget-object v13, v13, LRi/K;->d:LRi/K;

    move-object/from16 v3, p3

    move v9, v0

    move v11, v4

    move-object/from16 v4, v16

    move-object/from16 v0, p0

    goto :goto_4

    :goto_7
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v3, p3

    move v9, v0

    move v11, v4

    move-object/from16 v4, v16

    move-object/from16 v0, p0

    goto :goto_3

    :cond_6
    move-object/from16 v16, v4

    move v0, v9

    move v4, v11

    add-int/lit8 v8, v8, 0x1

    move-object/from16 v3, p3

    move-object/from16 v4, v16

    move-object/from16 v0, p0

    goto :goto_2

    :cond_7
    move-object/from16 v16, v4

    move v0, v9

    move v3, v0

    move v4, v3

    :goto_8
    if-ge v3, v7, :cond_10

    move v9, v0

    :goto_9
    if-ge v9, v6, :cond_f

    iget-object v10, v5, LRi/c;->m:[LRi/b;

    mul-int v11, v3, v6

    add-int/2addr v11, v9

    aget-object v10, v10, v11

    iget v11, v10, LRi/b;->a:I

    iget v10, v10, LRi/b;->b:I

    add-int/2addr v10, v11

    :goto_a
    if-ge v11, v10, :cond_e

    iget-object v12, v5, LRi/c;->n:[LRi/d;

    aget-object v12, v12, v11

    move v13, v0

    :goto_b
    const/4 v14, 0x4

    if-ge v13, v14, :cond_d

    const/16 v14, 0x3f

    invoke-static {v12, v13, v14}, LRi/r;->d(LRi/d;II)V

    invoke-static {v13}, LRi/r;->b(I)I

    move-result v14

    add-int/2addr v14, v9

    invoke-static {v13}, LRi/r;->c(I)I

    move-result v15

    add-int/2addr v15, v3

    if-ltz v14, :cond_c

    if-ltz v15, :cond_c

    if-ge v14, v6, :cond_c

    if-lt v15, v7, :cond_8

    goto :goto_e

    :cond_8
    iget-object v0, v5, LRi/c;->m:[LRi/b;

    mul-int/2addr v15, v6

    add-int/2addr v14, v15

    aget-object v0, v0, v14

    iget v14, v0, LRi/b;->a:I

    iget v15, v0, LRi/b;->b:I

    add-int/2addr v15, v14

    :goto_c
    if-ge v14, v15, :cond_c

    iget-object v8, v5, LRi/c;->n:[LRi/d;

    aget-object v8, v8, v14

    move/from16 v17, v6

    iget v6, v12, LRi/d;->a:I

    move/from16 v18, v7

    iget v7, v8, LRi/d;->a:I

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    iget v7, v12, LRi/d;->a:I

    move/from16 v19, v10

    iget v10, v12, LRi/d;->d:I

    add-int/2addr v7, v10

    iget v10, v8, LRi/d;->a:I

    move/from16 v20, v15

    iget v15, v8, LRi/d;->d:I

    add-int/2addr v10, v15

    invoke-static {v7, v10}, Ljava/lang/Math;->min(II)I

    move-result v7

    sub-int/2addr v7, v6

    if-lt v7, v1, :cond_b

    iget v6, v8, LRi/d;->a:I

    iget v7, v12, LRi/d;->a:I

    sub-int/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    if-gt v6, v2, :cond_b

    iget v6, v0, LRi/b;->a:I

    sub-int v6, v14, v6

    if-ltz v6, :cond_a

    const/16 v7, 0x3e

    if-le v6, v7, :cond_9

    goto :goto_d

    :cond_9
    invoke-static {v12, v13, v6}, LRi/r;->d(LRi/d;II)V

    goto :goto_f

    :cond_a
    :goto_d
    invoke-static {v4, v6}, Ljava/lang/Math;->max(II)I

    move-result v4

    :cond_b
    add-int/lit8 v14, v14, 0x1

    move/from16 v6, v17

    move/from16 v7, v18

    move/from16 v10, v19

    move/from16 v15, v20

    goto :goto_c

    :cond_c
    :goto_e
    move/from16 v17, v6

    move/from16 v18, v7

    move/from16 v19, v10

    :goto_f
    add-int/lit8 v13, v13, 0x1

    move/from16 v6, v17

    move/from16 v7, v18

    move/from16 v10, v19

    const/4 v0, 0x0

    goto/16 :goto_b

    :cond_d
    move/from16 v17, v6

    move/from16 v18, v7

    move/from16 v19, v10

    add-int/lit8 v11, v11, 0x1

    const/4 v0, 0x0

    goto/16 :goto_a

    :cond_e
    move/from16 v17, v6

    move/from16 v18, v7

    add-int/lit8 v9, v9, 0x1

    const/4 v0, 0x0

    goto/16 :goto_9

    :cond_f
    move/from16 v17, v6

    move/from16 v18, v7

    add-int/lit8 v3, v3, 0x1

    const/4 v0, 0x0

    goto/16 :goto_8

    :cond_10
    const/16 v0, 0x3e

    if-gt v4, v0, :cond_11

    move-object/from16 v1, p0

    move-object/from16 v2, v16

    invoke-virtual {v1, v2}, LRi/N;->g(Ljava/lang/String;)V

    return-object v5

    :cond_11
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "rcBuildCompactHeightfield: Heightfield has too many layers "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " (max: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static b(LRi/h;)I
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "hf"
        }
    .end annotation

    iget v0, p0, LRi/h;->a:I

    iget v1, p0, LRi/h;->b:I

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :goto_0
    if-ge v3, v1, :cond_3

    move v5, v2

    :goto_1
    if-ge v5, v0, :cond_2

    iget-object v6, p0, LRi/h;->g:[LRi/K;

    mul-int v7, v3, v0

    add-int/2addr v7, v5

    aget-object v6, v6, v7

    :goto_2
    if-eqz v6, :cond_1

    iget v7, v6, LRi/K;->c:I

    if-eqz v7, :cond_0

    add-int/lit8 v4, v4, 0x1

    :cond_0
    iget-object v6, v6, LRi/K;->d:LRi/K;

    goto :goto_2

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    return v4
.end method
