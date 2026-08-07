.class public final Lgf/s1$a;
.super Ljava/util/concurrent/atomic/AtomicInteger;
.source "SourceFile"

# interfaces
.implements LTe/I;
.implements LVe/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgf/s1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgf/s1$a$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "U:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicInteger;",
        "LTe/I<",
        "TT;>;",
        "LVe/c;"
    }
.end annotation


# static fields
.field public static final f:J = 0x13afb1a8379f6a45L


# instance fields
.field public final b:LTe/I;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LTe/I<",
            "-TT;>;"
        }
    .end annotation
.end field

.field public final c:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "LVe/c;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Lgf/s1$a$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lgf/s1$a<",
            "TT;TU;>.a;"
        }
    .end annotation
.end field

.field public final e:Lio/reactivex/internal/util/c;


# direct methods
.method public constructor <init>(LTe/I;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LTe/I<",
            "-TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object p1, p0, Lgf/s1$a;->b:LTe/I;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object p1, p0, Lgf/s1$a;->c:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance p1, Lgf/s1$a$a;

    invoke-direct {p1, p0}, Lgf/s1$a$a;-><init>(Lgf/s1$a;)V

    iput-object p1, p0, Lgf/s1$a;->d:Lgf/s1$a$a;

    new-instance p1, Lio/reactivex/internal/util/c;

    invoke-direct {p1}, Lio/reactivex/internal/util/c;-><init>()V

    iput-object p1, p0, Lgf/s1$a;->e:Lio/reactivex/internal/util/c;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Lgf/s1$a;->d:Lgf/s1$a$a;

    invoke-static {v0}, LYe/d;->a(Ljava/util/concurrent/atomic/AtomicReference;)Z

    iget-object v0, p0, Lgf/s1$a;->b:LTe/I;

    iget-object v1, p0, Lgf/s1$a;->e:Lio/reactivex/internal/util/c;

    invoke-static {v0, p0, v1}, Lio/reactivex/internal/util/k;->b(LTe/I;Ljava/util/concurrent/atomic/AtomicInteger;Lio/reactivex/internal/util/c;)V

    return-void
.end method

.method public b()V
    .locals 2

    iget-object v0, p0, Lgf/s1$a;->c:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v0}, LYe/d;->a(Ljava/util/concurrent/atomic/AtomicReference;)Z

    iget-object v0, p0, Lgf/s1$a;->b:LTe/I;

    iget-object v1, p0, Lgf/s1$a;->e:Lio/reactivex/internal/util/c;

    invoke-static {v0, p0, v1}, Lio/reactivex/internal/util/k;->b(LTe/I;Ljava/util/concurrent/atomic/AtomicInteger;Lio/reactivex/internal/util/c;)V

    return-void
.end method

.method public c(Ljava/lang/Throwable;)V
    .locals 2

    iget-object v0, p0, Lgf/s1$a;->c:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v0}, LYe/d;->a(Ljava/util/concurrent/atomic/AtomicReference;)Z

    iget-object v0, p0, Lgf/s1$a;->b:LTe/I;

    iget-object v1, p0, Lgf/s1$a;->e:Lio/reactivex/internal/util/c;

    invoke-static {v0, p1, p0, v1}, Lio/reactivex/internal/util/k;->d(LTe/I;Ljava/lang/Throwable;Ljava/util/concurrent/atomic/AtomicInteger;Lio/reactivex/internal/util/c;)V

    return-void
.end method

.method public d()Z
    .locals 1

    iget-object v0, p0, Lgf/s1$a;->c:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LVe/c;

    invoke-static {v0}, LYe/d;->b(LVe/c;)Z

    move-result v0

    return v0
.end method

.method public dispose()V
    .locals 1

    iget-object v0, p0, Lgf/s1$a;->c:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v0}, LYe/d;->a(Ljava/util/concurrent/atomic/AtomicReference;)Z

    iget-object v0, p0, Lgf/s1$a;->d:Lgf/s1$a$a;

    invoke-static {v0}, LYe/d;->a(Ljava/util/concurrent/atomic/AtomicReference;)Z

    return-void
.end method

.method public e(LVe/c;)V
    .locals 1

    iget-object v0, p0, Lgf/s1$a;->c:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v0, p1}, LYe/d;->h(Ljava/util/concurrent/atomic/AtomicReference;LVe/c;)Z

    return-void
.end method

.method public g(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget-object v0, p0, Lgf/s1$a;->b:LTe/I;

    iget-object v1, p0, Lgf/s1$a;->e:Lio/reactivex/internal/util/c;

    invoke-static {v0, p1, p0, v1}, Lio/reactivex/internal/util/k;->f(LTe/I;Ljava/lang/Object;Ljava/util/concurrent/atomic/AtomicInteger;Lio/reactivex/internal/util/c;)V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 2

    iget-object v0, p0, Lgf/s1$a;->d:Lgf/s1$a$a;

    invoke-static {v0}, LYe/d;->a(Ljava/util/concurrent/atomic/AtomicReference;)Z

    iget-object v0, p0, Lgf/s1$a;->b:LTe/I;

    iget-object v1, p0, Lgf/s1$a;->e:Lio/reactivex/internal/util/c;

    invoke-static {v0, p1, p0, v1}, Lio/reactivex/internal/util/k;->d(LTe/I;Ljava/lang/Throwable;Ljava/util/concurrent/atomic/AtomicInteger;Lio/reactivex/internal/util/c;)V

    return-void
.end method
