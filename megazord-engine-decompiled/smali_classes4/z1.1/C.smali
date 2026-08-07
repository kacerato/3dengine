.class public final Lz1/C;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lz1/p0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lz1/p0<",
            "Lz1/t;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lz1/E;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lz1/p0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lz1/p0<",
            "Lz1/t;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lz1/C;->b:Ljava/util/concurrent/atomic/AtomicReference;

    iput-object p1, p0, Lz1/C;->a:Lz1/p0;

    return-void
.end method


# virtual methods
.method public final a(LP2/f$b;LP2/f$a;)V
    .locals 2

    invoke-static {}, Lz1/h0;->a()V

    iget-object v0, p0, Lz1/C;->b:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lz1/E;

    if-nez v0, :cond_0

    new-instance p1, Lcom/google/android/gms/internal/consent_sdk/zzj;

    const/4 v0, 0x3

    const-string v1, "No available form can be built."

    invoke-direct {p1, v0, v1}, Lcom/google/android/gms/internal/consent_sdk/zzj;-><init>(ILjava/lang/String;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/consent_sdk/zzj;->zza()LP2/e;

    move-result-object p1

    invoke-interface {p2, p1}, LP2/f$a;->a(LP2/e;)V

    return-void

    :cond_0
    iget-object v1, p0, Lz1/C;->a:Lz1/p0;

    invoke-interface {v1}, Lz1/p0;->N1()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v1, v0}, Lz1/t;->a(Lz1/E;)Lz1/t;

    invoke-interface {v1}, Lz1/t;->N1()Lz1/u;

    move-result-object v0

    invoke-interface {v0}, Lz1/u;->zza()Lz1/z;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lz1/z;->c(LP2/f$b;LP2/f$a;)V

    return-void
.end method

.method public final b(Lz1/E;)V
    .locals 1

    iget-object v0, p0, Lz1/C;->b:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public final c()Z
    .locals 1

    iget-object v0, p0, Lz1/C;->b:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
