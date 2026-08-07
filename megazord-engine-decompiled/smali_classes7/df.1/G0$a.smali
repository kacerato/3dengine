.class public final Ldf/G0$a;
.super Ljava/util/concurrent/atomic/AtomicInteger;
.source "SourceFile"

# interfaces
.implements LTe/q;
.implements LCi/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldf/G0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ldf/G0$a$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicInteger;",
        "LTe/q<",
        "TT;>;",
        "LCi/d;"
    }
.end annotation


# static fields
.field public static final i:J = -0x3fbd8a98db8e76f7L


# instance fields
.field public final b:LCi/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LCi/c<",
            "-TT;>;"
        }
    .end annotation
.end field

.field public final c:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "LCi/d;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Ldf/G0$a$a;

.field public final e:Lio/reactivex/internal/util/c;

.field public final f:Ljava/util/concurrent/atomic/AtomicLong;

.field public volatile g:Z

.field public volatile h:Z


# direct methods
.method public constructor <init>(LCi/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LCi/c<",
            "-TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object p1, p0, Ldf/G0$a;->b:LCi/c;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object p1, p0, Ldf/G0$a;->c:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance p1, Ldf/G0$a$a;

    invoke-direct {p1, p0}, Ldf/G0$a$a;-><init>(Ldf/G0$a;)V

    iput-object p1, p0, Ldf/G0$a;->d:Ldf/G0$a$a;

    new-instance p1, Lio/reactivex/internal/util/c;

    invoke-direct {p1}, Lio/reactivex/internal/util/c;-><init>()V

    iput-object p1, p0, Ldf/G0$a;->e:Lio/reactivex/internal/util/c;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object p1, p0, Ldf/G0$a;->f:Ljava/util/concurrent/atomic/AtomicLong;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Ldf/G0$a;->g:Z

    iget-boolean v0, p0, Ldf/G0$a;->h:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Ldf/G0$a;->b:LCi/c;

    iget-object v1, p0, Ldf/G0$a;->e:Lio/reactivex/internal/util/c;

    invoke-static {v0, p0, v1}, Lio/reactivex/internal/util/k;->a(LCi/c;Ljava/util/concurrent/atomic/AtomicInteger;Lio/reactivex/internal/util/c;)V

    :cond_0
    return-void
.end method

.method public b()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Ldf/G0$a;->h:Z

    iget-boolean v0, p0, Ldf/G0$a;->g:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Ldf/G0$a;->b:LCi/c;

    iget-object v1, p0, Ldf/G0$a;->e:Lio/reactivex/internal/util/c;

    invoke-static {v0, p0, v1}, Lio/reactivex/internal/util/k;->a(LCi/c;Ljava/util/concurrent/atomic/AtomicInteger;Lio/reactivex/internal/util/c;)V

    :cond_0
    return-void
.end method

.method public c(Ljava/lang/Throwable;)V
    .locals 2

    iget-object v0, p0, Ldf/G0$a;->c:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v0}, Lmf/j;->a(Ljava/util/concurrent/atomic/AtomicReference;)Z

    iget-object v0, p0, Ldf/G0$a;->b:LCi/c;

    iget-object v1, p0, Ldf/G0$a;->e:Lio/reactivex/internal/util/c;

    invoke-static {v0, p1, p0, v1}, Lio/reactivex/internal/util/k;->c(LCi/c;Ljava/lang/Throwable;Ljava/util/concurrent/atomic/AtomicInteger;Lio/reactivex/internal/util/c;)V

    return-void
.end method

.method public cancel()V
    .locals 1

    iget-object v0, p0, Ldf/G0$a;->c:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v0}, Lmf/j;->a(Ljava/util/concurrent/atomic/AtomicReference;)Z

    iget-object v0, p0, Ldf/G0$a;->d:Ldf/G0$a$a;

    invoke-static {v0}, LYe/d;->a(Ljava/util/concurrent/atomic/AtomicReference;)Z

    return-void
.end method

.method public g(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget-object v0, p0, Ldf/G0$a;->b:LCi/c;

    iget-object v1, p0, Ldf/G0$a;->e:Lio/reactivex/internal/util/c;

    invoke-static {v0, p1, p0, v1}, Lio/reactivex/internal/util/k;->e(LCi/c;Ljava/lang/Object;Ljava/util/concurrent/atomic/AtomicInteger;Lio/reactivex/internal/util/c;)V

    return-void
.end method

.method public h(LCi/d;)V
    .locals 2

    iget-object v0, p0, Ldf/G0$a;->c:Ljava/util/concurrent/atomic/AtomicReference;

    iget-object v1, p0, Ldf/G0$a;->f:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {v0, v1, p1}, Lmf/j;->c(Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/atomic/AtomicLong;LCi/d;)Z

    return-void
.end method

.method public i(J)V
    .locals 2

    iget-object v0, p0, Ldf/G0$a;->c:Ljava/util/concurrent/atomic/AtomicReference;

    iget-object v1, p0, Ldf/G0$a;->f:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {v0, v1, p1, p2}, Lmf/j;->b(Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/atomic/AtomicLong;J)V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 2

    iget-object v0, p0, Ldf/G0$a;->c:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v0}, Lmf/j;->a(Ljava/util/concurrent/atomic/AtomicReference;)Z

    iget-object v0, p0, Ldf/G0$a;->b:LCi/c;

    iget-object v1, p0, Ldf/G0$a;->e:Lio/reactivex/internal/util/c;

    invoke-static {v0, p1, p0, v1}, Lio/reactivex/internal/util/k;->c(LCi/c;Ljava/lang/Throwable;Ljava/util/concurrent/atomic/AtomicInteger;Lio/reactivex/internal/util/c;)V

    return-void
.end method
