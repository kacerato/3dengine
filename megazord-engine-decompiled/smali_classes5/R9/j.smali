.class public LR9/j;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:LOc/e;

.field public b:I


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "resolution"
        }
    .end annotation

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    new-instance v0, LOc/e;

    invoke-direct {v0, p1, p1}, LOc/e;-><init>(II)V

    iput-object v0, p0, LR9/j;->a:LOc/e;

    .line 6
    iput p1, p0, LR9/j;->b:I

    return-void
.end method

.method public constructor <init>(LOc/e;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "data",
            "resolution"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, LR9/j;->a:LOc/e;

    .line 3
    iput p2, p0, LR9/j;->b:I

    return-void
.end method

.method public static j(LR9/j;I)LR9/j;
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

    iget v0, p0, LR9/j;->b:I

    if-ne v0, p1, :cond_0

    return-object p0

    :cond_0
    new-instance v0, LR9/j;

    invoke-direct {v0, p1}, LR9/j;-><init>(I)V

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

    invoke-virtual {p0, v4, v6}, LR9/j;->e(FF)F

    move-result v4

    invoke-virtual {v0, v2, v3, v4}, LR9/j;->h(IIF)V

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

    invoke-virtual {v0, p0, v2, v3}, LR9/j;->h(IIF)V

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
    .locals 1

    iget-object v0, p0, LR9/j;->a:LOc/e;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, LOc/k;->d()V

    :cond_0
    return-void
.end method

.method public b(F)V
    .locals 2
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

    iget-object v0, p0, LR9/j;->a:LOc/e;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LR9/j;->a:LOc/e;

    invoke-virtual {v1, p1}, LOc/k;->e(F)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public c()Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;
    .locals 2

    iget-object v0, p0, LR9/j;->a:LOc/e;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LR9/j;->a:LOc/e;

    invoke-virtual {v1}, LOc/k;->g()Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public d(II)F
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

    if-ltz p1, :cond_3

    iget v0, p0, LR9/j;->b:I

    if-ge p1, v0, :cond_2

    if-ltz p2, :cond_1

    if-ge p2, v0, :cond_0

    iget-object v0, p0, LR9/j;->a:LOc/e;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LR9/j;->a:LOc/e;

    invoke-virtual {v1, p1, p2}, LOc/e;->w(II)F

    move-result p1

    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_0
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " can\'t be >= "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, LR9/j;->b:I

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " can\'t be < 0"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p2, Ljava/lang/IndexOutOfBoundsException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " can\'t be >= "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, LR9/j;->b:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_3
    new-instance p2, Ljava/lang/IndexOutOfBoundsException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " can\'t be < 0"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p2
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

    iget v0, p0, LR9/j;->b:I

    add-int/lit8 v1, v0, -0x1

    int-to-float v1, v1

    mul-float/2addr p1, v1

    float-to-int p1, p1

    add-int/lit8 v0, v0, -0x1

    int-to-float v0, v0

    mul-float/2addr p2, v0

    float-to-int p2, p2

    invoke-virtual {p0, p1, p2}, LR9/j;->d(II)F

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

    iget-object v0, p0, LR9/j;->a:LOc/e;

    invoke-virtual {v0, p1, p2}, LOc/e;->z(II)F

    move-result p1

    return p1
.end method

.method public g()I
    .locals 1

    iget v0, p0, LR9/j;->b:I

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

    iget-object v0, p0, LR9/j;->a:LOc/e;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LR9/j;->a:LOc/e;

    invoke-virtual {v1, p1, p2, p3}, LOc/e;->A(IIF)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
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

    iget-object v0, p0, LR9/j;->a:LOc/e;

    invoke-virtual {v0, p1, p2, p3}, LOc/e;->B(IIF)V

    return-void
.end method
