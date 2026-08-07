.class public final LU0/I;
.super LO1/d;
.source "SourceFile"


# instance fields
.field public final e:Ljava/lang/ref/WeakReference;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/internal/o;)V
    .locals 1

    invoke-direct {p0}, LO1/d;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, LU0/I;->e:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public final T(LO1/l;)V
    .locals 3
    .annotation build Landroidx/annotation/BinderThread;
    .end annotation

    iget-object v0, p0, LU0/I;->e:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/internal/o;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/o;->u(Lcom/google/android/gms/common/api/internal/o;)Lcom/google/android/gms/common/api/internal/s;

    move-result-object v1

    new-instance v2, LU0/H;

    invoke-direct {v2, p0, v0, v0, p1}, LU0/H;-><init>(LU0/I;Lcom/google/android/gms/common/api/internal/r;Lcom/google/android/gms/common/api/internal/o;LO1/l;)V

    invoke-virtual {v1, v2}, Lcom/google/android/gms/common/api/internal/s;->u(LU0/V;)V

    return-void
.end method
