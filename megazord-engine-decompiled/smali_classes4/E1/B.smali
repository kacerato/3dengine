.class public LE1/B;
.super Lcom/google/android/gms/common/api/k;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/common/api/k<",
        "Lcom/google/android/gms/common/api/a$d$d;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic k:I


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 3
    .param p1    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    sget-object v0, LE1/s;->a:Lcom/google/android/gms/common/api/a;

    sget-object v1, Lcom/google/android/gms/common/api/a$d;->u0:Lcom/google/android/gms/common/api/a$d$d;

    sget-object v2, Lcom/google/android/gms/common/api/k$a;->c:Lcom/google/android/gms/common/api/k$a;

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/google/android/gms/common/api/k;-><init>(Landroid/app/Activity;Lcom/google/android/gms/common/api/a;Lcom/google/android/gms/common/api/a$d;Lcom/google/android/gms/common/api/k$a;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 2
    sget-object v0, LE1/s;->a:Lcom/google/android/gms/common/api/a;

    sget-object v1, Lcom/google/android/gms/common/api/a$d;->u0:Lcom/google/android/gms/common/api/a$d$d;

    sget-object v2, Lcom/google/android/gms/common/api/k$a;->c:Lcom/google/android/gms/common/api/k$a;

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/google/android/gms/common/api/k;-><init>(Landroid/content/Context;Lcom/google/android/gms/common/api/a;Lcom/google/android/gms/common/api/a$d;Lcom/google/android/gms/common/api/k$a;)V

    return-void
.end method


# virtual methods
.method public g0(LE1/t;)LQ1/k;
    .locals 2
    .param p1    # LE1/t;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LE1/t;",
            ")",
            "LQ1/k<",
            "LE1/u;",
            ">;"
        }
    .end annotation

    invoke-static {}, LU0/r;->a()LU0/r$a;

    move-result-object v0

    new-instance v1, LE1/A0;

    invoke-direct {v1, p1}, LE1/A0;-><init>(LE1/t;)V

    invoke-virtual {v0, v1}, LU0/r$a;->c(LU0/n;)LU0/r$a;

    move-result-object p1

    const/16 v0, 0x97a

    invoke-virtual {p1, v0}, LU0/r$a;->f(I)LU0/r$a;

    move-result-object p1

    invoke-virtual {p1}, LU0/r$a;->a()LU0/r;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/api/k;->M(LU0/r;)LQ1/k;

    move-result-object p1

    return-object p1
.end method
