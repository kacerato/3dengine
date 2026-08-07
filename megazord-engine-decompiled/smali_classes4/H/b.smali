.class public final LH/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:LF/j;

.field public final b:LE/e;

.field public final c:LB/b;

.field public final d:Landroid/os/Handler;

.field public e:LH/a;


# direct methods
.method public constructor <init>(LF/j;LE/e;LB/b;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, LH/b;->d:Landroid/os/Handler;

    iput-object p1, p0, LH/b;->a:LF/j;

    iput-object p2, p0, LH/b;->b:LE/e;

    iput-object p3, p0, LH/b;->c:LB/b;

    return-void
.end method

.method public static b(LH/d;)I
    .locals 2

    invoke-virtual {p0}, LH/d;->d()I

    move-result v0

    invoke-virtual {p0}, LH/d;->b()I

    move-result v1

    invoke-virtual {p0}, LH/d;->a()Landroid/graphics/Bitmap$Config;

    move-result-object p0

    invoke-static {v0, v1, p0}, LX/m;->g(IILandroid/graphics/Bitmap$Config;)I

    move-result p0

    return p0
.end method


# virtual methods
.method public varargs a([LH/d;)LH/c;
    .locals 7
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    iget-object v0, p0, LH/b;->a:LF/j;

    invoke-interface {v0}, LF/j;->e()J

    move-result-wide v0

    iget-object v2, p0, LH/b;->a:LF/j;

    invoke-interface {v2}, LF/j;->getCurrentSize()J

    move-result-wide v2

    sub-long/2addr v0, v2

    iget-object v2, p0, LH/b;->b:LE/e;

    invoke-interface {v2}, LE/e;->e()J

    move-result-wide v2

    add-long/2addr v0, v2

    array-length v2, p1

    const/4 v3, 0x0

    move v4, v3

    move v5, v4

    :goto_0
    if-ge v4, v2, :cond_0

    aget-object v6, p1, v4

    invoke-virtual {v6}, LH/d;->c()I

    move-result v6

    add-int/2addr v5, v6

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    long-to-float v0, v0

    int-to-float v1, v5

    div-float/2addr v0, v1

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    array-length v2, p1

    :goto_1
    if-ge v3, v2, :cond_1

    aget-object v4, p1, v3

    invoke-virtual {v4}, LH/d;->c()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v0

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    invoke-static {v4}, LH/b;->b(LH/d;)I

    move-result v6

    div-int/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    new-instance p1, LH/c;

    invoke-direct {p1, v1}, LH/c;-><init>(Ljava/util/Map;)V

    return-object p1
.end method

.method public varargs c([LH/d$a;)V
    .locals 5

    iget-object v0, p0, LH/b;->e:LH/a;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, LH/a;->b()V

    :cond_0
    array-length v0, p1

    new-array v0, v0, [LH/d;

    const/4 v1, 0x0

    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_3

    aget-object v2, p1, v1

    invoke-virtual {v2}, LH/d$a;->b()Landroid/graphics/Bitmap$Config;

    move-result-object v3

    if-nez v3, :cond_2

    iget-object v3, p0, LH/b;->c:LB/b;

    sget-object v4, LB/b;->PREFER_ARGB_8888:LB/b;

    if-ne v3, v4, :cond_1

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    goto :goto_1

    :cond_1
    sget-object v3, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    :goto_1
    invoke-virtual {v2, v3}, LH/d$a;->c(Landroid/graphics/Bitmap$Config;)LH/d$a;

    :cond_2
    invoke-virtual {v2}, LH/d$a;->a()LH/d;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {p0, v0}, LH/b;->a([LH/d;)LH/c;

    move-result-object p1

    new-instance v0, LH/a;

    iget-object v1, p0, LH/b;->b:LE/e;

    iget-object v2, p0, LH/b;->a:LF/j;

    invoke-direct {v0, v1, v2, p1}, LH/a;-><init>(LE/e;LF/j;LH/c;)V

    iput-object v0, p0, LH/b;->e:LH/a;

    iget-object p1, p0, LH/b;->d:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
