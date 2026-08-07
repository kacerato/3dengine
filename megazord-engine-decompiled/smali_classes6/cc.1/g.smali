.class public Lcc/g;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcc/g$a;
    }
.end annotation


# instance fields
.field public a:LSc/a;

.field public b:LSc/a;

.field public c:LSc/a;

.field public d:LSc/a;

.field public e:LSc/b;

.field public f:LSc/a;

.field public g:LSc/a;

.field public h:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentVertexBuffer;

.field public i:Lkc/d;

.field public final j:Lcc/g$a;


# direct methods
.method public constructor <init>(LSc/a;LSc/a;LSc/b;LSc/a;LSc/a;LSc/a;LSc/a;Lcc/g$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
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
            "verticesBuffer",
            "uvsBuffer",
            "trianglesBuffer",
            "normalsBuffer",
            "tangentsBuffer",
            "jointsBuffer",
            "weightsBuffer",
            "listener"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcc/g;->a:LSc/a;

    iput-object p2, p0, Lcc/g;->d:LSc/a;

    iput-object p3, p0, Lcc/g;->e:LSc/b;

    iput-object p4, p0, Lcc/g;->b:LSc/a;

    iput-object p5, p0, Lcc/g;->c:LSc/a;

    iput-object p6, p0, Lcc/g;->f:LSc/a;

    iput-object p7, p0, Lcc/g;->g:LSc/a;

    iput-object p8, p0, Lcc/g;->j:Lcc/g$a;

    invoke-virtual {p0}, Lcc/g;->f()V

    return-void
.end method

.method public static synthetic a(Lcc/g;IIZLjava/nio/ByteBuffer;Ljava/nio/ShortBuffer;Ljava/nio/ByteBuffer;ZILjava/nio/ByteBuffer;)V
    .locals 0

    invoke-virtual/range {p0 .. p9}, Lcc/g;->o(IIZLjava/nio/ByteBuffer;Ljava/nio/ShortBuffer;Ljava/nio/ByteBuffer;ZILjava/nio/ByteBuffer;)V

    return-void
.end method

.method public static b(LSc/b;Z)Ljava/nio/ByteBuffer;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "tris",
            "useUshort"
        }
    .end annotation

    invoke-virtual {p0}, LSc/b;->b()I

    move-result v0

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    mul-int/lit8 p1, v0, 0x2

    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object p1

    :goto_0
    if-ge v1, v0, :cond_0

    invoke-virtual {p0, v1}, LSc/b;->q(I)I

    move-result v2

    const v3, 0xffff

    and-int/2addr v2, v3

    int-to-short v2, v2

    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    return-object p1

    :cond_1
    mul-int/lit8 p1, v0, 0x4

    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object p1

    :goto_1
    if-ge v1, v0, :cond_2

    invoke-virtual {p0, v1}, LSc/b;->q(I)I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    return-object p1
.end method

.method public static c(LSc/a;LSc/a;II)Ljava/nio/ByteBuffer;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "vertices",
            "uvs",
            "vcount",
            "stride0"
        }
    .end annotation

    mul-int/2addr p3, p2

    invoke-static {p3}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object p3

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object p3

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_0

    mul-int/lit8 v1, v0, 0x3

    invoke-virtual {p0, v1}, LSc/a;->n(I)F

    move-result v2

    invoke-virtual {p3, v2}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p0, v2}, LSc/a;->n(I)F

    move-result v2

    invoke-virtual {p3, v2}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    add-int/lit8 v1, v1, 0x2

    invoke-virtual {p0, v1}, LSc/a;->n(I)F

    move-result v1

    invoke-virtual {p3, v1}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    mul-int/lit8 v1, v0, 0x2

    invoke-virtual {p1, v1}, LSc/a;->n(I)F

    move-result v2

    invoke-virtual {p3, v2}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p1, v1}, LSc/a;->n(I)F

    move-result v1

    invoke-virtual {p3, v1}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    return-object p3
.end method

.method public static d(LSc/a;LSc/a;LSc/a;LSc/a;LSc/b;I)Ljava/nio/ShortBuffer;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "vertices",
            "uvs",
            "normals",
            "tangents",
            "triangles",
            "vcount"
        }
    .end annotation

    invoke-static {p0, p2, p3, p5}, Lcc/g;->g(LSc/a;LSc/a;LSc/a;I)Z

    move-result p5

    if-eqz p5, :cond_0

    new-instance p1, Lcc/a;

    invoke-direct {p1, p0, p2, p3, p4}, Lcc/a;-><init>(LSc/a;LSc/a;LSc/a;LSc/b;)V

    invoke-virtual {p1}, Lcc/a;->b()Ljava/nio/ShortBuffer;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p3, Lcc/b;

    invoke-direct {p3, p0, p1, p2, p4}, Lcc/b;-><init>(LSc/a;LSc/a;LSc/a;LSc/b;)V

    invoke-virtual {p3}, Lcc/b;->b()Ljava/nio/ShortBuffer;

    move-result-object p0

    return-object p0
.end method

.method public static e(LSc/a;LSc/a;I)Ljava/nio/ByteBuffer;
    .locals 17
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "joints",
            "weights",
            "vcount"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    mul-int/lit8 v3, v2, 0x8

    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v3

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v2, :cond_3

    invoke-static {v0, v5, v4}, Lcc/g;->n(LSc/a;II)I

    move-result v6

    const/4 v7, 0x1

    invoke-static {v0, v5, v7}, Lcc/g;->n(LSc/a;II)I

    move-result v8

    const/4 v9, 0x2

    invoke-static {v0, v5, v9}, Lcc/g;->n(LSc/a;II)I

    move-result v10

    const/4 v11, 0x3

    invoke-static {v0, v5, v11}, Lcc/g;->n(LSc/a;II)I

    move-result v12

    invoke-static {v1, v5, v4}, Lcc/g;->q(LSc/a;II)F

    move-result v13

    invoke-static {v1, v5, v7}, Lcc/g;->q(LSc/a;II)F

    move-result v7

    invoke-static {v1, v5, v9}, Lcc/g;->q(LSc/a;II)F

    move-result v9

    invoke-static {v1, v5, v11}, Lcc/g;->q(LSc/a;II)F

    move-result v11

    add-float v14, v13, v7

    add-float/2addr v14, v9

    add-float/2addr v14, v11

    const/4 v11, 0x0

    cmpl-float v15, v14, v11

    if-gtz v15, :cond_0

    const/high16 v7, 0x3f800000    # 1.0f

    move v8, v4

    move v10, v8

    move v12, v10

    move v9, v11

    goto :goto_1

    :cond_0
    div-float v11, v13, v14

    div-float/2addr v7, v14

    div-float/2addr v9, v14

    move/from16 v16, v11

    move v11, v7

    move/from16 v7, v16

    :goto_1
    invoke-static {v7}, Lcc/g;->p(F)I

    move-result v7

    invoke-static {v11}, Lcc/g;->p(F)I

    move-result v11

    invoke-static {v9}, Lcc/g;->p(F)I

    move-result v9

    rsub-int v13, v7, 0xff

    sub-int/2addr v13, v11

    sub-int/2addr v13, v9

    if-gez v13, :cond_1

    move v13, v4

    goto :goto_2

    :cond_1
    const/16 v14, 0xff

    if-le v13, v14, :cond_2

    move v13, v14

    :cond_2
    :goto_2
    invoke-static {v6}, Lcc/g;->h(I)I

    move-result v6

    int-to-byte v6, v6

    invoke-virtual {v3, v6}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    invoke-static {v8}, Lcc/g;->h(I)I

    move-result v6

    int-to-byte v6, v6

    invoke-virtual {v3, v6}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    invoke-static {v10}, Lcc/g;->h(I)I

    move-result v6

    int-to-byte v6, v6

    invoke-virtual {v3, v6}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    invoke-static {v12}, Lcc/g;->h(I)I

    move-result v6

    int-to-byte v6, v6

    invoke-virtual {v3, v6}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    int-to-byte v6, v7

    invoke-virtual {v3, v6}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    int-to-byte v6, v11

    invoke-virtual {v3, v6}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    int-to-byte v6, v9

    invoke-virtual {v3, v6}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    int-to-byte v6, v13

    invoke-virtual {v3, v6}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    :cond_3
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    return-object v3
.end method

.method public static g(LSc/a;LSc/a;LSc/a;I)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "vertices",
            "normals",
            "tangents",
            "vcount"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, LSc/a;->a()I

    move-result p0

    mul-int/lit8 p1, p3, 0x3

    if-lt p0, p1, :cond_1

    invoke-virtual {p2}, LSc/a;->a()I

    move-result p0

    mul-int/lit8 p3, p3, 0x4

    if-lt p0, p3, :cond_1

    const/4 v0, 0x1

    :cond_1
    :goto_0
    return v0
.end method

.method public static h(I)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "x"
        }
    .end annotation

    if-gez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/16 v0, 0xff

    if-le p0, v0, :cond_1

    return v0

    :cond_1
    return p0
.end method

.method public static n(LSc/a;II)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "joints",
            "v",
            "k"
        }
    .end annotation

    mul-int/lit8 p1, p1, 0x4

    add-int/2addr p1, p2

    const/4 p2, 0x0

    if-nez p0, :cond_0

    return p2

    :cond_0
    invoke-virtual {p0}, LSc/a;->a()I

    move-result v0

    if-lt p1, v0, :cond_1

    return p2

    :cond_1
    invoke-virtual {p0, p1}, LSc/a;->n(I)F

    move-result p0

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    invoke-static {p0}, Lcc/g;->h(I)I

    move-result p0

    return p0
.end method

.method public static p(F)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "w01"
        }
    .end annotation

    const/high16 v0, 0x437f0000    # 255.0f

    mul-float/2addr p0, v0

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    if-gez p0, :cond_0

    const/4 p0, 0x0

    :cond_0
    const/16 v0, 0xff

    if-le p0, v0, :cond_1

    move p0, v0

    :cond_1
    return p0
.end method

.method public static q(LSc/a;II)F
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "weights",
            "v",
            "k"
        }
    .end annotation

    mul-int/lit8 p1, p1, 0x4

    add-int/2addr p1, p2

    const/4 p2, 0x0

    if-nez p0, :cond_0

    return p2

    :cond_0
    invoke-virtual {p0}, LSc/a;->a()I

    move-result v0

    if-lt p1, v0, :cond_1

    return p2

    :cond_1
    invoke-virtual {p0, p1}, LSc/a;->n(I)F

    move-result p0

    cmpl-float p1, p0, p2

    if-gez p1, :cond_2

    goto :goto_0

    :cond_2
    move p2, p0

    :goto_0
    return p2
.end method


# virtual methods
.method public final f()V
    .locals 15

    invoke-virtual {p0}, Lcc/g;->l()I

    move-result v6

    iget-object v0, p0, Lcc/g;->e:LSc/b;

    const/4 v7, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, LSc/b;->b()I

    move-result v0

    move v9, v0

    goto :goto_0

    :cond_0
    move v9, v7

    :goto_0
    div-int/lit8 v0, v9, 0x3

    if-eqz v6, :cond_5

    if-nez v0, :cond_1

    goto/16 :goto_6

    :cond_1
    invoke-virtual {p0, v6}, Lcc/g;->i(I)V

    iget-object v0, p0, Lcc/g;->a:LSc/a;

    iget-object v1, p0, Lcc/g;->d:LSc/a;

    const/16 v2, 0x14

    invoke-static {v0, v1, v6, v2}, Lcc/g;->c(LSc/a;LSc/a;II)Ljava/nio/ByteBuffer;

    move-result-object v8

    iget-object v0, p0, Lcc/g;->a:LSc/a;

    iget-object v1, p0, Lcc/g;->d:LSc/a;

    iget-object v2, p0, Lcc/g;->b:LSc/a;

    iget-object v3, p0, Lcc/g;->c:LSc/a;

    iget-object v4, p0, Lcc/g;->e:LSc/b;

    move v5, v6

    invoke-static/range {v0 .. v5}, Lcc/g;->d(LSc/a;LSc/a;LSc/a;LSc/a;LSc/b;I)Ljava/nio/ShortBuffer;

    move-result-object v10

    invoke-virtual {p0, v6}, Lcc/g;->m(I)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v0, p0, Lcc/g;->f:LSc/a;

    iget-object v1, p0, Lcc/g;->g:LSc/a;

    invoke-static {v0, v1, v6}, Lcc/g;->e(LSc/a;LSc/a;I)Ljava/nio/ByteBuffer;

    move-result-object v0

    :goto_1
    move-object v11, v0

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    :goto_2
    iget-object v0, p0, Lcc/g;->e:LSc/b;

    invoke-virtual {v0}, LSc/b;->p()I

    move-result v0

    const v1, 0xffff

    if-gt v0, v1, :cond_3

    const/4 v0, 0x1

    move v12, v0

    goto :goto_3

    :cond_3
    move v12, v7

    :goto_3
    iget-object v0, p0, Lcc/g;->e:LSc/b;

    invoke-static {v0, v12}, Lcc/g;->b(LSc/b;Z)Ljava/nio/ByteBuffer;

    move-result-object v13

    if-eqz v4, :cond_4

    const/4 v0, 0x3

    :goto_4
    move v3, v0

    goto :goto_5

    :cond_4
    const/4 v0, 0x2

    goto :goto_4

    :goto_5
    new-instance v14, Lcc/f;

    move-object v0, v14

    move-object v1, p0

    move v2, v6

    move-object v5, v8

    move-object v6, v10

    move-object v7, v11

    move v8, v12

    move-object v10, v13

    invoke-direct/range {v0 .. v10}, Lcc/f;-><init>(Lcc/g;IIZLjava/nio/ByteBuffer;Ljava/nio/ShortBuffer;Ljava/nio/ByteBuffer;ZILjava/nio/ByteBuffer;)V

    invoke-static {v14}, Lc9/a;->I(Ljava/lang/Runnable;)V

    :cond_5
    :goto_6
    return-void
.end method

.method public final i(I)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "vertexCount"
        }
    .end annotation

    iget-object v0, p0, Lcc/g;->a:LSc/a;

    iget-object v1, p0, Lcc/g;->b:LSc/a;

    iget-object v2, p0, Lcc/g;->c:LSc/a;

    invoke-static {v0, v1, v2, p1}, Lcc/g;->g(LSc/a;LSc/a;LSc/a;I)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcc/g;->d:LSc/a;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, LSc/a;->a()I

    move-result v0

    mul-int/lit8 v1, p1, 0x2

    if-ge v0, v1, :cond_4

    :cond_0
    new-instance v0, LSc/a;

    mul-int/lit8 v1, p1, 0x2

    invoke-direct {v0, v1}, LSc/a;-><init>(I)V

    iget-object v1, p0, Lcc/g;->d:LSc/a;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, LSc/a;->a()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcc/g;->d:LSc/a;

    if-eqz v2, :cond_2

    invoke-virtual {v0, v2}, LSc/a;->I(LSc/a;)V

    :cond_2
    :goto_1
    if-ge v1, p1, :cond_3

    iget-object v2, p0, Lcc/g;->a:LSc/a;

    mul-int/lit8 v3, v1, 0x3

    invoke-virtual {v2, v3}, LSc/a;->n(I)F

    move-result v2

    iget-object v4, p0, Lcc/g;->a:LSc/a;

    add-int/lit8 v3, v3, 0x2

    invoke-virtual {v4, v3}, LSc/a;->n(I)F

    move-result v3

    mul-int/lit8 v4, v1, 0x2

    invoke-virtual {v0, v4, v2}, LSc/a;->R(IF)V

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v0, v4, v3}, LSc/a;->R(IF)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    iput-object v0, p0, Lcc/g;->d:LSc/a;

    :cond_4
    return-void
.end method

.method public j()Lkc/d;
    .locals 1

    iget-object v0, p0, Lcc/g;->i:Lkc/d;

    return-object v0
.end method

.method public k()Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentVertexBuffer;
    .locals 1

    iget-object v0, p0, Lcc/g;->h:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentVertexBuffer;

    return-object v0
.end method

.method public final l()I
    .locals 1

    iget-object v0, p0, Lcc/g;->a:LSc/a;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-virtual {v0}, LSc/a;->a()I

    move-result v0

    div-int/lit8 v0, v0, 0x3

    return v0
.end method

.method public final m(I)Z
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "vcount"
        }
    .end annotation

    iget-object v0, p0, Lcc/g;->f:LSc/a;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v2, p0, Lcc/g;->g:LSc/a;

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, LSc/a;->a()I

    move-result v0

    mul-int/lit8 v2, p1, 0x4

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget-object v3, p0, Lcc/g;->g:LSc/a;

    invoke-virtual {v3}, LSc/a;->a()I

    move-result v3

    invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    mul-int/lit8 p1, p1, 0x3

    if-lt v0, p1, :cond_1

    if-lt v2, p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    :goto_0
    return v1
.end method

.method public final synthetic o(IIZLjava/nio/ByteBuffer;Ljava/nio/ShortBuffer;Ljava/nio/ByteBuffer;ZILjava/nio/ByteBuffer;)V
    .locals 14

    move-object v0, p0

    invoke-static {}, Ljc/a;->f()Lcom/google/android/filament/Engine;

    new-instance v1, Lcom/google/android/filament/VertexBuffer$b;

    invoke-direct {v1}, Lcom/google/android/filament/VertexBuffer$b;-><init>()V

    move v2, p1

    invoke-virtual {v1, p1}, Lcom/google/android/filament/VertexBuffer$b;->h(I)Lcom/google/android/filament/VertexBuffer$b;

    move-result-object v1

    move/from16 v2, p2

    invoke-virtual {v1, v2}, Lcom/google/android/filament/VertexBuffer$b;->c(I)Lcom/google/android/filament/VertexBuffer$b;

    move-result-object v2

    sget-object v3, Lcom/google/android/filament/VertexBuffer$c;->POSITION:Lcom/google/android/filament/VertexBuffer$c;

    sget-object v5, Lcom/google/android/filament/VertexBuffer$a;->FLOAT3:Lcom/google/android/filament/VertexBuffer$a;

    const/4 v6, 0x0

    const/16 v7, 0x14

    const/4 v4, 0x0

    invoke-virtual/range {v2 .. v7}, Lcom/google/android/filament/VertexBuffer$b;->b(Lcom/google/android/filament/VertexBuffer$c;ILcom/google/android/filament/VertexBuffer$a;II)Lcom/google/android/filament/VertexBuffer$b;

    move-result-object v8

    sget-object v9, Lcom/google/android/filament/VertexBuffer$c;->UV0:Lcom/google/android/filament/VertexBuffer$c;

    sget-object v11, Lcom/google/android/filament/VertexBuffer$a;->FLOAT2:Lcom/google/android/filament/VertexBuffer$a;

    const/16 v12, 0xc

    const/16 v13, 0x14

    const/4 v10, 0x0

    invoke-virtual/range {v8 .. v13}, Lcom/google/android/filament/VertexBuffer$b;->b(Lcom/google/android/filament/VertexBuffer$c;ILcom/google/android/filament/VertexBuffer$a;II)Lcom/google/android/filament/VertexBuffer$b;

    move-result-object v1

    sget-object v7, Lcom/google/android/filament/VertexBuffer$c;->TANGENTS:Lcom/google/android/filament/VertexBuffer$c;

    sget-object v4, Lcom/google/android/filament/VertexBuffer$a;->SHORT4:Lcom/google/android/filament/VertexBuffer$a;

    const/4 v5, 0x0

    const/16 v6, 0x8

    const/4 v3, 0x1

    move-object v2, v7

    invoke-virtual/range {v1 .. v6}, Lcom/google/android/filament/VertexBuffer$b;->b(Lcom/google/android/filament/VertexBuffer$c;ILcom/google/android/filament/VertexBuffer$a;II)Lcom/google/android/filament/VertexBuffer$b;

    move-result-object v1

    invoke-virtual {v1, v7}, Lcom/google/android/filament/VertexBuffer$b;->f(Lcom/google/android/filament/VertexBuffer$c;)Lcom/google/android/filament/VertexBuffer$b;

    move-result-object v1

    if-eqz p3, :cond_0

    sget-object v9, Lcom/google/android/filament/VertexBuffer$c;->BONE_INDICES:Lcom/google/android/filament/VertexBuffer$c;

    sget-object v2, Lcom/google/android/filament/VertexBuffer$a;->UBYTE4:Lcom/google/android/filament/VertexBuffer$a;

    const/4 v12, 0x0

    const/16 v13, 0x8

    const/4 v10, 0x2

    move-object v8, v1

    move-object v11, v2

    invoke-virtual/range {v8 .. v13}, Lcom/google/android/filament/VertexBuffer$b;->b(Lcom/google/android/filament/VertexBuffer$c;ILcom/google/android/filament/VertexBuffer$a;II)Lcom/google/android/filament/VertexBuffer$b;

    sget-object v3, Lcom/google/android/filament/VertexBuffer$c;->BONE_WEIGHTS:Lcom/google/android/filament/VertexBuffer$c;

    const/4 v12, 0x4

    move-object v9, v3

    invoke-virtual/range {v8 .. v13}, Lcom/google/android/filament/VertexBuffer$b;->b(Lcom/google/android/filament/VertexBuffer$c;ILcom/google/android/filament/VertexBuffer$a;II)Lcom/google/android/filament/VertexBuffer$b;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/google/android/filament/VertexBuffer$b;->f(Lcom/google/android/filament/VertexBuffer$c;)Lcom/google/android/filament/VertexBuffer$b;

    :cond_0
    new-instance v2, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentVertexBuffer;

    invoke-direct {v2, v1}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentVertexBuffer;-><init>(Lcom/google/android/filament/VertexBuffer$b;)V

    const/4 v1, 0x0

    move-object/from16 v3, p4

    invoke-virtual {v2, v1, v3}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentVertexBuffer;->s(ILjava/nio/ByteBuffer;)V

    const/4 v1, 0x1

    move-object/from16 v3, p5

    invoke-virtual {v2, v1, v3}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentVertexBuffer;->y(ILjava/nio/ShortBuffer;)V

    if-eqz p3, :cond_1

    const/4 v1, 0x2

    move-object/from16 v3, p6

    invoke-virtual {v2, v1, v3}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentVertexBuffer;->s(ILjava/nio/ByteBuffer;)V

    :cond_1
    if-eqz p7, :cond_2

    sget-object v1, Lcom/google/android/filament/IndexBuffer$a$b;->USHORT:Lcom/google/android/filament/IndexBuffer$a$b;

    goto :goto_0

    :cond_2
    sget-object v1, Lcom/google/android/filament/IndexBuffer$a$b;->UINT:Lcom/google/android/filament/IndexBuffer$a$b;

    :goto_0
    new-instance v3, Lkc/d;

    new-instance v4, Lcom/google/android/filament/IndexBuffer$a;

    invoke-direct {v4}, Lcom/google/android/filament/IndexBuffer$a;-><init>()V

    move/from16 v5, p8

    invoke-virtual {v4, v5}, Lcom/google/android/filament/IndexBuffer$a;->c(I)Lcom/google/android/filament/IndexBuffer$a;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/google/android/filament/IndexBuffer$a;->a(Lcom/google/android/filament/IndexBuffer$a$b;)Lcom/google/android/filament/IndexBuffer$a;

    move-result-object v1

    invoke-direct {v3, v1}, Lkc/d;-><init>(Lcom/google/android/filament/IndexBuffer$a;)V

    move-object/from16 v1, p9

    invoke-virtual {v3, v1}, Lkc/d;->s(Ljava/nio/ByteBuffer;)V

    iput-object v2, v0, Lcc/g;->h:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentVertexBuffer;

    iput-object v3, v0, Lcc/g;->i:Lkc/d;

    iget-object v1, v0, Lcc/g;->j:Lcc/g$a;

    if-eqz v1, :cond_3

    invoke-interface {v1, v2, v3}, Lcc/g$a;->a(Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentVertexBuffer;Lkc/d;)V

    :cond_3
    return-void
.end method
