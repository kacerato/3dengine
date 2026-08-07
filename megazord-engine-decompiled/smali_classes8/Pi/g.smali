.class public LPi/g;
.super LPi/a;
.source "SourceFile"


# instance fields
.field public final d:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

.field public final e:Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;IF)V
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
            "triangles",
            "area",
            "flagMergeThreshold"
        }
    .end annotation

    .line 1
    invoke-static {p1}, LPi/j;->c(Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;)[F

    move-result-object v0

    invoke-direct {p0, p3, p4, v0}, LPi/a;-><init>(IF[F)V

    .line 2
    iput-object p1, p0, LPi/g;->d:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    .line 3
    iput-object p2, p0, LPi/g;->e:Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;

    return-void
.end method

.method public constructor <init>(Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;[FIF)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "vertices",
            "triangles",
            "bounds",
            "area",
            "flagMergeThreshold"
        }
    .end annotation

    .line 4
    invoke-direct {p0, p4, p5, p3}, LPi/a;-><init>(IF[F)V

    .line 5
    iput-object p1, p0, LPi/g;->d:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    .line 6
    iput-object p2, p0, LPi/g;->e:Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;

    return-void
.end method


# virtual methods
.method public b(LRi/h;LRi/N;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "hf",
            "telemetry"
        }
    .end annotation

    iget-object v1, p0, LPi/g;->d:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    iget-object v2, p0, LPi/g;->e:Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;

    iget v3, p0, LPi/a;->a:I

    iget v0, p0, LPi/a;->b:F

    iget v4, p1, LRi/h;->f:F

    div-float/2addr v0, v4

    float-to-double v4, v0

    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    double-to-int v4, v4

    move-object v0, p1

    move-object v5, p2

    invoke-static/range {v0 .. v5}, LRi/B;->A(LRi/h;Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;IILRi/N;)V

    return-void
.end method
