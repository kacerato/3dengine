.class public final LE1/B0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/common/api/internal/b$b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/common/api/internal/b$b<",
        "LE1/v;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:LQ1/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LQ1/l<",
            "LE1/u;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(LQ1/l;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LQ1/l<",
            "LE1/u;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LE1/B0;->a:LQ1/l;

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;)V
    .locals 2

    check-cast p1, LE1/v;

    invoke-virtual {p1}, LE1/v;->getStatus()Lcom/google/android/gms/common/api/Status;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/Status;->A0()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, LE1/B0;->a:LQ1/l;

    new-instance v1, LE1/u;

    invoke-direct {v1, p1}, LE1/u;-><init>(LE1/v;)V

    invoke-virtual {v0, v1}, LQ1/l;->c(Ljava/lang/Object;)V

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/google/android/gms/common/api/Status;->k0()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, LE1/B0;->a:LQ1/l;

    new-instance v1, Lcom/google/android/gms/common/api/ResolvableApiException;

    invoke-direct {v1, v0}, Lcom/google/android/gms/common/api/ResolvableApiException;-><init>(Lcom/google/android/gms/common/api/Status;)V

    invoke-virtual {p1, v1}, LQ1/l;->b(Ljava/lang/Exception;)V

    return-void

    :cond_1
    iget-object p1, p0, LE1/B0;->a:LQ1/l;

    new-instance v1, Lcom/google/android/gms/common/api/ApiException;

    invoke-direct {v1, v0}, Lcom/google/android/gms/common/api/ApiException;-><init>(Lcom/google/android/gms/common/api/Status;)V

    invoke-virtual {p1, v1}, LQ1/l;->b(Ljava/lang/Exception;)V

    return-void
.end method

.method public final b(Lcom/google/android/gms/common/api/Status;)V
    .locals 2

    iget-object v0, p0, LE1/B0;->a:LQ1/l;

    new-instance v1, Lcom/google/android/gms/common/api/ApiException;

    invoke-direct {v1, p1}, Lcom/google/android/gms/common/api/ApiException;-><init>(Lcom/google/android/gms/common/api/Status;)V

    invoke-virtual {v0, v1}, LQ1/l;->b(Ljava/lang/Exception;)V

    return-void
.end method
