.class public final Ldf/a2$b;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "SourceFile"

# interfaces
.implements LTe/q;
.implements LCi/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldf/a2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
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
.field public static final i:J = -0x4037183c76e39a4cL


# instance fields
.field public final b:Ldf/a2$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldf/a2$a<",
            "TT;TR;>;"
        }
    .end annotation
.end field

.field public final c:I

.field public final d:I

.field public e:Laf/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Laf/o<",
            "TT;>;"
        }
    .end annotation
.end field

.field public f:J

.field public volatile g:Z

.field public h:I


# direct methods
.method public constructor <init>(Ldf/a2$a;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldf/a2$a<",
            "TT;TR;>;I)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object p1, p0, Ldf/a2$b;->b:Ldf/a2$a;

    iput p2, p0, Ldf/a2$b;->c:I

    shr-int/lit8 p1, p2, 0x2

    sub-int/2addr p2, p1

    iput p2, p0, Ldf/a2$b;->d:I

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Ldf/a2$b;->g:Z

    iget-object v0, p0, Ldf/a2$b;->b:Ldf/a2$a;

    invoke-virtual {v0}, Ldf/a2$a;->b()V

    return-void
.end method

.method public cancel()V
    .locals 0

    invoke-static {p0}, Lmf/j;->a(Ljava/util/concurrent/atomic/AtomicReference;)Z

    return-void
.end method

.method public g(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget v0, p0, Ldf/a2$b;->h:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Ldf/a2$b;->e:Laf/o;

    invoke-interface {v0, p1}, Laf/o;->offer(Ljava/lang/Object;)Z

    :cond_0
    iget-object p1, p0, Ldf/a2$b;->b:Ldf/a2$a;

    invoke-virtual {p1}, Ldf/a2$a;->b()V

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

    const/4 v1, 0x7

    invoke-interface {v0, v1}, Laf/k;->m(I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    iput v1, p0, Ldf/a2$b;->h:I

    iput-object v0, p0, Ldf/a2$b;->e:Laf/o;

    iput-boolean v2, p0, Ldf/a2$b;->g:Z

    iget-object p1, p0, Ldf/a2$b;->b:Ldf/a2$a;

    invoke-virtual {p1}, Ldf/a2$a;->b()V

    return-void

    :cond_0
    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    iput v1, p0, Ldf/a2$b;->h:I

    iput-object v0, p0, Ldf/a2$b;->e:Laf/o;

    iget v0, p0, Ldf/a2$b;->c:I

    int-to-long v0, v0

    invoke-interface {p1, v0, v1}, LCi/d;->i(J)V

    return-void

    :cond_1
    new-instance v0, Ljf/b;

    iget v1, p0, Ldf/a2$b;->c:I

    invoke-direct {v0, v1}, Ljf/b;-><init>(I)V

    iput-object v0, p0, Ldf/a2$b;->e:Laf/o;

    iget v0, p0, Ldf/a2$b;->c:I

    int-to-long v0, v0

    invoke-interface {p1, v0, v1}, LCi/d;->i(J)V

    :cond_2
    return-void
.end method

.method public i(J)V
    .locals 2

    iget v0, p0, Ldf/a2$b;->h:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    iget-wide v0, p0, Ldf/a2$b;->f:J

    add-long/2addr v0, p1

    iget p1, p0, Ldf/a2$b;->d:I

    int-to-long p1, p1

    cmp-long p1, v0, p1

    if-ltz p1, :cond_0

    const-wide/16 p1, 0x0

    iput-wide p1, p0, Ldf/a2$b;->f:J

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LCi/d;

    invoke-interface {p1, v0, v1}, LCi/d;->i(J)V

    goto :goto_0

    :cond_0
    iput-wide v0, p0, Ldf/a2$b;->f:J

    :cond_1
    :goto_0
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    iget-object v0, p0, Ldf/a2$b;->b:Ldf/a2$a;

    invoke-virtual {v0, p0, p1}, Ldf/a2$a;->c(Ldf/a2$b;Ljava/lang/Throwable;)V

    return-void
.end method
