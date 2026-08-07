.class public final Lw1/r;
.super Lcom/google/android/gms/common/api/internal/e$a;
.source "SourceFile"


# instance fields
.field public final synthetic e:LQ1/l;


# direct methods
.method public constructor <init>(Lw1/u;LQ1/l;)V
    .locals 0

    iput-object p2, p0, Lw1/r;->e:LQ1/l;

    invoke-direct {p0}, Lcom/google/android/gms/common/api/internal/e$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final O0(Lcom/google/android/gms/common/api/Status;)V
    .locals 2

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/Status;->c0()I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lw1/r;->e:LQ1/l;

    invoke-static {p1}, LX0/c;->a(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/ApiException;

    move-result-object p1

    invoke-virtual {v0, p1}, LQ1/l;->d(Ljava/lang/Exception;)Z

    return-void

    :cond_0
    iget-object v0, p0, Lw1/r;->e:LQ1/l;

    invoke-static {p1, v0}, LU0/s;->a(Lcom/google/android/gms/common/api/Status;LQ1/l;)V

    return-void
.end method
