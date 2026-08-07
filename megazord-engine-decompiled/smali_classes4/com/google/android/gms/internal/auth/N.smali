.class public final synthetic Lcom/google/android/gms/internal/auth/N;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LU0/n;


# instance fields
.field public final synthetic a:Lcom/google/android/gms/internal/auth/Q;

.field public final synthetic b:LO0/d;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/auth/Q;LO0/d;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/auth/N;->a:Lcom/google/android/gms/internal/auth/Q;

    iput-object p2, p0, Lcom/google/android/gms/internal/auth/N;->b:LO0/d;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/auth/N;->a:Lcom/google/android/gms/internal/auth/Q;

    iget-object v1, p0, Lcom/google/android/gms/internal/auth/N;->b:LO0/d;

    check-cast p1, Lcom/google/android/gms/internal/auth/G;

    check-cast p2, LQ1/l;

    new-instance v2, Lcom/google/android/gms/internal/auth/O;

    invoke-direct {v2, v0, p2}, Lcom/google/android/gms/internal/auth/O;-><init>(Lcom/google/android/gms/internal/auth/Q;LQ1/l;)V

    invoke-virtual {p1}, LX0/f;->M()Landroid/os/IInterface;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/auth/J;

    invoke-virtual {p1, v2, v1}, Lcom/google/android/gms/internal/auth/J;->L1(Lcom/google/android/gms/internal/auth/I;LO0/d;)V

    return-void
.end method
