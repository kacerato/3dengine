.class public Lph/p;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static A(Lph/A;Ljava/nio/FloatBuffer;IZ)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "obj",
            "target",
            "dimensions",
            "flipY"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p3, :cond_2

    move p3, v0

    :goto_0
    invoke-interface {p0}, Lph/A;->u()I

    move-result v1

    if-ge p3, v1, :cond_4

    invoke-interface {p0, p3}, Lph/A;->r(I)Lph/i;

    move-result-object v1

    move v2, v0

    :goto_1
    if-ge v2, p2, :cond_1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-interface {v1, v2}, Lph/i;->get(I)F

    move-result v4

    sub-float/2addr v3, v4

    invoke-virtual {p1, v3}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    goto :goto_2

    :cond_0
    invoke-interface {v1, v2}, Lph/i;->get(I)F

    move-result v3

    invoke-virtual {p1, v3}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_2
    move p3, v0

    :goto_3
    invoke-interface {p0}, Lph/A;->u()I

    move-result v1

    if-ge p3, v1, :cond_4

    invoke-interface {p0, p3}, Lph/A;->r(I)Lph/i;

    move-result-object v1

    move v2, v0

    :goto_4
    if-ge v2, p2, :cond_3

    invoke-interface {v1, v2}, Lph/i;->get(I)F

    move-result v3

    invoke-virtual {p1, v3}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_3
    add-int/lit8 p3, p3, 0x1

    goto :goto_3

    :cond_4
    return-void
.end method

.method public static B(Lph/A;I)[F
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "obj",
            "dimensions"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lph/p;->C(Lph/A;IZ)[F

    move-result-object p0

    return-object p0
.end method

.method public static C(Lph/A;IZ)[F
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "obj",
            "dimensions",
            "flipY"
        }
    .end annotation

    invoke-interface {p0}, Lph/A;->u()I

    move-result v0

    mul-int/2addr v0, p1

    new-array v0, v0, [F

    invoke-static {v0}, Ljava/nio/FloatBuffer;->wrap([F)Ljava/nio/FloatBuffer;

    move-result-object v1

    invoke-static {p0, v1, p1, p2}, Lph/p;->A(Lph/A;Ljava/nio/FloatBuffer;IZ)V

    return-object v0
.end method

.method public static D(Lph/A;)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "obj"
        }
    .end annotation

    invoke-static {p0}, Lph/p;->w(Lph/A;)[I

    move-result-object p0

    invoke-static {p0}, Lph/p;->H([I)I

    move-result p0

    return p0
.end method

.method public static E(Lph/A;)Ljava/nio/FloatBuffer;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "obj"
        }
    .end annotation

    invoke-interface {p0}, Lph/A;->b()I

    move-result v0

    mul-int/lit8 v0, v0, 0x3

    invoke-static {v0}, Lph/p;->b(I)Ljava/nio/FloatBuffer;

    move-result-object v0

    invoke-static {p0, v0}, Lph/p;->F(Lph/A;Ljava/nio/FloatBuffer;)V

    const/4 p0, 0x0

    invoke-virtual {v0, p0}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    return-object v0
.end method

.method public static F(Lph/A;Ljava/nio/FloatBuffer;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "obj",
            "target"
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p0}, Lph/A;->b()I

    move-result v1

    if-ge v0, v1, :cond_0

    invoke-interface {p0, v0}, Lph/A;->d(I)Lph/i;

    move-result-object v1

    invoke-interface {v1}, Lph/i;->getX()F

    move-result v2

    invoke-virtual {p1, v2}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    invoke-interface {v1}, Lph/i;->getY()F

    move-result v2

    invoke-virtual {p1, v2}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    invoke-interface {v1}, Lph/i;->getZ()F

    move-result v1

    invoke-virtual {p1, v1}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static G(Lph/A;)[F
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "obj"
        }
    .end annotation

    invoke-interface {p0}, Lph/A;->b()I

    move-result v0

    mul-int/lit8 v0, v0, 0x3

    new-array v0, v0, [F

    invoke-static {v0}, Ljava/nio/FloatBuffer;->wrap([F)Ljava/nio/FloatBuffer;

    move-result-object v1

    invoke-static {p0, v1}, Lph/p;->F(Lph/A;Ljava/nio/FloatBuffer;)V

    return-object v0
.end method

.method public static H([I)I
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "array"
        }
    .end annotation

    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v1, v0, :cond_0

    aget v3, p0, v1

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return v2
.end method

.method public static a(Ljava/nio/IntBuffer;)Ljava/nio/ShortBuffer;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "intBuffer"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/nio/Buffer;->capacity()I

    move-result v0

    invoke-static {v0}, Lph/p;->d(I)Ljava/nio/ShortBuffer;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Ljava/nio/Buffer;->capacity()I

    move-result v2

    if-ge v1, v2, :cond_0

    invoke-virtual {p0}, Ljava/nio/IntBuffer;->get()I

    move-result v2

    int-to-short v2, v2

    invoke-virtual {v0, v1, v2}, Ljava/nio/ShortBuffer;->put(IS)Ljava/nio/ShortBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static b(I)Ljava/nio/FloatBuffer;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "size"
        }
    .end annotation

    mul-int/lit8 p0, p0, 0x4

    invoke-static {p0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object p0

    return-object p0
.end method

.method public static c(I)Ljava/nio/IntBuffer;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "size"
        }
    .end annotation

    mul-int/lit8 p0, p0, 0x4

    invoke-static {p0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object p0

    return-object p0
.end method

.method public static d(I)Ljava/nio/ShortBuffer;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "size"
        }
    .end annotation

    mul-int/lit8 p0, p0, 0x2

    invoke-static {p0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object p0

    return-object p0
.end method

.method public static e(Lph/A;)Ljava/nio/IntBuffer;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "obj"
        }
    .end annotation

    invoke-static {p0}, Lph/p;->D(Lph/A;)I

    move-result v0

    invoke-static {v0}, Lph/p;->c(I)Ljava/nio/IntBuffer;

    move-result-object v0

    invoke-static {p0, v0}, Lph/p;->g(Lph/A;Ljava/nio/IntBuffer;)V

    const/4 p0, 0x0

    invoke-virtual {v0, p0}, Ljava/nio/IntBuffer;->position(I)Ljava/nio/Buffer;

    return-object v0
.end method

.method public static f(Lph/A;I)Ljava/nio/IntBuffer;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "obj",
            "numVerticesPerFace"
        }
    .end annotation

    invoke-interface {p0}, Lph/A;->getNumFaces()I

    move-result v0

    mul-int/2addr v0, p1

    invoke-static {v0}, Lph/p;->c(I)Ljava/nio/IntBuffer;

    move-result-object p1

    invoke-static {p0, p1}, Lph/p;->g(Lph/A;Ljava/nio/IntBuffer;)V

    const/4 p0, 0x0

    invoke-virtual {p1, p0}, Ljava/nio/IntBuffer;->position(I)Ljava/nio/Buffer;

    return-object p1
.end method

.method public static g(Lph/A;Ljava/nio/IntBuffer;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "obj",
            "target"
        }
    .end annotation

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {p0}, Lph/A;->getNumFaces()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-interface {p0, v1}, Lph/A;->a(I)Lph/q;

    move-result-object v2

    move v3, v0

    :goto_1
    invoke-interface {v2}, Lph/q;->b()I

    move-result v4

    if-ge v3, v4, :cond_0

    invoke-interface {v2, v3}, Lph/q;->c(I)I

    move-result v4

    invoke-virtual {p1, v4}, Ljava/nio/IntBuffer;->put(I)Ljava/nio/IntBuffer;

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static h(Lph/A;)[I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "obj"
        }
    .end annotation

    invoke-static {p0}, Lph/p;->D(Lph/A;)I

    move-result v0

    new-array v0, v0, [I

    invoke-static {v0}, Ljava/nio/IntBuffer;->wrap([I)Ljava/nio/IntBuffer;

    move-result-object v1

    invoke-static {p0, v1}, Lph/p;->g(Lph/A;Ljava/nio/IntBuffer;)V

    return-object v0
.end method

.method public static i(Lph/A;I)[I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "obj",
            "numVerticesPerFace"
        }
    .end annotation

    invoke-interface {p0}, Lph/A;->getNumFaces()I

    move-result v0

    mul-int/2addr v0, p1

    new-array p1, v0, [I

    invoke-static {p1}, Ljava/nio/IntBuffer;->wrap([I)Ljava/nio/IntBuffer;

    move-result-object v0

    invoke-static {p0, v0}, Lph/p;->g(Lph/A;Ljava/nio/IntBuffer;)V

    return-object p1
.end method

.method public static j(Lph/A;)Ljava/nio/IntBuffer;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "obj"
        }
    .end annotation

    invoke-static {p0}, Lph/p;->D(Lph/A;)I

    move-result v0

    invoke-static {v0}, Lph/p;->c(I)Ljava/nio/IntBuffer;

    move-result-object v0

    invoke-static {p0, v0}, Lph/p;->l(Lph/A;Ljava/nio/IntBuffer;)V

    const/4 p0, 0x0

    invoke-virtual {v0, p0}, Ljava/nio/IntBuffer;->position(I)Ljava/nio/Buffer;

    return-object v0
.end method

.method public static k(Lph/A;I)Ljava/nio/IntBuffer;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "obj",
            "numVerticesPerFace"
        }
    .end annotation

    invoke-interface {p0}, Lph/A;->getNumFaces()I

    move-result v0

    mul-int/2addr v0, p1

    invoke-static {v0}, Lph/p;->c(I)Ljava/nio/IntBuffer;

    move-result-object p1

    invoke-static {p0, p1}, Lph/p;->l(Lph/A;Ljava/nio/IntBuffer;)V

    const/4 p0, 0x0

    invoke-virtual {p1, p0}, Ljava/nio/IntBuffer;->position(I)Ljava/nio/Buffer;

    return-object p1
.end method

.method public static l(Lph/A;Ljava/nio/IntBuffer;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "obj",
            "target"
        }
    .end annotation

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {p0}, Lph/A;->getNumFaces()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-interface {p0, v1}, Lph/A;->a(I)Lph/q;

    move-result-object v2

    move v3, v0

    :goto_1
    invoke-interface {v2}, Lph/q;->b()I

    move-result v4

    if-ge v3, v4, :cond_0

    invoke-interface {v2, v3}, Lph/q;->f(I)I

    move-result v4

    invoke-virtual {p1, v4}, Ljava/nio/IntBuffer;->put(I)Ljava/nio/IntBuffer;

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static m(Lph/A;)[I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "obj"
        }
    .end annotation

    invoke-static {p0}, Lph/p;->D(Lph/A;)I

    move-result v0

    new-array v0, v0, [I

    invoke-static {v0}, Ljava/nio/IntBuffer;->wrap([I)Ljava/nio/IntBuffer;

    move-result-object v1

    invoke-static {p0, v1}, Lph/p;->l(Lph/A;Ljava/nio/IntBuffer;)V

    return-object v0
.end method

.method public static n(Lph/A;I)[I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "obj",
            "numVerticesPerFace"
        }
    .end annotation

    invoke-interface {p0}, Lph/A;->getNumFaces()I

    move-result v0

    mul-int/2addr v0, p1

    new-array p1, v0, [I

    invoke-static {p1}, Ljava/nio/IntBuffer;->wrap([I)Ljava/nio/IntBuffer;

    move-result-object v0

    invoke-static {p0, v0}, Lph/p;->l(Lph/A;Ljava/nio/IntBuffer;)V

    return-object p1
.end method

.method public static o(Lph/A;)Ljava/nio/IntBuffer;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "obj"
        }
    .end annotation

    invoke-static {p0}, Lph/p;->D(Lph/A;)I

    move-result v0

    invoke-static {v0}, Lph/p;->c(I)Ljava/nio/IntBuffer;

    move-result-object v0

    invoke-static {p0, v0}, Lph/p;->q(Lph/A;Ljava/nio/IntBuffer;)V

    const/4 p0, 0x0

    invoke-virtual {v0, p0}, Ljava/nio/IntBuffer;->position(I)Ljava/nio/Buffer;

    return-object v0
.end method

.method public static p(Lph/A;I)Ljava/nio/IntBuffer;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "obj",
            "numVerticesPerFace"
        }
    .end annotation

    invoke-interface {p0}, Lph/A;->getNumFaces()I

    move-result v0

    mul-int/2addr v0, p1

    invoke-static {v0}, Lph/p;->c(I)Ljava/nio/IntBuffer;

    move-result-object p1

    invoke-static {p0, p1}, Lph/p;->q(Lph/A;Ljava/nio/IntBuffer;)V

    const/4 p0, 0x0

    invoke-virtual {p1, p0}, Ljava/nio/IntBuffer;->position(I)Ljava/nio/Buffer;

    return-object p1
.end method

.method public static q(Lph/A;Ljava/nio/IntBuffer;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "obj",
            "target"
        }
    .end annotation

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {p0}, Lph/A;->getNumFaces()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-interface {p0, v1}, Lph/A;->a(I)Lph/q;

    move-result-object v2

    move v3, v0

    :goto_1
    invoke-interface {v2}, Lph/q;->b()I

    move-result v4

    if-ge v3, v4, :cond_0

    invoke-interface {v2, v3}, Lph/q;->g(I)I

    move-result v4

    invoke-virtual {p1, v4}, Ljava/nio/IntBuffer;->put(I)Ljava/nio/IntBuffer;

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static r(Lph/A;)[I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "obj"
        }
    .end annotation

    invoke-static {p0}, Lph/p;->D(Lph/A;)I

    move-result v0

    new-array v0, v0, [I

    invoke-static {v0}, Ljava/nio/IntBuffer;->wrap([I)Ljava/nio/IntBuffer;

    move-result-object v1

    invoke-static {p0, v1}, Lph/p;->q(Lph/A;Ljava/nio/IntBuffer;)V

    return-object v0
.end method

.method public static s(Lph/A;I)[I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "obj",
            "numVerticesPerFace"
        }
    .end annotation

    invoke-interface {p0}, Lph/A;->getNumFaces()I

    move-result v0

    mul-int/2addr v0, p1

    new-array p1, v0, [I

    invoke-static {p1}, Ljava/nio/IntBuffer;->wrap([I)Ljava/nio/IntBuffer;

    move-result-object v0

    invoke-static {p0, v0}, Lph/p;->q(Lph/A;Ljava/nio/IntBuffer;)V

    return-object p1
.end method

.method public static t(Lph/A;)Ljava/nio/FloatBuffer;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "obj"
        }
    .end annotation

    invoke-interface {p0}, Lph/A;->t()I

    move-result v0

    mul-int/lit8 v0, v0, 0x3

    invoke-static {v0}, Lph/p;->b(I)Ljava/nio/FloatBuffer;

    move-result-object v0

    invoke-static {p0, v0}, Lph/p;->u(Lph/A;Ljava/nio/FloatBuffer;)V

    const/4 p0, 0x0

    invoke-virtual {v0, p0}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    return-object v0
.end method

.method public static u(Lph/A;Ljava/nio/FloatBuffer;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "obj",
            "target"
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p0}, Lph/A;->t()I

    move-result v1

    if-ge v0, v1, :cond_0

    invoke-interface {p0, v0}, Lph/A;->f(I)Lph/i;

    move-result-object v1

    invoke-interface {v1}, Lph/i;->getX()F

    move-result v2

    invoke-virtual {p1, v2}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    invoke-interface {v1}, Lph/i;->getY()F

    move-result v2

    invoke-virtual {p1, v2}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    invoke-interface {v1}, Lph/i;->getZ()F

    move-result v1

    invoke-virtual {p1, v1}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static v(Lph/A;)[F
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "obj"
        }
    .end annotation

    invoke-interface {p0}, Lph/A;->t()I

    move-result v0

    mul-int/lit8 v0, v0, 0x3

    new-array v0, v0, [F

    invoke-static {v0}, Ljava/nio/FloatBuffer;->wrap([F)Ljava/nio/FloatBuffer;

    move-result-object v1

    invoke-static {p0, v1}, Lph/p;->u(Lph/A;Ljava/nio/FloatBuffer;)V

    return-object v0
.end method

.method public static w(Lph/A;)[I
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "obj"
        }
    .end annotation

    invoke-interface {p0}, Lph/A;->getNumFaces()I

    move-result v0

    new-array v0, v0, [I

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p0}, Lph/A;->getNumFaces()I

    move-result v2

    if-ge v1, v2, :cond_0

    invoke-interface {p0, v1}, Lph/A;->a(I)Lph/q;

    move-result-object v2

    invoke-interface {v2}, Lph/q;->b()I

    move-result v2

    aput v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static x(Lph/A;I)Ljava/nio/FloatBuffer;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "obj",
            "dimensions"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lph/p;->y(Lph/A;IZ)Ljava/nio/FloatBuffer;

    move-result-object p0

    return-object p0
.end method

.method public static y(Lph/A;IZ)Ljava/nio/FloatBuffer;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "obj",
            "dimensions",
            "flipY"
        }
    .end annotation

    invoke-interface {p0}, Lph/A;->u()I

    move-result v0

    mul-int/2addr v0, p1

    invoke-static {v0}, Lph/p;->b(I)Ljava/nio/FloatBuffer;

    move-result-object v0

    invoke-static {p0, v0, p1, p2}, Lph/p;->A(Lph/A;Ljava/nio/FloatBuffer;IZ)V

    const/4 p0, 0x0

    invoke-virtual {v0, p0}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    return-object v0
.end method

.method public static z(Lph/A;Ljava/nio/FloatBuffer;I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "obj",
            "target",
            "dimensions"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lph/p;->A(Lph/A;Ljava/nio/FloatBuffer;IZ)V

    return-void
.end method
