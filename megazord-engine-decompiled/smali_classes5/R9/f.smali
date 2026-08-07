.class public LR9/f;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:[[F

.field public b:I


# direct methods
.method public constructor <init>(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "resolution"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x1

    aput p1, v0, v1

    const/4 v1, 0x0

    aput p1, v0, v1

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[F

    iput-object v0, p0, LR9/f;->a:[[F

    iput p1, p0, LR9/f;->b:I

    return-void
.end method

.method public static j(LR9/f;I)LR9/f;
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "table",
            "resolution"
        }
    .end annotation

    if-eqz p0, :cond_0

    iget v0, p0, LR9/f;->b:I

    if-ne v0, p1, :cond_0

    return-object p0

    :cond_0
    new-instance v0, LR9/f;

    invoke-direct {v0, p1}, LR9/f;-><init>(I)V

    const/4 v1, 0x0

    if-eqz p0, :cond_2

    move v2, v1

    :goto_0
    if-ge v2, p1, :cond_4

    move v3, v1

    :goto_1
    if-ge v3, p1, :cond_1

    int-to-float v4, v2

    int-to-float v5, p1

    const/high16 v6, 0x3f800000    # 1.0f

    sub-float/2addr v5, v6

    div-float/2addr v4, v5

    int-to-float v6, v3

    div-float/2addr v6, v5

    invoke-virtual {p0, v4, v6}, LR9/f;->e(FF)F

    move-result v4

    invoke-virtual {v0, v2, v3, v4}, LR9/f;->h(IIF)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    move p0, v1

    :goto_2
    if-ge p0, p1, :cond_4

    move v2, v1

    :goto_3
    if-ge v2, p1, :cond_3

    const/4 v3, 0x0

    invoke-virtual {v0, p0, v2, v3}, LR9/f;->h(IIF)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_3
    add-int/lit8 p0, p0, 0x1

    goto :goto_2

    :cond_4
    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 0

    return-void
.end method

.method public b(F)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "height"
        }
    .end annotation

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, p1, v1}, Lgd/b;->E(FFF)F

    move-result p1

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget v2, p0, LR9/f;->b:I

    if-ge v1, v2, :cond_1

    move v2, v0

    :goto_1
    iget v3, p0, LR9/f;->b:I

    if-ge v2, v3, :cond_0

    iget-object v3, p0, LR9/f;->a:[[F

    aget-object v3, v3, v1

    aput p1, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public c()Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;
    .locals 5

    new-instance v0, LR9/j;

    iget v1, p0, LR9/f;->b:I

    invoke-direct {v0, v1}, LR9/j;-><init>(I)V

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    iget v3, p0, LR9/f;->b:I

    if-ge v2, v3, :cond_1

    move v3, v1

    :goto_1
    iget v4, p0, LR9/f;->b:I

    if-ge v3, v4, :cond_0

    invoke-virtual {p0, v2, v3}, LR9/f;->f(II)F

    move-result v4

    invoke-virtual {v0, v2, v3, v4}, LR9/j;->i(IIF)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, LR9/j;->c()Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    move-result-object v0

    return-object v0
.end method

.method public d(II)F
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "x",
            "y"
        }
    .end annotation

    iget-object v0, p0, LR9/f;->a:[[F

    aget-object p1, v0, p1

    aget p1, p1, p2

    return p1
.end method

.method public e(FF)F
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "x",
            "y"
        }
    .end annotation

    iget v0, p0, LR9/f;->b:I

    add-int/lit8 v1, v0, -0x1

    int-to-float v1, v1

    mul-float/2addr p1, v1

    float-to-int p1, p1

    add-int/lit8 v0, v0, -0x1

    int-to-float v0, v0

    mul-float/2addr p2, v0

    float-to-int p2, p2

    invoke-virtual {p0, p1, p2}, LR9/f;->d(II)F

    move-result p1

    return p1
.end method

.method public f(II)F
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "x",
            "y"
        }
    .end annotation

    iget-object v0, p0, LR9/f;->a:[[F

    aget-object p1, v0, p1

    aget p1, p1, p2

    return p1
.end method

.method public g()I
    .locals 1

    iget v0, p0, LR9/f;->b:I

    return v0
.end method

.method public h(IIF)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "x",
            "y",
            "height"
        }
    .end annotation

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, p3, v1}, Lgd/b;->E(FFF)F

    move-result p3

    iget-object v0, p0, LR9/f;->a:[[F

    aget-object p1, v0, p1

    aput p3, p1, p2

    return-void
.end method

.method public i(IIF)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "x",
            "y",
            "height"
        }
    .end annotation

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, p3, v1}, Lgd/b;->E(FFF)F

    move-result p3

    iget-object v0, p0, LR9/f;->a:[[F

    aget-object p1, v0, p1

    aput p3, p1, p2

    return-void
.end method
