.class public LM0/o;
.super Lcom/google/android/gms/internal/auth/o;
.source "SourceFile"


# instance fields
.field public final e:LM0/q;


# direct methods
.method public constructor <init>(LM0/q;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/auth/o;-><init>()V

    iput-object p1, p0, LM0/o;->e:LM0/q;

    return-void
.end method


# virtual methods
.method public final w0(Lcom/google/android/gms/common/api/Status;)V
    .locals 2

    iget-object v0, p0, LM0/o;->e:LM0/q;

    iget-object v0, v0, LM0/q;->d:LQ1/l;

    sget v1, LM0/b;->n:I

    new-instance v1, Lcom/google/android/gms/auth/api/accounttransfer/AccountTransferException;

    invoke-direct {v1, p1}, Lcom/google/android/gms/auth/api/accounttransfer/AccountTransferException;-><init>(Lcom/google/android/gms/common/api/Status;)V

    invoke-virtual {v0, v1}, LQ1/l;->b(Ljava/lang/Exception;)V

    return-void
.end method
