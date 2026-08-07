.class public final LM0/r;
.super Lcom/google/android/gms/internal/auth/o;
.source "SourceFile"


# instance fields
.field public final synthetic e:LM0/s;


# direct methods
.method public constructor <init>(LM0/s;)V
    .locals 0

    iput-object p1, p0, LM0/r;->e:LM0/s;

    invoke-direct {p0}, Lcom/google/android/gms/internal/auth/o;-><init>()V

    return-void
.end method


# virtual methods
.method public final Q1()V
    .locals 2

    iget-object v0, p0, LM0/r;->e:LM0/s;

    iget-object v0, v0, LM0/q;->d:LQ1/l;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, LQ1/l;->c(Ljava/lang/Object;)V

    return-void
.end method

.method public final w0(Lcom/google/android/gms/common/api/Status;)V
    .locals 2

    iget-object v0, p0, LM0/r;->e:LM0/s;

    iget-object v0, v0, LM0/q;->d:LQ1/l;

    new-instance v1, Lcom/google/android/gms/auth/api/accounttransfer/AccountTransferException;

    invoke-direct {v1, p1}, Lcom/google/android/gms/auth/api/accounttransfer/AccountTransferException;-><init>(Lcom/google/android/gms/common/api/Status;)V

    invoke-virtual {v0, v1}, LQ1/l;->b(Ljava/lang/Exception;)V

    return-void
.end method
