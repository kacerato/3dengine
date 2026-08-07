.class public LR9/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LR9/h;


# instance fields
.field public final a:I

.field public final b:Z

.field public final c:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

.field public final d:Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;

.field public final e:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

.field public final f:I

.field public final g:I

.field public final h:I

.field public final i:I

.field public final j:I

.field public final k:I

.field public final l:I

.field public final m:I

.field public final n:F


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
    invoke-direct {p0, p1, p2, v0}, LR9/a;-><init>(ILR9/i;Z)V

    return-void
.end method

.method public constructor <init>(ILR9/i;Z)V
    .locals 12
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

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput p1, p0, LR9/a;->a:I

    .line 4
    iput-boolean p3, p0, LR9/a;->b:Z

    .line 5
    iput p1, p0, LR9/a;->f:I

    mul-int v0, p1, p1

    .line 6
    iput v0, p0, LR9/a;->g:I

    add-int/lit8 v1, p1, -0x1

    add-int/lit8 v2, p1, -0x1

    mul-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x2

    const/4 v2, 0x0

    if-eqz p3, :cond_0

    mul-int/lit8 v3, p1, 0x8

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    if-eqz p3, :cond_1

    add-int/lit8 v4, p1, -0x1

    mul-int/lit8 v4, v4, 0x8

    goto :goto_1

    :cond_1
    move v4, v2

    .line 7
    :goto_1
    new-instance v5, LOc/q;

    new-instance v6, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x3

    invoke-direct {v6, v0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;-><init>(I)V

    invoke-direct {v5, v6}, LOc/q;-><init>(Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;)V

    .line 8
    new-instance v0, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;

    add-int/2addr v1, v4

    mul-int/lit8 v1, v1, 0x3

    invoke-direct {v0, v1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;-><init>(I)V

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v3, 0x1

    if-le p1, v3, :cond_2

    sub-int/2addr p1, v3

    int-to-float p1, p1

    div-float p1, v1, p1

    goto :goto_2

    :cond_2
    move p1, v1

    .line 9
    :goto_2
    iput p1, p0, LR9/a;->n:F

    move v4, v2

    move v6, v4

    .line 10
    :goto_3
    iget v7, p0, LR9/a;->f:I

    if-ge v4, v7, :cond_4

    int-to-float v7, v4

    mul-float/2addr v7, p1

    move v8, v2

    .line 11
    :goto_4
    iget v9, p0, LR9/a;->f:I

    if-ge v8, v9, :cond_3

    int-to-float v9, v8

    mul-float/2addr v9, p1

    .line 12
    invoke-interface {p2, v4, v8}, LR9/i;->a(II)F

    move-result v10

    .line 13
    invoke-virtual {v5, v6, v7, v10, v9}, LOc/q;->A(IFFF)V

    add-int/lit8 v6, v6, 0x1

    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_4
    move p1, v2

    move p2, p1

    .line 14
    :goto_5
    iget v4, p0, LR9/a;->f:I

    add-int/lit8 v6, v4, -0x1

    if-ge p1, v6, :cond_6

    move v4, v2

    .line 15
    :goto_6
    iget v6, p0, LR9/a;->f:I

    add-int/lit8 v7, v6, -0x1

    if-ge v4, v7, :cond_5

    mul-int v7, p1, v6

    add-int/2addr v7, v4

    add-int/lit8 v8, v4, 0x1

    mul-int v9, p1, v6

    add-int/2addr v9, v8

    add-int/lit8 v10, p1, 0x1

    mul-int v11, v10, v6

    add-int/2addr v4, v11

    mul-int/2addr v10, v6

    add-int/2addr v10, v8

    add-int/lit8 v6, p2, 0x1

    .line 16
    invoke-virtual {v0, p2, v7}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->l0(II)V

    add-int/lit8 v7, p2, 0x2

    invoke-virtual {v0, v6, v9}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->l0(II)V

    add-int/lit8 v6, p2, 0x3

    invoke-virtual {v0, v7, v4}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->l0(II)V

    add-int/lit8 v7, p2, 0x4

    .line 17
    invoke-virtual {v0, v6, v9}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->l0(II)V

    add-int/lit8 v6, p2, 0x5

    invoke-virtual {v0, v7, v10}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->l0(II)V

    add-int/lit8 p2, p2, 0x6

    invoke-virtual {v0, v6, v4}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->l0(II)V

    move v4, v8

    goto :goto_6

    :cond_5
    add-int/lit8 p1, p1, 0x1

    goto :goto_5

    .line 18
    :cond_6
    iget p1, p0, LR9/a;->g:I

    iput p1, p0, LR9/a;->h:I

    if-eqz p3, :cond_7

    mul-int/lit8 v6, v4, 0x8

    goto :goto_7

    :cond_7
    move v6, v2

    .line 19
    :goto_7
    iput v6, p0, LR9/a;->i:I

    .line 20
    iput p1, p0, LR9/a;->j:I

    mul-int/lit8 v6, v4, 0x2

    add-int/2addr v6, p1

    .line 21
    iput v6, p0, LR9/a;->k:I

    mul-int/lit8 v7, v4, 0x2

    add-int/2addr v6, v7

    .line 22
    iput v6, p0, LR9/a;->l:I

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v6, v4

    .line 23
    iput v6, p0, LR9/a;->m:I

    if-eqz p3, :cond_10

    move p3, v2

    .line 24
    :goto_8
    iget v4, p0, LR9/a;->f:I

    const/4 v6, 0x0

    if-ge p3, v4, :cond_9

    .line 25
    invoke-virtual {p0, p3, v2}, LR9/a;->j(II)I

    move-result v4

    .line 26
    invoke-virtual {v5}, LOc/q;->k()Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    move-result-object v7

    invoke-static {v7, v4}, LR9/a;->n(Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;I)F

    move-result v4

    .line 27
    iget v7, p0, LR9/a;->f:I

    if-le v7, v3, :cond_8

    int-to-float v8, p3

    add-int/lit8 v7, v7, -0x1

    int-to-float v7, v7

    div-float/2addr v8, v7

    goto :goto_9

    :cond_8
    move v8, v6

    .line 28
    :goto_9
    invoke-virtual {v5}, LOc/q;->k()Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    move-result-object v7

    add-int v9, p1, p3

    invoke-static {v7, v9, v8, v4, v6}, LR9/a;->l(Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;IFFF)V

    .line 29
    invoke-virtual {v5}, LOc/q;->k()Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    move-result-object v4

    iget v7, p0, LR9/a;->f:I

    add-int/2addr v7, p1

    add-int/2addr v7, p3

    iget v9, p0, LR9/a;->n:F

    neg-float v9, v9

    invoke-static {v4, v7, v8, v6, v9}, LR9/a;->l(Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;IFFF)V

    add-int/lit8 p3, p3, 0x1

    goto :goto_8

    .line 30
    :cond_9
    invoke-static {v0, p2, p1, v4, v2}, LR9/a;->g(Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;IIIZ)I

    move-result p1

    .line 31
    iget p2, p0, LR9/a;->k:I

    move p3, v2

    .line 32
    :goto_a
    iget v4, p0, LR9/a;->f:I

    if-ge p3, v4, :cond_b

    add-int/lit8 v4, v4, -0x1

    .line 33
    invoke-virtual {p0, p3, v4}, LR9/a;->j(II)I

    move-result v4

    .line 34
    invoke-virtual {v5}, LOc/q;->k()Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    move-result-object v7

    invoke-static {v7, v4}, LR9/a;->n(Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;I)F

    move-result v4

    .line 35
    iget v7, p0, LR9/a;->f:I

    if-le v7, v3, :cond_a

    int-to-float v8, p3

    add-int/lit8 v7, v7, -0x1

    int-to-float v7, v7

    div-float/2addr v8, v7

    goto :goto_b

    :cond_a
    move v8, v6

    .line 36
    :goto_b
    invoke-virtual {v5}, LOc/q;->k()Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    move-result-object v7

    add-int v9, p2, p3

    invoke-static {v7, v9, v8, v4, v1}, LR9/a;->l(Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;IFFF)V

    .line 37
    invoke-virtual {v5}, LOc/q;->k()Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    move-result-object v4

    iget v7, p0, LR9/a;->f:I

    add-int/2addr v7, p2

    add-int/2addr v7, p3

    iget v9, p0, LR9/a;->n:F

    add-float/2addr v9, v1

    invoke-static {v4, v7, v8, v6, v9}, LR9/a;->l(Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;IFFF)V

    add-int/lit8 p3, p3, 0x1

    goto :goto_a

    .line 38
    :cond_b
    invoke-static {v0, p1, p2, v4, v3}, LR9/a;->g(Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;IIIZ)I

    move-result p1

    .line 39
    iget p2, p0, LR9/a;->l:I

    move p3, v2

    .line 40
    :goto_c
    iget v4, p0, LR9/a;->f:I

    if-ge p3, v4, :cond_d

    .line 41
    invoke-virtual {p0, v2, p3}, LR9/a;->j(II)I

    move-result v4

    .line 42
    invoke-virtual {v5}, LOc/q;->k()Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    move-result-object v7

    invoke-static {v7, v4}, LR9/a;->n(Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;I)F

    move-result v4

    .line 43
    iget v7, p0, LR9/a;->f:I

    if-le v7, v3, :cond_c

    int-to-float v8, p3

    add-int/lit8 v7, v7, -0x1

    int-to-float v7, v7

    div-float/2addr v8, v7

    goto :goto_d

    :cond_c
    move v8, v6

    .line 44
    :goto_d
    invoke-virtual {v5}, LOc/q;->k()Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    move-result-object v7

    add-int v9, p2, p3

    invoke-static {v7, v9, v6, v4, v8}, LR9/a;->l(Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;IFFF)V

    .line 45
    invoke-virtual {v5}, LOc/q;->k()Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    move-result-object v4

    iget v7, p0, LR9/a;->f:I

    add-int/2addr v7, p2

    add-int/2addr v7, p3

    iget v9, p0, LR9/a;->n:F

    neg-float v9, v9

    invoke-static {v4, v7, v9, v6, v8}, LR9/a;->l(Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;IFFF)V

    add-int/lit8 p3, p3, 0x1

    goto :goto_c

    .line 46
    :cond_d
    invoke-static {v0, p1, p2, v4, v3}, LR9/a;->g(Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;IIIZ)I

    move-result p1

    .line 47
    iget p2, p0, LR9/a;->m:I

    move p3, v2

    .line 48
    :goto_e
    iget v4, p0, LR9/a;->f:I

    if-ge p3, v4, :cond_f

    add-int/lit8 v4, v4, -0x1

    .line 49
    invoke-virtual {p0, v4, p3}, LR9/a;->j(II)I

    move-result v4

    .line 50
    invoke-virtual {v5}, LOc/q;->k()Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    move-result-object v7

    invoke-static {v7, v4}, LR9/a;->n(Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;I)F

    move-result v4

    .line 51
    iget v7, p0, LR9/a;->f:I

    if-le v7, v3, :cond_e

    int-to-float v8, p3

    add-int/lit8 v7, v7, -0x1

    int-to-float v7, v7

    div-float/2addr v8, v7

    goto :goto_f

    :cond_e
    move v8, v6

    .line 52
    :goto_f
    invoke-virtual {v5}, LOc/q;->k()Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    move-result-object v7

    add-int v9, p2, p3

    invoke-static {v7, v9, v1, v4, v8}, LR9/a;->l(Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;IFFF)V

    .line 53
    invoke-virtual {v5}, LOc/q;->k()Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    move-result-object v4

    iget v7, p0, LR9/a;->f:I

    add-int/2addr v7, p2

    add-int/2addr v7, p3

    iget v9, p0, LR9/a;->n:F

    add-float/2addr v9, v1

    invoke-static {v4, v7, v9, v6, v8}, LR9/a;->l(Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;IFFF)V

    add-int/lit8 p3, p3, 0x1

    goto :goto_e

    .line 54
    :cond_f
    invoke-static {v0, p1, p2, v4, v2}, LR9/a;->g(Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;IIIZ)I

    .line 55
    :cond_10
    invoke-virtual {v5}, LOc/q;->k()Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    move-result-object p1

    iput-object p1, p0, LR9/a;->c:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    .line 56
    iput-object v0, p0, LR9/a;->d:Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;

    .line 57
    new-instance p2, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    invoke-direct {p2}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;-><init>()V

    iput-object p2, p0, LR9/a;->e:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    .line 58
    invoke-virtual {p2, p1}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->w2(Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;)V

    .line 59
    invoke-virtual {p2, v0}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->o2(Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;)V

    .line 60
    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->apply()V

    return-void
.end method

.method public static e(F)F
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

.method public static g(Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;IIIZ)I
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

.method public static l(Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;IFFF)V
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

.method public static n(Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;I)F
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


# virtual methods
.method public a()Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;
    .locals 1

    iget-object v0, p0, LR9/a;->e:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

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

    iget-object v0, p0, LR9/a;->c:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    mul-int/lit8 p1, p1, 0x3

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->X(I)F

    move-result v0

    invoke-virtual {p2, v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->e2(F)F

    iget-object v0, p0, LR9/a;->c:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    add-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->X(I)F

    move-result v0

    invoke-virtual {p2, v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->i2(F)F

    iget-object v0, p0, LR9/a;->c:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    add-int/lit8 p1, p1, 0x2

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->X(I)F

    move-result p1

    invoke-virtual {p2, p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->j2(F)F

    return-object p2
.end method

.method public c()Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;
    .locals 1

    iget-object v0, p0, LR9/a;->d:Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;

    return-object v0
.end method

.method public d()I
    .locals 1

    iget-object v0, p0, LR9/a;->c:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

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

    iget-object v0, p0, LR9/a;->c:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->destroy()V

    :cond_0
    iget-object v0, p0, LR9/a;->d:Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->destroy()V

    :cond_1
    return-void
.end method

.method public getVertices()Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;
    .locals 1

    iget-object v0, p0, LR9/a;->c:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    return-object v0
.end method

.method public h()F
    .locals 2

    iget v0, p0, LR9/a;->a:I

    int-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    div-float/2addr v1, v0

    return v1
.end method

.method public i()I
    .locals 1

    iget-object v0, p0, LR9/a;->d:Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;

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

.method public final j(II)I
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

    iget v0, p0, LR9/a;->f:I

    mul-int/2addr p1, v0

    add-int/2addr p1, p2

    return p1
.end method

.method public k()Z
    .locals 1

    iget-boolean v0, p0, LR9/a;->b:Z

    return v0
.end method

.method public m(LR9/i;)V
    .locals 12
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "heightmap"
        }
    .end annotation

    iget-object v0, p0, LR9/a;->c:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v0, p0, LR9/a;->a:I

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

    add-int v10, v8, v9

    invoke-interface {p1, v7, v9}, LR9/i;->a(II)F

    move-result v11

    aput v11, v5, v10

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

    iget-object v4, p0, LR9/a;->c:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    aget v7, v5, p1

    invoke-virtual {v4, v2, v7}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->z0(IF)V

    add-int/lit8 p1, p1, 0x1

    add-int/lit8 v2, v2, 0x3

    goto :goto_9

    :cond_c
    iget-boolean p1, p0, LR9/a;->b:Z

    if-eqz p1, :cond_10

    move p1, v6

    :goto_a
    if-ge p1, v0, :cond_d

    invoke-virtual {p0, p1, v6}, LR9/a;->j(II)I

    move-result v1

    iget-object v2, p0, LR9/a;->c:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    mul-int/lit8 v1, v1, 0x3

    add-int/2addr v1, v3

    invoke-virtual {v2, v1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->X(I)F

    move-result v1

    iget v2, p0, LR9/a;->j:I

    add-int/2addr v2, p1

    iget-object v4, p0, LR9/a;->c:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

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

    invoke-virtual {p0, p1, v1}, LR9/a;->j(II)I

    move-result v1

    iget-object v2, p0, LR9/a;->c:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    mul-int/lit8 v1, v1, 0x3

    add-int/2addr v1, v3

    invoke-virtual {v2, v1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->X(I)F

    move-result v1

    iget v2, p0, LR9/a;->k:I

    add-int/2addr v2, p1

    iget-object v4, p0, LR9/a;->c:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    mul-int/lit8 v2, v2, 0x3

    add-int/2addr v2, v3

    invoke-virtual {v4, v2, v1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->z0(IF)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_b

    :cond_e
    move p1, v6

    :goto_c
    if-ge p1, v0, :cond_f

    invoke-virtual {p0, v6, p1}, LR9/a;->j(II)I

    move-result v1

    iget-object v2, p0, LR9/a;->c:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    mul-int/lit8 v1, v1, 0x3

    add-int/2addr v1, v3

    invoke-virtual {v2, v1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->X(I)F

    move-result v1

    iget v2, p0, LR9/a;->l:I

    add-int/2addr v2, p1

    iget-object v4, p0, LR9/a;->c:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    mul-int/lit8 v2, v2, 0x3

    add-int/2addr v2, v3

    invoke-virtual {v4, v2, v1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->z0(IF)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_c

    :cond_f
    :goto_d
    if-ge v6, v0, :cond_10

    add-int/lit8 p1, v0, -0x1

    invoke-virtual {p0, p1, v6}, LR9/a;->j(II)I

    move-result p1

    iget-object v1, p0, LR9/a;->c:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    mul-int/lit8 p1, p1, 0x3

    add-int/2addr p1, v3

    invoke-virtual {v1, p1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->X(I)F

    move-result p1

    iget v1, p0, LR9/a;->m:I

    add-int/2addr v1, v6

    iget-object v2, p0, LR9/a;->c:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    mul-int/lit8 v1, v1, 0x3

    add-int/2addr v1, v3

    invoke-virtual {v2, v1, p1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->z0(IF)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_d

    :cond_10
    iget-object p1, p0, LR9/a;->e:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->apply()V

    return-void
.end method
