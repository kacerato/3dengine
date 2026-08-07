.class public LR9/e;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final x:Z = false


# instance fields
.field public final a:I

.field public final b:Z

.field public final c:LSc/a;

.field public final d:LSc/a;

.field public final e:LSc/b;

.field public f:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentVertexBuffer;

.field public g:Lkc/d;

.field public h:Lcom/google/android/filament/Box;

.field public i:F

.field public j:F

.field public k:F

.field public l:F

.field public m:F

.field public n:F

.field public final o:I

.field public final p:I

.field public final q:I

.field public final r:I

.field public final s:I

.field public final t:I

.field public final u:I

.field public final v:I

.field public final w:F


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
    invoke-direct {p0, p1, p2, v0}, LR9/e;-><init>(ILR9/i;Z)V

    return-void
.end method

.method public constructor <init>(ILR9/i;Z)V
    .locals 20
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
    iput v1, v0, LR9/e;->a:I

    .line 4
    iput-boolean v2, v0, LR9/e;->b:Z

    .line 5
    iput v1, v0, LR9/e;->o:I

    mul-int v3, v1, v1

    .line 6
    iput v3, v0, LR9/e;->p:I

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
    new-instance v8, LOc/d;

    new-instance v9, LSc/a;

    add-int v10, v3, v6

    mul-int/lit8 v10, v10, 0x3

    invoke-direct {v9, v10}, LSc/a;-><init>(I)V

    invoke-direct {v8, v9}, LOc/d;-><init>(LSc/a;)V

    .line 8
    new-instance v13, LSc/a;

    add-int/2addr v3, v6

    mul-int/lit8 v3, v3, 0x2

    invoke-direct {v13, v3}, LSc/a;-><init>(I)V

    .line 9
    new-instance v14, LSc/b;

    add-int/2addr v4, v7

    mul-int/lit8 v4, v4, 0x3

    invoke-direct {v14, v4}, LSc/b;-><init>(I)V

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x1

    if-le v1, v4, :cond_2

    sub-int/2addr v1, v4

    int-to-float v1, v1

    div-float v1, v3, v1

    goto :goto_2

    :cond_2
    move v1, v3

    .line 10
    :goto_2
    iput v1, v0, LR9/e;->w:F

    move v6, v5

    move v7, v6

    .line 11
    :goto_3
    iget v9, v0, LR9/e;->o:I

    if-ge v6, v9, :cond_4

    int-to-float v9, v6

    mul-float/2addr v9, v1

    move v10, v5

    .line 12
    :goto_4
    iget v11, v0, LR9/e;->o:I

    if-ge v10, v11, :cond_3

    int-to-float v11, v10

    mul-float/2addr v11, v1

    move-object/from16 v12, p2

    .line 13
    invoke-interface {v12, v6, v10}, LR9/i;->a(II)F

    move-result v15

    .line 14
    invoke-static {v11}, LR9/e;->A(F)F

    move-result v3

    invoke-virtual {v8, v7, v9, v15, v3}, LOc/d;->A(IFFF)V

    mul-int/lit8 v3, v7, 0x2

    .line 15
    invoke-virtual {v13, v3, v9}, LSc/a;->R(IF)V

    add-int/2addr v3, v4

    .line 16
    invoke-virtual {v13, v3, v11}, LSc/a;->R(IF)V

    add-int/lit8 v7, v7, 0x1

    add-int/lit8 v10, v10, 0x1

    const/high16 v3, 0x3f800000    # 1.0f

    goto :goto_4

    :cond_3
    move-object/from16 v12, p2

    add-int/lit8 v6, v6, 0x1

    const/high16 v3, 0x3f800000    # 1.0f

    goto :goto_3

    :cond_4
    move v1, v5

    move v3, v1

    .line 17
    :goto_5
    iget v6, v0, LR9/e;->o:I

    add-int/lit8 v7, v6, -0x1

    if-ge v1, v7, :cond_6

    move v6, v5

    .line 18
    :goto_6
    iget v7, v0, LR9/e;->o:I

    add-int/lit8 v9, v7, -0x1

    if-ge v6, v9, :cond_5

    mul-int v9, v1, v7

    add-int/2addr v9, v6

    add-int/lit8 v10, v6, 0x1

    mul-int v11, v1, v7

    add-int/2addr v11, v10

    add-int/lit8 v12, v1, 0x1

    mul-int v15, v12, v7

    add-int/2addr v6, v15

    mul-int/2addr v12, v7

    add-int/2addr v12, v10

    add-int/lit8 v7, v3, 0x1

    .line 19
    invoke-virtual {v14, v3, v9}, LSc/b;->N(II)V

    add-int/lit8 v15, v3, 0x2

    invoke-virtual {v14, v7, v11}, LSc/b;->N(II)V

    add-int/lit8 v7, v3, 0x3

    invoke-virtual {v14, v15, v12}, LSc/b;->N(II)V

    add-int/lit8 v11, v3, 0x4

    .line 20
    invoke-virtual {v14, v7, v9}, LSc/b;->N(II)V

    add-int/lit8 v7, v3, 0x5

    invoke-virtual {v14, v11, v12}, LSc/b;->N(II)V

    add-int/lit8 v3, v3, 0x6

    invoke-virtual {v14, v7, v6}, LSc/b;->N(II)V

    move v6, v10

    goto :goto_6

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 21
    :cond_6
    iget v1, v0, LR9/e;->p:I

    iput v1, v0, LR9/e;->q:I

    if-eqz v2, :cond_7

    mul-int/lit8 v7, v6, 0x8

    goto :goto_7

    :cond_7
    move v7, v5

    .line 22
    :goto_7
    iput v7, v0, LR9/e;->r:I

    .line 23
    iput v1, v0, LR9/e;->s:I

    mul-int/lit8 v7, v6, 0x2

    add-int/2addr v7, v1

    .line 24
    iput v7, v0, LR9/e;->t:I

    mul-int/lit8 v9, v6, 0x2

    add-int/2addr v7, v9

    .line 25
    iput v7, v0, LR9/e;->u:I

    mul-int/lit8 v6, v6, 0x2

    add-int/2addr v7, v6

    .line 26
    iput v7, v0, LR9/e;->v:I

    if-eqz v2, :cond_10

    move v2, v5

    .line 27
    :goto_8
    iget v6, v0, LR9/e;->o:I

    const/4 v7, 0x0

    if-ge v2, v6, :cond_9

    .line 28
    invoke-virtual {v0, v2, v5}, LR9/e;->q(II)I

    move-result v6

    .line 29
    invoke-virtual {v8}, LOc/d;->k()LSc/a;

    move-result-object v9

    invoke-static {v9, v6}, LR9/e;->z(LSc/a;I)F

    move-result v6

    .line 30
    iget v9, v0, LR9/e;->o:I

    if-le v9, v4, :cond_8

    int-to-float v10, v2

    add-int/lit8 v9, v9, -0x1

    int-to-float v9, v9

    div-float/2addr v10, v9

    goto :goto_9

    :cond_8
    move v10, v7

    .line 31
    :goto_9
    invoke-static {v7}, LR9/e;->A(F)F

    move-result v9

    .line 32
    iget v11, v0, LR9/e;->w:F

    sub-float v11, v9, v11

    .line 33
    invoke-virtual {v8}, LOc/d;->k()LSc/a;

    move-result-object v12

    add-int v15, v1, v2

    invoke-static {v12, v15, v10, v6, v9}, LR9/e;->v(LSc/a;IFFF)V

    .line 34
    invoke-virtual {v8}, LOc/d;->k()LSc/a;

    move-result-object v6

    iget v9, v0, LR9/e;->o:I

    add-int/2addr v9, v1

    add-int/2addr v9, v2

    invoke-static {v6, v9, v10, v7, v11}, LR9/e;->v(LSc/a;IFFF)V

    .line 35
    invoke-static {v13, v15, v10, v7}, LR9/e;->u(LSc/a;IFF)V

    .line 36
    iget v6, v0, LR9/e;->o:I

    add-int/2addr v6, v1

    add-int/2addr v6, v2

    invoke-static {v13, v6, v10, v7}, LR9/e;->u(LSc/a;IFF)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 37
    :cond_9
    invoke-static {v14, v3, v1, v6, v5}, LR9/e;->f(LSc/b;IIIZ)I

    move-result v1

    .line 38
    iget v2, v0, LR9/e;->t:I

    move v3, v5

    .line 39
    :goto_a
    iget v6, v0, LR9/e;->o:I

    if-ge v3, v6, :cond_b

    add-int/lit8 v6, v6, -0x1

    .line 40
    invoke-virtual {v0, v3, v6}, LR9/e;->q(II)I

    move-result v6

    .line 41
    invoke-virtual {v8}, LOc/d;->k()LSc/a;

    move-result-object v9

    invoke-static {v9, v6}, LR9/e;->z(LSc/a;I)F

    move-result v6

    .line 42
    iget v9, v0, LR9/e;->o:I

    if-le v9, v4, :cond_a

    int-to-float v10, v3

    add-int/lit8 v9, v9, -0x1

    int-to-float v9, v9

    div-float/2addr v10, v9

    :goto_b
    const/high16 v9, 0x3f800000    # 1.0f

    goto :goto_c

    :cond_a
    move v10, v7

    goto :goto_b

    .line 43
    :goto_c
    invoke-static {v9}, LR9/e;->A(F)F

    move-result v11

    .line 44
    iget v12, v0, LR9/e;->w:F

    add-float/2addr v12, v11

    .line 45
    invoke-virtual {v8}, LOc/d;->k()LSc/a;

    move-result-object v15

    add-int v5, v2, v3

    invoke-static {v15, v5, v10, v6, v11}, LR9/e;->v(LSc/a;IFFF)V

    .line 46
    invoke-virtual {v8}, LOc/d;->k()LSc/a;

    move-result-object v6

    iget v11, v0, LR9/e;->o:I

    add-int/2addr v11, v2

    add-int/2addr v11, v3

    invoke-static {v6, v11, v10, v7, v12}, LR9/e;->v(LSc/a;IFFF)V

    .line 47
    invoke-static {v13, v5, v10, v9}, LR9/e;->u(LSc/a;IFF)V

    .line 48
    iget v5, v0, LR9/e;->o:I

    add-int/2addr v5, v2

    add-int/2addr v5, v3

    invoke-static {v13, v5, v10, v9}, LR9/e;->u(LSc/a;IFF)V

    add-int/lit8 v3, v3, 0x1

    const/4 v5, 0x0

    goto :goto_a

    .line 49
    :cond_b
    invoke-static {v14, v1, v2, v6, v4}, LR9/e;->f(LSc/b;IIIZ)I

    move-result v1

    .line 50
    iget v2, v0, LR9/e;->u:I

    const/4 v3, 0x0

    .line 51
    :goto_d
    iget v5, v0, LR9/e;->o:I

    if-ge v3, v5, :cond_d

    const/4 v6, 0x0

    .line 52
    invoke-virtual {v0, v6, v3}, LR9/e;->q(II)I

    move-result v5

    .line 53
    invoke-virtual {v8}, LOc/d;->k()LSc/a;

    move-result-object v6

    invoke-static {v6, v5}, LR9/e;->z(LSc/a;I)F

    move-result v5

    .line 54
    iget v6, v0, LR9/e;->o:I

    if-le v6, v4, :cond_c

    int-to-float v9, v3

    add-int/lit8 v6, v6, -0x1

    int-to-float v6, v6

    div-float/2addr v9, v6

    goto :goto_e

    :cond_c
    move v9, v7

    .line 55
    :goto_e
    invoke-static {v9}, LR9/e;->A(F)F

    move-result v6

    .line 56
    invoke-virtual {v8}, LOc/d;->k()LSc/a;

    move-result-object v10

    add-int v11, v2, v3

    invoke-static {v10, v11, v7, v5, v6}, LR9/e;->v(LSc/a;IFFF)V

    .line 57
    invoke-virtual {v8}, LOc/d;->k()LSc/a;

    move-result-object v5

    iget v10, v0, LR9/e;->o:I

    add-int/2addr v10, v2

    add-int/2addr v10, v3

    iget v12, v0, LR9/e;->w:F

    neg-float v12, v12

    invoke-static {v5, v10, v12, v7, v6}, LR9/e;->v(LSc/a;IFFF)V

    .line 58
    invoke-static {v13, v11, v7, v9}, LR9/e;->u(LSc/a;IFF)V

    .line 59
    iget v5, v0, LR9/e;->o:I

    add-int/2addr v5, v2

    add-int/2addr v5, v3

    invoke-static {v13, v5, v7, v9}, LR9/e;->u(LSc/a;IFF)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_d

    .line 60
    :cond_d
    invoke-static {v14, v1, v2, v5, v4}, LR9/e;->f(LSc/b;IIIZ)I

    move-result v1

    .line 61
    iget v2, v0, LR9/e;->v:I

    const/4 v6, 0x0

    .line 62
    :goto_f
    iget v3, v0, LR9/e;->o:I

    if-ge v6, v3, :cond_f

    add-int/lit8 v3, v3, -0x1

    .line 63
    invoke-virtual {v0, v3, v6}, LR9/e;->q(II)I

    move-result v3

    .line 64
    invoke-virtual {v8}, LOc/d;->k()LSc/a;

    move-result-object v5

    invoke-static {v5, v3}, LR9/e;->z(LSc/a;I)F

    move-result v3

    .line 65
    iget v5, v0, LR9/e;->o:I

    if-le v5, v4, :cond_e

    int-to-float v9, v6

    add-int/lit8 v5, v5, -0x1

    int-to-float v5, v5

    div-float/2addr v9, v5

    goto :goto_10

    :cond_e
    move v9, v7

    .line 66
    :goto_10
    invoke-static {v9}, LR9/e;->A(F)F

    move-result v5

    .line 67
    invoke-virtual {v8}, LOc/d;->k()LSc/a;

    move-result-object v10

    add-int v11, v2, v6

    const/high16 v12, 0x3f800000    # 1.0f

    invoke-static {v10, v11, v12, v3, v5}, LR9/e;->v(LSc/a;IFFF)V

    .line 68
    invoke-virtual {v8}, LOc/d;->k()LSc/a;

    move-result-object v3

    iget v10, v0, LR9/e;->o:I

    add-int/2addr v10, v2

    add-int/2addr v10, v6

    iget v15, v0, LR9/e;->w:F

    add-float/2addr v15, v12

    invoke-static {v3, v10, v15, v7, v5}, LR9/e;->v(LSc/a;IFFF)V

    .line 69
    invoke-static {v13, v11, v12, v9}, LR9/e;->u(LSc/a;IFF)V

    .line 70
    iget v3, v0, LR9/e;->o:I

    add-int/2addr v3, v2

    add-int/2addr v3, v6

    invoke-static {v13, v3, v12, v9}, LR9/e;->u(LSc/a;IFF)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_f

    :cond_f
    const/4 v5, 0x0

    .line 71
    invoke-static {v14, v1, v2, v3, v5}, LR9/e;->f(LSc/b;IIIZ)I

    .line 72
    :cond_10
    invoke-virtual {v8}, LOc/d;->k()LSc/a;

    move-result-object v12

    iput-object v12, v0, LR9/e;->c:LSc/a;

    .line 73
    iput-object v13, v0, LR9/e;->d:LSc/a;

    .line 74
    iput-object v14, v0, LR9/e;->e:LSc/b;

    .line 75
    invoke-virtual/range {p0 .. p0}, LR9/e;->c()V

    .line 76
    new-instance v11, Lcc/g;

    new-instance v1, LR9/e$a;

    invoke-direct {v1, v0}, LR9/e$a;-><init>(LR9/e;)V

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object/from16 v19, v1

    invoke-direct/range {v11 .. v19}, Lcc/g;-><init>(LSc/a;LSc/a;LSc/b;LSc/a;LSc/a;LSc/a;LSc/a;Lcc/g$a;)V

    return-void
.end method

.method public static A(F)F
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

.method public static synthetic a(LR9/e;Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentVertexBuffer;)Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentVertexBuffer;
    .locals 0

    iput-object p1, p0, LR9/e;->f:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentVertexBuffer;

    return-object p1
.end method

.method public static synthetic b(LR9/e;Lkc/d;)Lkc/d;
    .locals 0

    iput-object p1, p0, LR9/e;->g:Lkc/d;

    return-object p1
.end method

.method public static d(F)F
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

.method public static f(LSc/b;IIIZ)I
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

    invoke-virtual {p0, p1, v1}, LSc/b;->N(II)V

    add-int/lit8 v1, p1, 0x2

    invoke-virtual {p0, v5, v2}, LSc/b;->N(II)V

    add-int/lit8 v5, p1, 0x3

    invoke-virtual {p0, v1, v3}, LSc/b;->N(II)V

    add-int/lit8 v1, p1, 0x4

    invoke-virtual {p0, v5, v2}, LSc/b;->N(II)V

    add-int/lit8 v2, p1, 0x5

    invoke-virtual {p0, v1, v4}, LSc/b;->N(II)V

    add-int/lit8 p1, p1, 0x6

    invoke-virtual {p0, v2, v3}, LSc/b;->N(II)V

    goto :goto_1

    :cond_0
    add-int/lit8 v5, p1, 0x1

    invoke-virtual {p0, p1, v3}, LSc/b;->N(II)V

    add-int/lit8 v6, p1, 0x2

    invoke-virtual {p0, v5, v2}, LSc/b;->N(II)V

    add-int/lit8 v5, p1, 0x3

    invoke-virtual {p0, v6, v1}, LSc/b;->N(II)V

    add-int/lit8 v1, p1, 0x4

    invoke-virtual {p0, v5, v3}, LSc/b;->N(II)V

    add-int/lit8 v3, p1, 0x5

    invoke-virtual {p0, v1, v4}, LSc/b;->N(II)V

    add-int/lit8 p1, p1, 0x6

    invoke-virtual {p0, v3, v2}, LSc/b;->N(II)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return p1
.end method

.method public static t(FFFFFFFFFFFF)Z
    .locals 7
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
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "ox",
            "oy",
            "oz",
            "dx",
            "dy",
            "dz",
            "minX",
            "minY",
            "minZ",
            "maxX",
            "maxY",
            "maxZ"
        }
    .end annotation

    const/4 v0, 0x0

    cmpl-float v1, p3, v0

    const/4 v2, 0x0

    const v3, -0x800001

    const v4, 0x7f7fffff    # Float.MAX_VALUE

    if-eqz v1, :cond_0

    sub-float v1, p6, p0

    div-float/2addr v1, p3

    sub-float v5, p9, p0

    div-float/2addr v5, p3

    invoke-static {v1, v5}, Ljava/lang/Math;->min(FF)F

    move-result v6

    invoke-static {v1, v5}, Ljava/lang/Math;->max(FF)F

    move-result v1

    invoke-static {v3, v6}, Ljava/lang/Math;->max(FF)F

    move-result v3

    invoke-static {v4, v1}, Ljava/lang/Math;->min(FF)F

    move-result v4

    goto :goto_0

    :cond_0
    cmpg-float v1, p0, p6

    if-ltz v1, :cond_6

    cmpl-float v1, p0, p9

    if-lez v1, :cond_1

    goto :goto_3

    :cond_1
    :goto_0
    cmpl-float v1, p4, v0

    if-eqz v1, :cond_2

    sub-float v1, p7, p1

    div-float/2addr v1, p4

    sub-float v5, p10, p1

    div-float/2addr v5, p4

    invoke-static {v1, v5}, Ljava/lang/Math;->min(FF)F

    move-result v6

    invoke-static {v1, v5}, Ljava/lang/Math;->max(FF)F

    move-result v1

    invoke-static {v3, v6}, Ljava/lang/Math;->max(FF)F

    move-result v3

    invoke-static {v4, v1}, Ljava/lang/Math;->min(FF)F

    move-result v4

    goto :goto_1

    :cond_2
    cmpg-float v1, p1, p7

    if-ltz v1, :cond_6

    cmpl-float v1, p1, p10

    if-lez v1, :cond_3

    goto :goto_3

    :cond_3
    :goto_1
    cmpl-float v0, p5, v0

    if-eqz v0, :cond_4

    sub-float v0, p8, p2

    div-float/2addr v0, p5

    sub-float v1, p11, p2

    div-float/2addr v1, p5

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v5

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    invoke-static {v3, v5}, Ljava/lang/Math;->max(FF)F

    move-result v3

    invoke-static {v4, v0}, Ljava/lang/Math;->min(FF)F

    move-result v4

    goto :goto_2

    :cond_4
    cmpg-float v0, p2, p8

    if-ltz v0, :cond_6

    cmpl-float v0, p2, p11

    if-lez v0, :cond_5

    goto :goto_3

    :cond_5
    :goto_2
    cmpl-float v0, v4, v3

    if-ltz v0, :cond_6

    const/4 v2, 0x1

    :cond_6
    :goto_3
    return v2
.end method

.method public static u(LSc/a;IFF)V
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

    invoke-virtual {p0, p1, p2}, LSc/a;->R(IF)V

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1, p3}, LSc/a;->R(IF)V

    return-void
.end method

.method public static v(LSc/a;IFFF)V
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

    invoke-virtual {p0, p1, p2}, LSc/a;->R(IF)V

    add-int/lit8 p2, p1, 0x1

    invoke-virtual {p0, p2, p3}, LSc/a;->R(IF)V

    add-int/lit8 p1, p1, 0x2

    invoke-virtual {p0, p1, p4}, LSc/a;->R(IF)V

    return-void
.end method

.method public static z(LSc/a;I)F
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

    invoke-virtual {p0, p1}, LSc/a;->n(I)F

    move-result p0

    return p0
.end method


# virtual methods
.method public final c()V
    .locals 16

    move-object/from16 v0, p0

    const/4 v1, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x3

    iget-object v5, v0, LR9/e;->c:LSc/a;

    const/4 v6, 0x0

    if-nez v5, :cond_0

    iput-object v6, v0, LR9/e;->h:Lcom/google/android/filament/Box;

    return-void

    :cond_0
    invoke-virtual {v5}, LSc/a;->a()I

    move-result v5

    div-int/2addr v5, v4

    if-gtz v5, :cond_1

    iput-object v6, v0, LR9/e;->h:Lcom/google/android/filament/Box;

    return-void

    :cond_1
    const/high16 v6, -0x800000    # Float.NEGATIVE_INFINITY

    const/high16 v7, 0x7f800000    # Float.POSITIVE_INFINITY

    move v8, v6

    move v9, v7

    move v10, v9

    move v11, v10

    const/4 v12, 0x0

    const/4 v13, 0x0

    move v7, v8

    :goto_0
    if-ge v12, v5, :cond_8

    iget-object v14, v0, LR9/e;->c:LSc/a;

    invoke-virtual {v14, v13}, LSc/a;->n(I)F

    move-result v14

    iget-object v15, v0, LR9/e;->c:LSc/a;

    add-int/lit8 v2, v13, 0x1

    invoke-virtual {v15, v2}, LSc/a;->n(I)F

    move-result v2

    iget-object v15, v0, LR9/e;->c:LSc/a;

    add-int/lit8 v4, v13, 0x2

    invoke-virtual {v15, v4}, LSc/a;->n(I)F

    move-result v4

    cmpg-float v15, v14, v9

    if-gez v15, :cond_2

    move v9, v14

    :cond_2
    cmpg-float v15, v2, v10

    if-gez v15, :cond_3

    move v10, v2

    :cond_3
    cmpg-float v15, v4, v11

    if-gez v15, :cond_4

    move v11, v4

    :cond_4
    cmpl-float v15, v14, v6

    if-lez v15, :cond_5

    move v6, v14

    :cond_5
    cmpl-float v14, v2, v7

    if-lez v14, :cond_6

    move v7, v2

    :cond_6
    cmpl-float v2, v4, v8

    if-lez v2, :cond_7

    move v8, v4

    :cond_7
    add-int/2addr v12, v3

    const/4 v2, 0x3

    add-int/2addr v13, v2

    move v4, v2

    goto :goto_0

    :cond_8
    const v2, 0x38d1b717    # 1.0E-4f

    sub-float/2addr v9, v2

    sub-float/2addr v10, v2

    sub-float/2addr v11, v2

    add-float/2addr v6, v2

    add-float/2addr v7, v2

    add-float/2addr v8, v2

    iput v9, v0, LR9/e;->i:F

    iput v10, v0, LR9/e;->j:F

    iput v11, v0, LR9/e;->k:F

    iput v6, v0, LR9/e;->l:F

    iput v7, v0, LR9/e;->m:F

    iput v8, v0, LR9/e;->n:F

    add-float v2, v9, v6

    const/high16 v4, 0x3f000000    # 0.5f

    mul-float/2addr v2, v4

    add-float v5, v10, v7

    mul-float/2addr v5, v4

    add-float v12, v11, v8

    mul-float/2addr v12, v4

    sub-float/2addr v6, v9

    mul-float/2addr v6, v4

    sub-float/2addr v7, v10

    mul-float/2addr v7, v4

    sub-float/2addr v8, v11

    mul-float/2addr v8, v4

    new-instance v4, Lcom/google/android/filament/Box;

    const/4 v9, 0x3

    new-array v10, v9, [F

    const/4 v11, 0x0

    aput v2, v10, v11

    aput v5, v10, v3

    aput v12, v10, v1

    new-array v2, v9, [F

    aput v6, v2, v11

    aput v7, v2, v3

    aput v8, v2, v1

    invoke-direct {v4, v10, v2}, Lcom/google/android/filament/Box;-><init>([F[F)V

    iput-object v4, v0, LR9/e;->h:Lcom/google/android/filament/Box;

    return-void
.end method

.method public e()V
    .locals 1

    iget-object v0, p0, LR9/e;->c:LSc/a;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, LSc/a;->h()V

    :cond_0
    iget-object v0, p0, LR9/e;->d:LSc/a;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, LSc/a;->h()V

    :cond_1
    iget-object v0, p0, LR9/e;->e:LSc/b;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, LSc/b;->h()V

    :cond_2
    return-void
.end method

.method public g()Lcom/google/android/filament/Box;
    .locals 1

    iget-object v0, p0, LR9/e;->h:Lcom/google/android/filament/Box;

    return-object v0
.end method

.method public h()F
    .locals 2

    iget v0, p0, LR9/e;->a:I

    int-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    div-float/2addr v1, v0

    return v1
.end method

.method public i()Lkc/d;
    .locals 1

    iget-object v0, p0, LR9/e;->g:Lkc/d;

    return-object v0
.end method

.method public j()LSc/b;
    .locals 1

    iget-object v0, p0, LR9/e;->e:LSc/b;

    return-object v0
.end method

.method public k()I
    .locals 1

    iget-object v0, p0, LR9/e;->e:LSc/b;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, LSc/b;->b()I

    move-result v0

    div-int/lit8 v0, v0, 0x3

    :goto_0
    return v0
.end method

.method public l()LSc/a;
    .locals 1

    iget-object v0, p0, LR9/e;->d:LSc/a;

    return-object v0
.end method

.method public m()Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentVertexBuffer;
    .locals 1

    iget-object v0, p0, LR9/e;->f:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentVertexBuffer;

    return-object v0
.end method

.method public n(ILcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;
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

    iget-object v0, p0, LR9/e;->c:LSc/a;

    mul-int/lit8 p1, p1, 0x3

    invoke-virtual {v0, p1}, LSc/a;->n(I)F

    move-result v0

    invoke-virtual {p2, v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->e2(F)F

    iget-object v0, p0, LR9/e;->c:LSc/a;

    add-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1}, LSc/a;->n(I)F

    move-result v0

    invoke-virtual {p2, v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->i2(F)F

    iget-object v0, p0, LR9/e;->c:LSc/a;

    add-int/lit8 p1, p1, 0x2

    invoke-virtual {v0, p1}, LSc/a;->n(I)F

    move-result p1

    invoke-virtual {p2, p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->j2(F)F

    return-object p2
.end method

.method public o()LSc/a;
    .locals 1

    iget-object v0, p0, LR9/e;->c:LSc/a;

    return-object v0
.end method

.method public p()I
    .locals 1

    iget-object v0, p0, LR9/e;->c:LSc/a;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, LSc/a;->a()I

    move-result v0

    div-int/lit8 v0, v0, 0x3

    :goto_0
    return v0
.end method

.method public final q(II)I
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

    iget v0, p0, LR9/e;->o:I

    mul-int/2addr p1, v0

    add-int/2addr p1, p2

    return p1
.end method

.method public r()Z
    .locals 1

    iget-boolean v0, p0, LR9/e;->b:Z

    return v0
.end method

.method public s()Z
    .locals 1

    iget-object v0, p0, LR9/e;->f:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentVertexBuffer;

    if-eqz v0, :cond_0

    iget-object v0, p0, LR9/e;->g:Lkc/d;

    if-eqz v0, :cond_0

    iget-object v0, p0, LR9/e;->h:Lcom/google/android/filament/Box;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public w(Lsa/c;LJAVARuntime/Vertex$RayMode;)Lsa/a;
    .locals 36
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "ray",
            "rayMode"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    iget-object v3, v0, LR9/e;->c:LSc/a;

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    iget-object v3, v0, LR9/e;->e:LSc/b;

    if-nez v3, :cond_1

    :cond_0
    move-object v1, v4

    goto/16 :goto_7

    :cond_1
    iget-object v3, v0, LR9/e;->h:Lcom/google/android/filament/Box;

    if-eqz v3, :cond_2

    iget-object v3, v1, Lsa/c;->b:Lsa/d;

    iget-object v5, v3, Lsa/d;->b:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object v3, v3, Lsa/d;->c:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v5}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->W0()F

    move-result v6

    invoke-virtual {v5}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->X0()F

    move-result v7

    invoke-virtual {v5}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->Y0()F

    move-result v8

    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->W0()F

    move-result v9

    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->X0()F

    move-result v10

    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->Y0()F

    move-result v11

    iget v12, v0, LR9/e;->i:F

    iget v13, v0, LR9/e;->j:F

    iget v14, v0, LR9/e;->k:F

    iget v15, v0, LR9/e;->l:F

    iget v3, v0, LR9/e;->m:F

    iget v5, v0, LR9/e;->n:F

    move/from16 v16, v3

    move/from16 v17, v5

    invoke-static/range {v6 .. v17}, LR9/e;->t(FFFFFFFFFFFF)Z

    move-result v3

    if-nez v3, :cond_2

    return-object v4

    :cond_2
    iget-object v3, v1, Lsa/c;->b:Lsa/d;

    iget-object v3, v3, Lsa/d;->b:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->W0()F

    move-result v3

    iget-object v5, v1, Lsa/c;->b:Lsa/d;

    iget-object v5, v5, Lsa/d;->b:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v5}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->X0()F

    move-result v5

    iget-object v6, v1, Lsa/c;->b:Lsa/d;

    iget-object v6, v6, Lsa/d;->b:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v6}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->Y0()F

    move-result v6

    iget-object v7, v1, Lsa/c;->b:Lsa/d;

    iget-object v7, v7, Lsa/d;->c:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v7}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->W0()F

    move-result v7

    iget-object v8, v1, Lsa/c;->b:Lsa/d;

    iget-object v8, v8, Lsa/d;->c:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v8}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->X0()F

    move-result v8

    iget-object v9, v1, Lsa/c;->b:Lsa/d;

    iget-object v9, v9, Lsa/d;->c:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v9}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->Y0()F

    move-result v9

    mul-float v10, v7, v7

    mul-float v11, v8, v8

    add-float/2addr v10, v11

    mul-float v11, v9, v9

    add-float/2addr v10, v11

    const v11, 0x2b8cbccc    # 1.0E-12f

    cmpg-float v12, v10, v11

    if-gtz v12, :cond_3

    return-object v4

    :cond_3
    float-to-double v12, v10

    invoke-static {v12, v13}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v12

    double-to-float v10, v12

    const/high16 v12, 0x3f800000    # 1.0f

    div-float v10, v12, v10

    mul-float/2addr v7, v10

    mul-float/2addr v8, v10

    mul-float/2addr v9, v10

    iget v10, v1, Lsa/c;->c:F

    const/4 v13, 0x0

    cmpl-float v14, v10, v13

    if-lez v14, :cond_4

    goto :goto_0

    :cond_4
    const/high16 v10, 0x7f800000    # Float.POSITIVE_INFINITY

    :goto_0
    iget-object v14, v0, LR9/e;->e:LSc/b;

    invoke-virtual {v14}, LSc/b;->b()I

    move-result v14

    const/high16 v16, -0x800000    # Float.NEGATIVE_INFINITY

    const/16 v17, 0x0

    move/from16 v19, v13

    move/from16 v20, v19

    move/from16 v21, v20

    move/from16 v22, v21

    move/from16 v23, v22

    move/from16 v24, v23

    move/from16 v18, v16

    move/from16 v4, v17

    const/high16 v15, 0x7f800000    # Float.POSITIVE_INFINITY

    :goto_1
    if-ge v4, v14, :cond_e

    iget-object v11, v0, LR9/e;->e:LSc/b;

    invoke-virtual {v11, v4}, LSc/b;->q(I)I

    move-result v11

    iget-object v13, v0, LR9/e;->e:LSc/b;

    add-int/lit8 v12, v4, 0x1

    invoke-virtual {v13, v12}, LSc/b;->q(I)I

    move-result v12

    iget-object v13, v0, LR9/e;->e:LSc/b;

    move/from16 v27, v14

    add-int/lit8 v14, v4, 0x2

    invoke-virtual {v13, v14}, LSc/b;->q(I)I

    move-result v13

    mul-int/lit8 v11, v11, 0x3

    mul-int/lit8 v12, v12, 0x3

    mul-int/lit8 v13, v13, 0x3

    iget-object v14, v0, LR9/e;->c:LSc/a;

    invoke-virtual {v14, v11}, LSc/a;->n(I)F

    move-result v14

    move/from16 v28, v4

    iget-object v4, v0, LR9/e;->c:LSc/a;

    move/from16 v29, v15

    add-int/lit8 v15, v11, 0x1

    invoke-virtual {v4, v15}, LSc/a;->n(I)F

    move-result v4

    iget-object v15, v0, LR9/e;->c:LSc/a;

    add-int/lit8 v11, v11, 0x2

    invoke-virtual {v15, v11}, LSc/a;->n(I)F

    move-result v11

    iget-object v15, v0, LR9/e;->c:LSc/a;

    invoke-virtual {v15, v12}, LSc/a;->n(I)F

    move-result v15

    iget-object v1, v0, LR9/e;->c:LSc/a;

    add-int/lit8 v2, v12, 0x1

    invoke-virtual {v1, v2}, LSc/a;->n(I)F

    move-result v1

    iget-object v2, v0, LR9/e;->c:LSc/a;

    add-int/lit8 v12, v12, 0x2

    invoke-virtual {v2, v12}, LSc/a;->n(I)F

    move-result v2

    iget-object v12, v0, LR9/e;->c:LSc/a;

    invoke-virtual {v12, v13}, LSc/a;->n(I)F

    move-result v12

    move/from16 v30, v10

    iget-object v10, v0, LR9/e;->c:LSc/a;

    move/from16 v31, v6

    add-int/lit8 v6, v13, 0x1

    invoke-virtual {v10, v6}, LSc/a;->n(I)F

    move-result v6

    iget-object v10, v0, LR9/e;->c:LSc/a;

    add-int/lit8 v13, v13, 0x2

    invoke-virtual {v10, v13}, LSc/a;->n(I)F

    move-result v10

    sub-float/2addr v15, v14

    sub-float/2addr v1, v4

    sub-float/2addr v2, v11

    sub-float/2addr v12, v14

    sub-float/2addr v6, v4

    sub-float/2addr v10, v11

    mul-float v13, v8, v10

    mul-float v32, v9, v6

    sub-float v13, v13, v32

    mul-float v32, v9, v12

    mul-float v33, v7, v10

    sub-float v32, v32, v33

    mul-float v33, v7, v6

    mul-float v34, v8, v12

    sub-float v33, v33, v34

    mul-float v34, v15, v13

    mul-float v35, v1, v32

    add-float v34, v34, v35

    mul-float v35, v2, v33

    add-float v34, v34, v35

    const v35, -0x4dd43389    # -1.0E-8f

    cmpl-float v35, v34, v35

    if-lez v35, :cond_6

    const v35, 0x322bcc77    # 1.0E-8f

    cmpg-float v35, v34, v35

    if-gez v35, :cond_6

    :cond_5
    :goto_2
    move-object/from16 v1, p1

    move-object/from16 v11, p2

    move/from16 v12, v18

    const v6, 0x2b8cbccc    # 1.0E-12f

    const/high16 v10, 0x3f800000    # 1.0f

    goto/16 :goto_5

    :cond_6
    const/high16 v26, 0x3f800000    # 1.0f

    div-float v34, v26, v34

    sub-float v14, v3, v14

    sub-float v4, v5, v4

    sub-float v11, v31, v11

    mul-float/2addr v13, v14

    mul-float v32, v32, v4

    add-float v13, v13, v32

    mul-float v33, v33, v11

    add-float v13, v13, v33

    mul-float v13, v13, v34

    const/16 v25, 0x0

    cmpg-float v32, v13, v25

    if-ltz v32, :cond_5

    const/high16 v26, 0x3f800000    # 1.0f

    cmpl-float v32, v13, v26

    if-lez v32, :cond_7

    goto :goto_2

    :cond_7
    mul-float v32, v4, v2

    mul-float v33, v11, v1

    sub-float v32, v32, v33

    mul-float/2addr v11, v15

    mul-float v33, v14, v2

    sub-float v11, v11, v33

    mul-float/2addr v14, v1

    mul-float/2addr v4, v15

    sub-float/2addr v14, v4

    mul-float v4, v7, v32

    mul-float v33, v8, v11

    add-float v4, v4, v33

    mul-float v33, v9, v14

    add-float v4, v4, v33

    mul-float v4, v4, v34

    const/16 v25, 0x0

    cmpg-float v33, v4, v25

    if-ltz v33, :cond_5

    add-float/2addr v13, v4

    const/high16 v4, 0x3f800000    # 1.0f

    cmpl-float v13, v13, v4

    if-lez v13, :cond_8

    goto :goto_2

    :cond_8
    mul-float v32, v32, v12

    mul-float/2addr v11, v6

    add-float v32, v32, v11

    mul-float/2addr v14, v10

    add-float v32, v32, v14

    mul-float v4, v32, v34

    const/4 v11, 0x0

    cmpg-float v13, v4, v11

    if-ltz v13, :cond_5

    cmpl-float v13, v4, v30

    if-lez v13, :cond_9

    goto :goto_2

    :cond_9
    mul-float v13, v1, v10

    mul-float v14, v2, v6

    sub-float/2addr v13, v14

    mul-float/2addr v2, v12

    mul-float/2addr v10, v15

    sub-float/2addr v2, v10

    mul-float/2addr v15, v6

    mul-float/2addr v1, v12

    sub-float/2addr v15, v1

    mul-float v1, v13, v13

    mul-float v6, v2, v2

    add-float/2addr v1, v6

    mul-float v6, v15, v15

    add-float/2addr v1, v6

    const v6, 0x2b8cbccc    # 1.0E-12f

    cmpl-float v10, v1, v6

    if-lez v10, :cond_a

    float-to-double v11, v1

    invoke-static {v11, v12}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v10

    double-to-float v1, v10

    const/high16 v10, 0x3f800000    # 1.0f

    div-float v12, v10, v1

    mul-float/2addr v13, v12

    mul-float/2addr v2, v12

    mul-float/2addr v15, v12

    goto :goto_3

    :cond_a
    const/high16 v10, 0x3f800000    # 1.0f

    :goto_3
    sget-object v1, LJAVARuntime/Vertex$RayMode;->FirstHit:LJAVARuntime/Vertex$RayMode;

    move-object/from16 v11, p2

    if-ne v11, v1, :cond_b

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    mul-float/2addr v7, v4

    add-float/2addr v3, v7

    mul-float/2addr v8, v4

    add-float/2addr v5, v8

    mul-float/2addr v9, v4

    add-float v6, v31, v9

    invoke-direct {v1, v3, v5, v6}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>(FFF)V

    new-instance v3, Lsa/a;

    invoke-direct {v3}, Lsa/a;-><init>()V

    invoke-virtual {v3, v1}, Lsa/a;->H(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V

    move-object/from16 v1, p1

    iget-object v1, v1, Lsa/c;->b:Lsa/d;

    iget-object v1, v1, Lsa/d;->c:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->T()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object v1

    invoke-virtual {v3, v1}, Lsa/a;->G(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {v1, v13, v2, v15}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>(FFF)V

    invoke-virtual {v3, v1}, Lsa/a;->F(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V

    invoke-virtual {v3, v4}, Lsa/a;->setDistance(F)V

    return-object v3

    :cond_b
    move-object/from16 v1, p1

    cmpg-float v12, v4, v29

    if-gez v12, :cond_c

    move/from16 v20, v2

    move/from16 v29, v4

    move/from16 v19, v13

    move/from16 v21, v15

    :cond_c
    move/from16 v12, v18

    cmpl-float v14, v4, v12

    if-lez v14, :cond_d

    move/from16 v23, v2

    move/from16 v18, v4

    move/from16 v22, v13

    move/from16 v24, v15

    :goto_4
    move/from16 v15, v29

    goto :goto_6

    :cond_d
    :goto_5
    move/from16 v18, v12

    goto :goto_4

    :goto_6
    add-int/lit8 v4, v28, 0x3

    move v12, v10

    move-object v2, v11

    move/from16 v14, v27

    move/from16 v10, v30

    const/4 v13, 0x0

    move v11, v6

    move/from16 v6, v31

    goto/16 :goto_1

    :cond_e
    move-object v11, v2

    move/from16 v31, v6

    move/from16 v29, v15

    move/from16 v12, v18

    sget-object v2, LJAVARuntime/Vertex$RayMode;->ClosestPoint:LJAVARuntime/Vertex$RayMode;

    if-ne v11, v2, :cond_f

    const/high16 v2, 0x7f800000    # Float.POSITIVE_INFINITY

    cmpg-float v2, v29, v2

    if-gez v2, :cond_f

    new-instance v2, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    mul-float v7, v7, v29

    add-float/2addr v3, v7

    mul-float v8, v8, v29

    add-float/2addr v5, v8

    mul-float v9, v9, v29

    add-float v6, v31, v9

    invoke-direct {v2, v3, v5, v6}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>(FFF)V

    new-instance v3, Lsa/a;

    invoke-direct {v3}, Lsa/a;-><init>()V

    invoke-virtual {v3, v2}, Lsa/a;->H(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V

    iget-object v1, v1, Lsa/c;->b:Lsa/d;

    iget-object v1, v1, Lsa/d;->c:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->T()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object v1

    invoke-virtual {v3, v1}, Lsa/a;->G(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move/from16 v13, v19

    move/from16 v2, v20

    move/from16 v4, v21

    invoke-direct {v1, v13, v2, v4}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>(FFF)V

    invoke-virtual {v3, v1}, Lsa/a;->F(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V

    move/from16 v15, v29

    invoke-virtual {v3, v15}, Lsa/a;->setDistance(F)V

    return-object v3

    :cond_f
    sget-object v2, LJAVARuntime/Vertex$RayMode;->FarHit:LJAVARuntime/Vertex$RayMode;

    if-ne v11, v2, :cond_10

    cmpl-float v2, v12, v16

    if-lez v2, :cond_10

    new-instance v2, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    mul-float/2addr v7, v12

    add-float/2addr v3, v7

    mul-float/2addr v8, v12

    add-float/2addr v5, v8

    mul-float/2addr v9, v12

    add-float v6, v31, v9

    invoke-direct {v2, v3, v5, v6}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>(FFF)V

    new-instance v3, Lsa/a;

    invoke-direct {v3}, Lsa/a;-><init>()V

    invoke-virtual {v3, v2}, Lsa/a;->H(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V

    iget-object v1, v1, Lsa/c;->b:Lsa/d;

    iget-object v1, v1, Lsa/d;->c:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->T()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object v1

    invoke-virtual {v3, v1}, Lsa/a;->G(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move/from16 v13, v22

    move/from16 v2, v23

    move/from16 v4, v24

    invoke-direct {v1, v13, v2, v4}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>(FFF)V

    invoke-virtual {v3, v1}, Lsa/a;->F(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V

    invoke-virtual {v3, v12}, Lsa/a;->setDistance(F)V

    return-object v3

    :cond_10
    const/4 v1, 0x0

    :goto_7
    return-object v1
.end method

.method public x(Lsa/c;LJAVARuntime/Vertex$RayMode;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;
    .locals 28
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "ray",
            "rayMode"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    iget-object v3, v0, LR9/e;->c:LSc/a;

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    iget-object v3, v0, LR9/e;->e:LSc/b;

    if-nez v3, :cond_1

    :cond_0
    move-object v1, v4

    goto/16 :goto_4

    :cond_1
    iget-object v3, v0, LR9/e;->h:Lcom/google/android/filament/Box;

    if-eqz v3, :cond_2

    iget-object v3, v1, Lsa/c;->b:Lsa/d;

    iget-object v5, v3, Lsa/d;->b:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object v3, v3, Lsa/d;->c:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v5}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->W0()F

    move-result v6

    invoke-virtual {v5}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->X0()F

    move-result v7

    invoke-virtual {v5}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->Y0()F

    move-result v8

    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->W0()F

    move-result v9

    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->X0()F

    move-result v10

    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->Y0()F

    move-result v11

    iget v12, v0, LR9/e;->i:F

    iget v13, v0, LR9/e;->j:F

    iget v14, v0, LR9/e;->k:F

    iget v15, v0, LR9/e;->l:F

    iget v3, v0, LR9/e;->m:F

    iget v5, v0, LR9/e;->n:F

    move/from16 v16, v3

    move/from16 v17, v5

    invoke-static/range {v6 .. v17}, LR9/e;->t(FFFFFFFFFFFF)Z

    move-result v3

    if-nez v3, :cond_2

    return-object v4

    :cond_2
    iget-object v3, v1, Lsa/c;->b:Lsa/d;

    iget-object v3, v3, Lsa/d;->b:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->W0()F

    move-result v3

    iget-object v5, v1, Lsa/c;->b:Lsa/d;

    iget-object v5, v5, Lsa/d;->b:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v5}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->X0()F

    move-result v5

    iget-object v6, v1, Lsa/c;->b:Lsa/d;

    iget-object v6, v6, Lsa/d;->b:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v6}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->Y0()F

    move-result v6

    iget-object v7, v1, Lsa/c;->b:Lsa/d;

    iget-object v7, v7, Lsa/d;->c:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v7}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->W0()F

    move-result v7

    iget-object v8, v1, Lsa/c;->b:Lsa/d;

    iget-object v8, v8, Lsa/d;->c:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v8}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->X0()F

    move-result v8

    iget-object v9, v1, Lsa/c;->b:Lsa/d;

    iget-object v9, v9, Lsa/d;->c:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v9}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->Y0()F

    move-result v9

    mul-float v10, v7, v7

    mul-float v11, v8, v8

    add-float/2addr v10, v11

    mul-float v11, v9, v9

    add-float/2addr v10, v11

    const v11, 0x2b8cbccc    # 1.0E-12f

    cmpg-float v11, v10, v11

    if-gtz v11, :cond_3

    return-object v4

    :cond_3
    float-to-double v10, v10

    invoke-static {v10, v11}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v10

    double-to-float v10, v10

    const/high16 v11, 0x3f800000    # 1.0f

    div-float v10, v11, v10

    mul-float/2addr v7, v10

    mul-float/2addr v8, v10

    mul-float/2addr v9, v10

    iget v1, v1, Lsa/c;->c:F

    const/4 v10, 0x0

    cmpl-float v12, v1, v10

    if-lez v12, :cond_4

    goto :goto_0

    :cond_4
    const/high16 v1, 0x7f800000    # Float.POSITIVE_INFINITY

    :goto_0
    iget-object v12, v0, LR9/e;->e:LSc/b;

    invoke-virtual {v12}, LSc/b;->b()I

    move-result v12

    const/4 v15, 0x0

    const/high16 v16, 0x7f800000    # Float.POSITIVE_INFINITY

    const/high16 v17, -0x800000    # Float.NEGATIVE_INFINITY

    :goto_1
    if-ge v15, v12, :cond_e

    iget-object v4, v0, LR9/e;->e:LSc/b;

    invoke-virtual {v4, v15}, LSc/b;->l(I)I

    move-result v4

    iget-object v14, v0, LR9/e;->e:LSc/b;

    add-int/lit8 v13, v15, 0x1

    invoke-virtual {v14, v13}, LSc/b;->l(I)I

    move-result v13

    iget-object v14, v0, LR9/e;->e:LSc/b;

    add-int/lit8 v10, v15, 0x2

    invoke-virtual {v14, v10}, LSc/b;->l(I)I

    move-result v10

    mul-int/lit8 v4, v4, 0x3

    mul-int/lit8 v13, v13, 0x3

    mul-int/lit8 v10, v10, 0x3

    iget-object v14, v0, LR9/e;->c:LSc/a;

    invoke-virtual {v14, v4}, LSc/a;->j(I)F

    move-result v14

    iget-object v11, v0, LR9/e;->c:LSc/a;

    move/from16 v20, v12

    add-int/lit8 v12, v4, 0x1

    invoke-virtual {v11, v12}, LSc/a;->j(I)F

    move-result v11

    iget-object v12, v0, LR9/e;->c:LSc/a;

    add-int/lit8 v4, v4, 0x2

    invoke-virtual {v12, v4}, LSc/a;->j(I)F

    move-result v4

    iget-object v12, v0, LR9/e;->c:LSc/a;

    invoke-virtual {v12, v13}, LSc/a;->j(I)F

    move-result v12

    move/from16 v21, v15

    iget-object v15, v0, LR9/e;->c:LSc/a;

    add-int/lit8 v2, v13, 0x1

    invoke-virtual {v15, v2}, LSc/a;->j(I)F

    move-result v2

    iget-object v15, v0, LR9/e;->c:LSc/a;

    add-int/lit8 v13, v13, 0x2

    invoke-virtual {v15, v13}, LSc/a;->j(I)F

    move-result v13

    iget-object v15, v0, LR9/e;->c:LSc/a;

    invoke-virtual {v15, v10}, LSc/a;->j(I)F

    move-result v15

    move/from16 v22, v1

    iget-object v1, v0, LR9/e;->c:LSc/a;

    move/from16 v23, v6

    add-int/lit8 v6, v10, 0x1

    invoke-virtual {v1, v6}, LSc/a;->j(I)F

    move-result v1

    iget-object v6, v0, LR9/e;->c:LSc/a;

    add-int/lit8 v10, v10, 0x2

    invoke-virtual {v6, v10}, LSc/a;->j(I)F

    move-result v6

    sub-float/2addr v12, v14

    sub-float/2addr v2, v11

    sub-float/2addr v13, v4

    sub-float/2addr v15, v14

    sub-float/2addr v1, v11

    sub-float/2addr v6, v4

    mul-float v10, v8, v6

    mul-float v24, v9, v1

    sub-float v10, v10, v24

    mul-float v24, v9, v15

    mul-float v25, v7, v6

    sub-float v24, v24, v25

    mul-float v25, v7, v1

    mul-float v26, v8, v15

    sub-float v25, v25, v26

    mul-float v26, v12, v10

    mul-float v27, v2, v24

    add-float v26, v26, v27

    mul-float v27, v13, v25

    add-float v26, v26, v27

    const v27, -0x4dd43389    # -1.0E-8f

    cmpl-float v27, v26, v27

    if-lez v27, :cond_6

    const v27, 0x322bcc77    # 1.0E-8f

    cmpg-float v27, v26, v27

    if-gez v27, :cond_6

    :cond_5
    :goto_2
    move-object/from16 v6, p2

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    goto/16 :goto_3

    :cond_6
    const/high16 v19, 0x3f800000    # 1.0f

    div-float v26, v19, v26

    sub-float v14, v3, v14

    sub-float v11, v5, v11

    sub-float v4, v23, v4

    mul-float/2addr v10, v14

    mul-float v24, v24, v11

    add-float v10, v10, v24

    mul-float v25, v25, v4

    add-float v10, v10, v25

    mul-float v10, v10, v26

    const/16 v18, 0x0

    cmpg-float v24, v10, v18

    if-ltz v24, :cond_5

    const/high16 v19, 0x3f800000    # 1.0f

    cmpl-float v24, v10, v19

    if-lez v24, :cond_7

    goto :goto_2

    :cond_7
    mul-float v24, v11, v13

    mul-float v25, v4, v2

    sub-float v24, v24, v25

    mul-float/2addr v4, v12

    mul-float/2addr v13, v14

    sub-float/2addr v4, v13

    mul-float/2addr v14, v2

    mul-float/2addr v11, v12

    sub-float/2addr v14, v11

    mul-float v2, v7, v24

    mul-float v11, v8, v4

    add-float/2addr v2, v11

    mul-float v11, v9, v14

    add-float/2addr v2, v11

    mul-float v2, v2, v26

    const/4 v11, 0x0

    cmpg-float v12, v2, v11

    if-ltz v12, :cond_5

    add-float/2addr v10, v2

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v10, v10, v2

    if-lez v10, :cond_8

    move-object/from16 v6, p2

    const/4 v1, 0x0

    goto :goto_3

    :cond_8
    mul-float v15, v15, v24

    mul-float/2addr v1, v4

    add-float/2addr v15, v1

    mul-float/2addr v6, v14

    add-float/2addr v15, v6

    mul-float v15, v15, v26

    const/4 v1, 0x0

    cmpg-float v4, v15, v1

    if-ltz v4, :cond_9

    cmpl-float v4, v15, v22

    if-lez v4, :cond_a

    :cond_9
    move-object/from16 v6, p2

    goto :goto_3

    :cond_a
    sget-object v4, LJAVARuntime/Vertex$RayMode;->FirstHit:LJAVARuntime/Vertex$RayMode;

    move-object/from16 v6, p2

    if-ne v6, v4, :cond_b

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    mul-float/2addr v7, v15

    add-float/2addr v3, v7

    mul-float/2addr v8, v15

    add-float/2addr v5, v8

    mul-float/2addr v9, v15

    add-float v6, v23, v9

    invoke-direct {v1, v3, v5, v6}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>(FFF)V

    return-object v1

    :cond_b
    cmpg-float v4, v15, v16

    if-gez v4, :cond_c

    move/from16 v16, v15

    :cond_c
    cmpl-float v4, v15, v17

    if-lez v4, :cond_d

    move/from16 v17, v15

    :cond_d
    :goto_3
    add-int/lit8 v15, v21, 0x3

    move v10, v1

    move v11, v2

    move-object v2, v6

    move/from16 v12, v20

    move/from16 v1, v22

    move/from16 v6, v23

    const/4 v4, 0x0

    goto/16 :goto_1

    :cond_e
    move/from16 v23, v6

    move-object v6, v2

    sget-object v1, LJAVARuntime/Vertex$RayMode;->ClosestPoint:LJAVARuntime/Vertex$RayMode;

    if-ne v6, v1, :cond_f

    const/high16 v1, 0x7f800000    # Float.POSITIVE_INFINITY

    cmpg-float v1, v16, v1

    if-gez v1, :cond_f

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    mul-float v7, v7, v16

    add-float/2addr v3, v7

    mul-float v8, v8, v16

    add-float/2addr v5, v8

    mul-float v9, v9, v16

    add-float v6, v23, v9

    invoke-direct {v1, v3, v5, v6}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>(FFF)V

    return-object v1

    :cond_f
    sget-object v1, LJAVARuntime/Vertex$RayMode;->FarHit:LJAVARuntime/Vertex$RayMode;

    if-ne v6, v1, :cond_10

    const/high16 v1, -0x800000    # Float.NEGATIVE_INFINITY

    cmpl-float v1, v17, v1

    if-lez v1, :cond_10

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    mul-float v7, v7, v17

    add-float/2addr v3, v7

    mul-float v8, v8, v17

    add-float/2addr v5, v8

    mul-float v9, v9, v17

    add-float v6, v23, v9

    invoke-direct {v1, v3, v5, v6}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>(FFF)V

    return-object v1

    :cond_10
    const/4 v1, 0x0

    :goto_4
    return-object v1
.end method

.method public y(LR9/i;)V
    .locals 17
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "heightmap"
        }
    .end annotation

    move-object/from16 v0, p0

    iget-object v1, v0, LR9/e;->c:LSc/a;

    if-nez v1, :cond_0

    return-void

    :cond_0
    iget v1, v0, LR9/e;->a:I

    mul-int v2, v1, v1

    if-gtz v1, :cond_1

    return-void

    :cond_1
    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x1

    if-le v1, v4, :cond_2

    add-int/lit8 v5, v1, -0x1

    int-to-float v5, v5

    div-float v5, v3, v5

    goto :goto_0

    :cond_2
    move v5, v3

    :goto_0
    new-array v6, v2, [F

    const/4 v7, 0x0

    move v8, v7

    :goto_1
    if-ge v8, v1, :cond_4

    mul-int v9, v8, v1

    move v10, v7

    :goto_2
    if-ge v10, v1, :cond_3

    move-object/from16 v11, p1

    invoke-interface {v11, v8, v10}, LR9/i;->a(II)F

    move-result v12

    add-int v13, v9, v10

    aput v12, v6, v13

    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    :cond_3
    move-object/from16 v11, p1

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_4
    new-array v8, v1, [F

    new-array v9, v1, [F

    const/4 v10, 0x0

    cmpl-float v11, v5, v10

    if-eqz v11, :cond_5

    div-float v10, v3, v5

    :cond_5
    move v3, v7

    :goto_3
    const/high16 v5, 0x3f000000    # 0.5f

    if-ge v3, v1, :cond_8

    if-eqz v3, :cond_7

    add-int/lit8 v11, v1, -0x1

    if-ne v3, v11, :cond_6

    goto :goto_4

    :cond_6
    mul-float/2addr v5, v10

    goto :goto_5

    :cond_7
    :goto_4
    move v5, v10

    :goto_5
    aput v5, v8, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_8
    move v3, v7

    :goto_6
    if-ge v3, v1, :cond_b

    if-eqz v3, :cond_a

    add-int/lit8 v8, v1, -0x1

    if-ne v3, v8, :cond_9

    goto :goto_7

    :cond_9
    mul-float v8, v10, v5

    goto :goto_8

    :cond_a
    :goto_7
    move v8, v10

    :goto_8
    aput v8, v9, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    :cond_b
    move v5, v4

    move v3, v7

    :goto_9
    if-ge v3, v2, :cond_c

    iget-object v8, v0, LR9/e;->c:LSc/a;

    aget v9, v6, v3

    invoke-virtual {v8, v5, v9}, LSc/a;->R(IF)V

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v5, v5, 0x3

    goto :goto_9

    :cond_c
    iget-boolean v2, v0, LR9/e;->b:Z

    if-eqz v2, :cond_10

    move v2, v7

    :goto_a
    if-ge v2, v1, :cond_d

    invoke-virtual {v0, v2, v7}, LR9/e;->q(II)I

    move-result v3

    iget-object v5, v0, LR9/e;->c:LSc/a;

    mul-int/lit8 v3, v3, 0x3

    add-int/2addr v3, v4

    invoke-virtual {v5, v3}, LSc/a;->n(I)F

    move-result v3

    iget v5, v0, LR9/e;->s:I

    add-int/2addr v5, v2

    iget-object v6, v0, LR9/e;->c:LSc/a;

    mul-int/lit8 v5, v5, 0x3

    add-int/2addr v5, v4

    invoke-virtual {v6, v5, v3}, LSc/a;->R(IF)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    :cond_d
    move v2, v7

    :goto_b
    if-ge v2, v1, :cond_e

    add-int/lit8 v3, v1, -0x1

    invoke-virtual {v0, v2, v3}, LR9/e;->q(II)I

    move-result v3

    iget-object v5, v0, LR9/e;->c:LSc/a;

    mul-int/lit8 v3, v3, 0x3

    add-int/2addr v3, v4

    invoke-virtual {v5, v3}, LSc/a;->n(I)F

    move-result v3

    iget v5, v0, LR9/e;->t:I

    add-int/2addr v5, v2

    iget-object v6, v0, LR9/e;->c:LSc/a;

    mul-int/lit8 v5, v5, 0x3

    add-int/2addr v5, v4

    invoke-virtual {v6, v5, v3}, LSc/a;->R(IF)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    :cond_e
    move v2, v7

    :goto_c
    if-ge v2, v1, :cond_f

    invoke-virtual {v0, v7, v2}, LR9/e;->q(II)I

    move-result v3

    iget-object v5, v0, LR9/e;->c:LSc/a;

    mul-int/lit8 v3, v3, 0x3

    add-int/2addr v3, v4

    invoke-virtual {v5, v3}, LSc/a;->n(I)F

    move-result v3

    iget v5, v0, LR9/e;->u:I

    add-int/2addr v5, v2

    iget-object v6, v0, LR9/e;->c:LSc/a;

    mul-int/lit8 v5, v5, 0x3

    add-int/2addr v5, v4

    invoke-virtual {v6, v5, v3}, LSc/a;->R(IF)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    :cond_f
    :goto_d
    if-ge v7, v1, :cond_10

    add-int/lit8 v2, v1, -0x1

    invoke-virtual {v0, v2, v7}, LR9/e;->q(II)I

    move-result v2

    iget-object v3, v0, LR9/e;->c:LSc/a;

    mul-int/lit8 v2, v2, 0x3

    add-int/2addr v2, v4

    invoke-virtual {v3, v2}, LSc/a;->n(I)F

    move-result v2

    iget v3, v0, LR9/e;->v:I

    add-int/2addr v3, v7

    iget-object v5, v0, LR9/e;->c:LSc/a;

    mul-int/lit8 v3, v3, 0x3

    add-int/2addr v3, v4

    invoke-virtual {v5, v3, v2}, LSc/a;->R(IF)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_d

    :cond_10
    invoke-virtual/range {p0 .. p0}, LR9/e;->c()V

    new-instance v8, Lcc/g;

    iget-object v9, v0, LR9/e;->c:LSc/a;

    iget-object v10, v0, LR9/e;->d:LSc/a;

    iget-object v11, v0, LR9/e;->e:LSc/b;

    new-instance v1, LR9/e$b;

    invoke-direct {v1, v0}, LR9/e$b;-><init>(LR9/e;)V

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v16, v1

    invoke-direct/range {v8 .. v16}, Lcc/g;-><init>(LSc/a;LSc/a;LSc/b;LSc/a;LSc/a;LSc/a;LSc/a;Lcc/g$a;)V

    return-void
.end method
