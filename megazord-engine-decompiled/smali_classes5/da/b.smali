.class public Lda/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:F

.field public b:F

.field public c:F

.field public d:Lda/a;

.field public e:Z


# direct methods
.method public constructor <init>(ILda/a;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "framesPerSecond",
            "fixedFrameListener"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lda/b;->e:Z

    const/high16 v0, 0x3f800000    # 1.0f

    int-to-float p1, p1

    div-float/2addr v0, p1

    iput v0, p0, Lda/b;->a:F

    iput-object p2, p0, Lda/b;->d:Lda/a;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    invoke-static {}, Lc9/d;->e()F

    move-result v0

    invoke-virtual {p0, v0}, Lda/b;->d(F)V

    return-void
.end method

.method public b()Lda/a;
    .locals 1

    iget-object v0, p0, Lda/b;->d:Lda/a;

    return-object v0
.end method

.method public c()F
    .locals 2

    const/high16 v0, 0x3f800000    # 1.0f

    iget v1, p0, Lda/b;->a:F

    div-float/2addr v0, v1

    return v0
.end method

.method public d(F)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "deltaTime"
        }
    .end annotation

    iget v0, p0, Lda/b;->c:F

    add-float/2addr v0, p1

    iput v0, p0, Lda/b;->c:F

    :goto_0
    iget p1, p0, Lda/b;->c:F

    iget v0, p0, Lda/b;->a:F

    cmpl-float v1, p1, v0

    if-ltz v1, :cond_1

    sub-float/2addr p1, v0

    iput p1, p0, Lda/b;->c:F

    iget-boolean p1, p0, Lda/b;->e:Z

    if-nez p1, :cond_0

    iget-object p1, p0, Lda/b;->d:Lda/a;

    invoke-interface {p1, v0}, Lda/a;->repeat(F)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lda/b;->d:Lda/a;

    invoke-static {}, Lc9/d;->c()F

    move-result v1

    mul-float/2addr v0, v1

    invoke-interface {p1, v0}, Lda/a;->repeat(F)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public e(Z)Lda/b;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "allowTimeScale"
        }
    .end annotation

    iput-boolean p1, p0, Lda/b;->e:Z

    return-object p0
.end method

.method public f(Z)Lda/b;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "desyncHighFrameRate"
        }
    .end annotation

    return-object p0
.end method

.method public g(Z)Lda/b;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "desyncLowFrameRate"
        }
    .end annotation

    return-object p0
.end method

.method public h(Lda/a;)Lda/b;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "fixedFrameListener"
        }
    .end annotation

    iput-object p1, p0, Lda/b;->d:Lda/a;

    return-object p0
.end method

.method public i(I)Lda/b;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "framesPerSecond"
        }
    .end annotation

    const/high16 v0, 0x3f800000    # 1.0f

    int-to-float p1, p1

    div-float/2addr v0, p1

    iput v0, p0, Lda/b;->a:F

    return-object p0
.end method
