.class public Lcc/e;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcc/e$a;
    }
.end annotation


# instance fields
.field public a:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

.field public b:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

.field public c:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

.field public d:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

.field public e:Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;

.field public f:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

.field public g:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

.field public h:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentVertexBuffer;

.field public i:Lkc/d;

.field public final j:Lcc/e$a;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;Lcc/e$a;)V
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

    iput-object p1, p0, Lcc/e;->a:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    iput-object p2, p0, Lcc/e;->d:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    iput-object p3, p0, Lcc/e;->e:Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;

    iput-object p4, p0, Lcc/e;->b:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    iput-object p5, p0, Lcc/e;->c:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    iput-object p6, p0, Lcc/e;->f:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    iput-object p7, p0, Lcc/e;->g:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    iput-object p8, p0, Lcc/e;->j:Lcc/e$a;

    invoke-virtual {p0}, Lcc/e;->g()V

    return-void
.end method

.method public static synthetic a(Lcc/e;IIIZLjava/nio/ByteBuffer;Ljava/nio/ShortBuffer;Ljava/nio/ByteBuffer;Ljava/nio/FloatBuffer;ZILjava/nio/ByteBuffer;)V
    .locals 0

    invoke-virtual/range {p0 .. p11}, Lcc/e;->p(IIIZLjava/nio/ByteBuffer;Ljava/nio/ShortBuffer;Ljava/nio/ByteBuffer;Ljava/nio/FloatBuffer;ZILjava/nio/ByteBuffer;)V

    return-void
.end method

.method public static b(Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;I)Ljava/nio/FloatBuffer;
    .locals 11
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "vertices",
            "vcount"
        }
    .end annotation

    const/high16 v0, 0x7f800000    # Float.POSITIVE_INFINITY

    const/high16 v1, -0x800000    # Float.NEGATIVE_INFINITY

    const/4 v2, 0x0

    move v3, v1

    move v4, v3

    move v5, v4

    move v6, v2

    move v1, v0

    move v2, v1

    :goto_0
    if-ge v6, p1, :cond_6

    mul-int/lit8 v7, v6, 0x3

    invoke-virtual {p0, v7}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->X(I)F

    move-result v8

    add-int/lit8 v9, v7, 0x1

    invoke-virtual {p0, v9}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->X(I)F

    move-result v9

    add-int/lit8 v7, v7, 0x2

    invoke-virtual {p0, v7}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->X(I)F

    move-result v7

    cmpg-float v10, v8, v0

    if-gez v10, :cond_0

    move v0, v8

    :cond_0
    cmpg-float v10, v9, v1

    if-gez v10, :cond_1

    move v1, v9

    :cond_1
    cmpg-float v10, v7, v2

    if-gez v10, :cond_2

    move v2, v7

    :cond_2
    cmpl-float v10, v8, v3

    if-lez v10, :cond_3

    move v3, v8

    :cond_3
    cmpl-float v8, v9, v4

    if-lez v8, :cond_4

    move v4, v9

    :cond_4
    cmpl-float v8, v7, v5

    if-lez v8, :cond_5

    move v5, v7

    :cond_5
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_6
    if-gtz p1, :cond_7

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    move v3, v2

    move v4, v3

    move v5, v4

    move v6, v5

    goto :goto_1

    :cond_7
    move v6, v5

    move v5, v4

    move v4, v3

    move v3, v2

    move v2, v1

    move v1, v0

    :goto_1
    move v7, p1

    invoke-static/range {v1 .. v7}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->Y(FFFFFFI)Ljava/nio/FloatBuffer;

    move-result-object p0

    return-object p0
.end method

.method public static c(Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;Z)Ljava/nio/ByteBuffer;
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

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->h()I

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

    invoke-virtual {p0, v1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->V(I)I

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

    invoke-virtual {p0, v1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->V(I)I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    return-object p1
.end method

.method public static d(Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;II)Ljava/nio/ByteBuffer;
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

    invoke-virtual {p0, v1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->X(I)F

    move-result v2

    invoke-virtual {p3, v2}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p0, v2}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->X(I)F

    move-result v2

    invoke-virtual {p3, v2}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    add-int/lit8 v1, v1, 0x2

    invoke-virtual {p0, v1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->X(I)F

    move-result v1

    invoke-virtual {p3, v1}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    mul-int/lit8 v1, v0, 0x2

    invoke-virtual {p1, v1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->X(I)F

    move-result v2

    invoke-virtual {p3, v2}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p1, v1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->X(I)F

    move-result v1

    invoke-virtual {p3, v1}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    return-object p3
.end method

.method public static e(Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;I)Ljava/nio/ShortBuffer;
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

    invoke-static {p0, p2, p3, p5}, Lcc/e;->h(Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;I)Z

    move-result p5

    if-eqz p5, :cond_0

    new-instance p1, Lcc/c;

    invoke-direct {p1, p0, p2, p3, p4}, Lcc/c;-><init>(Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;)V

    invoke-virtual {p1}, Lcc/c;->b()Ljava/nio/ShortBuffer;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p3, Lcc/k;

    invoke-direct {p3, p0, p1, p2, p4}, Lcc/k;-><init>(Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;)V

    invoke-virtual {p3}, Lcc/k;->b()Ljava/nio/ShortBuffer;

    move-result-object p0

    return-object p0
.end method

.method public static f(Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;I)Ljava/nio/ByteBuffer;
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

    invoke-static {v0, v5, v4}, Lcc/e;->o(Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;II)I

    move-result v6

    const/4 v7, 0x1

    invoke-static {v0, v5, v7}, Lcc/e;->o(Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;II)I

    move-result v8

    const/4 v9, 0x2

    invoke-static {v0, v5, v9}, Lcc/e;->o(Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;II)I

    move-result v10

    const/4 v11, 0x3

    invoke-static {v0, v5, v11}, Lcc/e;->o(Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;II)I

    move-result v12

    invoke-static {v1, v5, v4}, Lcc/e;->r(Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;II)F

    move-result v13

    invoke-static {v1, v5, v7}, Lcc/e;->r(Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;II)F

    move-result v7

    invoke-static {v1, v5, v9}, Lcc/e;->r(Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;II)F

    move-result v9

    invoke-static {v1, v5, v11}, Lcc/e;->r(Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;II)F

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
    invoke-static {v7}, Lcc/e;->q(F)I

    move-result v7

    invoke-static {v11}, Lcc/e;->q(F)I

    move-result v11

    invoke-static {v9}, Lcc/e;->q(F)I

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
    invoke-static {v6}, Lcc/e;->i(I)I

    move-result v6

    int-to-byte v6, v6

    invoke-virtual {v3, v6}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    invoke-static {v8}, Lcc/e;->i(I)I

    move-result v6

    int-to-byte v6, v6

    invoke-virtual {v3, v6}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    invoke-static {v10}, Lcc/e;->i(I)I

    move-result v6

    int-to-byte v6, v6

    invoke-virtual {v3, v6}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    invoke-static {v12}, Lcc/e;->i(I)I

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

.method public static h(Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;I)Z
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
    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->h()I

    move-result p0

    mul-int/lit8 p1, p3, 0x3

    if-lt p0, p1, :cond_1

    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->h()I

    move-result p0

    mul-int/lit8 p3, p3, 0x4

    if-lt p0, p3, :cond_1

    const/4 v0, 0x1

    :cond_1
    :goto_0
    return v0
.end method

.method public static i(I)I
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

.method public static o(Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;II)I
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
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->h()I

    move-result v0

    if-lt p1, v0, :cond_1

    return p2

    :cond_1
    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->X(I)F

    move-result p0

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    invoke-static {p0}, Lcc/e;->i(I)I

    move-result p0

    return p0
.end method

.method public static q(F)I
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

.method public static r(Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;II)F
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
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->h()I

    move-result v0

    if-lt p1, v0, :cond_1

    return p2

    :cond_1
    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->X(I)F

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
.method public final g()V
    .locals 18

    move-object/from16 v14, p0

    invoke-virtual/range {p0 .. p0}, Lcc/e;->m()I

    move-result v0

    iget-object v1, v14, Lcc/e;->e:Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;

    const/4 v7, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->h()I

    move-result v1

    move v12, v1

    goto :goto_0

    :cond_0
    move v12, v7

    :goto_0
    div-int/lit8 v1, v12, 0x3

    if-eqz v0, :cond_7

    if-nez v1, :cond_1

    goto/16 :goto_7

    :cond_1
    iget-object v15, v14, Lcc/e;->d:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    :try_start_0
    invoke-virtual {v14, v0}, Lcc/e;->j(I)V

    iget-object v1, v14, Lcc/e;->a:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    iget-object v2, v14, Lcc/e;->d:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    const/16 v3, 0x14

    invoke-static {v1, v2, v0, v3}, Lcc/e;->d(Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;II)Ljava/nio/ByteBuffer;

    move-result-object v8

    iget-object v1, v14, Lcc/e;->a:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    iget-object v2, v14, Lcc/e;->d:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    iget-object v3, v14, Lcc/e;->b:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    iget-object v4, v14, Lcc/e;->c:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    iget-object v5, v14, Lcc/e;->e:Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;

    move v6, v0

    invoke-static/range {v1 .. v6}, Lcc/e;->e(Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;I)Ljava/nio/ShortBuffer;

    move-result-object v9

    invoke-virtual {v14, v0}, Lcc/e;->n(I)Z

    move-result v6

    if-eqz v6, :cond_2

    iget-object v1, v14, Lcc/e;->f:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    iget-object v2, v14, Lcc/e;->g:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    invoke-static {v1, v2, v0}, Lcc/e;->f(Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;I)Ljava/nio/ByteBuffer;

    move-result-object v1

    :goto_1
    move-object v10, v1

    goto :goto_2

    :catchall_0
    move-exception v0

    goto :goto_6

    :cond_2
    const/4 v1, 0x0

    goto :goto_1

    :goto_2
    iget-object v1, v14, Lcc/e;->e:Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->U()I

    move-result v1

    const v2, 0xffff

    if-gt v1, v2, :cond_3

    const/4 v1, 0x1

    move v11, v1

    goto :goto_3

    :cond_3
    move v11, v7

    :goto_3
    iget-object v1, v14, Lcc/e;->e:Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;

    invoke-static {v1, v11}, Lcc/e;->c(Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;Z)Ljava/nio/ByteBuffer;

    move-result-object v13

    iget-object v1, v14, Lcc/e;->a:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    invoke-static {v1, v0}, Lcc/e;->b(Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;I)Ljava/nio/FloatBuffer;

    move-result-object v16

    if-eqz v6, :cond_4

    const/4 v1, 0x4

    :goto_4
    move v4, v1

    goto :goto_5

    :cond_4
    const/4 v1, 0x3

    goto :goto_4

    :goto_5
    add-int/lit8 v5, v4, -0x1

    new-instance v17, Lcc/d;

    move-object/from16 v1, v17

    move-object/from16 v2, p0

    move v3, v0

    move-object v7, v8

    move-object v8, v9

    move-object v9, v10

    move-object/from16 v10, v16

    invoke-direct/range {v1 .. v13}, Lcc/d;-><init>(Lcc/e;IIIZLjava/nio/ByteBuffer;Ljava/nio/ShortBuffer;Ljava/nio/ByteBuffer;Ljava/nio/FloatBuffer;ZILjava/nio/ByteBuffer;)V

    invoke-static/range {v17 .. v17}, Lc9/a;->I(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, v14, Lcc/e;->d:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    if-eqz v0, :cond_5

    if-eq v0, v15, :cond_5

    iput-object v15, v14, Lcc/e;->d:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->destroyImmediate()V

    :cond_5
    return-void

    :goto_6
    iget-object v1, v14, Lcc/e;->d:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    if-eqz v1, :cond_6

    if-eq v1, v15, :cond_6

    iput-object v15, v14, Lcc/e;->d:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->destroyImmediate()V

    :cond_6
    throw v0

    :cond_7
    :goto_7
    return-void
.end method

.method public final j(I)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "vertexCount"
        }
    .end annotation

    iget-object v0, p0, Lcc/e;->a:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    iget-object v1, p0, Lcc/e;->b:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    iget-object v2, p0, Lcc/e;->c:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    invoke-static {v0, v1, v2, p1}, Lcc/e;->h(Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;I)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcc/e;->d:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->h()I

    move-result v0

    mul-int/lit8 v1, p1, 0x2

    if-ge v0, v1, :cond_4

    :cond_0
    new-instance v0, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    mul-int/lit8 v1, p1, 0x2

    invoke-direct {v0, v1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;-><init>(I)V

    iget-object v1, p0, Lcc/e;->d:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->h()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcc/e;->d:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    if-eqz v2, :cond_2

    invoke-virtual {v0, v2}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->q0(Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;)V

    :cond_2
    :goto_1
    if-ge v1, p1, :cond_3

    iget-object v2, p0, Lcc/e;->a:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    mul-int/lit8 v3, v1, 0x3

    invoke-virtual {v2, v3}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->X(I)F

    move-result v2

    iget-object v4, p0, Lcc/e;->a:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    add-int/lit8 v3, v3, 0x2

    invoke-virtual {v4, v3}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->X(I)F

    move-result v3

    mul-int/lit8 v4, v1, 0x2

    invoke-virtual {v0, v4, v2}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->z0(IF)V

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v0, v4, v3}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->z0(IF)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    iput-object v0, p0, Lcc/e;->d:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    :cond_4
    return-void
.end method

.method public k()Lkc/d;
    .locals 1

    iget-object v0, p0, Lcc/e;->i:Lkc/d;

    return-object v0
.end method

.method public l()Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentVertexBuffer;
    .locals 1

    iget-object v0, p0, Lcc/e;->h:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentVertexBuffer;

    return-object v0
.end method

.method public final m()I
    .locals 1

    iget-object v0, p0, Lcc/e;->a:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->h()I

    move-result v0

    div-int/lit8 v0, v0, 0x3

    return v0
.end method

.method public final n(I)Z
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "vcount"
        }
    .end annotation

    iget-object v0, p0, Lcc/e;->f:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v2, p0, Lcc/e;->g:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->h()I

    move-result v0

    mul-int/lit8 v2, p1, 0x4

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget-object v3, p0, Lcc/e;->g:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->h()I

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

.method public final synthetic p(IIIZLjava/nio/ByteBuffer;Ljava/nio/ShortBuffer;Ljava/nio/ByteBuffer;Ljava/nio/FloatBuffer;ZILjava/nio/ByteBuffer;)V
    .locals 16

    move-object/from16 v0, p0

    invoke-static {}, Ljc/a;->f()Lcom/google/android/filament/Engine;

    new-instance v1, Lcom/google/android/filament/VertexBuffer$b;

    invoke-direct {v1}, Lcom/google/android/filament/VertexBuffer$b;-><init>()V

    move/from16 v2, p1

    invoke-virtual {v1, v2}, Lcom/google/android/filament/VertexBuffer$b;->h(I)Lcom/google/android/filament/VertexBuffer$b;

    move-result-object v1

    move/from16 v2, p2

    invoke-virtual {v1, v2}, Lcom/google/android/filament/VertexBuffer$b;->c(I)Lcom/google/android/filament/VertexBuffer$b;

    move-result-object v2

    sget-object v3, Lcom/google/android/filament/VertexBuffer$c;->POSITION:Lcom/google/android/filament/VertexBuffer$c;

    sget-object v1, Lcom/google/android/filament/VertexBuffer$a;->FLOAT3:Lcom/google/android/filament/VertexBuffer$a;

    const/4 v6, 0x0

    const/16 v7, 0x14

    const/4 v4, 0x0

    move-object v5, v1

    invoke-virtual/range {v2 .. v7}, Lcom/google/android/filament/VertexBuffer$b;->b(Lcom/google/android/filament/VertexBuffer$c;ILcom/google/android/filament/VertexBuffer$a;II)Lcom/google/android/filament/VertexBuffer$b;

    move-result-object v8

    sget-object v9, Lcom/google/android/filament/VertexBuffer$c;->UV0:Lcom/google/android/filament/VertexBuffer$c;

    sget-object v11, Lcom/google/android/filament/VertexBuffer$a;->FLOAT2:Lcom/google/android/filament/VertexBuffer$a;

    const/16 v12, 0xc

    const/16 v13, 0x14

    const/4 v10, 0x0

    invoke-virtual/range {v8 .. v13}, Lcom/google/android/filament/VertexBuffer$b;->b(Lcom/google/android/filament/VertexBuffer$c;ILcom/google/android/filament/VertexBuffer$a;II)Lcom/google/android/filament/VertexBuffer$b;

    move-result-object v2

    sget-object v8, Lcom/google/android/filament/VertexBuffer$c;->TANGENTS:Lcom/google/android/filament/VertexBuffer$c;

    sget-object v5, Lcom/google/android/filament/VertexBuffer$a;->SHORT4:Lcom/google/android/filament/VertexBuffer$a;

    const/16 v7, 0x8

    const/4 v4, 0x1

    move-object v3, v8

    invoke-virtual/range {v2 .. v7}, Lcom/google/android/filament/VertexBuffer$b;->b(Lcom/google/android/filament/VertexBuffer$c;ILcom/google/android/filament/VertexBuffer$a;II)Lcom/google/android/filament/VertexBuffer$b;

    move-result-object v2

    invoke-virtual {v2, v8}, Lcom/google/android/filament/VertexBuffer$b;->f(Lcom/google/android/filament/VertexBuffer$c;)Lcom/google/android/filament/VertexBuffer$b;

    move-result-object v4

    sget-object v2, Lcom/itsmagic/engine/Engines/Engine/Vertex/a;->a:Lcom/itsmagic/engine/Engines/Engine/Vertex/a$a;

    iget-object v5, v2, Lcom/itsmagic/engine/Engines/Engine/Vertex/a$a;->b:Lcom/google/android/filament/VertexBuffer$c;

    const/4 v8, 0x0

    const/16 v9, 0x18

    move/from16 v6, p3

    move-object v7, v1

    invoke-virtual/range {v4 .. v9}, Lcom/google/android/filament/VertexBuffer$b;->b(Lcom/google/android/filament/VertexBuffer$c;ILcom/google/android/filament/VertexBuffer$a;II)Lcom/google/android/filament/VertexBuffer$b;

    move-result-object v4

    sget-object v2, Lcom/itsmagic/engine/Engines/Engine/Vertex/a;->b:Lcom/itsmagic/engine/Engines/Engine/Vertex/a$a;

    iget-object v5, v2, Lcom/itsmagic/engine/Engines/Engine/Vertex/a$a;->b:Lcom/google/android/filament/VertexBuffer$c;

    const/16 v8, 0xc

    invoke-virtual/range {v4 .. v9}, Lcom/google/android/filament/VertexBuffer$b;->b(Lcom/google/android/filament/VertexBuffer$c;ILcom/google/android/filament/VertexBuffer$a;II)Lcom/google/android/filament/VertexBuffer$b;

    move-result-object v1

    if-eqz p4, :cond_0

    sget-object v11, Lcom/google/android/filament/VertexBuffer$c;->BONE_INDICES:Lcom/google/android/filament/VertexBuffer$c;

    sget-object v2, Lcom/google/android/filament/VertexBuffer$a;->UBYTE4:Lcom/google/android/filament/VertexBuffer$a;

    const/4 v14, 0x0

    const/16 v15, 0x8

    const/4 v12, 0x2

    move-object v10, v1

    move-object v13, v2

    invoke-virtual/range {v10 .. v15}, Lcom/google/android/filament/VertexBuffer$b;->b(Lcom/google/android/filament/VertexBuffer$c;ILcom/google/android/filament/VertexBuffer$a;II)Lcom/google/android/filament/VertexBuffer$b;

    sget-object v3, Lcom/google/android/filament/VertexBuffer$c;->BONE_WEIGHTS:Lcom/google/android/filament/VertexBuffer$c;

    const/4 v14, 0x4

    move-object v11, v3

    invoke-virtual/range {v10 .. v15}, Lcom/google/android/filament/VertexBuffer$b;->b(Lcom/google/android/filament/VertexBuffer$c;ILcom/google/android/filament/VertexBuffer$a;II)Lcom/google/android/filament/VertexBuffer$b;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/google/android/filament/VertexBuffer$b;->f(Lcom/google/android/filament/VertexBuffer$c;)Lcom/google/android/filament/VertexBuffer$b;

    :cond_0
    new-instance v2, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentVertexBuffer;

    invoke-direct {v2, v1}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentVertexBuffer;-><init>(Lcom/google/android/filament/VertexBuffer$b;)V

    const/4 v1, 0x0

    move-object/from16 v3, p5

    invoke-virtual {v2, v1, v3}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentVertexBuffer;->s(ILjava/nio/ByteBuffer;)V

    const/4 v1, 0x1

    move-object/from16 v3, p6

    invoke-virtual {v2, v1, v3}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentVertexBuffer;->y(ILjava/nio/ShortBuffer;)V

    if-eqz p4, :cond_1

    const/4 v1, 0x2

    move-object/from16 v3, p7

    invoke-virtual {v2, v1, v3}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentVertexBuffer;->s(ILjava/nio/ByteBuffer;)V

    :cond_1
    move/from16 v1, p3

    move-object/from16 v3, p8

    invoke-virtual {v2, v1, v3}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentVertexBuffer;->w(ILjava/nio/FloatBuffer;)V

    if-eqz p9, :cond_2

    sget-object v1, Lcom/google/android/filament/IndexBuffer$a$b;->USHORT:Lcom/google/android/filament/IndexBuffer$a$b;

    goto :goto_0

    :cond_2
    sget-object v1, Lcom/google/android/filament/IndexBuffer$a$b;->UINT:Lcom/google/android/filament/IndexBuffer$a$b;

    :goto_0
    new-instance v3, Lkc/d;

    new-instance v4, Lcom/google/android/filament/IndexBuffer$a;

    invoke-direct {v4}, Lcom/google/android/filament/IndexBuffer$a;-><init>()V

    move/from16 v5, p10

    invoke-virtual {v4, v5}, Lcom/google/android/filament/IndexBuffer$a;->c(I)Lcom/google/android/filament/IndexBuffer$a;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/google/android/filament/IndexBuffer$a;->a(Lcom/google/android/filament/IndexBuffer$a$b;)Lcom/google/android/filament/IndexBuffer$a;

    move-result-object v1

    invoke-direct {v3, v1}, Lkc/d;-><init>(Lcom/google/android/filament/IndexBuffer$a;)V

    move-object/from16 v1, p11

    invoke-virtual {v3, v1}, Lkc/d;->s(Ljava/nio/ByteBuffer;)V

    iput-object v2, v0, Lcc/e;->h:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentVertexBuffer;

    iput-object v3, v0, Lcc/e;->i:Lkc/d;

    iget-object v1, v0, Lcc/e;->j:Lcc/e$a;

    if-eqz v1, :cond_3

    invoke-interface {v1, v2, v3}, Lcc/e$a;->a(Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentVertexBuffer;Lkc/d;)V

    :cond_3
    return-void
.end method
