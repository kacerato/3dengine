.class public Ls1/a;
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

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final k:Lcom/google/android/gms/common/api/a$g;

.field public static final l:Lcom/google/android/gms/common/api/a;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/google/android/gms/common/api/a$g;

    invoke-direct {v0}, Lcom/google/android/gms/common/api/a$g;-><init>()V

    sput-object v0, Ls1/a;->k:Lcom/google/android/gms/common/api/a$g;

    new-instance v1, Lcom/google/android/gms/common/api/a;

    new-instance v2, LA1/j0;

    invoke-direct {v2}, LA1/j0;-><init>()V

    const-string v3, "Fido.U2F_API"

    invoke-direct {v1, v3, v2, v0}, Lcom/google/android/gms/common/api/a;-><init>(Ljava/lang/String;Lcom/google/android/gms/common/api/a$a;Lcom/google/android/gms/common/api/a$g;)V

    sput-object v1, Ls1/a;->l:Lcom/google/android/gms/common/api/a;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 3
    .param p1    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    sget-object v0, Ls1/a;->l:Lcom/google/android/gms/common/api/a;

    sget-object v1, Lcom/google/android/gms/common/api/a$d;->u0:Lcom/google/android/gms/common/api/a$d$d;

    new-instance v2, LU0/b;

    invoke-direct {v2}, LU0/b;-><init>()V

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/google/android/gms/common/api/k;-><init>(Landroid/app/Activity;Lcom/google/android/gms/common/api/a;Lcom/google/android/gms/common/api/a$d;LU0/p;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 2
    sget-object v0, Ls1/a;->l:Lcom/google/android/gms/common/api/a;

    sget-object v1, Lcom/google/android/gms/common/api/a$d;->u0:Lcom/google/android/gms/common/api/a$d$d;

    new-instance v2, LU0/b;

    invoke-direct {v2}, LU0/b;-><init>()V

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/google/android/gms/common/api/k;-><init>(Landroid/content/Context;Lcom/google/android/gms/common/api/a;Lcom/google/android/gms/common/api/a$d;LU0/p;)V

    return-void
.end method


# virtual methods
.method public g0(Lcom/google/android/gms/fido/u2f/api/common/RegisterRequestParams;)LQ1/k;
    .locals 2
    .param p1    # Lcom/google/android/gms/fido/u2f/api/common/RegisterRequestParams;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/fido/u2f/api/common/RegisterRequestParams;",
            ")",
            "LQ1/k<",
            "Ls1/b;",
            ">;"
        }
    .end annotation

    invoke-static {}, LU0/r;->a()LU0/r$a;

    move-result-object v0

    const/16 v1, 0x1530

    invoke-virtual {v0, v1}, LU0/r$a;->f(I)LU0/r$a;

    move-result-object v0

    new-instance v1, Ls1/d;

    invoke-direct {v1, p0, p1}, Ls1/d;-><init>(Ls1/a;Lcom/google/android/gms/fido/u2f/api/common/RegisterRequestParams;)V

    invoke-virtual {v0, v1}, LU0/r$a;->c(LU0/n;)LU0/r$a;

    move-result-object p1

    invoke-virtual {p1}, LU0/r$a;->a()LU0/r;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/api/k;->M(LU0/r;)LQ1/k;

    move-result-object p1

    return-object p1
.end method

.method public h0(Lcom/google/android/gms/fido/u2f/api/common/SignRequestParams;)LQ1/k;
    .locals 2
    .param p1    # Lcom/google/android/gms/fido/u2f/api/common/SignRequestParams;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/fido/u2f/api/common/SignRequestParams;",
            ")",
            "LQ1/k<",
            "Ls1/b;",
            ">;"
        }
    .end annotation

    invoke-static {}, LU0/r;->a()LU0/r$a;

    move-result-object v0

    const/16 v1, 0x1531

    invoke-virtual {v0, v1}, LU0/r$a;->f(I)LU0/r$a;

    move-result-object v0

    new-instance v1, Ls1/c;

    invoke-direct {v1, p0, p1}, Ls1/c;-><init>(Ls1/a;Lcom/google/android/gms/fido/u2f/api/common/SignRequestParams;)V

    invoke-virtual {v0, v1}, LU0/r$a;->c(LU0/n;)LU0/r$a;

    move-result-object p1

    invoke-virtual {p1}, LU0/r$a;->a()LU0/r;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/api/k;->M(LU0/r;)LQ1/k;

    move-result-object p1

    return-object p1
.end method
