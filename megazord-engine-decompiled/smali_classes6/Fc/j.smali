.class public LFc/j;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:I

.field public b:I

.field public c:I

.field public d:I

.field public e:I

.field public f:I


# direct methods
.method public constructor <init>(IIIIII)V
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
            "positionAttribute",
            "texCoordAttribute",
            "normalsAttribute",
            "tangentAttribute",
            "biTangentAttribute",
            "colorsAttribute"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, LFc/j;->a:I

    iput p2, p0, LFc/j;->b:I

    iput p3, p0, LFc/j;->c:I

    iput p4, p0, LFc/j;->d:I

    iput p5, p0, LFc/j;->e:I

    iput p6, p0, LFc/j;->f:I

    return-void
.end method
