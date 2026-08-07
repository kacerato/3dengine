.class public final synthetic Ld1/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LQ1/j;


# instance fields
.field public final synthetic a:Ljava/util/concurrent/atomic/AtomicReference;


# direct methods
.method public synthetic constructor <init>(Ljava/util/concurrent/atomic/AtomicReference;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ld1/n;->a:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)LQ1/k;
    .locals 1

    check-cast p1, Ljava/lang/Void;

    sget p1, Ld1/B;->n:I

    iget-object p1, p0, Ld1/n;->a:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lc1/g;

    invoke-static {p1}, LQ1/n;->g(Ljava/lang/Object;)LQ1/k;

    move-result-object p1

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/google/android/gms/common/api/ApiException;

    sget-object v0, Lcom/google/android/gms/common/api/Status;->i:Lcom/google/android/gms/common/api/Status;

    invoke-direct {p1, v0}, Lcom/google/android/gms/common/api/ApiException;-><init>(Lcom/google/android/gms/common/api/Status;)V

    invoke-static {p1}, LQ1/n;->f(Ljava/lang/Exception;)LQ1/k;

    move-result-object p1

    :goto_0
    return-object p1
.end method
