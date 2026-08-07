.class public final Ld1/x;
.super Ld1/b;
.source "SourceFile"


# instance fields
.field public final synthetic e:Ljava/util/concurrent/atomic/AtomicReference;

.field public final synthetic f:LQ1/l;

.field public final synthetic g:Lc1/a;

.field public final synthetic h:Ld1/B;


# direct methods
.method public constructor <init>(Ld1/B;Ljava/util/concurrent/atomic/AtomicReference;LQ1/l;Lc1/a;)V
    .locals 0

    iput-object p1, p0, Ld1/x;->h:Ld1/B;

    iput-object p2, p0, Ld1/x;->e:Ljava/util/concurrent/atomic/AtomicReference;

    iput-object p3, p0, Ld1/x;->f:LQ1/l;

    iput-object p4, p0, Ld1/x;->g:Lc1/a;

    invoke-direct {p0}, Ld1/b;-><init>()V

    return-void
.end method


# virtual methods
.method public final n0(Lcom/google/android/gms/common/api/Status;Lc1/g;)V
    .locals 2
    .param p2    # Lc1/g;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-eqz p2, :cond_0

    iget-object v0, p0, Ld1/x;->e:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    :cond_0
    const/4 v0, 0x0

    iget-object v1, p0, Ld1/x;->f:LQ1/l;

    invoke-static {p1, v0, v1}, LU0/s;->d(Lcom/google/android/gms/common/api/Status;Ljava/lang/Object;LQ1/l;)Z

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/Status;->A0()Z

    move-result p1

    if-eqz p1, :cond_2

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lc1/g;->c0()Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    return-void

    :cond_2
    :goto_0
    iget-object p1, p0, Ld1/x;->h:Ld1/B;

    iget-object p2, p0, Ld1/x;->g:Lc1/a;

    const-class v0, Lc1/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/google/android/gms/common/api/internal/g;->c(Ljava/lang/Object;Ljava/lang/String;)Lcom/google/android/gms/common/api/internal/f$a;

    move-result-object p2

    const/16 v0, 0x6aaa

    invoke-virtual {p1, p2, v0}, Lcom/google/android/gms/common/api/k;->R(Lcom/google/android/gms/common/api/internal/f$a;I)LQ1/k;

    return-void
.end method
