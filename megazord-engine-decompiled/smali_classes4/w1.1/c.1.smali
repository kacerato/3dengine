.class public final Lw1/c;
.super LN0/g;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, LN0/g;-><init>(Landroid/app/Activity;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, LN0/g;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public final m(Ljava/lang/String;)LQ1/k;
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "LQ1/k<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    invoke-static {}, LU0/r;->a()LU0/r$a;

    move-result-object v0

    new-instance v1, Lw1/B;

    invoke-direct {v1, p0, p1}, Lw1/B;-><init>(Lw1/c;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, LU0/r$a;->c(LU0/n;)LU0/r$a;

    move-result-object p1

    sget-object v0, Lw1/d;->d:LS0/e;

    filled-new-array {v0}, [LS0/e;

    move-result-object v0

    invoke-virtual {p1, v0}, LU0/r$a;->e([LS0/e;)LU0/r$a;

    move-result-object p1

    const/16 v0, 0x620

    invoke-virtual {p1, v0}, LU0/r$a;->f(I)LU0/r$a;

    move-result-object p1

    invoke-virtual {p1}, LU0/r$a;->a()LU0/r;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/api/k;->S(LU0/r;)LQ1/k;

    move-result-object p1

    return-object p1
.end method

.method public final q()LQ1/k;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LQ1/k<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    invoke-static {}, LU0/r;->a()LU0/r$a;

    move-result-object v0

    new-instance v1, Lw1/A;

    invoke-direct {v1, p0}, Lw1/A;-><init>(Lw1/c;)V

    invoke-virtual {v0, v1}, LU0/r$a;->c(LU0/n;)LU0/r$a;

    move-result-object v0

    sget-object v1, Lw1/d;->c:LS0/e;

    filled-new-array {v1}, [LS0/e;

    move-result-object v1

    invoke-virtual {v0, v1}, LU0/r$a;->e([LS0/e;)LU0/r$a;

    move-result-object v0

    const/16 v1, 0x61f

    invoke-virtual {v0, v1}, LU0/r$a;->f(I)LU0/r$a;

    move-result-object v0

    invoke-virtual {v0}, LU0/r$a;->a()LU0/r;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/api/k;->S(LU0/r;)LQ1/k;

    move-result-object v0

    return-object v0
.end method
