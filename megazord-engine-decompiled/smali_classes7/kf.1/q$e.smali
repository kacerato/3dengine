.class public final Lkf/q$e;
.super LTe/J$c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkf/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "e"
.end annotation


# instance fields
.field public final b:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final c:Lrf/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrf/c<",
            "Lkf/q$f;",
            ">;"
        }
    .end annotation
.end field

.field public final d:LTe/J$c;


# direct methods
.method public constructor <init>(Lrf/c;LTe/J$c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrf/c<",
            "Lkf/q$f;",
            ">;",
            "LTe/J$c;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, LTe/J$c;-><init>()V

    iput-object p1, p0, Lkf/q$e;->c:Lrf/c;

    iput-object p2, p0, Lkf/q$e;->d:LTe/J$c;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object p1, p0, Lkf/q$e;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method


# virtual methods
.method public b(Ljava/lang/Runnable;)LVe/c;
    .locals 1
    .param p1    # Ljava/lang/Runnable;
        .annotation build LUe/f;
        .end annotation
    .end param
    .annotation build LUe/f;
    .end annotation

    new-instance v0, Lkf/q$c;

    invoke-direct {v0, p1}, Lkf/q$c;-><init>(Ljava/lang/Runnable;)V

    iget-object p1, p0, Lkf/q$e;->c:Lrf/c;

    invoke-interface {p1, v0}, LCi/c;->g(Ljava/lang/Object;)V

    return-object v0
.end method

.method public c(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)LVe/c;
    .locals 1
    .param p1    # Ljava/lang/Runnable;
        .annotation build LUe/f;
        .end annotation
    .end param
    .param p4    # Ljava/util/concurrent/TimeUnit;
        .annotation build LUe/f;
        .end annotation
    .end param
    .annotation build LUe/f;
    .end annotation

    new-instance v0, Lkf/q$b;

    invoke-direct {v0, p1, p2, p3, p4}, Lkf/q$b;-><init>(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)V

    iget-object p1, p0, Lkf/q$e;->c:Lrf/c;

    invoke-interface {p1, v0}, LCi/c;->g(Ljava/lang/Object;)V

    return-object v0
.end method

.method public d()Z
    .locals 1

    iget-object v0, p0, Lkf/q$e;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public dispose()V
    .locals 3

    iget-object v0, p0, Lkf/q$e;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lkf/q$e;->c:Lrf/c;

    invoke-interface {v0}, LCi/c;->a()V

    iget-object v0, p0, Lkf/q$e;->d:LTe/J$c;

    invoke-interface {v0}, LVe/c;->dispose()V

    :cond_0
    return-void
.end method
