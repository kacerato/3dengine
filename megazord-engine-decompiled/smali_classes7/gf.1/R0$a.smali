.class public final Lgf/R0$a;
.super Ljava/util/concurrent/atomic/AtomicInteger;
.source "SourceFile"

# interfaces
.implements LTe/I;
.implements LVe/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgf/R0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgf/R0$a$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicInteger;",
        "LTe/I<",
        "TT;>;",
        "LVe/c;"
    }
.end annotation


# static fields
.field public static final j:J = 0xb23eb3635d55cf6L


# instance fields
.field public final b:LTe/I;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LTe/I<",
            "-TT;>;"
        }
    .end annotation
.end field

.field public final c:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final d:Lio/reactivex/internal/util/c;

.field public final e:Ltf/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ltf/i<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public final f:Lgf/R0$a$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lgf/R0$a<",
            "TT;>.a;"
        }
    .end annotation
.end field

.field public final g:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "LVe/c;",
            ">;"
        }
    .end annotation
.end field

.field public final h:LTe/G;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LTe/G<",
            "TT;>;"
        }
    .end annotation
.end field

.field public volatile i:Z


# direct methods
.method public constructor <init>(LTe/I;Ltf/i;LTe/G;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LTe/I<",
            "-TT;>;",
            "Ltf/i<",
            "Ljava/lang/Object;",
            ">;",
            "LTe/G<",
            "TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object p1, p0, Lgf/R0$a;->b:LTe/I;

    iput-object p2, p0, Lgf/R0$a;->e:Ltf/i;

    iput-object p3, p0, Lgf/R0$a;->h:LTe/G;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object p1, p0, Lgf/R0$a;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance p1, Lio/reactivex/internal/util/c;

    invoke-direct {p1}, Lio/reactivex/internal/util/c;-><init>()V

    iput-object p1, p0, Lgf/R0$a;->d:Lio/reactivex/internal/util/c;

    new-instance p1, Lgf/R0$a$a;

    invoke-direct {p1, p0}, Lgf/R0$a$a;-><init>(Lgf/R0$a;)V

    iput-object p1, p0, Lgf/R0$a;->f:Lgf/R0$a$a;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object p1, p0, Lgf/R0$a;->g:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Lgf/R0$a;->g:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-static {v0, v1}, LYe/d;->c(Ljava/util/concurrent/atomic/AtomicReference;LVe/c;)Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lgf/R0$a;->i:Z

    iget-object v1, p0, Lgf/R0$a;->e:Ltf/i;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, LTe/I;->g(Ljava/lang/Object;)V

    return-void
.end method

.method public b()V
    .locals 2

    iget-object v0, p0, Lgf/R0$a;->g:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v0}, LYe/d;->a(Ljava/util/concurrent/atomic/AtomicReference;)Z

    iget-object v0, p0, Lgf/R0$a;->b:LTe/I;

    iget-object v1, p0, Lgf/R0$a;->d:Lio/reactivex/internal/util/c;

    invoke-static {v0, p0, v1}, Lio/reactivex/internal/util/k;->b(LTe/I;Ljava/util/concurrent/atomic/AtomicInteger;Lio/reactivex/internal/util/c;)V

    return-void
.end method

.method public c(Ljava/lang/Throwable;)V
    .locals 2

    iget-object v0, p0, Lgf/R0$a;->g:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v0}, LYe/d;->a(Ljava/util/concurrent/atomic/AtomicReference;)Z

    iget-object v0, p0, Lgf/R0$a;->b:LTe/I;

    iget-object v1, p0, Lgf/R0$a;->d:Lio/reactivex/internal/util/c;

    invoke-static {v0, p1, p0, v1}, Lio/reactivex/internal/util/k;->d(LTe/I;Ljava/lang/Throwable;Ljava/util/concurrent/atomic/AtomicInteger;Lio/reactivex/internal/util/c;)V

    return-void
.end method

.method public d()Z
    .locals 1

    iget-object v0, p0, Lgf/R0$a;->g:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LVe/c;

    invoke-static {v0}, LYe/d;->b(LVe/c;)Z

    move-result v0

    return v0
.end method

.method public dispose()V
    .locals 1

    iget-object v0, p0, Lgf/R0$a;->g:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v0}, LYe/d;->a(Ljava/util/concurrent/atomic/AtomicReference;)Z

    iget-object v0, p0, Lgf/R0$a;->f:Lgf/R0$a$a;

    invoke-static {v0}, LYe/d;->a(Ljava/util/concurrent/atomic/AtomicReference;)Z

    return-void
.end method

.method public e(LVe/c;)V
    .locals 1

    iget-object v0, p0, Lgf/R0$a;->g:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v0, p1}, LYe/d;->h(Ljava/util/concurrent/atomic/AtomicReference;LVe/c;)Z

    return-void
.end method

.method public f()V
    .locals 0

    invoke-virtual {p0}, Lgf/R0$a;->h()V

    return-void
.end method

.method public g(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget-object v0, p0, Lgf/R0$a;->b:LTe/I;

    iget-object v1, p0, Lgf/R0$a;->d:Lio/reactivex/internal/util/c;

    invoke-static {v0, p1, p0, v1}, Lio/reactivex/internal/util/k;->f(LTe/I;Ljava/lang/Object;Ljava/util/concurrent/atomic/AtomicInteger;Lio/reactivex/internal/util/c;)V

    return-void
.end method

.method public h()V
    .locals 1

    iget-object v0, p0, Lgf/R0$a;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    if-nez v0, :cond_3

    :cond_0
    invoke-virtual {p0}, Lgf/R0$a;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    iget-boolean v0, p0, Lgf/R0$a;->i:Z

    if-nez v0, :cond_2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lgf/R0$a;->i:Z

    iget-object v0, p0, Lgf/R0$a;->h:LTe/G;

    invoke-interface {v0, p0}, LTe/G;->b(LTe/I;)V

    :cond_2
    iget-object v0, p0, Lgf/R0$a;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    if-nez v0, :cond_0

    :cond_3
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 2

    iget-object v0, p0, Lgf/R0$a;->f:Lgf/R0$a$a;

    invoke-static {v0}, LYe/d;->a(Ljava/util/concurrent/atomic/AtomicReference;)Z

    iget-object v0, p0, Lgf/R0$a;->b:LTe/I;

    iget-object v1, p0, Lgf/R0$a;->d:Lio/reactivex/internal/util/c;

    invoke-static {v0, p1, p0, v1}, Lio/reactivex/internal/util/k;->d(LTe/I;Ljava/lang/Throwable;Ljava/util/concurrent/atomic/AtomicInteger;Lio/reactivex/internal/util/c;)V

    return-void
.end method
