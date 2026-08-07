.class public Lcc/j;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcc/j$a;
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

.field public final j:Lcc/j$a;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;Lcc/j$a;)V
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

    iput-object p1, p0, Lcc/j;->a:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    iput-object p2, p0, Lcc/j;->d:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    iput-object p3, p0, Lcc/j;->e:Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;

    iput-object p4, p0, Lcc/j;->b:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    iput-object p5, p0, Lcc/j;->c:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    iput-object p6, p0, Lcc/j;->f:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    iput-object p7, p0, Lcc/j;->g:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    iput-object p8, p0, Lcc/j;->j:Lcc/j$a;

    invoke-virtual {p0}, Lcc/j;->a()V

    return-void
.end method

.method public static b(Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;Z)Ljava/nio/ByteBuffer;
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

.method public static c(Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;II)Ljava/nio/ByteBuffer;
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

.method public static d(Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;I)Ljava/nio/ShortBuffer;
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

    invoke-static {p0, p2, p3, p5}, Lcc/j;->f(Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;I)Z

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

.method public static e(Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;I)Ljava/nio/ByteBuffer;
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

    invoke-static {v0, v5, v4}, Lcc/j;->m(Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;II)I

    move-result v6

    const/4 v7, 0x1

    invoke-static {v0, v5, v7}, Lcc/j;->m(Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;II)I

    move-result v8

    const/4 v9, 0x2

    invoke-static {v0, v5, v9}, Lcc/j;->m(Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;II)I

    move-result v10

    const/4 v11, 0x3

    invoke-static {v0, v5, v11}, Lcc/j;->m(Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;II)I

    move-result v12

    invoke-static {v1, v5, v4}, Lcc/j;->o(Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;II)F

    move-result v13

    invoke-static {v1, v5, v7}, Lcc/j;->o(Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;II)F

    move-result v7

    invoke-static {v1, v5, v9}, Lcc/j;->o(Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;II)F

    move-result v9

    invoke-static {v1, v5, v11}, Lcc/j;->o(Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;II)F

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
    invoke-static {v7}, Lcc/j;->n(F)I

    move-result v7

    invoke-static {v11}, Lcc/j;->n(F)I

    move-result v11

    invoke-static {v9}, Lcc/j;->n(F)I

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
    invoke-static {v6}, Lcc/j;->g(I)I

    move-result v6

    int-to-byte v6, v6

    invoke-virtual {v3, v6}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    invoke-static {v8}, Lcc/j;->g(I)I

    move-result v6

    int-to-byte v6, v6

    invoke-virtual {v3, v6}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    invoke-static {v10}, Lcc/j;->g(I)I

    move-result v6

    int-to-byte v6, v6

    invoke-virtual {v3, v6}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    invoke-static {v12}, Lcc/j;->g(I)I

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

.method public static f(Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;I)Z
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

.method public static g(I)I
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

.method public static m(Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;II)I
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

    invoke-static {p0}, Lcc/j;->g(I)I

    move-result p0

    return p0
.end method

.method public static n(F)I
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

.method public static o(Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;II)F
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
.method public final a()V
    .locals 10

    invoke-virtual {p0}, Lcc/j;->k()I

    move-result v6

    iget-object v0, p0, Lcc/j;->e:Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;

    const/4 v7, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->h()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v7

    :goto_0
    div-int/lit8 v0, v0, 0x3

    if-eqz v6, :cond_6

    if-nez v0, :cond_1

    goto :goto_3

    :cond_1
    iget-object v8, p0, Lcc/j;->d:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    :try_start_0
    invoke-virtual {p0, v6}, Lcc/j;->h(I)V

    iget-object v0, p0, Lcc/j;->a:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    iget-object v1, p0, Lcc/j;->d:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    const/16 v2, 0x14

    invoke-static {v0, v1, v6, v2}, Lcc/j;->c(Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;II)Ljava/nio/ByteBuffer;

    move-result-object v9

    iget-object v0, p0, Lcc/j;->a:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    iget-object v1, p0, Lcc/j;->d:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    iget-object v2, p0, Lcc/j;->b:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    iget-object v3, p0, Lcc/j;->c:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    iget-object v4, p0, Lcc/j;->e:Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;

    move v5, v6

    invoke-static/range {v0 .. v5}, Lcc/j;->d(Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;I)Ljava/nio/ShortBuffer;

    move-result-object v0

    invoke-virtual {p0, v6}, Lcc/j;->l(I)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcc/j;->f:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    iget-object v2, p0, Lcc/j;->g:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    invoke-static {v1, v2, v6}, Lcc/j;->e(Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;I)Ljava/nio/ByteBuffer;

    move-result-object v1

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :goto_1
    iget-object v2, p0, Lcc/j;->e:Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->U()I

    move-result v2

    const v3, 0xffff

    if-gt v2, v3, :cond_3

    const/4 v7, 0x1

    :cond_3
    iget-object v2, p0, Lcc/j;->e:Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;

    invoke-static {v2, v7}, Lcc/j;->b(Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;Z)Ljava/nio/ByteBuffer;

    move-result-object v2

    iget-object v3, p0, Lcc/j;->j:Lcc/j$a;

    invoke-interface {v3, v9, v0, v2, v1}, Lcc/j$a;->a(Ljava/nio/ByteBuffer;Ljava/nio/ShortBuffer;Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcc/j;->d:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    if-eqz v0, :cond_4

    if-eq v0, v8, :cond_4

    iput-object v8, p0, Lcc/j;->d:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->destroyImmediate()V

    :cond_4
    return-void

    :goto_2
    iget-object v1, p0, Lcc/j;->d:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    if-eqz v1, :cond_5

    if-eq v1, v8, :cond_5

    iput-object v8, p0, Lcc/j;->d:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->destroyImmediate()V

    :cond_5
    throw v0

    :cond_6
    :goto_3
    return-void
.end method

.method public final h(I)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "vertexCount"
        }
    .end annotation

    iget-object v0, p0, Lcc/j;->a:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    iget-object v1, p0, Lcc/j;->b:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    iget-object v2, p0, Lcc/j;->c:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    invoke-static {v0, v1, v2, p1}, Lcc/j;->f(Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;I)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcc/j;->d:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->h()I

    move-result v0

    mul-int/lit8 v1, p1, 0x2

    if-ge v0, v1, :cond_4

    :cond_0
    new-instance v0, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    mul-int/lit8 v1, p1, 0x2

    invoke-direct {v0, v1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;-><init>(I)V

    iget-object v1, p0, Lcc/j;->d:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->h()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcc/j;->d:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    if-eqz v2, :cond_2

    invoke-virtual {v0, v2}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->q0(Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;)V

    :cond_2
    :goto_1
    if-ge v1, p1, :cond_3

    iget-object v2, p0, Lcc/j;->a:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    mul-int/lit8 v3, v1, 0x3

    invoke-virtual {v2, v3}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->X(I)F

    move-result v2

    iget-object v4, p0, Lcc/j;->a:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

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
    iput-object v0, p0, Lcc/j;->d:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    :cond_4
    return-void
.end method

.method public i()Lkc/d;
    .locals 1

    iget-object v0, p0, Lcc/j;->i:Lkc/d;

    return-object v0
.end method

.method public j()Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentVertexBuffer;
    .locals 1

    iget-object v0, p0, Lcc/j;->h:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentVertexBuffer;

    return-object v0
.end method

.method public final k()I
    .locals 1

    iget-object v0, p0, Lcc/j;->a:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->h()I

    move-result v0

    div-int/lit8 v0, v0, 0x3

    return v0
.end method

.method public final l(I)Z
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "vcount"
        }
    .end annotation

    iget-object v0, p0, Lcc/j;->f:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v2, p0, Lcc/j;->g:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->h()I

    move-result v0

    mul-int/lit8 v2, p1, 0x4

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget-object v3, p0, Lcc/j;->g:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

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
