.class public final Ldf/e1;
.super LWe/a;
.source "SourceFile"

# interfaces
.implements Laf/h;
.implements LYe/g;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ldf/e1$c;,
        Ldf/e1$i;,
        Ldf/e1$k;,
        Ldf/e1$h;,
        Ldf/e1$b;,
        Ldf/e1$e;,
        Ldf/e1$l;,
        Ldf/e1$m;,
        Ldf/e1$a;,
        Ldf/e1$f;,
        Ldf/e1$n;,
        Ldf/e1$g;,
        Ldf/e1$d;,
        Ldf/e1$j;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "LWe/a<",
        "TT;>;",
        "Laf/h<",
        "TT;>;",
        "LYe/g;"
    }
.end annotation


# static fields
.field public static final g:Ljava/util/concurrent/Callable;


# instance fields
.field public final c:LTe/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LTe/l<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final d:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Ldf/e1$j<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field public final e:Ljava/util/concurrent/Callable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Callable<",
            "+",
            "Ldf/e1$g<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field public final f:LCi/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LCi/b<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ldf/e1$c;

    invoke-direct {v0}, Ldf/e1$c;-><init>()V

    sput-object v0, Ldf/e1;->g:Ljava/util/concurrent/Callable;

    return-void
.end method

.method public constructor <init>(LCi/b;LTe/l;Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/Callable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LCi/b<",
            "TT;>;",
            "LTe/l<",
            "TT;>;",
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Ldf/e1$j<",
            "TT;>;>;",
            "Ljava/util/concurrent/Callable<",
            "+",
            "Ldf/e1$g<",
            "TT;>;>;)V"
        }
    .end annotation

    invoke-direct {p0}, LWe/a;-><init>()V

    iput-object p1, p0, Ldf/e1;->f:LCi/b;

    iput-object p2, p0, Ldf/e1;->c:LTe/l;

    iput-object p3, p0, Ldf/e1;->d:Ljava/util/concurrent/atomic/AtomicReference;

    iput-object p4, p0, Ldf/e1;->e:Ljava/util/concurrent/Callable;

    return-void
.end method

.method public static Z8(LTe/l;I)LWe/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "LTe/l<",
            "TT;>;I)",
            "LWe/a<",
            "TT;>;"
        }
    .end annotation

    const v0, 0x7fffffff

    if-ne p1, v0, :cond_0

    invoke-static {p0}, Ldf/e1;->d9(LTe/l;)LWe/a;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance v0, Ldf/e1$h;

    invoke-direct {v0, p1}, Ldf/e1$h;-><init>(I)V

    invoke-static {p0, v0}, Ldf/e1;->c9(LTe/l;Ljava/util/concurrent/Callable;)LWe/a;

    move-result-object p0

    return-object p0
.end method

.method public static a9(LTe/l;JLjava/util/concurrent/TimeUnit;LTe/J;)LWe/a;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "LTe/l<",
            "TT;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            "LTe/J;",
            ")",
            "LWe/a<",
            "TT;>;"
        }
    .end annotation

    const v5, 0x7fffffff

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    move-object v4, p4

    invoke-static/range {v0 .. v5}, Ldf/e1;->b9(LTe/l;JLjava/util/concurrent/TimeUnit;LTe/J;I)LWe/a;

    move-result-object p0

    return-object p0
.end method

.method public static b9(LTe/l;JLjava/util/concurrent/TimeUnit;LTe/J;I)LWe/a;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "LTe/l<",
            "TT;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            "LTe/J;",
            "I)",
            "LWe/a<",
            "TT;>;"
        }
    .end annotation

    new-instance v6, Ldf/e1$k;

    move-object v0, v6

    move v1, p5

    move-wide v2, p1

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Ldf/e1$k;-><init>(IJLjava/util/concurrent/TimeUnit;LTe/J;)V

    invoke-static {p0, v6}, Ldf/e1;->c9(LTe/l;Ljava/util/concurrent/Callable;)LWe/a;

    move-result-object p0

    return-object p0
.end method

.method public static c9(LTe/l;Ljava/util/concurrent/Callable;)LWe/a;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "LTe/l<",
            "TT;>;",
            "Ljava/util/concurrent/Callable<",
            "+",
            "Ldf/e1$g<",
            "TT;>;>;)",
            "LWe/a<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    new-instance v1, Ldf/e1$i;

    invoke-direct {v1, v0, p1}, Ldf/e1$i;-><init>(Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/Callable;)V

    new-instance v2, Ldf/e1;

    invoke-direct {v2, v1, p0, v0, p1}, Ldf/e1;-><init>(LCi/b;LTe/l;Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/Callable;)V

    invoke-static {v2}, Lqf/a;->T(LWe/a;)LWe/a;

    move-result-object p0

    return-object p0
.end method

.method public static d9(LTe/l;)LWe/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "LTe/l<",
            "+TT;>;)",
            "LWe/a<",
            "TT;>;"
        }
    .end annotation

    sget-object v0, Ldf/e1;->g:Ljava/util/concurrent/Callable;

    invoke-static {p0, v0}, Ldf/e1;->c9(LTe/l;Ljava/util/concurrent/Callable;)LWe/a;

    move-result-object p0

    return-object p0
.end method

.method public static e9(Ljava/util/concurrent/Callable;LXe/o;)LTe/l;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "+",
            "LWe/a<",
            "TU;>;>;",
            "LXe/o<",
            "-",
            "LTe/l<",
            "TU;>;+",
            "LCi/b<",
            "TR;>;>;)",
            "LTe/l<",
            "TR;>;"
        }
    .end annotation

    new-instance v0, Ldf/e1$e;

    invoke-direct {v0, p0, p1}, Ldf/e1$e;-><init>(Ljava/util/concurrent/Callable;LXe/o;)V

    return-object v0
.end method

.method public static f9(LWe/a;LTe/J;)LWe/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "LWe/a<",
            "TT;>;",
            "LTe/J;",
            ")",
            "LWe/a<",
            "TT;>;"
        }
    .end annotation

    invoke-virtual {p0, p1}, LTe/l;->n4(LTe/J;)LTe/l;

    move-result-object p1

    new-instance v0, Ldf/e1$b;

    invoke-direct {v0, p0, p1}, Ldf/e1$b;-><init>(LWe/a;LTe/l;)V

    invoke-static {v0}, Lqf/a;->T(LWe/a;)LWe/a;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public S8(LXe/g;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LXe/g<",
            "-",
            "LVe/c;",
            ">;)V"
        }
    .end annotation

    :goto_0
    iget-object v0, p0, Ldf/e1;->d:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldf/e1$j;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ldf/e1$j;->d()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    :try_start_0
    iget-object v1, p0, Ldf/e1;->e:Ljava/util/concurrent/Callable;

    invoke-interface {v1}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ldf/e1$g;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    new-instance v2, Ldf/e1$j;

    invoke-direct {v2, v1}, Ldf/e1$j;-><init>(Ldf/e1$g;)V

    iget-object v1, p0, Ldf/e1;->d:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v1, v0, v2}, Landroidx/lifecycle/c;->a(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    move-object v0, v2

    :cond_2
    iget-object v1, v0, Ldf/e1$j;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_3

    iget-object v1, v0, Ldf/e1$j;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v3, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v1

    if-eqz v1, :cond_3

    move v1, v2

    goto :goto_1

    :cond_3
    move v1, v3

    :goto_1
    :try_start_1
    invoke-interface {p1, v0}, LXe/g;->accept(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_4

    iget-object p1, p0, Ldf/e1;->c:LTe/l;

    invoke-virtual {p1, v0}, LTe/l;->l6(LTe/q;)V

    :cond_4
    return-void

    :catchall_0
    move-exception p1

    if-eqz v1, :cond_5

    iget-object v0, v0, Ldf/e1$j;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    :cond_5
    invoke-static {p1}, Lio/reactivex/exceptions/a;->b(Ljava/lang/Throwable;)V

    invoke-static {p1}, Lio/reactivex/internal/util/ExceptionHelper;->f(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    :catchall_1
    move-exception p1

    invoke-static {p1}, Lio/reactivex/exceptions/a;->b(Ljava/lang/Throwable;)V

    invoke-static {p1}, Lio/reactivex/internal/util/ExceptionHelper;->f(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public c(LVe/c;)V
    .locals 2

    iget-object v0, p0, Ldf/e1;->d:Ljava/util/concurrent/atomic/AtomicReference;

    check-cast p1, Ldf/e1$j;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroidx/lifecycle/c;->a(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Object;Ljava/lang/Object;)Z

    return-void
.end method

.method public m6(LCi/c;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LCi/c<",
            "-TT;>;)V"
        }
    .end annotation

    iget-object v0, p0, Ldf/e1;->f:LCi/b;

    invoke-interface {v0, p1}, LCi/b;->l(LCi/c;)V

    return-void
.end method

.method public source()LCi/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LCi/b<",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p0, Ldf/e1;->c:LTe/l;

    return-object v0
.end method
