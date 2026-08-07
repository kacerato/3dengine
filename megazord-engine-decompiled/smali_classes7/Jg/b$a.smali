.class public final LJg/b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lwg/p;
.implements Lwg/y1;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LJg/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lwg/p<",
        "LFf/P0;",
        ">;",
        "Lwg/y1;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMutex.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Mutex.kt\nkotlinx/coroutines/sync/MutexImpl$CancellableContinuationWithOwner\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,310:1\n1#2:311\n*E\n"
.end annotation

.annotation build Lkotlin/jvm/internal/t0;
    value = {
        "SMAP\nMutex.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Mutex.kt\nkotlinx/coroutines/sync/MutexImpl$CancellableContinuationWithOwner\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,310:1\n1#2:311\n*E\n"
    }
.end annotation


# instance fields
.field public final b:Lwg/q;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lwg/q<",
            "LFf/P0;",
            ">;"
        }
    .end annotation

    .annotation build Ldg/g;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final c:Ljava/lang/Object;
    .annotation build Ldg/g;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public final synthetic d:LJg/b;


# direct methods
.method public constructor <init>(LJg/b;Lwg/q;Ljava/lang/Object;)V
    .locals 0
    .param p1    # LJg/b;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lwg/q;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lwg/q<",
            "-",
            "LFf/P0;",
            ">;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, LJg/b$a;->d:LJg/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, LJg/b$a;->b:Lwg/q;

    iput-object p3, p0, LJg/b$a;->c:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public D(Lwg/M;Ljava/lang/Throwable;)V
    .locals 1
    .param p1    # Lwg/M;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lwg/z0;
    .end annotation

    iget-object v0, p0, LJg/b$a;->b:Lwg/q;

    invoke-virtual {v0, p1, p2}, Lwg/q;->D(Lwg/M;Ljava/lang/Throwable;)V

    return-void
.end method

.method public bridge synthetic J(Ljava/lang/Object;Ljava/lang/Object;Leg/l;)Ljava/lang/Object;
    .locals 0

    check-cast p1, LFf/P0;

    invoke-virtual {p0, p1, p2, p3}, LJg/b$a;->f(LFf/P0;Ljava/lang/Object;Leg/l;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public K()V
    .locals 1
    .annotation build Lwg/F0;
    .end annotation

    iget-object v0, p0, LJg/b$a;->b:Lwg/q;

    invoke-virtual {v0}, Lwg/q;->K()V

    return-void
.end method

.method public V(Ljava/lang/Object;)V
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lwg/F0;
    .end annotation

    iget-object v0, p0, LJg/b$a;->b:Lwg/q;

    invoke-virtual {v0, p1}, Lwg/q;->V(Ljava/lang/Object;)V

    return-void
.end method

.method public a(LFf/P0;Leg/l;)V
    .locals 2
    .param p1    # LFf/P0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Leg/l;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LFf/P0;",
            "Leg/l<",
            "-",
            "Ljava/lang/Throwable;",
            "LFf/P0;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, LJg/b;->v()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object p2

    iget-object v0, p0, LJg/b$a;->d:LJg/b;

    iget-object v1, p0, LJg/b$a;->c:Ljava/lang/Object;

    invoke-virtual {p2, v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object p2, p0, LJg/b$a;->b:Lwg/q;

    new-instance v0, LJg/b$a$a;

    iget-object v1, p0, LJg/b$a;->d:LJg/b;

    invoke-direct {v0, v1, p0}, LJg/b$a$a;-><init>(LJg/b;LJg/b$a;)V

    invoke-virtual {p2, p1, v0}, Lwg/q;->z(Ljava/lang/Object;Leg/l;)V

    return-void
.end method

.method public b(Lwg/M;LFf/P0;)V
    .locals 1
    .param p1    # Lwg/M;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # LFf/P0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lwg/z0;
    .end annotation

    iget-object v0, p0, LJg/b$a;->b:Lwg/q;

    invoke-virtual {v0, p1, p2}, Lwg/q;->i(Lwg/M;Ljava/lang/Object;)V

    return-void
.end method

.method public c(Ljava/lang/Throwable;)Z
    .locals 1
    .param p1    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, LJg/b$a;->b:Lwg/q;

    invoke-virtual {v0, p1}, Lwg/q;->c(Ljava/lang/Throwable;)Z

    move-result p1

    return p1
.end method

.method public d()Z
    .locals 1

    iget-object v0, p0, LJg/b$a;->b:Lwg/q;

    invoke-virtual {v0}, Lwg/q;->d()Z

    move-result v0

    return v0
.end method

.method public e(LFf/P0;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1    # LFf/P0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .annotation build Lwg/F0;
    .end annotation

    iget-object v0, p0, LJg/b$a;->b:Lwg/q;

    invoke-virtual {v0, p1, p2}, Lwg/q;->g(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public f(LFf/P0;Ljava/lang/Object;Leg/l;)Ljava/lang/Object;
    .locals 2
    .param p1    # LFf/P0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Leg/l;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LFf/P0;",
            "Ljava/lang/Object;",
            "Leg/l<",
            "-",
            "Ljava/lang/Throwable;",
            "LFf/P0;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p3, p0, LJg/b$a;->d:LJg/b;

    iget-object v0, p0, LJg/b$a;->b:Lwg/q;

    new-instance v1, LJg/b$a$b;

    invoke-direct {v1, p3, p0}, LJg/b$a$b;-><init>(LJg/b;LJg/b$a;)V

    invoke-virtual {v0, p1, p2, v1}, Lwg/q;->J(Ljava/lang/Object;Ljava/lang/Object;Leg/l;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-static {}, LJg/b;->v()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object p2

    iget-object p3, p0, LJg/b$a;->d:LJg/b;

    iget-object v0, p0, LJg/b$a;->c:Ljava/lang/Object;

    invoke-virtual {p2, p3, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    return-object p1
.end method

.method public bridge synthetic g(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, LFf/P0;

    invoke-virtual {p0, p1, p2}, LJg/b$a;->e(LFf/P0;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getContext()LQf/j;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, LJg/b$a;->b:Lwg/q;

    invoke-virtual {v0}, Lwg/q;->getContext()LQf/j;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic i(Lwg/M;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, LFf/P0;

    invoke-virtual {p0, p1, p2}, LJg/b$a;->b(Lwg/M;LFf/P0;)V

    return-void
.end method

.method public isActive()Z
    .locals 1

    iget-object v0, p0, LJg/b$a;->b:Lwg/q;

    invoke-virtual {v0}, Lwg/q;->isActive()Z

    move-result v0

    return v0
.end method

.method public isCancelled()Z
    .locals 1

    iget-object v0, p0, LJg/b$a;->b:Lwg/q;

    invoke-virtual {v0}, Lwg/q;->isCancelled()Z

    move-result v0

    return v0
.end method

.method public k(LEg/P;I)V
    .locals 1
    .param p1    # LEg/P;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LEg/P<",
            "*>;I)V"
        }
    .end annotation

    iget-object v0, p0, LJg/b$a;->b:Lwg/q;

    invoke-virtual {v0, p1, p2}, Lwg/q;->k(LEg/P;I)V

    return-void
.end method

.method public m(Leg/l;)V
    .locals 1
    .param p1    # Leg/l;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Leg/l<",
            "-",
            "Ljava/lang/Throwable;",
            "LFf/P0;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, LJg/b$a;->b:Lwg/q;

    invoke-virtual {v0, p1}, Lwg/q;->m(Leg/l;)V

    return-void
.end method

.method public q(Ljava/lang/Throwable;)Ljava/lang/Object;
    .locals 1
    .param p1    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .annotation build Lwg/F0;
    .end annotation

    iget-object v0, p0, LJg/b$a;->b:Lwg/q;

    invoke-virtual {v0, p1}, Lwg/q;->q(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public resumeWith(Ljava/lang/Object;)V
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    iget-object v0, p0, LJg/b$a;->b:Lwg/q;

    invoke-virtual {v0, p1}, Lwg/q;->resumeWith(Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic z(Ljava/lang/Object;Leg/l;)V
    .locals 0

    check-cast p1, LFf/P0;

    invoke-virtual {p0, p1, p2}, LJg/b$a;->a(LFf/P0;Leg/l;)V

    return-void
.end method
