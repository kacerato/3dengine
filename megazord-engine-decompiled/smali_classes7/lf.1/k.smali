.class public final Llf/k;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "SourceFile"

# interfaces
.implements LTe/q;
.implements LCi/d;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicReference<",
        "LCi/d;",
        ">;",
        "LTe/q<",
        "TT;>;",
        "LCi/d;"
    }
.end annotation


# static fields
.field public static final i:J = 0x51462814a312b8L


# instance fields
.field public final b:Llf/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Llf/l<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final c:I

.field public final d:I

.field public volatile e:Laf/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Laf/o<",
            "TT;>;"
        }
    .end annotation
.end field

.field public volatile f:Z

.field public g:J

.field public h:I


# direct methods
.method public constructor <init>(Llf/l;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Llf/l<",
            "TT;>;I)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object p1, p0, Llf/k;->b:Llf/l;

    iput p2, p0, Llf/k;->c:I

    shr-int/lit8 p1, p2, 0x2

    sub-int/2addr p2, p1

    iput p2, p0, Llf/k;->d:I

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Llf/k;->b:Llf/l;

    invoke-interface {v0, p0}, Llf/l;->b(Llf/k;)V

    return-void
.end method

.method public b()Z
    .locals 1

    iget-boolean v0, p0, Llf/k;->f:Z

    return v0
.end method

.method public c()Laf/o;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Laf/o<",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p0, Llf/k;->e:Laf/o;

    return-object v0
.end method

.method public cancel()V
    .locals 0

    invoke-static {p0}, Lmf/j;->a(Ljava/util/concurrent/atomic/AtomicReference;)Z

    return-void
.end method

.method public d()V
    .locals 4

    iget v0, p0, Llf/k;->h:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    iget-wide v0, p0, Llf/k;->g:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iget v2, p0, Llf/k;->d:I

    int-to-long v2, v2

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Llf/k;->g:J

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LCi/d;

    invoke-interface {v2, v0, v1}, LCi/d;->i(J)V

    goto :goto_0

    :cond_0
    iput-wide v0, p0, Llf/k;->g:J

    :cond_1
    :goto_0
    return-void
.end method

.method public e()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Llf/k;->f:Z

    return-void
.end method

.method public g(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget v0, p0, Llf/k;->h:I

    if-nez v0, :cond_0

    iget-object v0, p0, Llf/k;->b:Llf/l;

    invoke-interface {v0, p0, p1}, Llf/l;->d(Llf/k;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Llf/k;->b:Llf/l;

    invoke-interface {p1}, Llf/l;->f()V

    :goto_0
    return-void
.end method

.method public h(LCi/d;)V
    .locals 3

    invoke-static {p0, p1}, Lmf/j;->j(Ljava/util/concurrent/atomic/AtomicReference;LCi/d;)Z

    move-result v0

    if-eqz v0, :cond_2

    instance-of v0, p1, Laf/l;

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Laf/l;

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Laf/k;->m(I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    iput v1, p0, Llf/k;->h:I

    iput-object v0, p0, Llf/k;->e:Laf/o;

    iput-boolean v2, p0, Llf/k;->f:Z

    iget-object p1, p0, Llf/k;->b:Llf/l;

    invoke-interface {p1, p0}, Llf/l;->b(Llf/k;)V

    return-void

    :cond_0
    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    iput v1, p0, Llf/k;->h:I

    iput-object v0, p0, Llf/k;->e:Laf/o;

    iget v0, p0, Llf/k;->c:I

    invoke-static {p1, v0}, Lio/reactivex/internal/util/u;->j(LCi/d;I)V

    return-void

    :cond_1
    iget v0, p0, Llf/k;->c:I

    invoke-static {v0}, Lio/reactivex/internal/util/u;->c(I)Laf/o;

    move-result-object v0

    iput-object v0, p0, Llf/k;->e:Laf/o;

    iget v0, p0, Llf/k;->c:I

    invoke-static {p1, v0}, Lio/reactivex/internal/util/u;->j(LCi/d;I)V

    :cond_2
    return-void
.end method

.method public i(J)V
    .locals 2

    iget v0, p0, Llf/k;->h:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    iget-wide v0, p0, Llf/k;->g:J

    add-long/2addr v0, p1

    iget p1, p0, Llf/k;->d:I

    int-to-long p1, p1

    cmp-long p1, v0, p1

    if-ltz p1, :cond_0

    const-wide/16 p1, 0x0

    iput-wide p1, p0, Llf/k;->g:J

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LCi/d;

    invoke-interface {p1, v0, v1}, LCi/d;->i(J)V

    goto :goto_0

    :cond_0
    iput-wide v0, p0, Llf/k;->g:J

    :cond_1
    :goto_0
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    iget-object v0, p0, Llf/k;->b:Llf/l;

    invoke-interface {v0, p0, p1}, Llf/l;->c(Llf/k;Ljava/lang/Throwable;)V

    return-void
.end method
