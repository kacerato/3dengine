.class public final LJg/b$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LHg/n;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LJg/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Q:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "LHg/n<",
        "TQ;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMutex.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Mutex.kt\nkotlinx/coroutines/sync/MutexImpl$SelectInstanceWithOwner\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,310:1\n1#2:311\n*E\n"
.end annotation

.annotation build Lkotlin/jvm/internal/t0;
    value = {
        "SMAP\nMutex.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Mutex.kt\nkotlinx/coroutines/sync/MutexImpl$SelectInstanceWithOwner\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,310:1\n1#2:311\n*E\n"
    }
.end annotation


# instance fields
.field public final b:LHg/n;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LHg/n<",
            "TQ;>;"
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
.method public constructor <init>(LJg/b;LHg/n;Ljava/lang/Object;)V
    .locals 0
    .param p1    # LJg/b;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # LHg/n;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LHg/n<",
            "TQ;>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, LJg/b$b;->d:LJg/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, LJg/b$b;->b:LHg/n;

    iput-object p3, p0, LJg/b$b;->c:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public d(Ljava/lang/Object;)V
    .locals 3
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    invoke-static {}, LJg/b;->v()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    iget-object v1, p0, LJg/b$b;->d:LJg/b;

    iget-object v2, p0, LJg/b$b;->c:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, LJg/b$b;->b:LHg/n;

    invoke-interface {v0, p1}, LHg/m;->d(Ljava/lang/Object;)V

    return-void
.end method

.method public getContext()LQf/j;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, LJg/b$b;->b:LHg/n;

    invoke-interface {v0}, LHg/m;->getContext()LQf/j;

    move-result-object v0

    return-object v0
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

    iget-object v0, p0, LJg/b$b;->b:LHg/n;

    invoke-interface {v0, p1, p2}, Lwg/y1;->k(LEg/P;I)V

    return-void
.end method

.method public o(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, LJg/b$b;->b:LHg/n;

    invoke-interface {v0, p1, p2}, LHg/m;->o(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    iget-object p2, p0, LJg/b$b;->d:LJg/b;

    if-eqz p1, :cond_0

    invoke-static {}, LJg/b;->v()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    iget-object v1, p0, LJg/b$b;->c:Ljava/lang/Object;

    invoke-virtual {v0, p2, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    return p1
.end method

.method public q(Lwg/m0;)V
    .locals 1
    .param p1    # Lwg/m0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    iget-object v0, p0, LJg/b$b;->b:LHg/n;

    invoke-interface {v0, p1}, LHg/m;->q(Lwg/m0;)V

    return-void
.end method
