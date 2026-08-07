.class public final Ldf/Q0$a;
.super Lmf/i;
.source "SourceFile"

# interfaces
.implements LTe/q;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldf/Q0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lmf/i;",
        "LTe/q<",
        "TT;>;"
    }
.end annotation


# static fields
.field public static final q:J = 0x3865630f1b3455e1L


# instance fields
.field public final k:LCi/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LCi/c<",
            "-TT;>;"
        }
    .end annotation
.end field

.field public final l:LXe/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LXe/o<",
            "-",
            "Ljava/lang/Throwable;",
            "+",
            "LCi/b<",
            "+TT;>;>;"
        }
    .end annotation
.end field

.field public final m:Z

.field public n:Z

.field public o:Z

.field public p:J


# direct methods
.method public constructor <init>(LCi/c;LXe/o;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LCi/c<",
            "-TT;>;",
            "LXe/o<",
            "-",
            "Ljava/lang/Throwable;",
            "+",
            "LCi/b<",
            "+TT;>;>;Z)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lmf/i;-><init>(Z)V

    iput-object p1, p0, Ldf/Q0$a;->k:LCi/c;

    iput-object p2, p0, Ldf/Q0$a;->l:LXe/o;

    iput-boolean p3, p0, Ldf/Q0$a;->m:Z

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-boolean v0, p0, Ldf/Q0$a;->o:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Ldf/Q0$a;->o:Z

    iput-boolean v0, p0, Ldf/Q0$a;->n:Z

    iget-object v0, p0, Ldf/Q0$a;->k:LCi/c;

    invoke-interface {v0}, LCi/c;->a()V

    return-void
.end method

.method public g(Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget-boolean v0, p0, Ldf/Q0$a;->o:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Ldf/Q0$a;->n:Z

    if-nez v0, :cond_1

    iget-wide v0, p0, Ldf/Q0$a;->p:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Ldf/Q0$a;->p:J

    :cond_1
    iget-object v0, p0, Ldf/Q0$a;->k:LCi/c;

    invoke-interface {v0, p1}, LCi/c;->g(Ljava/lang/Object;)V

    return-void
.end method

.method public h(LCi/d;)V
    .locals 0

    invoke-virtual {p0, p1}, Lmf/i;->l(LCi/d;)V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 5

    iget-boolean v0, p0, Ldf/Q0$a;->n:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Ldf/Q0$a;->o:Z

    if-eqz v0, :cond_0

    invoke-static {p1}, Lqf/a;->Y(Ljava/lang/Throwable;)V

    return-void

    :cond_0
    iget-object v0, p0, Ldf/Q0$a;->k:LCi/c;

    invoke-interface {v0, p1}, LCi/c;->onError(Ljava/lang/Throwable;)V

    return-void

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Ldf/Q0$a;->n:Z

    iget-boolean v0, p0, Ldf/Q0$a;->m:Z

    if-eqz v0, :cond_2

    instance-of v0, p1, Ljava/lang/Exception;

    if-nez v0, :cond_2

    iget-object v0, p0, Ldf/Q0$a;->k:LCi/c;

    invoke-interface {v0, p1}, LCi/c;->onError(Ljava/lang/Throwable;)V

    return-void

    :cond_2
    :try_start_0
    iget-object v0, p0, Ldf/Q0$a;->l:LXe/o;

    invoke-interface {v0, p1}, LXe/o;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "The nextSupplier returned a null Publisher"

    invoke-static {v0, v1}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LCi/b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-wide v1, p0, Ldf/Q0$a;->p:J

    const-wide/16 v3, 0x0

    cmp-long p1, v1, v3

    if-eqz p1, :cond_3

    invoke-virtual {p0, v1, v2}, Lmf/i;->k(J)V

    :cond_3
    invoke-interface {v0, p0}, LCi/b;->l(LCi/c;)V

    return-void

    :catchall_0
    move-exception v0

    invoke-static {v0}, Lio/reactivex/exceptions/a;->b(Ljava/lang/Throwable;)V

    iget-object v1, p0, Ldf/Q0$a;->k:LCi/c;

    new-instance v2, Lio/reactivex/exceptions/CompositeException;

    filled-new-array {p1, v0}, [Ljava/lang/Throwable;

    move-result-object p1

    invoke-direct {v2, p1}, Lio/reactivex/exceptions/CompositeException;-><init>([Ljava/lang/Throwable;)V

    invoke-interface {v1, v2}, LCi/c;->onError(Ljava/lang/Throwable;)V

    return-void
.end method
