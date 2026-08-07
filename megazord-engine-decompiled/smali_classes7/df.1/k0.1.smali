.class public final Ldf/k0;
.super LTe/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ldf/k0$b;,
        Ldf/k0$c;,
        Ldf/k0$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "LTe/l<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final c:Ljava/lang/Iterable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Iterable<",
            "+TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Iterable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, LTe/l;-><init>()V

    iput-object p1, p0, Ldf/k0;->c:Ljava/lang/Iterable;

    return-void
.end method

.method public static O8(LCi/c;Ljava/util/Iterator;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "LCi/c<",
            "-TT;>;",
            "Ljava/util/Iterator<",
            "+TT;>;)V"
        }
    .end annotation

    :try_start_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    invoke-static {p0}, Lmf/g;->a(LCi/c;)V

    return-void

    :cond_0
    instance-of v0, p0, Laf/a;

    if-eqz v0, :cond_1

    new-instance v0, Ldf/k0$b;

    move-object v1, p0

    check-cast v1, Laf/a;

    invoke-direct {v0, v1, p1}, Ldf/k0$b;-><init>(Laf/a;Ljava/util/Iterator;)V

    invoke-interface {p0, v0}, LCi/c;->h(LCi/d;)V

    goto :goto_0

    :cond_1
    new-instance v0, Ldf/k0$c;

    invoke-direct {v0, p0, p1}, Ldf/k0$c;-><init>(LCi/c;Ljava/util/Iterator;)V

    invoke-interface {p0, v0}, LCi/c;->h(LCi/d;)V

    :goto_0
    return-void

    :catchall_0
    move-exception p1

    invoke-static {p1}, Lio/reactivex/exceptions/a;->b(Ljava/lang/Throwable;)V

    invoke-static {p1, p0}, Lmf/g;->b(Ljava/lang/Throwable;LCi/c;)V

    return-void
.end method


# virtual methods
.method public m6(LCi/c;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LCi/c<",
            "-TT;>;)V"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Ldf/k0;->c:Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {p1, v0}, Ldf/k0;->O8(LCi/c;Ljava/util/Iterator;)V

    return-void

    :catchall_0
    move-exception v0

    invoke-static {v0}, Lio/reactivex/exceptions/a;->b(Ljava/lang/Throwable;)V

    invoke-static {v0, p1}, Lmf/g;->b(Ljava/lang/Throwable;LCi/c;)V

    return-void
.end method
