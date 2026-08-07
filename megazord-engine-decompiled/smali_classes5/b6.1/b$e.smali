.class public Lb6/b$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyi/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lb6/b;->C1()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public a:F

.field public b:I

.field public final synthetic c:Lb6/b;


# direct methods
.method public constructor <init>(Lb6/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Lb6/b$e;->c:Lb6/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 p1, 0x40a00000    # 5.0f

    iput p1, p0, Lb6/b$e;->a:F

    const/4 p1, 0x0

    iput p1, p0, Lb6/b$e;->b:I

    return-void
.end method


# virtual methods
.method public a(Lorg/mohammedalaa/seekbar/RangeSeekBarView;I)V
    .locals 0
    .param p1    # Lorg/mohammedalaa/seekbar/RangeSeekBarView;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "rangeSeekBarView",
            "i"
        }
    .end annotation

    const/16 p2, 0x32

    invoke-virtual {p1, p2}, Lorg/mohammedalaa/seekbar/RangeSeekBarView;->setCurrentValue(I)V

    iget-object p1, p0, Lb6/b$e;->c:Lb6/b;

    invoke-static {p1}, Lb6/b;->s1(Lb6/b;)Lb6/b$g;

    move-result-object p2

    invoke-interface {p2}, Lb6/b$g;->get()I

    move-result p2

    int-to-float p2, p2

    invoke-static {p1, p2}, Lb6/b;->p1(Lb6/b;F)F

    return-void
.end method

.method public b(Lorg/mohammedalaa/seekbar/RangeSeekBarView;IZ)V
    .locals 1
    .param p1    # Lorg/mohammedalaa/seekbar/RangeSeekBarView;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "rangeSeekBarView",
            "i",
            "fromUser"
        }
    .end annotation

    if-eqz p3, :cond_0

    iput p2, p0, Lb6/b$e;->b:I

    int-to-float p1, p2

    const/high16 p2, 0x42c80000    # 100.0f

    div-float/2addr p1, p2

    const/high16 p2, 0x3f000000    # 0.5f

    sub-float/2addr p1, p2

    const/high16 p2, 0x40000000    # 2.0f

    mul-float/2addr p1, p2

    iget p2, p0, Lb6/b$e;->a:F

    mul-float/2addr p1, p2

    iget-object p2, p0, Lb6/b$e;->c:Lb6/b;

    invoke-static {p2}, Lb6/b;->o1(Lb6/b;)F

    move-result p2

    invoke-static {}, Lf8/c;->o()Landroid/app/Activity;

    move-result-object p3

    new-instance v0, Lb6/b$e$a;

    invoke-direct {v0, p0, p1, p2}, Lb6/b$e$a;-><init>(Lb6/b$e;FF)V

    invoke-virtual {p3, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public c(Lorg/mohammedalaa/seekbar/RangeSeekBarView;I)V
    .locals 2
    .param p1    # Lorg/mohammedalaa/seekbar/RangeSeekBarView;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "rangeSeekBarView",
            "i"
        }
    .end annotation

    iget p1, p0, Lb6/b$e;->b:I

    int-to-float p1, p1

    const/high16 p2, 0x42c80000    # 100.0f

    div-float/2addr p1, p2

    const/high16 p2, 0x3f000000    # 0.5f

    sub-float/2addr p1, p2

    const/high16 p2, 0x40000000    # 2.0f

    mul-float/2addr p1, p2

    iget p2, p0, Lb6/b$e;->a:F

    mul-float/2addr p1, p2

    iget-object p2, p0, Lb6/b$e;->c:Lb6/b;

    invoke-static {p2}, Lb6/b;->o1(Lb6/b;)F

    move-result p2

    invoke-static {}, Lf8/c;->o()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lb6/b$e$b;

    invoke-direct {v1, p0, p1, p2}, Lb6/b$e$b;-><init>(Lb6/b$e;FF)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
