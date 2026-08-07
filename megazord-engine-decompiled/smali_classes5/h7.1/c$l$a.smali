.class public Lh7/c$l$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LRb/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lh7/c$l;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lh7/c$l;


# direct methods
.method public constructor <init>(Lh7/c$l;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$1"
        }
    .end annotation

    iput-object p1, p0, Lh7/c$l$a;->a:Lh7/c$l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(IIIII)I
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "x",
            "y",
            "w",
            "h",
            "color"
        }
    .end annotation

    new-instance p1, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    invoke-direct {p1, p5}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;-><init>(I)V

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->E()F

    move-result p2

    const/4 p3, 0x0

    cmpg-float p2, p2, p3

    if-gtz p2, :cond_0

    return p5

    :cond_0
    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->I()F

    move-result p2

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->F()F

    move-result p4

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->G()F

    move-result v0

    const/4 v1, 0x3

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput p2, v1, v2

    const/4 p2, 0x1

    aput p4, v1, p2

    const/4 p2, 0x2

    aput v0, v1, p2

    invoke-static {v1}, Lgd/b;->T0([F)F

    move-result p2

    float-to-double v0, p2

    const-wide v2, 0x3f947ae147ae147bL    # 0.02

    cmpg-double p2, v0, v2

    if-gtz p2, :cond_1

    const/high16 p2, 0x3f800000    # 1.0f

    invoke-virtual {p1, p3, p2, p2, p2}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->e0(FFFF)V

    iget p1, p1, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->intColor:I

    return p1

    :cond_1
    return p5
.end method
