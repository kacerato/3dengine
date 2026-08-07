.class public final Lgf/S0;
.super Lnf/a;
.source "SourceFile"

# interfaces
.implements Laf/g;
.implements LYe/g;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgf/S0$g;,
        Lgf/S0$e;,
        Lgf/S0$k;,
        Lgf/S0$l;,
        Lgf/S0$i;,
        Lgf/S0$c;,
        Lgf/S0$o;,
        Lgf/S0$m;,
        Lgf/S0$n;,
        Lgf/S0$a;,
        Lgf/S0$f;,
        Lgf/S0$p;,
        Lgf/S0$h;,
        Lgf/S0$d;,
        Lgf/S0$j;,
        Lgf/S0$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lnf/a<",
        "TT;>;",
        "Laf/g<",
        "TT;>;",
        "LYe/g;"
    }
.end annotation


# static fields
.field public static final f:Lgf/S0$b;


# instance fields
.field public final b:LTe/G;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LTe/G<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final c:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lgf/S0$j<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field public final d:Lgf/S0$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lgf/S0$b<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final e:LTe/G;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LTe/G<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lgf/S0$o;

    invoke-direct {v0}, Lgf/S0$o;-><init>()V

    sput-object v0, Lgf/S0;->f:Lgf/S0$b;

    return-void
.end method

.method public constructor <init>(LTe/G;LTe/G;Ljava/util/concurrent/atomic/AtomicReference;Lgf/S0$b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LTe/G<",
            "TT;>;",
            "LTe/G<",
            "TT;>;",
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lgf/S0$j<",
            "TT;>;>;",
            "Lgf/S0$b<",
            "TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Lnf/a;-><init>()V

    iput-object p1, p0, Lgf/S0;->e:LTe/G;

    iput-object p2, p0, Lgf/S0;->b:LTe/G;

    iput-object p3, p0, Lgf/S0;->c:Ljava/util/concurrent/atomic/AtomicReference;

    iput-object p4, p0, Lgf/S0;->d:Lgf/S0$b;

    return-void
.end method

.method public static A8(Lnf/a;LTe/J;)Lnf/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lnf/a<",
            "TT;>;",
            "LTe/J;",
            ")",
            "Lnf/a<",
            "TT;>;"
        }
    .end annotation

    invoke-virtual {p0, p1}, LTe/B;->c4(LTe/J;)LTe/B;

    move-result-object p1

    new-instance v0, Lgf/S0$g;

    invoke-direct {v0, p0, p1}, Lgf/S0$g;-><init>(Lnf/a;LTe/B;)V

    invoke-static {v0}, Lqf/a;->U(Lnf/a;)Lnf/a;

    move-result-object p0

    return-object p0
.end method

.method public static u8(LTe/G;I)Lnf/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "LTe/G<",
            "TT;>;I)",
            "Lnf/a<",
            "TT;>;"
        }
    .end annotation

    const v0, 0x7fffffff

    if-ne p1, v0, :cond_0

    invoke-static {p0}, Lgf/S0;->y8(LTe/G;)Lnf/a;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance v0, Lgf/S0$i;

    invoke-direct {v0, p1}, Lgf/S0$i;-><init>(I)V

    invoke-static {p0, v0}, Lgf/S0;->x8(LTe/G;Lgf/S0$b;)Lnf/a;

    move-result-object p0

    return-object p0
.end method

.method public static v8(LTe/G;JLjava/util/concurrent/TimeUnit;LTe/J;)Lnf/a;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "LTe/G<",
            "TT;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            "LTe/J;",
            ")",
            "Lnf/a<",
            "TT;>;"
        }
    .end annotation

    const v5, 0x7fffffff

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    move-object v4, p4

    invoke-static/range {v0 .. v5}, Lgf/S0;->w8(LTe/G;JLjava/util/concurrent/TimeUnit;LTe/J;I)Lnf/a;

    move-result-object p0

    return-object p0
.end method

.method public static w8(LTe/G;JLjava/util/concurrent/TimeUnit;LTe/J;I)Lnf/a;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "LTe/G<",
            "TT;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            "LTe/J;",
            "I)",
            "Lnf/a<",
            "TT;>;"
        }
    .end annotation

    new-instance v6, Lgf/S0$l;

    move-object v0, v6

    move v1, p5

    move-wide v2, p1

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lgf/S0$l;-><init>(IJLjava/util/concurrent/TimeUnit;LTe/J;)V

    invoke-static {p0, v6}, Lgf/S0;->x8(LTe/G;Lgf/S0$b;)Lnf/a;

    move-result-object p0

    return-object p0
.end method

.method public static x8(LTe/G;Lgf/S0$b;)Lnf/a;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "LTe/G<",
            "TT;>;",
            "Lgf/S0$b<",
            "TT;>;)",
            "Lnf/a<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    new-instance v1, Lgf/S0$k;

    invoke-direct {v1, v0, p1}, Lgf/S0$k;-><init>(Ljava/util/concurrent/atomic/AtomicReference;Lgf/S0$b;)V

    new-instance v2, Lgf/S0;

    invoke-direct {v2, v1, p0, v0, p1}, Lgf/S0;-><init>(LTe/G;LTe/G;Ljava/util/concurrent/atomic/AtomicReference;Lgf/S0$b;)V

    invoke-static {v2}, Lqf/a;->U(Lnf/a;)Lnf/a;

    move-result-object p0

    return-object p0
.end method

.method public static y8(LTe/G;)Lnf/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "LTe/G<",
            "+TT;>;)",
            "Lnf/a<",
            "TT;>;"
        }
    .end annotation

    sget-object v0, Lgf/S0;->f:Lgf/S0$b;

    invoke-static {p0, v0}, Lgf/S0;->x8(LTe/G;Lgf/S0$b;)Lnf/a;

    move-result-object p0

    return-object p0
.end method

.method public static z8(Ljava/util/concurrent/Callable;LXe/o;)LTe/B;
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
            "Lnf/a<",
            "TU;>;>;",
            "LXe/o<",
            "-",
            "LTe/B<",
            "TU;>;+",
            "LTe/G<",
            "TR;>;>;)",
            "LTe/B<",
            "TR;>;"
        }
    .end annotation

    new-instance v0, Lgf/S0$e;

    invoke-direct {v0, p0, p1}, Lgf/S0$e;-><init>(Ljava/util/concurrent/Callable;LXe/o;)V

    invoke-static {v0}, Lqf/a;->R(LTe/B;)LTe/B;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public J5(LTe/I;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LTe/I<",
            "-TT;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lgf/S0;->e:LTe/G;

    invoke-interface {v0, p1}, LTe/G;->b(LTe/I;)V

    return-void
.end method

.method public c(LVe/c;)V
    .locals 2

    iget-object v0, p0, Lgf/S0;->c:Ljava/util/concurrent/atomic/AtomicReference;

    check-cast p1, Lgf/S0$j;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroidx/lifecycle/c;->a(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Object;Ljava/lang/Object;)Z

    return-void
.end method

.method public n8(LXe/g;)V
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
    iget-object v0, p0, Lgf/S0;->c:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgf/S0$j;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lgf/S0$j;->d()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    iget-object v1, p0, Lgf/S0;->d:Lgf/S0$b;

    invoke-interface {v1}, Lgf/S0$b;->call()Lgf/S0$h;

    move-result-object v1

    new-instance v2, Lgf/S0$j;

    invoke-direct {v2, v1}, Lgf/S0$j;-><init>(Lgf/S0$h;)V

    iget-object v1, p0, Lgf/S0;->c:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v1, v0, v2}, Landroidx/lifecycle/c;->a(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    move-object v0, v2

    :cond_2
    iget-object v1, v0, Lgf/S0$j;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_3

    iget-object v1, v0, Lgf/S0$j;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v3, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v1

    if-eqz v1, :cond_3

    move v1, v2

    goto :goto_1

    :cond_3
    move v1, v3

    :goto_1
    :try_start_0
    invoke-interface {p1, v0}, LXe/g;->accept(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_4

    iget-object p1, p0, Lgf/S0;->b:LTe/G;

    invoke-interface {p1, v0}, LTe/G;->b(LTe/I;)V

    :cond_4
    return-void

    :catchall_0
    move-exception p1

    if-eqz v1, :cond_5

    iget-object v0, v0, Lgf/S0$j;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    :cond_5
    invoke-static {p1}, Lio/reactivex/exceptions/a;->b(Ljava/lang/Throwable;)V

    invoke-static {p1}, Lio/reactivex/internal/util/ExceptionHelper;->f(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public source()LTe/G;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LTe/G<",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lgf/S0;->b:LTe/G;

    return-object v0
.end method
