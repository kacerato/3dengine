.class public final LM0/l;
.super LM0/q;
.source "SourceFile"


# instance fields
.field public final synthetic e:Lcom/google/android/gms/internal/auth/r;


# direct methods
.method public constructor <init>(LM0/b;ILcom/google/android/gms/internal/auth/r;)V
    .locals 0

    iput-object p3, p0, LM0/l;->e:Lcom/google/android/gms/internal/auth/r;

    const/16 p1, 0x648

    const/4 p2, 0x0

    invoke-direct {p0, p1, p2}, LM0/q;-><init>(ILM0/p;)V

    return-void
.end method


# virtual methods
.method public final f(Lcom/google/android/gms/internal/auth/v;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, LM0/k;

    invoke-direct {v0, p0, p0}, LM0/k;-><init>(LM0/l;LM0/q;)V

    iget-object v1, p0, LM0/l;->e:Lcom/google/android/gms/internal/auth/r;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/auth/v;->f1(Lcom/google/android/gms/internal/auth/u;Lcom/google/android/gms/internal/auth/r;)V

    return-void
.end method
