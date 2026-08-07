.class public Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;
.super Lc9/f;
.source "SourceFile"


# instance fields
.field public b:LJAVARuntime/Vector4;

.field public w:F
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public x:F
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public y:F
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public z:F
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lc9/f;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;->x:F

    .line 3
    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;->y:F

    .line 4
    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;->z:F

    .line 5
    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;->w:F

    return-void
.end method

.method public constructor <init>(F)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "a"
        }
    .end annotation

    .line 6
    invoke-direct {p0}, Lc9/f;-><init>()V

    .line 7
    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;->x:F

    .line 8
    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;->y:F

    .line 9
    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;->z:F

    .line 10
    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;->w:F

    return-void
.end method

.method public constructor <init>(FFFF)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "x",
            "y",
            "z",
            "w"
        }
    .end annotation

    .line 16
    invoke-direct {p0}, Lc9/f;-><init>()V

    .line 17
    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;->x:F

    .line 18
    iput p2, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;->y:F

    .line 19
    iput p3, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;->z:F

    .line 20
    iput p4, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;->w:F

    return-void
.end method

.method public constructor <init>(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;F)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "vector3",
            "w"
        }
    .end annotation

    .line 11
    invoke-direct {p0}, Lc9/f;-><init>()V

    .line 12
    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->W0()F

    move-result v0

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;->x:F

    .line 13
    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->X0()F

    move-result v0

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;->y:F

    .line 14
    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->Y0()F

    move-result p1

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;->z:F

    .line 15
    iput p2, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;->w:F

    return-void
.end method


# virtual methods
.method public A(Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "color"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->I()F

    move-result v0

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->G()F

    move-result v1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->F()F

    move-result v2

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->E()F

    move-result p1

    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;->z(FFFF)V

    return-void
.end method

.method public B(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "vector"
        }
    .end annotation

    iget v0, p1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;->x:F

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;->x:F

    iget v0, p1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;->y:F

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;->y:F

    iget v0, p1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;->z:F

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;->z:F

    iget p1, p1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;->w:F

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;->w:F

    return-void
.end method

.method public C(F)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "w"
        }
    .end annotation

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;->w:F

    return-void
.end method

.method public D(F)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "x"
        }
    .end annotation

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;->x:F

    return-void
.end method

.method public E(F)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "y"
        }
    .end annotation

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;->y:F

    return-void
.end method

.method public F(F)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "z"
        }
    .end annotation

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;->z:F

    return-void
.end method

.method public G()LJAVARuntime/Vector4;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;->b:LJAVARuntime/Vector4;

    if-nez v0, :cond_0

    new-instance v0, LJAVARuntime/Vector4;

    invoke-direct {v0, p0}, LJAVARuntime/Vector4;-><init>(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;)V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;->b:LJAVARuntime/Vector4;

    :cond_0
    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;->r()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;

    move-result-object v0

    return-object v0
.end method

.method public q(Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "color"
        }
    .end annotation

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;->x:F

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->I()F

    move-result v1

    add-float/2addr v0, v1

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;->x:F

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;->y:F

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->G()F

    move-result v1

    add-float/2addr v0, v1

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;->y:F

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;->z:F

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->F()F

    move-result v1

    add-float/2addr v0, v1

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;->z:F

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;->w:F

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->E()F

    move-result p1

    add-float/2addr v0, p1

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;->w:F

    return-void
.end method

.method public r()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;
    .locals 5

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;

    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;->x:F

    iget v2, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;->y:F

    iget v3, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;->z:F

    iget v4, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;->w:F

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;-><init>(FFFF)V

    return-object v0
.end method

.method public s()F
    .locals 1

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;->w:F

    return v0
.end method

.method public u()F
    .locals 1

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;->x:F

    return v0
.end method

.method public v()F
    .locals 1

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;->y:F

    return v0
.end method

.method public w()F
    .locals 1

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;->z:F

    return v0
.end method

.method public x(Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "color"
        }
    .end annotation

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;->x:F

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->I()F

    move-result v1

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;->x:F

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;->y:F

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->G()F

    move-result v1

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;->y:F

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;->z:F

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->F()F

    move-result v1

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;->z:F

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;->w:F

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->E()F

    move-result p1

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;->w:F

    return-void
.end method

.method public y(F)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "a"
        }
    .end annotation

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;->x:F

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;->y:F

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;->z:F

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;->w:F

    return-void
.end method

.method public z(FFFF)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "x",
            "y",
            "z",
            "w"
        }
    .end annotation

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;->x:F

    iput p2, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;->y:F

    iput p3, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;->z:F

    iput p4, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;->w:F

    return-void
.end method
