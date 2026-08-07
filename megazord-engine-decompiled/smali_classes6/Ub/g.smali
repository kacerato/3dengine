.class public LUb/g;
.super Lc9/f;
.source "SourceFile"


# instance fields
.field public b:I

.field public c:I

.field public transient d:LJAVARuntime/Point2;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lc9/f;-><init>()V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "a"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Lc9/f;-><init>()V

    .line 3
    invoke-virtual {p0, p1}, LUb/g;->u0(I)LUb/g;

    return-void
.end method

.method public constructor <init>(II)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "x",
            "y"
        }
    .end annotation

    .line 4
    invoke-direct {p0}, Lc9/f;-><init>()V

    .line 5
    invoke-virtual {p0, p1, p2}, LUb/g;->v0(II)LUb/g;

    return-void
.end method

.method public constructor <init>(LUb/g;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "other"
        }
    .end annotation

    .line 6
    invoke-direct {p0}, Lc9/f;-><init>()V

    .line 7
    invoke-virtual {p0, p1}, LUb/g;->w0(LUb/g;)LUb/g;

    return-void
.end method

.method public constructor <init>(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "other"
        }
    .end annotation

    .line 8
    invoke-direct {p0}, Lc9/f;-><init>()V

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 9
    invoke-virtual {p0, p1, p1}, LUb/g;->v0(II)LUb/g;

    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->k0()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->l0()F

    move-result p1

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    invoke-virtual {p0, v0, p1}, LUb/g;->v0(II)LUb/g;

    :goto_0
    return-void
.end method

.method public static F0()LUb/g;
    .locals 1

    new-instance v0, LUb/g;

    invoke-direct {v0}, LUb/g;-><init>()V

    return-object v0
.end method

.method public static t0(IF)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "value",
            "divisor"
        }
    .end annotation

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    int-to-float p0, p0

    div-float/2addr p0, p1

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    return p0
.end method


# virtual methods
.method public A(LUb/g;F)LUb/g;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "other",
            "blend"
        }
    .end annotation

    if-nez p1, :cond_0

    return-object p0

    :cond_0
    iget v0, p1, LUb/g;->b:I

    int-to-float v0, v0

    iget p1, p1, LUb/g;->c:I

    int-to-float p1, p1

    invoke-virtual {p0, v0, p1, p2}, LUb/g;->z(FFF)LUb/g;

    move-result-object p1

    return-object p1
.end method

.method public A0(I)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "y"
        }
    .end annotation

    iput p1, p0, LUb/g;->c:I

    return p1
.end method

.method public B()LUb/g;
    .locals 3

    new-instance v0, LUb/g;

    iget v1, p0, LUb/g;->b:I

    iget v2, p0, LUb/g;->c:I

    invoke-direct {v0, v1, v2}, LUb/g;-><init>(II)V

    return-object v0
.end method

.method public B0(LUb/g;)F
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "other"
        }
    .end annotation

    if-nez p1, :cond_0

    invoke-virtual {p0}, LUb/g;->C0()F

    move-result p1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, LUb/g;->o0(LUb/g;)LUb/g;

    move-result-object p1

    invoke-virtual {p1}, LUb/g;->C0()F

    move-result p1

    :goto_0
    return p1
.end method

.method public C()LUb/g;
    .locals 1

    invoke-virtual {p0}, LUb/g;->B()LUb/g;

    move-result-object v0

    return-object v0
.end method

.method public C0()F
    .locals 3

    iget v0, p0, LUb/g;->b:I

    int-to-float v1, v0

    int-to-float v0, v0

    mul-float/2addr v1, v0

    iget v0, p0, LUb/g;->c:I

    int-to-float v2, v0

    int-to-float v0, v0

    mul-float/2addr v2, v0

    add-float/2addr v1, v2

    return v1
.end method

.method public D(II)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "x",
            "y"
        }
    .end annotation

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget v1, p0, LUb/g;->b:I

    mul-int/2addr v1, p2

    iget p2, p0, LUb/g;->c:I

    mul-int/2addr p2, p1

    sub-int/2addr v1, p2

    int-to-float p1, v1

    const/4 p2, 0x0

    invoke-direct {v0, p2, p2, p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>(FFF)V

    return-object v0
.end method

.method public D0()LJAVARuntime/Point2;
    .locals 1

    iget-object v0, p0, LUb/g;->d:LJAVARuntime/Point2;

    if-nez v0, :cond_0

    new-instance v0, LJAVARuntime/Point2;

    invoke-direct {v0, p0}, LJAVARuntime/Point2;-><init>(LUb/g;)V

    iput-object v0, p0, LUb/g;->d:LJAVARuntime/Point2;

    :cond_0
    iget-object v0, p0, LUb/g;->d:LJAVARuntime/Point2;

    return-object v0
.end method

.method public E(LUb/g;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "other"
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance p1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    const/4 v0, 0x0

    invoke-direct {p1, v0, v0, v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>(FFF)V

    return-object p1

    :cond_0
    iget v0, p1, LUb/g;->b:I

    iget p1, p1, LUb/g;->c:I

    invoke-virtual {p0, v0, p1}, LUb/g;->D(II)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object p1

    return-object p1
.end method

.method public E0()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;
    .locals 3

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    iget v1, p0, LUb/g;->b:I

    int-to-float v1, v1

    iget v2, p0, LUb/g;->c:I

    int-to-float v2, v2

    invoke-direct {v0, v1, v2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;-><init>(FF)V

    return-object v0
.end method

.method public F(LUb/g;)F
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "other"
        }
    .end annotation

    if-nez p1, :cond_0

    invoke-virtual {p0}, LUb/g;->W()F

    move-result p1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, LUb/g;->o0(LUb/g;)LUb/g;

    move-result-object p1

    invoke-virtual {p1}, LUb/g;->W()F

    move-result p1

    :goto_0
    return p1
.end method

.method public G(I)LUb/g;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "a"
        }
    .end annotation

    invoke-virtual {p0, p1, p1}, LUb/g;->H(II)LUb/g;

    move-result-object p1

    return-object p1
.end method

.method public H(II)LUb/g;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "x",
            "y"
        }
    .end annotation

    new-instance v0, LUb/g;

    iget v1, p0, LUb/g;->b:I

    int-to-float p1, p1

    invoke-static {v1, p1}, LUb/g;->t0(IF)I

    move-result p1

    iget v1, p0, LUb/g;->c:I

    int-to-float p2, p2

    invoke-static {v1, p2}, LUb/g;->t0(IF)I

    move-result p2

    invoke-direct {v0, p1, p2}, LUb/g;-><init>(II)V

    return-object v0
.end method

.method public I(LUb/g;)LUb/g;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "other"
        }
    .end annotation

    if-nez p1, :cond_0

    invoke-virtual {p0}, LUb/g;->C()LUb/g;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance v0, LUb/g;

    iget v1, p0, LUb/g;->b:I

    iget v2, p1, LUb/g;->b:I

    int-to-float v2, v2

    invoke-static {v1, v2}, LUb/g;->t0(IF)I

    move-result v1

    iget v2, p0, LUb/g;->c:I

    iget p1, p1, LUb/g;->c:I

    int-to-float p1, p1

    invoke-static {v2, p1}, LUb/g;->t0(IF)I

    move-result p1

    invoke-direct {v0, v1, p1}, LUb/g;-><init>(II)V

    return-object v0
.end method

.method public J(F)LUb/g;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "a"
        }
    .end annotation

    invoke-virtual {p0, p1, p1}, LUb/g;->K(FF)LUb/g;

    move-result-object p1

    return-object p1
.end method

.method public K(FF)LUb/g;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "x",
            "y"
        }
    .end annotation

    iget v0, p0, LUb/g;->b:I

    invoke-static {v0, p1}, LUb/g;->t0(IF)I

    move-result p1

    iput p1, p0, LUb/g;->b:I

    iget p1, p0, LUb/g;->c:I

    invoke-static {p1, p2}, LUb/g;->t0(IF)I

    move-result p1

    iput p1, p0, LUb/g;->c:I

    return-object p0
.end method

.method public L(LUb/g;)LUb/g;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "other"
        }
    .end annotation

    if-nez p1, :cond_0

    return-object p0

    :cond_0
    iget v0, p0, LUb/g;->b:I

    iget v1, p1, LUb/g;->b:I

    int-to-float v1, v1

    invoke-static {v0, v1}, LUb/g;->t0(IF)I

    move-result v0

    iput v0, p0, LUb/g;->b:I

    iget v0, p0, LUb/g;->c:I

    iget p1, p1, LUb/g;->c:I

    int-to-float p1, p1

    invoke-static {v0, p1}, LUb/g;->t0(IF)I

    move-result p1

    iput p1, p0, LUb/g;->c:I

    return-object p0
.end method

.method public M(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;)LUb/g;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "other"
        }
    .end annotation

    if-nez p1, :cond_0

    return-object p0

    :cond_0
    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->k0()F

    move-result v0

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->l0()F

    move-result p1

    invoke-virtual {p0, v0, p1}, LUb/g;->K(FF)LUb/g;

    move-result-object p1

    return-object p1
.end method

.method public N(I)F
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "a"
        }
    .end annotation

    invoke-virtual {p0, p1, p1}, LUb/g;->O(II)F

    move-result p1

    return p1
.end method

.method public O(II)F
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "x",
            "y"
        }
    .end annotation

    iget v0, p0, LUb/g;->b:I

    mul-int/2addr v0, p1

    iget p1, p0, LUb/g;->c:I

    mul-int/2addr p1, p2

    add-int/2addr v0, p1

    int-to-float p1, v0

    return p1
.end method

.method public P(LUb/g;)F
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "other"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget v0, p0, LUb/g;->b:I

    iget v1, p1, LUb/g;->b:I

    mul-int/2addr v0, v1

    iget v1, p0, LUb/g;->c:I

    iget p1, p1, LUb/g;->c:I

    mul-int/2addr v1, p1

    add-int/2addr v0, v1

    int-to-float p1, v0

    return p1
.end method

.method public Q(I)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "a"
        }
    .end annotation

    invoke-virtual {p0, p1, p1}, LUb/g;->R(II)Z

    move-result p1

    return p1
.end method

.method public R(II)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "x",
            "y"
        }
    .end annotation

    iget v0, p0, LUb/g;->b:I

    if-ne v0, p1, :cond_0

    iget p1, p0, LUb/g;->c:I

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public S(LUb/g;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "other"
        }
    .end annotation

    if-eqz p1, :cond_0

    iget v0, p0, LUb/g;->b:I

    iget v1, p1, LUb/g;->b:I

    if-ne v0, v1, :cond_0

    iget v0, p0, LUb/g;->c:I

    iget p1, p1, LUb/g;->c:I

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public T()I
    .locals 1

    iget v0, p0, LUb/g;->b:I

    return v0
.end method

.method public U()I
    .locals 1

    iget v0, p0, LUb/g;->c:I

    return v0
.end method

.method public V()F
    .locals 1

    invoke-virtual {p0}, LUb/g;->W()F

    move-result v0

    return v0
.end method

.method public W()F
    .locals 2

    invoke-virtual {p0}, LUb/g;->C0()F

    move-result v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public X(FF)LUb/g;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "speed"
        }
    .end annotation

    invoke-virtual {p0, p1, p1, p2}, LUb/g;->Y(FFF)LUb/g;

    move-result-object p1

    return-object p1
.end method

.method public Y(FFF)LUb/g;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "x",
            "y",
            "speed"
        }
    .end annotation

    iget v0, p0, LUb/g;->b:I

    int-to-float v0, v0

    invoke-static {v0, p1, p3}, Lgd/b;->N0(FFF)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    iput p1, p0, LUb/g;->b:I

    iget p1, p0, LUb/g;->c:I

    int-to-float p1, p1

    invoke-static {p1, p2, p3}, Lgd/b;->N0(FFF)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    iput p1, p0, LUb/g;->c:I

    return-object p0
.end method

.method public Z(LUb/g;F)LUb/g;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "other",
            "speed"
        }
    .end annotation

    if-nez p1, :cond_0

    return-object p0

    :cond_0
    iget v0, p1, LUb/g;->b:I

    int-to-float v0, v0

    iget p1, p1, LUb/g;->c:I

    int-to-float p1, p1

    invoke-virtual {p0, v0, p1, p2}, LUb/g;->Y(FFF)LUb/g;

    move-result-object p1

    return-object p1
.end method

.method public a0(FF)LUb/g;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "speed"
        }
    .end annotation

    invoke-virtual {p0, p1, p1, p2}, LUb/g;->b0(FFF)LUb/g;

    move-result-object p1

    return-object p1
.end method

.method public b0(FFF)LUb/g;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "x",
            "y",
            "speed"
        }
    .end annotation

    iget v0, p0, LUb/g;->b:I

    int-to-float v0, v0

    invoke-static {v0, p1, p3}, Lgd/b;->N0(FFF)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    iput p1, p0, LUb/g;->b:I

    iget p1, p0, LUb/g;->c:I

    int-to-float p1, p1

    invoke-static {p1, p2, p3}, Lgd/b;->N0(FFF)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    iput p1, p0, LUb/g;->c:I

    return-object p0
.end method

.method public c0(LUb/g;F)LUb/g;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "other",
            "speed"
        }
    .end annotation

    if-nez p1, :cond_0

    return-object p0

    :cond_0
    iget v0, p1, LUb/g;->b:I

    int-to-float v0, v0

    iget p1, p1, LUb/g;->c:I

    int-to-float p1, p1

    invoke-virtual {p0, v0, p1, p2}, LUb/g;->b0(FFF)LUb/g;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, LUb/g;->B()LUb/g;

    move-result-object v0

    return-object v0
.end method

.method public d0(I)LUb/g;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "a"
        }
    .end annotation

    invoke-virtual {p0, p1, p1}, LUb/g;->e0(II)LUb/g;

    move-result-object p1

    return-object p1
.end method

.method public e0(II)LUb/g;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "x",
            "y"
        }
    .end annotation

    new-instance v0, LUb/g;

    iget v1, p0, LUb/g;->b:I

    mul-int/2addr v1, p1

    iget p1, p0, LUb/g;->c:I

    mul-int/2addr p1, p2

    invoke-direct {v0, v1, p1}, LUb/g;-><init>(II)V

    return-object v0
.end method

.method public f0(LUb/g;)LUb/g;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "other"
        }
    .end annotation

    if-nez p1, :cond_0

    invoke-virtual {p0}, LUb/g;->C()LUb/g;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance v0, LUb/g;

    iget v1, p0, LUb/g;->b:I

    iget v2, p1, LUb/g;->b:I

    mul-int/2addr v1, v2

    iget v2, p0, LUb/g;->c:I

    iget p1, p1, LUb/g;->c:I

    mul-int/2addr v2, p1

    invoke-direct {v0, v1, v2}, LUb/g;-><init>(II)V

    return-object v0
.end method

.method public g0(F)LUb/g;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "a"
        }
    .end annotation

    invoke-virtual {p0, p1, p1}, LUb/g;->h0(FF)LUb/g;

    move-result-object p1

    return-object p1
.end method

.method public h0(FF)LUb/g;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "x",
            "y"
        }
    .end annotation

    iget v0, p0, LUb/g;->b:I

    int-to-float v0, v0

    mul-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result p1

    iput p1, p0, LUb/g;->b:I

    iget p1, p0, LUb/g;->c:I

    int-to-float p1, p1

    mul-float/2addr p1, p2

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    iput p1, p0, LUb/g;->c:I

    return-object p0
.end method

.method public i0(LUb/g;)LUb/g;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "other"
        }
    .end annotation

    if-nez p1, :cond_0

    return-object p0

    :cond_0
    iget v0, p0, LUb/g;->b:I

    iget v1, p1, LUb/g;->b:I

    mul-int/2addr v0, v1

    iput v0, p0, LUb/g;->b:I

    iget v0, p0, LUb/g;->c:I

    iget p1, p1, LUb/g;->c:I

    mul-int/2addr v0, p1

    iput v0, p0, LUb/g;->c:I

    return-object p0
.end method

.method public j0(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;)LUb/g;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "other"
        }
    .end annotation

    if-nez p1, :cond_0

    return-object p0

    :cond_0
    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->k0()F

    move-result v0

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->l0()F

    move-result p1

    invoke-virtual {p0, v0, p1}, LUb/g;->h0(FF)LUb/g;

    move-result-object p1

    return-object p1
.end method

.method public k0()LUb/g;
    .locals 1

    invoke-virtual {p0}, LUb/g;->B()LUb/g;

    move-result-object v0

    invoke-virtual {v0}, LUb/g;->l0()LUb/g;

    move-result-object v0

    return-object v0
.end method

.method public l0()LUb/g;
    .locals 2

    invoke-virtual {p0}, LUb/g;->W()F

    move-result v0

    const/4 v1, 0x0

    cmpg-float v1, v0, v1

    if-gtz v1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, LUb/g;->v0(II)LUb/g;

    move-result-object v0

    return-object v0

    :cond_0
    iget v1, p0, LUb/g;->b:I

    int-to-float v1, v1

    div-float/2addr v1, v0

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iput v1, p0, LUb/g;->b:I

    iget v1, p0, LUb/g;->c:I

    int-to-float v1, v1

    div-float/2addr v1, v0

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, LUb/g;->c:I

    return-object p0
.end method

.method public m0(I)LUb/g;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "a"
        }
    .end annotation

    invoke-virtual {p0, p1, p1}, LUb/g;->n0(II)LUb/g;

    move-result-object p1

    return-object p1
.end method

.method public n0(II)LUb/g;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "x",
            "y"
        }
    .end annotation

    new-instance v0, LUb/g;

    iget v1, p0, LUb/g;->b:I

    sub-int/2addr v1, p1

    iget p1, p0, LUb/g;->c:I

    sub-int/2addr p1, p2

    invoke-direct {v0, v1, p1}, LUb/g;-><init>(II)V

    return-object v0
.end method

.method public o0(LUb/g;)LUb/g;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "other"
        }
    .end annotation

    if-nez p1, :cond_0

    invoke-virtual {p0}, LUb/g;->C()LUb/g;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance v0, LUb/g;

    iget v1, p0, LUb/g;->b:I

    iget v2, p1, LUb/g;->b:I

    sub-int/2addr v1, v2

    iget v2, p0, LUb/g;->c:I

    iget p1, p1, LUb/g;->c:I

    sub-int/2addr v2, p1

    invoke-direct {v0, v1, v2}, LUb/g;-><init>(II)V

    return-object v0
.end method

.method public p0(F)LUb/g;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "a"
        }
    .end annotation

    invoke-virtual {p0, p1, p1}, LUb/g;->q0(FF)LUb/g;

    move-result-object p1

    return-object p1
.end method

.method public q(I)LUb/g;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "a"
        }
    .end annotation

    invoke-virtual {p0, p1, p1}, LUb/g;->r(II)LUb/g;

    move-result-object p1

    return-object p1
.end method

.method public q0(FF)LUb/g;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "x",
            "y"
        }
    .end annotation

    iget v0, p0, LUb/g;->b:I

    int-to-float v0, v0

    sub-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result p1

    iput p1, p0, LUb/g;->b:I

    iget p1, p0, LUb/g;->c:I

    int-to-float p1, p1

    sub-float/2addr p1, p2

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    iput p1, p0, LUb/g;->c:I

    return-object p0
.end method

.method public r(II)LUb/g;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "x",
            "y"
        }
    .end annotation

    new-instance v0, LUb/g;

    iget v1, p0, LUb/g;->b:I

    add-int/2addr v1, p1

    iget p1, p0, LUb/g;->c:I

    add-int/2addr p1, p2

    invoke-direct {v0, v1, p1}, LUb/g;-><init>(II)V

    return-object v0
.end method

.method public r0(LUb/g;)LUb/g;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "other"
        }
    .end annotation

    if-nez p1, :cond_0

    return-object p0

    :cond_0
    iget v0, p0, LUb/g;->b:I

    iget v1, p1, LUb/g;->b:I

    sub-int/2addr v0, v1

    iput v0, p0, LUb/g;->b:I

    iget v0, p0, LUb/g;->c:I

    iget p1, p1, LUb/g;->c:I

    sub-int/2addr v0, p1

    iput v0, p0, LUb/g;->c:I

    return-object p0
.end method

.method public s(LUb/g;)LUb/g;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "other"
        }
    .end annotation

    if-nez p1, :cond_0

    invoke-virtual {p0}, LUb/g;->C()LUb/g;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance v0, LUb/g;

    iget v1, p0, LUb/g;->b:I

    iget v2, p1, LUb/g;->b:I

    add-int/2addr v1, v2

    iget v2, p0, LUb/g;->c:I

    iget p1, p1, LUb/g;->c:I

    add-int/2addr v2, p1

    invoke-direct {v0, v1, v2}, LUb/g;-><init>(II)V

    return-object v0
.end method

.method public s0(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;)LUb/g;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "other"
        }
    .end annotation

    if-nez p1, :cond_0

    return-object p0

    :cond_0
    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->k0()F

    move-result v0

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->l0()F

    move-result p1

    invoke-virtual {p0, v0, p1}, LUb/g;->q0(FF)LUb/g;

    move-result-object p1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, LUb/g;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, LUb/g;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public u(F)LUb/g;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "a"
        }
    .end annotation

    invoke-virtual {p0, p1, p1}, LUb/g;->v(FF)LUb/g;

    move-result-object p1

    return-object p1
.end method

.method public u0(I)LUb/g;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "a"
        }
    .end annotation

    invoke-virtual {p0, p1, p1}, LUb/g;->v0(II)LUb/g;

    move-result-object p1

    return-object p1
.end method

.method public v(FF)LUb/g;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "x",
            "y"
        }
    .end annotation

    iget v0, p0, LUb/g;->b:I

    int-to-float v0, v0

    add-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result p1

    iput p1, p0, LUb/g;->b:I

    iget p1, p0, LUb/g;->c:I

    int-to-float p1, p1

    add-float/2addr p1, p2

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    iput p1, p0, LUb/g;->c:I

    return-object p0
.end method

.method public v0(II)LUb/g;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "x",
            "y"
        }
    .end annotation

    iput p1, p0, LUb/g;->b:I

    iput p2, p0, LUb/g;->c:I

    return-object p0
.end method

.method public w(LUb/g;)LUb/g;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "other"
        }
    .end annotation

    if-nez p1, :cond_0

    return-object p0

    :cond_0
    iget v0, p0, LUb/g;->b:I

    iget v1, p1, LUb/g;->b:I

    add-int/2addr v0, v1

    iput v0, p0, LUb/g;->b:I

    iget v0, p0, LUb/g;->c:I

    iget p1, p1, LUb/g;->c:I

    add-int/2addr v0, p1

    iput v0, p0, LUb/g;->c:I

    return-object p0
.end method

.method public w0(LUb/g;)LUb/g;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "other"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    invoke-virtual {p0, p1, p1}, LUb/g;->v0(II)LUb/g;

    move-result-object p1

    return-object p1

    :cond_0
    iget v0, p1, LUb/g;->b:I

    iget p1, p1, LUb/g;->c:I

    invoke-virtual {p0, v0, p1}, LUb/g;->v0(II)LUb/g;

    move-result-object p1

    return-object p1
.end method

.method public x(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;)LUb/g;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "other"
        }
    .end annotation

    if-nez p1, :cond_0

    return-object p0

    :cond_0
    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->k0()F

    move-result v0

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->l0()F

    move-result p1

    invoke-virtual {p0, v0, p1}, LUb/g;->v(FF)LUb/g;

    move-result-object p1

    return-object p1
.end method

.method public x0(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;)LUb/g;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "other"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    invoke-virtual {p0, p1, p1}, LUb/g;->v0(II)LUb/g;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->k0()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->l0()F

    move-result p1

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    invoke-virtual {p0, v0, p1}, LUb/g;->v0(II)LUb/g;

    move-result-object p1

    return-object p1
.end method

.method public y(FF)LUb/g;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "blend"
        }
    .end annotation

    invoke-virtual {p0, p1, p1, p2}, LUb/g;->z(FFF)LUb/g;

    move-result-object p1

    return-object p1
.end method

.method public y0(LJAVARuntime/Point2;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "run"
        }
    .end annotation

    iput-object p1, p0, LUb/g;->d:LJAVARuntime/Point2;

    return-void
.end method

.method public z(FFF)LUb/g;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "x",
            "y",
            "blend"
        }
    .end annotation

    iget v0, p0, LUb/g;->b:I

    int-to-float v0, v0

    invoke-static {v0, p1, p3}, Lgd/b;->z(FFF)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    iput p1, p0, LUb/g;->b:I

    iget p1, p0, LUb/g;->c:I

    int-to-float p1, p1

    invoke-static {p1, p2, p3}, Lgd/b;->z(FFF)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    iput p1, p0, LUb/g;->c:I

    return-object p0
.end method

.method public z0(I)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "x"
        }
    .end annotation

    iput p1, p0, LUb/g;->b:I

    return p1
.end method
