.class public final LM0/j;
.super LM0/q;
.source "SourceFile"


# instance fields
.field public final synthetic e:Lcom/google/android/gms/internal/auth/y;


# direct methods
.method public constructor <init>(LM0/b;ILcom/google/android/gms/internal/auth/y;)V
    .locals 0

    iput-object p3, p0, LM0/j;->e:Lcom/google/android/gms/internal/auth/y;

    const/16 p1, 0x647

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

    new-instance v0, LM0/i;

    invoke-direct {v0, p0, p0}, LM0/i;-><init>(LM0/j;LM0/q;)V

    iget-object v1, p0, LM0/j;->e:Lcom/google/android/gms/internal/auth/y;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/auth/v;->j2(Lcom/google/android/gms/internal/auth/u;Lcom/google/android/gms/internal/auth/y;)V

    return-void
.end method
