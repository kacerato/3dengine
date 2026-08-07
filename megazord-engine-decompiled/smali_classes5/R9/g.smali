.class public LR9/g;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "p1",
            "p2"
        }
    .end annotation

    new-instance v0, Lub/x;

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->W0()F

    move-result v1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->X0()F

    move-result v2

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->Y0()F

    move-result p1

    invoke-direct {v0, v1, v2, p1}, Lub/x;-><init>(FFF)V

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->W0()F

    move-result p1

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->X0()F

    move-result v1

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->Y0()F

    move-result p0

    invoke-virtual {v0, p1, v1, p0}, Lub/x;->Z0(FFF)Lub/x;

    move-result-object p0

    new-instance p1, Lub/x;

    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    invoke-direct {p1, v0, v1, v1}, Lub/x;-><init>(FFF)V

    const v2, 0x3a83126f    # 0.001f

    invoke-virtual {p0, p1, v2}, Lub/x;->f0(Lub/x;F)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p1, v1, v0, v1}, Lub/x;->O0(FFF)Lub/x;

    :cond_0
    invoke-virtual {p0, p1}, Lub/x;->S(Lub/x;)Lub/x;

    move-result-object p1

    invoke-virtual {p1}, Lub/x;->E0()Lub/x;

    move-result-object p1

    invoke-virtual {p1, p0}, Lub/x;->V(Lub/x;)F

    move-result p0

    cmpl-float p0, p0, v1

    if-lez p0, :cond_1

    const/high16 p0, -0x40800000    # -1.0f

    invoke-virtual {p1, p0}, Lub/x;->L0(F)Lub/x;

    :cond_1
    new-instance p0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget v0, p1, Lub/x;->b:F

    iget v1, p1, Lub/x;->c:F

    iget p1, p1, Lub/x;->d:F

    invoke-direct {p0, v0, v1, p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>(FFF)V

    return-object p0
.end method
