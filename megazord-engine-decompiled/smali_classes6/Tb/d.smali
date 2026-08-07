.class public LTb/d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LTb/d$d;,
        LTb/d$c;
    }
.end annotation


# instance fields
.field public final a:LTb/d$c;

.field public final b:I

.field public final c:I

.field public d:LMb/p;

.field public final e:Z


# direct methods
.method public constructor <init>([[LTb/d$d;LMb/p;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "pixels",
            "texture",
            "isAlphaFilled"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p2}, LMb/p;->getWidth()I

    move-result v0

    iput v0, p0, LTb/d;->b:I

    invoke-virtual {p2}, LMb/p;->getHeight()I

    move-result v0

    iput v0, p0, LTb/d;->c:I

    iput-object p2, p0, LTb/d;->d:LMb/p;

    if-eqz p1, :cond_0

    iput-boolean p3, p0, LTb/d;->e:Z

    new-instance p3, LTb/d$a;

    invoke-direct {p3, p0, p1, p2}, LTb/d$a;-><init>(LTb/d;[[LTb/d$d;LMb/p;)V

    iput-object p3, p0, LTb/d;->a:LTb/d$c;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    iput-boolean p1, p0, LTb/d;->e:Z

    new-instance p1, LTb/d$b;

    invoke-direct {p1, p0, p2}, LTb/d$b;-><init>(LTb/d;LMb/p;)V

    iput-object p1, p0, LTb/d;->a:LTb/d$c;

    :goto_0
    return-void
.end method

.method public static A(LMb/p;F)LTb/d;
    .locals 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "texture",
            "minimalRamMB"
        }
    .end annotation

    invoke-virtual {p0}, LMb/p;->getWidth()I

    move-result v0

    invoke-virtual {p0}, LMb/p;->getHeight()I

    move-result v1

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    :try_start_0
    new-array v2, v2, [I

    aput v1, v2, v4

    const/4 v5, 0x0

    aput v0, v2, v5

    const-class v6, LTb/d$d;

    invoke-static {v6, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[LTb/d$d;

    if-eqz v2, :cond_2

    move v6, v5

    :goto_0
    if-ge v6, v0, :cond_2

    move v7, v5

    :goto_1
    if-ge v7, v1, :cond_0

    new-instance v8, LTb/d$d;

    invoke-direct {v8, v3}, LTb/d$d;-><init>(LTb/d$a;)V

    aget-object v9, v2, v6

    aput-object v8, v9, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_2

    :catch_1
    move-exception p1

    goto :goto_2

    :cond_0
    invoke-static {p1}, Lwa/a;->a(F)Z

    move-result v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v7, :cond_1

    goto :goto_3

    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_2
    move-object v3, v2

    goto :goto_3

    :goto_2
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_3
    new-instance p1, LTb/d;

    invoke-direct {p1, v3, p0, v4}, LTb/d;-><init>([[LTb/d$d;LMb/p;Z)V

    return-object p1
.end method

.method public static synthetic a(LTb/d;)I
    .locals 0

    iget p0, p0, LTb/d;->b:I

    return p0
.end method

.method public static synthetic b(LTb/d;)I
    .locals 0

    iget p0, p0, LTb/d;->c:I

    return p0
.end method

.method public static d(LMb/p;F)LTb/d;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "texture",
            "minimalRamMB"
        }
    .end annotation

    invoke-virtual {p0}, LMb/p;->getWidth()I

    invoke-virtual {p0}, LMb/p;->getHeight()I

    new-instance p1, LTb/d;

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p1, v1, p0, v0}, LTb/d;-><init>([[LTb/d$d;LMb/p;Z)V

    return-object p1
.end method

.method public static y(LMb/p;)LTb/d;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "texture"
        }
    .end annotation

    const/high16 v0, 0x42480000    # 50.0f

    invoke-static {p0, v0}, LTb/d;->z(LMb/p;F)LTb/d;

    move-result-object p0

    return-object p0
.end method

.method public static z(LMb/p;F)LTb/d;
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "texture",
            "minimalRamMB"
        }
    .end annotation

    invoke-virtual {p0}, LMb/p;->getWidth()I

    move-result v0

    invoke-virtual {p0}, LMb/p;->getHeight()I

    move-result v1

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x0

    :try_start_0
    new-array v2, v2, [I

    const/4 v5, 0x1

    aput v1, v2, v5

    aput v0, v2, v4

    const-class v5, LTb/d$d;

    invoke-static {v5, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[LTb/d$d;

    if-eqz v2, :cond_2

    move v5, v4

    :goto_0
    if-ge v5, v0, :cond_2

    move v6, v4

    :goto_1
    if-ge v6, v1, :cond_0

    new-instance v7, LTb/d$d;

    invoke-direct {v7, v3}, LTb/d$d;-><init>(LTb/d$a;)V

    invoke-virtual {p0, v5, v6}, LMb/p;->B(II)F

    move-result v8

    iput v8, v7, LTb/d$d;->a:F

    invoke-virtual {p0, v5, v6}, LMb/p;->A(II)F

    move-result v8

    iput v8, v7, LTb/d$d;->b:F

    invoke-virtual {p0, v5, v6}, LMb/p;->z(II)F

    move-result v8

    iput v8, v7, LTb/d$d;->c:F

    invoke-virtual {p0, v5, v6}, LMb/p;->y(II)F

    move-result v8

    iput v8, v7, LTb/d$d;->d:F

    aget-object v8, v2, v5

    aput-object v7, v8, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_2

    :catch_1
    move-exception p1

    goto :goto_2

    :cond_0
    invoke-static {p1}, Lwa/a;->a(F)Z

    move-result v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v6, :cond_1

    goto :goto_3

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_2
    move-object v3, v2

    goto :goto_3

    :goto_2
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_3
    new-instance p1, LTb/d;

    invoke-direct {p1, v3, p0, v4}, LTb/d;-><init>([[LTb/d$d;LMb/p;Z)V

    return-object p1
.end method


# virtual methods
.method public c()V
    .locals 1

    iget-object v0, p0, LTb/d;->a:LTb/d$c;

    invoke-interface {v0}, LTb/d$c;->apply()V

    return-void
.end method

.method public e()V
    .locals 1

    iget-object v0, p0, LTb/d;->a:LTb/d$c;

    invoke-interface {v0}, LTb/d$c;->clear()V

    return-void
.end method

.method public f(FFFF)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "r",
            "g",
            "b",
            "a"
        }
    .end annotation

    iget-object v0, p0, LTb/d;->a:LTb/d$c;

    invoke-interface {v0, p1, p2, p3, p4}, LTb/d$c;->m(FFFF)V

    return-void
.end method

.method public g(II)Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;
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

    iget-object v0, p0, LTb/d;->a:LTb/d$c;

    invoke-interface {v0, p1, p2}, LTb/d$c;->a(II)Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    move-result-object p1

    return-object p1
.end method

.method public h(IILcom/itsmagic/engine/Engines/Engine/Color/ColorINT;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "x",
            "y",
            "out"
        }
    .end annotation

    iget-object v0, p0, LTb/d;->a:LTb/d$c;

    invoke-interface {v0, p1, p2, p3}, LTb/d$c;->k(IILcom/itsmagic/engine/Engines/Engine/Color/ColorINT;)V

    return-void
.end method

.method public i(II)F
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

    iget-object v0, p0, LTb/d;->a:LTb/d$c;

    invoke-interface {v0, p1, p2}, LTb/d$c;->f(II)F

    move-result p1

    return p1
.end method

.method public j(II)F
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

    iget-object v0, p0, LTb/d;->a:LTb/d$c;

    invoke-interface {v0, p1, p2}, LTb/d$c;->h(II)F

    move-result p1

    return p1
.end method

.method public k(II)F
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

    iget-object v0, p0, LTb/d;->a:LTb/d$c;

    invoke-interface {v0, p1, p2}, LTb/d$c;->i(II)F

    move-result p1

    return p1
.end method

.method public l()I
    .locals 1

    iget v0, p0, LTb/d;->c:I

    return v0
.end method

.method public m(FFLcom/itsmagic/engine/Engines/Engine/Color/ColorINT;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "x",
            "y",
            "out"
        }
    .end annotation

    :goto_0
    const/4 v0, 0x0

    cmpg-float v1, p1, v0

    const/high16 v2, 0x3f800000    # 1.0f

    if-gez v1, :cond_0

    add-float/2addr p1, v2

    goto :goto_0

    :cond_0
    :goto_1
    cmpl-float v1, p1, v2

    if-lez v1, :cond_1

    sub-float/2addr p1, v2

    goto :goto_1

    :cond_1
    :goto_2
    cmpg-float v1, p2, v0

    if-gez v1, :cond_2

    add-float/2addr p2, v2

    goto :goto_2

    :cond_2
    :goto_3
    cmpl-float v0, p2, v2

    if-lez v0, :cond_3

    sub-float/2addr p2, v2

    goto :goto_3

    :cond_3
    invoke-virtual {p0}, LTb/d;->p()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    int-to-float v0, v0

    mul-float/2addr p1, v0

    float-to-int p1, p1

    invoke-virtual {p0}, LTb/d;->l()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    int-to-float v0, v0

    mul-float/2addr p2, v0

    float-to-int p2, p2

    invoke-virtual {p0, p1, p2, p3}, LTb/d;->h(IILcom/itsmagic/engine/Engines/Engine/Color/ColorINT;)V

    return-void
.end method

.method public n(II)F
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

    iget-object v0, p0, LTb/d;->a:LTb/d$c;

    invoke-interface {v0, p1, p2}, LTb/d$c;->g(II)F

    move-result p1

    return p1
.end method

.method public o()LMb/p;
    .locals 1

    iget-object v0, p0, LTb/d;->d:LMb/p;

    return-object v0
.end method

.method public p()I
    .locals 1

    iget v0, p0, LTb/d;->b:I

    return v0
.end method

.method public q()Z
    .locals 1

    iget-boolean v0, p0, LTb/d;->e:Z

    return v0
.end method

.method public r(IIFFF)V
    .locals 6
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
            "r",
            "g",
            "b"
        }
    .end annotation

    iget-object v0, p0, LTb/d;->a:LTb/d$c;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, LTb/d$c;->l(IIFFF)V

    return-void
.end method

.method public s(IIFFFF)V
    .locals 7
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
            "x",
            "y",
            "r",
            "g",
            "b",
            "a"
        }
    .end annotation

    iget-object v0, p0, LTb/d;->a:LTb/d$c;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-interface/range {v0 .. v6}, LTb/d$c;->e(IIFFFF)V

    return-void
.end method

.method public t(IILcom/itsmagic/engine/Engines/Engine/Color/ColorINT;)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "x",
            "y",
            "colorINT"
        }
    .end annotation

    invoke-virtual {p3}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->I()F

    move-result v3

    invoke-virtual {p3}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->G()F

    move-result v4

    invoke-virtual {p3}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->F()F

    move-result v5

    invoke-virtual {p3}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->E()F

    move-result v6

    move-object v0, p0

    move v1, p1

    move v2, p2

    invoke-virtual/range {v0 .. v6}, LTb/d;->s(IIFFFF)V

    return-void
.end method

.method public u(IIF)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "x",
            "y",
            "v"
        }
    .end annotation

    iget-object v0, p0, LTb/d;->a:LTb/d$c;

    invoke-interface {v0, p1, p2, p3}, LTb/d$c;->d(IIF)V

    return-void
.end method

.method public v(IIF)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "x",
            "y",
            "v"
        }
    .end annotation

    iget-object v0, p0, LTb/d;->a:LTb/d$c;

    invoke-interface {v0, p1, p2, p3}, LTb/d$c;->b(IIF)V

    return-void
.end method

.method public w(IIF)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "x",
            "y",
            "v"
        }
    .end annotation

    iget-object v0, p0, LTb/d;->a:LTb/d$c;

    invoke-interface {v0, p1, p2, p3}, LTb/d$c;->j(IIF)V

    return-void
.end method

.method public x(IIF)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "x",
            "y",
            "v"
        }
    .end annotation

    iget-object v0, p0, LTb/d;->a:LTb/d$c;

    invoke-interface {v0, p1, p2, p3}, LTb/d$c;->c(IIF)V

    return-void
.end method
