.class public Lcom/itsmagic/engine/Engines/Engine/Quaternion/b;
.super Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/itsmagic/engine/Engines/Engine/Quaternion/b$b;
    }
.end annotation


# instance fields
.field public final j:Lcom/itsmagic/engine/Engines/Engine/Quaternion/b$b;

.field public k:Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "instance"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;-><init>()V

    if-eqz p1, :cond_0

    .line 2
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Quaternion/b$a;

    invoke-direct {v0, p0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/b$a;-><init>(Lcom/itsmagic/engine/Engines/Engine/Quaternion/b;)V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Quaternion/b;->j:Lcom/itsmagic/engine/Engines/Engine/Quaternion/b$b;

    .line 3
    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/Quaternion/b;->k:Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    return-void

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "instance can\'t be null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;Lcom/itsmagic/engine/Engines/Engine/Quaternion/b$b;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "instance",
            "listener"
        }
    .end annotation

    .line 5
    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;-><init>()V

    if-eqz p2, :cond_1

    if-eqz p1, :cond_0

    .line 6
    iput-object p2, p0, Lcom/itsmagic/engine/Engines/Engine/Quaternion/b;->j:Lcom/itsmagic/engine/Engines/Engine/Quaternion/b$b;

    .line 7
    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/Quaternion/b;->k:Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    return-void

    .line 8
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "instance can\'t be null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 9
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Listener can\'t be null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public G0(FFFF)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "qw",
            "qx",
            "qy",
            "qz"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Quaternion/b;->k:Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    iput p1, v0, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->w:F

    iput p2, v0, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->x:F

    iput p3, v0, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->y:F

    iput p4, v0, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->z:F

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Quaternion/b;->j:Lcom/itsmagic/engine/Engines/Engine/Quaternion/b$b;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/b$b;->a(FFFF)V

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/b;->n1(FFFF)V

    return-void
.end method

.method public H0(Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "q"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->V()F

    move-result v0

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->W()F

    move-result v1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->X()F

    move-result v2

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->Y()F

    move-result p1

    iget-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/Quaternion/b;->k:Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    iput v0, v3, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->w:F

    iput v1, v3, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->x:F

    iput v2, v3, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->y:F

    iput p1, v3, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->z:F

    iget-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/Quaternion/b;->j:Lcom/itsmagic/engine/Engines/Engine/Quaternion/b$b;

    invoke-interface {v3, v0, v1, v2, p1}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/b$b;->a(FFFF)V

    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/b;->n1(FFFF)V

    return-void
.end method

.method public J0(Ljavax/vecmath/Quat4f;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "q"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Quaternion/b;->k:Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    iget v1, p1, Ljavax/vecmath/Tuple4f;->w:F

    iput v1, v0, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->w:F

    iget v2, p1, Ljavax/vecmath/Tuple4f;->x:F

    iput v2, v0, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->x:F

    iget v3, p1, Ljavax/vecmath/Tuple4f;->y:F

    iput v3, v0, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->y:F

    iget v4, p1, Ljavax/vecmath/Tuple4f;->z:F

    iput v4, v0, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->z:F

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Quaternion/b;->j:Lcom/itsmagic/engine/Engines/Engine/Quaternion/b$b;

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/b$b;->a(FFFF)V

    iget v0, p1, Ljavax/vecmath/Tuple4f;->w:F

    iget v1, p1, Ljavax/vecmath/Tuple4f;->x:F

    iget v2, p1, Ljavax/vecmath/Tuple4f;->y:F

    iget p1, p1, Ljavax/vecmath/Tuple4f;->z:F

    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/b;->n1(FFFF)V

    return-void
.end method

.method public K0([F)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "array"
        }
    .end annotation

    const/4 v0, 0x3

    aget v0, p1, v0

    const/4 v1, 0x0

    aget v1, p1, v1

    const/4 v2, 0x1

    aget v2, p1, v2

    const/4 v3, 0x2

    aget p1, p1, v3

    iget-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/Quaternion/b;->k:Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    iput v0, v3, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->w:F

    iput v1, v3, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->x:F

    iput v2, v3, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->y:F

    iput p1, v3, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->z:F

    iget-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/Quaternion/b;->j:Lcom/itsmagic/engine/Engines/Engine/Quaternion/b$b;

    invoke-interface {v3, v0, v1, v2, p1}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/b$b;->a(FFFF)V

    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/b;->n1(FFFF)V

    return-void
.end method

.method public L0([Ljava/lang/Float;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "array"
        }
    .end annotation

    const/4 v0, 0x3

    aget-object v0, p1, v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    const/4 v2, 0x1

    aget-object v2, p1, v2

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    const/4 v3, 0x2

    aget-object p1, p1, v3

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iget-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/Quaternion/b;->k:Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    iput v0, v3, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->w:F

    iput v1, v3, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->x:F

    iput v2, v3, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->y:F

    iput p1, v3, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->z:F

    iget-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/Quaternion/b;->j:Lcom/itsmagic/engine/Engines/Engine/Quaternion/b$b;

    invoke-interface {v3, v0, v1, v2, p1}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/b$b;->a(FFFF)V

    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/b;->n1(FFFF)V

    return-void
.end method

.method public R0(Ljavax/vecmath/Quat4f;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "q"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Quaternion/b;->k:Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    iget v1, p1, Ljavax/vecmath/Tuple4f;->w:F

    iput v1, v0, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->w:F

    iget v2, p1, Ljavax/vecmath/Tuple4f;->x:F

    iput v2, v0, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->x:F

    iget v3, p1, Ljavax/vecmath/Tuple4f;->y:F

    iput v3, v0, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->y:F

    iget v4, p1, Ljavax/vecmath/Tuple4f;->z:F

    iput v4, v0, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->z:F

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Quaternion/b;->j:Lcom/itsmagic/engine/Engines/Engine/Quaternion/b$b;

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/b$b;->a(FFFF)V

    iget v0, p1, Ljavax/vecmath/Tuple4f;->w:F

    iget v1, p1, Ljavax/vecmath/Tuple4f;->x:F

    iget v2, p1, Ljavax/vecmath/Tuple4f;->y:F

    iget p1, p1, Ljavax/vecmath/Tuple4f;->z:F

    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/b;->n1(FFFF)V

    return-void
.end method

.method public T0(F)F
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "w"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Quaternion/b;->k:Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->T0(F)F

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/b;->V()F

    move-result v0

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/b;->W()F

    move-result v1

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/b;->X()F

    move-result v2

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/b;->Y()F

    move-result v3

    iget-object v4, p0, Lcom/itsmagic/engine/Engines/Engine/Quaternion/b;->j:Lcom/itsmagic/engine/Engines/Engine/Quaternion/b$b;

    invoke-interface {v4, v0, v1, v2, v3}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/b$b;->a(FFFF)V

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/b;->n1(FFFF)V

    return p1
.end method

.method public U0(F)F
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "x"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Quaternion/b;->k:Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->U0(F)F

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/b;->V()F

    move-result v0

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/b;->W()F

    move-result v1

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/b;->X()F

    move-result v2

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/b;->Y()F

    move-result v3

    iget-object v4, p0, Lcom/itsmagic/engine/Engines/Engine/Quaternion/b;->j:Lcom/itsmagic/engine/Engines/Engine/Quaternion/b$b;

    invoke-interface {v4, v0, v1, v2, v3}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/b$b;->a(FFFF)V

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/b;->n1(FFFF)V

    return p1
.end method

.method public V()F
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Quaternion/b;->k:Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->V()F

    move-result v0

    return v0
.end method

.method public V0(F)F
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "y"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Quaternion/b;->k:Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->V0(F)F

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/b;->V()F

    move-result v0

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/b;->W()F

    move-result v1

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/b;->X()F

    move-result v2

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/b;->Y()F

    move-result v3

    iget-object v4, p0, Lcom/itsmagic/engine/Engines/Engine/Quaternion/b;->j:Lcom/itsmagic/engine/Engines/Engine/Quaternion/b$b;

    invoke-interface {v4, v0, v1, v2, v3}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/b$b;->a(FFFF)V

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/b;->n1(FFFF)V

    return p1
.end method

.method public W()F
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Quaternion/b;->k:Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->W()F

    move-result v0

    return v0
.end method

.method public W0(F)F
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "z"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Quaternion/b;->k:Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->W0(F)F

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/b;->V()F

    move-result v0

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/b;->W()F

    move-result v1

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/b;->X()F

    move-result v2

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/b;->Y()F

    move-result v3

    iget-object v4, p0, Lcom/itsmagic/engine/Engines/Engine/Quaternion/b;->j:Lcom/itsmagic/engine/Engines/Engine/Quaternion/b$b;

    invoke-interface {v4, v0, v1, v2, v3}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/b$b;->a(FFFF)V

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/b;->n1(FFFF)V

    return p1
.end method

.method public X()F
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Quaternion/b;->k:Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->X()F

    move-result v0

    return v0
.end method

.method public Y()F
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Quaternion/b;->k:Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->Y()F

    move-result v0

    return v0
.end method

.method public n1(FFFF)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "w",
            "x",
            "y",
            "z"
        }
    .end annotation

    return-void
.end method

.method public o1(Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "instance"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/Quaternion/b;->k:Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    return-void
.end method
