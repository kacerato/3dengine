.class public final Lcom/google/android/gms/internal/auth/Q;
.super Lcom/google/android/gms/common/api/k;
.source "SourceFile"

# interfaces
.implements LO0/c;


# direct methods
.method public constructor <init>(Landroid/app/Activity;LL0/c;)V
    .locals 2
    .param p1    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # LL0/c;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    sget-object v0, LL0/b;->a:Lcom/google/android/gms/common/api/a;

    if-nez p2, :cond_0

    .line 2
    sget-object p2, LL0/c;->c:LL0/c;

    :cond_0
    sget-object v1, Lcom/google/android/gms/common/api/k$a;->c:Lcom/google/android/gms/common/api/k$a;

    .line 3
    invoke-direct {p0, p1, v0, p2, v1}, Lcom/google/android/gms/common/api/k;-><init>(Landroid/app/Activity;Lcom/google/android/gms/common/api/a;Lcom/google/android/gms/common/api/a$d;Lcom/google/android/gms/common/api/k$a;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;LL0/c;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # LL0/c;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 4
    sget-object v0, LL0/b;->a:Lcom/google/android/gms/common/api/a;

    if-nez p2, :cond_0

    .line 5
    sget-object p2, LL0/c;->c:LL0/c;

    :cond_0
    sget-object v1, Lcom/google/android/gms/common/api/k$a;->c:Lcom/google/android/gms/common/api/k$a;

    .line 6
    invoke-direct {p0, p1, v0, p2, v1}, Lcom/google/android/gms/common/api/k;-><init>(Landroid/content/Context;Lcom/google/android/gms/common/api/a;Lcom/google/android/gms/common/api/a$d;Lcom/google/android/gms/common/api/k$a;)V

    return-void
.end method


# virtual methods
.method public final g()LQ1/k;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LQ1/k<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-static {}, LU0/r;->a()LU0/r$a;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/auth/M;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/auth/M;-><init>(Lcom/google/android/gms/internal/auth/Q;)V

    invoke-virtual {v0, v1}, LU0/r$a;->c(LU0/n;)LU0/r$a;

    move-result-object v0

    const/16 v1, 0x5f0

    invoke-virtual {v0, v1}, LU0/r$a;->f(I)LU0/r$a;

    move-result-object v0

    invoke-virtual {v0}, LU0/r$a;->a()LU0/r;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/api/k;->M(LU0/r;)LQ1/k;

    move-result-object v0

    return-object v0
.end method

.method public final h(LO0/d;)LQ1/k;
    .locals 2
    .param p1    # LO0/d;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LO0/d;",
            ")",
            "LQ1/k<",
            "LO0/e;",
            ">;"
        }
    .end annotation

    invoke-static {}, LU0/r;->a()LU0/r$a;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/auth/N;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/auth/N;-><init>(Lcom/google/android/gms/internal/auth/Q;LO0/d;)V

    invoke-virtual {v0, v1}, LU0/r$a;->c(LU0/n;)LU0/r$a;

    move-result-object p1

    const/16 v0, 0x5ee

    invoke-virtual {p1, v0}, LU0/r$a;->f(I)LU0/r$a;

    move-result-object p1

    invoke-virtual {p1}, LU0/r$a;->a()LU0/r;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/api/k;->S(LU0/r;)LQ1/k;

    move-result-object p1

    return-object p1
.end method
