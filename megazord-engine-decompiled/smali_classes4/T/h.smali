.class public LT/h;
.super LT/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "LT/a<",
        "LT/h;",
        ">;"
    }
.end annotation


# static fields
.field public static D0:LT/h;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public static W:LT/h;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public static X:LT/h;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public static X0:LT/h;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public static Y:LT/h;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public static Z:LT/h;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public static q0:LT/h;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public static v0:LT/h;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, LT/a;-><init>()V

    return-void
.end method

.method public static W0(LB/l;)LT/h;
    .locals 1
    .param p0    # LB/l;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LB/l<",
            "Landroid/graphics/Bitmap;",
            ">;)",
            "LT/h;"
        }
    .end annotation

    new-instance v0, LT/h;

    invoke-direct {v0}, LT/h;-><init>()V

    invoke-virtual {v0, p0}, LT/a;->N0(LB/l;)LT/a;

    move-result-object p0

    check-cast p0, LT/h;

    return-object p0
.end method

.method public static X0()LT/h;
    .locals 1
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    sget-object v0, LT/h;->q0:LT/h;

    if-nez v0, :cond_0

    new-instance v0, LT/h;

    invoke-direct {v0}, LT/h;-><init>()V

    invoke-virtual {v0}, LT/a;->c()LT/a;

    move-result-object v0

    check-cast v0, LT/h;

    invoke-virtual {v0}, LT/a;->b()LT/a;

    move-result-object v0

    check-cast v0, LT/h;

    sput-object v0, LT/h;->q0:LT/h;

    :cond_0
    sget-object v0, LT/h;->q0:LT/h;

    return-object v0
.end method

.method public static Y0()LT/h;
    .locals 1
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    sget-object v0, LT/h;->Z:LT/h;

    if-nez v0, :cond_0

    new-instance v0, LT/h;

    invoke-direct {v0}, LT/h;-><init>()V

    invoke-virtual {v0}, LT/a;->e()LT/a;

    move-result-object v0

    check-cast v0, LT/h;

    invoke-virtual {v0}, LT/a;->b()LT/a;

    move-result-object v0

    check-cast v0, LT/h;

    sput-object v0, LT/h;->Z:LT/h;

    :cond_0
    sget-object v0, LT/h;->Z:LT/h;

    return-object v0
.end method

.method public static Z0()LT/h;
    .locals 1
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    sget-object v0, LT/h;->v0:LT/h;

    if-nez v0, :cond_0

    new-instance v0, LT/h;

    invoke-direct {v0}, LT/h;-><init>()V

    invoke-virtual {v0}, LT/a;->h()LT/a;

    move-result-object v0

    check-cast v0, LT/h;

    invoke-virtual {v0}, LT/a;->b()LT/a;

    move-result-object v0

    check-cast v0, LT/h;

    sput-object v0, LT/h;->v0:LT/h;

    :cond_0
    sget-object v0, LT/h;->v0:LT/h;

    return-object v0
.end method

.method public static a1(Ljava/lang/Class;)LT/h;
    .locals 1
    .param p0    # Ljava/lang/Class;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "LT/h;"
        }
    .end annotation

    new-instance v0, LT/h;

    invoke-direct {v0}, LT/h;-><init>()V

    invoke-virtual {v0, p0}, LT/a;->j(Ljava/lang/Class;)LT/a;

    move-result-object p0

    check-cast p0, LT/h;

    return-object p0
.end method

.method public static b1(Lcom/bumptech/glide/load/engine/i;)LT/h;
    .locals 1
    .param p0    # Lcom/bumptech/glide/load/engine/i;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, LT/h;

    invoke-direct {v0}, LT/h;-><init>()V

    invoke-virtual {v0, p0}, LT/a;->l(Lcom/bumptech/glide/load/engine/i;)LT/a;

    move-result-object p0

    check-cast p0, LT/h;

    return-object p0
.end method

.method public static c1(Lcom/bumptech/glide/load/resource/bitmap/p;)LT/h;
    .locals 1
    .param p0    # Lcom/bumptech/glide/load/resource/bitmap/p;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, LT/h;

    invoke-direct {v0}, LT/h;-><init>()V

    invoke-virtual {v0, p0}, LT/a;->r(Lcom/bumptech/glide/load/resource/bitmap/p;)LT/a;

    move-result-object p0

    check-cast p0, LT/h;

    return-object p0
.end method

.method public static d1(Landroid/graphics/Bitmap$CompressFormat;)LT/h;
    .locals 1
    .param p0    # Landroid/graphics/Bitmap$CompressFormat;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, LT/h;

    invoke-direct {v0}, LT/h;-><init>()V

    invoke-virtual {v0, p0}, LT/a;->s(Landroid/graphics/Bitmap$CompressFormat;)LT/a;

    move-result-object p0

    check-cast p0, LT/h;

    return-object p0
.end method

.method public static e1(I)LT/h;
    .locals 1
    .param p0    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
            to = 0x64L
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, LT/h;

    invoke-direct {v0}, LT/h;-><init>()V

    invoke-virtual {v0, p0}, LT/a;->t(I)LT/a;

    move-result-object p0

    check-cast p0, LT/h;

    return-object p0
.end method

.method public static f1(I)LT/h;
    .locals 1
    .param p0    # I
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, LT/h;

    invoke-direct {v0}, LT/h;-><init>()V

    invoke-virtual {v0, p0}, LT/a;->u(I)LT/a;

    move-result-object p0

    check-cast p0, LT/h;

    return-object p0
.end method

.method public static g1(Landroid/graphics/drawable/Drawable;)LT/h;
    .locals 1
    .param p0    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, LT/h;

    invoke-direct {v0}, LT/h;-><init>()V

    invoke-virtual {v0, p0}, LT/a;->v(Landroid/graphics/drawable/Drawable;)LT/a;

    move-result-object p0

    check-cast p0, LT/h;

    return-object p0
.end method

.method public static h1()LT/h;
    .locals 1
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    sget-object v0, LT/h;->Y:LT/h;

    if-nez v0, :cond_0

    new-instance v0, LT/h;

    invoke-direct {v0}, LT/h;-><init>()V

    invoke-virtual {v0}, LT/a;->y()LT/a;

    move-result-object v0

    check-cast v0, LT/h;

    invoke-virtual {v0}, LT/a;->b()LT/a;

    move-result-object v0

    check-cast v0, LT/h;

    sput-object v0, LT/h;->Y:LT/h;

    :cond_0
    sget-object v0, LT/h;->Y:LT/h;

    return-object v0
.end method

.method public static i1(LB/b;)LT/h;
    .locals 1
    .param p0    # LB/b;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, LT/h;

    invoke-direct {v0}, LT/h;-><init>()V

    invoke-virtual {v0, p0}, LT/a;->A(LB/b;)LT/a;

    move-result-object p0

    check-cast p0, LT/h;

    return-object p0
.end method

.method public static j1(J)LT/h;
    .locals 1
    .param p0    # J
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, LT/h;

    invoke-direct {v0}, LT/h;-><init>()V

    invoke-virtual {v0, p0, p1}, LT/a;->B(J)LT/a;

    move-result-object p0

    check-cast p0, LT/h;

    return-object p0
.end method

.method public static k1()LT/h;
    .locals 1
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    sget-object v0, LT/h;->X0:LT/h;

    if-nez v0, :cond_0

    new-instance v0, LT/h;

    invoke-direct {v0}, LT/h;-><init>()V

    invoke-virtual {v0}, LT/a;->p()LT/a;

    move-result-object v0

    check-cast v0, LT/h;

    invoke-virtual {v0}, LT/a;->b()LT/a;

    move-result-object v0

    check-cast v0, LT/h;

    sput-object v0, LT/h;->X0:LT/h;

    :cond_0
    sget-object v0, LT/h;->X0:LT/h;

    return-object v0
.end method

.method public static l1()LT/h;
    .locals 1
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    sget-object v0, LT/h;->D0:LT/h;

    if-nez v0, :cond_0

    new-instance v0, LT/h;

    invoke-direct {v0}, LT/h;-><init>()V

    invoke-virtual {v0}, LT/a;->q()LT/a;

    move-result-object v0

    check-cast v0, LT/h;

    invoke-virtual {v0}, LT/a;->b()LT/a;

    move-result-object v0

    check-cast v0, LT/h;

    sput-object v0, LT/h;->D0:LT/h;

    :cond_0
    sget-object v0, LT/h;->D0:LT/h;

    return-object v0
.end method

.method public static m1(LB/g;Ljava/lang/Object;)LT/h;
    .locals 1
    .param p0    # LB/g;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "LB/g<",
            "TT;>;TT;)",
            "LT/h;"
        }
    .end annotation

    new-instance v0, LT/h;

    invoke-direct {v0}, LT/h;-><init>()V

    invoke-virtual {v0, p0, p1}, LT/a;->H0(LB/g;Ljava/lang/Object;)LT/a;

    move-result-object p0

    check-cast p0, LT/h;

    return-object p0
.end method

.method public static n1(I)LT/h;
    .locals 0
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-static {p0, p0}, LT/h;->o1(II)LT/h;

    move-result-object p0

    return-object p0
.end method

.method public static o1(II)LT/h;
    .locals 1
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, LT/h;

    invoke-direct {v0}, LT/h;-><init>()V

    invoke-virtual {v0, p0, p1}, LT/a;->y0(II)LT/a;

    move-result-object p0

    check-cast p0, LT/h;

    return-object p0
.end method

.method public static p1(I)LT/h;
    .locals 1
    .param p0    # I
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, LT/h;

    invoke-direct {v0}, LT/h;-><init>()V

    invoke-virtual {v0, p0}, LT/a;->z0(I)LT/a;

    move-result-object p0

    check-cast p0, LT/h;

    return-object p0
.end method

.method public static q1(Landroid/graphics/drawable/Drawable;)LT/h;
    .locals 1
    .param p0    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, LT/h;

    invoke-direct {v0}, LT/h;-><init>()V

    invoke-virtual {v0, p0}, LT/a;->B0(Landroid/graphics/drawable/Drawable;)LT/a;

    move-result-object p0

    check-cast p0, LT/h;

    return-object p0
.end method

.method public static r1(Lcom/bumptech/glide/h;)LT/h;
    .locals 1
    .param p0    # Lcom/bumptech/glide/h;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, LT/h;

    invoke-direct {v0}, LT/h;-><init>()V

    invoke-virtual {v0, p0}, LT/a;->C0(Lcom/bumptech/glide/h;)LT/a;

    move-result-object p0

    check-cast p0, LT/h;

    return-object p0
.end method

.method public static s1(LB/e;)LT/h;
    .locals 1
    .param p0    # LB/e;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, LT/h;

    invoke-direct {v0}, LT/h;-><init>()V

    invoke-virtual {v0, p0}, LT/a;->I0(LB/e;)LT/a;

    move-result-object p0

    check-cast p0, LT/h;

    return-object p0
.end method

.method public static t1(F)LT/h;
    .locals 1
    .param p0    # F
        .annotation build Landroidx/annotation/FloatRange;
            from = 0.0
            to = 1.0
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, LT/h;

    invoke-direct {v0}, LT/h;-><init>()V

    invoke-virtual {v0, p0}, LT/a;->J0(F)LT/a;

    move-result-object p0

    check-cast p0, LT/h;

    return-object p0
.end method

.method public static u1(Z)LT/h;
    .locals 1
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    if-eqz p0, :cond_1

    sget-object p0, LT/h;->W:LT/h;

    if-nez p0, :cond_0

    new-instance p0, LT/h;

    invoke-direct {p0}, LT/h;-><init>()V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, LT/a;->K0(Z)LT/a;

    move-result-object p0

    check-cast p0, LT/h;

    invoke-virtual {p0}, LT/a;->b()LT/a;

    move-result-object p0

    check-cast p0, LT/h;

    sput-object p0, LT/h;->W:LT/h;

    :cond_0
    sget-object p0, LT/h;->W:LT/h;

    return-object p0

    :cond_1
    sget-object p0, LT/h;->X:LT/h;

    if-nez p0, :cond_2

    new-instance p0, LT/h;

    invoke-direct {p0}, LT/h;-><init>()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, LT/a;->K0(Z)LT/a;

    move-result-object p0

    check-cast p0, LT/h;

    invoke-virtual {p0}, LT/a;->b()LT/a;

    move-result-object p0

    check-cast p0, LT/h;

    sput-object p0, LT/h;->X:LT/h;

    :cond_2
    sget-object p0, LT/h;->X:LT/h;

    return-object p0
.end method

.method public static v1(I)LT/h;
    .locals 1
    .param p0    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, LT/h;

    invoke-direct {v0}, LT/h;-><init>()V

    invoke-virtual {v0, p0}, LT/a;->M0(I)LT/a;

    move-result-object p0

    check-cast p0, LT/h;

    return-object p0
.end method
