.class public final Lw1/u;
.super Lcom/google/android/gms/common/api/k;
.source "SourceFile"

# interfaces
.implements LN0/b;


# static fields
.field public static final k:Lcom/google/android/gms/common/api/a$g;

.field public static final l:Lcom/google/android/gms/common/api/a$a;

.field public static final m:Lcom/google/android/gms/common/api/a;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/google/android/gms/common/api/a$g;

    invoke-direct {v0}, Lcom/google/android/gms/common/api/a$g;-><init>()V

    sput-object v0, Lw1/u;->k:Lcom/google/android/gms/common/api/a$g;

    new-instance v1, Lw1/q;

    invoke-direct {v1}, Lw1/q;-><init>()V

    sput-object v1, Lw1/u;->l:Lcom/google/android/gms/common/api/a$a;

    new-instance v2, Lcom/google/android/gms/common/api/a;

    const-string v3, "SmsCodeAutofill.API"

    invoke-direct {v2, v3, v1, v0}, Lcom/google/android/gms/common/api/a;-><init>(Ljava/lang/String;Lcom/google/android/gms/common/api/a$a;Lcom/google/android/gms/common/api/a$g;)V

    sput-object v2, Lw1/u;->m:Lcom/google/android/gms/common/api/a;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 3

    .line 1
    sget-object v0, Lw1/u;->m:Lcom/google/android/gms/common/api/a;

    sget-object v1, Lcom/google/android/gms/common/api/a$d;->u0:Lcom/google/android/gms/common/api/a$d$d;

    sget-object v2, Lcom/google/android/gms/common/api/k$a;->c:Lcom/google/android/gms/common/api/k$a;

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/google/android/gms/common/api/k;-><init>(Landroid/app/Activity;Lcom/google/android/gms/common/api/a;Lcom/google/android/gms/common/api/a$d;Lcom/google/android/gms/common/api/k$a;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 2
    sget-object v0, Lw1/u;->m:Lcom/google/android/gms/common/api/a;

    sget-object v1, Lcom/google/android/gms/common/api/a$d;->u0:Lcom/google/android/gms/common/api/a$d$d;

    sget-object v2, Lcom/google/android/gms/common/api/k$a;->c:Lcom/google/android/gms/common/api/k$a;

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/google/android/gms/common/api/k;-><init>(Landroid/content/Context;Lcom/google/android/gms/common/api/a;Lcom/google/android/gms/common/api/a$d;Lcom/google/android/gms/common/api/k$a;)V

    return-void
.end method


# virtual methods
.method public final b()LQ1/k;
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

    sget-object v1, Lw1/d;->a:LS0/e;

    filled-new-array {v1}, [LS0/e;

    move-result-object v1

    invoke-virtual {v0, v1}, LU0/r$a;->e([LS0/e;)LU0/r$a;

    move-result-object v0

    new-instance v1, Lw1/p;

    invoke-direct {v1, p0}, Lw1/p;-><init>(Lw1/u;)V

    invoke-virtual {v0, v1}, LU0/r$a;->c(LU0/n;)LU0/r$a;

    move-result-object v0

    const/16 v1, 0x61b

    invoke-virtual {v0, v1}, LU0/r$a;->f(I)LU0/r$a;

    move-result-object v0

    invoke-virtual {v0}, LU0/r$a;->a()LU0/r;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/api/k;->S(LU0/r;)LQ1/k;

    move-result-object v0

    return-object v0
.end method

.method public final j(Ljava/lang/String;)LQ1/k;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "LQ1/k<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    invoke-static {p1}, LX0/A;->r(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "The package name cannot be empty."

    invoke-static {v0, v1}, LX0/A;->b(ZLjava/lang/Object;)V

    invoke-static {}, LU0/r;->a()LU0/r$a;

    move-result-object v0

    sget-object v1, Lw1/d;->a:LS0/e;

    filled-new-array {v1}, [LS0/e;

    move-result-object v1

    invoke-virtual {v0, v1}, LU0/r$a;->e([LS0/e;)LU0/r$a;

    move-result-object v0

    new-instance v1, Lw1/o;

    invoke-direct {v1, p0, p1}, Lw1/o;-><init>(Lw1/u;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, LU0/r$a;->c(LU0/n;)LU0/r$a;

    move-result-object p1

    const/16 v0, 0x61d

    invoke-virtual {p1, v0}, LU0/r$a;->f(I)LU0/r$a;

    move-result-object p1

    invoke-virtual {p1}, LU0/r$a;->a()LU0/r;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/api/k;->M(LU0/r;)LQ1/k;

    move-result-object p1

    return-object p1
.end method

.method public final y()LQ1/k;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LQ1/k<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    invoke-static {}, LU0/r;->a()LU0/r$a;

    move-result-object v0

    sget-object v1, Lw1/d;->a:LS0/e;

    filled-new-array {v1}, [LS0/e;

    move-result-object v1

    invoke-virtual {v0, v1}, LU0/r$a;->e([LS0/e;)LU0/r$a;

    move-result-object v0

    new-instance v1, Lw1/n;

    invoke-direct {v1, p0}, Lw1/n;-><init>(Lw1/u;)V

    invoke-virtual {v0, v1}, LU0/r$a;->c(LU0/n;)LU0/r$a;

    move-result-object v0

    const/16 v1, 0x61c

    invoke-virtual {v0, v1}, LU0/r$a;->f(I)LU0/r$a;

    move-result-object v0

    invoke-virtual {v0}, LU0/r$a;->a()LU0/r;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/api/k;->M(LU0/r;)LQ1/k;

    move-result-object v0

    return-object v0
.end method
