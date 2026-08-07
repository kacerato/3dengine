.class public LIi/m;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:F

.field public final b:F

.field public final c:F

.field public final d:F

.field public final e:F

.field public final f:F

.field public final g:F

.field public final h:F

.field public final i:F

.field public final j:F

.field public final k:F


# direct methods
.method public constructor <init>(FFFFFFFFFFF)V
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
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "cellSize",
            "cellHeight",
            "agentRadius",
            "agentHeight",
            "agentClimb",
            "groundTolerance",
            "startDistance",
            "endDistance",
            "minHeight",
            "maxHeight",
            "jumpHeight"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, LIi/m;->a:F

    iput p2, p0, LIi/m;->b:F

    iput p3, p0, LIi/m;->d:F

    iput p5, p0, LIi/m;->c:F

    iput p6, p0, LIi/m;->e:F

    iput p4, p0, LIi/m;->f:F

    iput p7, p0, LIi/m;->g:F

    iput p8, p0, LIi/m;->h:F

    iput p9, p0, LIi/m;->j:F

    sub-float/2addr p10, p9

    iput p10, p0, LIi/m;->k:F

    iput p11, p0, LIi/m;->i:F

    return-void
.end method
