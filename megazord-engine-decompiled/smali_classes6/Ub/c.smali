.class public LUb/c;
.super Lc9/f;
.source "SourceFile"


# static fields
.field public static b:D

.field public static c:D

.field public static d:D

.field public static e:D

.field public static g:D


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lc9/f;-><init>()V

    return-void
.end method


# virtual methods
.method public q(DLcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "theta",
            "vectorToRotate",
            "vectorToPutResultsIn"
        }
    .end annotation

    invoke-static {p1, p2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    sput-wide v0, LUb/c;->b:D

    invoke-static {p1, p2}, Ljava/lang/Math;->cos(D)D

    move-result-wide p1

    sput-wide p1, LUb/c;->c:D

    invoke-virtual {p3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->W0()F

    move-result p1

    float-to-double p1, p1

    sput-wide p1, LUb/c;->d:D

    invoke-virtual {p3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->X0()F

    move-result p1

    float-to-double p1, p1

    sget-wide v0, LUb/c;->c:D

    mul-double/2addr p1, v0

    invoke-virtual {p3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->Y0()F

    move-result v0

    float-to-double v0, v0

    sget-wide v2, LUb/c;->b:D

    mul-double/2addr v0, v2

    sub-double/2addr p1, v0

    sput-wide p1, LUb/c;->e:D

    invoke-virtual {p3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->X0()F

    move-result p1

    float-to-double p1, p1

    sget-wide v0, LUb/c;->b:D

    mul-double/2addr p1, v0

    invoke-virtual {p3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->Y0()F

    move-result p3

    float-to-double v0, p3

    sget-wide v2, LUb/c;->c:D

    mul-double/2addr v0, v2

    add-double/2addr p1, v0

    sput-wide p1, LUb/c;->g:D

    sget-wide p1, LUb/c;->d:D

    invoke-static {p1, p2}, Lgd/b;->g(D)F

    move-result p1

    invoke-virtual {p4, p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->e2(F)F

    sget-wide p1, LUb/c;->e:D

    invoke-static {p1, p2}, Lgd/b;->g(D)F

    move-result p1

    invoke-virtual {p4, p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->i2(F)F

    sget-wide p1, LUb/c;->g:D

    invoke-static {p1, p2}, Lgd/b;->g(D)F

    move-result p1

    invoke-virtual {p4, p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->j2(F)F

    return-void
.end method

.method public r(DLcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "theta",
            "vectorToRotate",
            "vectorToPutResultsIn"
        }
    .end annotation

    invoke-static {p1, p2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    sput-wide v0, LUb/c;->b:D

    invoke-static {p1, p2}, Ljava/lang/Math;->cos(D)D

    move-result-wide p1

    sput-wide p1, LUb/c;->c:D

    invoke-virtual {p3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->Y0()F

    move-result p1

    float-to-double p1, p1

    sget-wide v0, LUb/c;->b:D

    mul-double/2addr p1, v0

    invoke-virtual {p3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->W0()F

    move-result v0

    float-to-double v0, v0

    sget-wide v2, LUb/c;->c:D

    mul-double/2addr v0, v2

    add-double/2addr p1, v0

    sput-wide p1, LUb/c;->d:D

    invoke-virtual {p3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->X0()F

    move-result p1

    float-to-double p1, p1

    sput-wide p1, LUb/c;->e:D

    invoke-virtual {p3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->Y0()F

    move-result p1

    float-to-double p1, p1

    sget-wide v0, LUb/c;->c:D

    mul-double/2addr p1, v0

    invoke-virtual {p3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->W0()F

    move-result p3

    float-to-double v0, p3

    sget-wide v2, LUb/c;->b:D

    mul-double/2addr v0, v2

    sub-double/2addr p1, v0

    sput-wide p1, LUb/c;->g:D

    sget-wide p1, LUb/c;->d:D

    invoke-static {p1, p2}, Lgd/b;->g(D)F

    move-result p1

    invoke-virtual {p4, p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->e2(F)F

    sget-wide p1, LUb/c;->e:D

    invoke-static {p1, p2}, Lgd/b;->g(D)F

    move-result p1

    invoke-virtual {p4, p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->i2(F)F

    sget-wide p1, LUb/c;->g:D

    invoke-static {p1, p2}, Lgd/b;->g(D)F

    move-result p1

    invoke-virtual {p4, p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->j2(F)F

    return-void
.end method

.method public s(DLcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "theta",
            "vectorToRotate",
            "vectorToPutResultsIn"
        }
    .end annotation

    invoke-static {p1, p2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    sput-wide v0, LUb/c;->b:D

    invoke-static {p1, p2}, Ljava/lang/Math;->cos(D)D

    move-result-wide p1

    sput-wide p1, LUb/c;->c:D

    invoke-virtual {p3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->W0()F

    move-result p1

    float-to-double p1, p1

    sget-wide v0, LUb/c;->c:D

    mul-double/2addr p1, v0

    invoke-virtual {p3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->X0()F

    move-result v0

    float-to-double v0, v0

    sget-wide v2, LUb/c;->b:D

    mul-double/2addr v0, v2

    sub-double/2addr p1, v0

    sput-wide p1, LUb/c;->d:D

    invoke-virtual {p3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->W0()F

    move-result p1

    float-to-double p1, p1

    sget-wide v0, LUb/c;->b:D

    mul-double/2addr p1, v0

    invoke-virtual {p3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->X0()F

    move-result v0

    float-to-double v0, v0

    sget-wide v2, LUb/c;->c:D

    mul-double/2addr v0, v2

    add-double/2addr p1, v0

    sput-wide p1, LUb/c;->e:D

    invoke-virtual {p3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->Y0()F

    move-result p1

    float-to-double p1, p1

    sput-wide p1, LUb/c;->g:D

    sget-wide p1, LUb/c;->d:D

    invoke-static {p1, p2}, Lgd/b;->g(D)F

    move-result p1

    invoke-virtual {p4, p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->e2(F)F

    sget-wide p1, LUb/c;->e:D

    invoke-static {p1, p2}, Lgd/b;->g(D)F

    move-result p1

    invoke-virtual {p4, p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->i2(F)F

    sget-wide p1, LUb/c;->g:D

    invoke-static {p1, p2}, Lgd/b;->g(D)F

    move-result p1

    invoke-virtual {p4, p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->j2(F)F

    return-void
.end method
