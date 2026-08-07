.class public final LId/F;
.super LId/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LId/F$b;
    }
.end annotation


# instance fields
.field public final g:LId/F$b;


# direct methods
.method public constructor <init>(ILId/J;)V
    .locals 0

    invoke-direct {p0, p1, p2}, LId/a;-><init>(ILId/J;)V

    new-instance p1, LId/F$b;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, LId/F$b;-><init>(LId/F$a;)V

    iput-object p1, p0, LId/F;->g:LId/F$b;

    return-void
.end method


# virtual methods
.method public a(JJ)J
    .locals 0

    return-wide p3
.end method

.method public c(I)Z
    .locals 7

    iget-object v0, p0, LId/F;->g:LId/F$b;

    iget-wide v1, v0, LId/F$b;->a:J

    int-to-long v3, p1

    add-long/2addr v3, v1

    iget p1, p0, LId/a;->b:I

    int-to-long v5, p1

    sub-long/2addr v3, v5

    iget-wide v5, v0, LId/F$b;->b:J

    cmp-long p1, v3, v5

    if-gtz p1, :cond_0

    cmp-long p1, v5, v1

    if-lez p1, :cond_1

    :cond_0
    iget-object p1, p0, LId/a;->e:[LId/z;

    invoke-static {p1, v1, v2}, LLd/d;->d([LId/z;J)J

    move-result-wide v0

    iget-object p1, p0, LId/F;->g:LId/F$b;

    iput-wide v0, p1, LId/F$b;->b:J

    cmp-long p1, v3, v0

    if-lez p1, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public e(J)V
    .locals 1

    iget-object v0, p0, LId/a;->d:LId/z;

    invoke-virtual {v0, p1, p2}, LId/z;->e(J)V

    iget-object p1, p0, LId/a;->c:LId/J;

    invoke-interface {p1}, LId/J;->a()V

    return-void
.end method

.method public f(I)J
    .locals 9

    iget-object v0, p0, LId/F;->g:LId/F$b;

    iget-wide v1, v0, LId/F$b;->a:J

    int-to-long v3, p1

    add-long/2addr v3, v1

    iget p1, p0, LId/a;->b:I

    int-to-long v5, p1

    sub-long v5, v3, v5

    iget-wide v7, v0, LId/F$b;->b:J

    cmp-long p1, v5, v7

    if-gtz p1, :cond_0

    cmp-long p1, v7, v1

    if-lez p1, :cond_2

    :cond_0
    :goto_0
    iget-object p1, p0, LId/a;->e:[LId/z;

    invoke-static {p1, v1, v2}, LLd/d;->d([LId/z;J)J

    move-result-wide v7

    cmp-long p1, v5, v7

    if-lez p1, :cond_1

    const-wide/16 v7, 0x1

    invoke-static {v7, v8}, Ljava/util/concurrent/locks/LockSupport;->parkNanos(J)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, LId/F;->g:LId/F$b;

    iput-wide v7, p1, LId/F$b;->b:J

    :cond_2
    iget-object p1, p0, LId/F;->g:LId/F$b;

    iput-wide v3, p1, LId/F$b;->a:J

    return-wide v3
.end method

.method public g(J)V
    .locals 1

    iget-object v0, p0, LId/F;->g:LId/F$b;

    iput-wide p1, v0, LId/F$b;->a:J

    return-void
.end method

.method public h(I)J
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lmax/disruptor/InsufficientCapacityException;
        }
    .end annotation

    invoke-virtual {p0, p1}, LId/F;->c(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, LId/F;->g:LId/F$b;

    iget-wide v1, v0, LId/F$b;->a:J

    int-to-long v3, p1

    add-long/2addr v1, v3

    iput-wide v1, v0, LId/F$b;->a:J

    return-wide v1

    :cond_0
    sget-object p1, Lcom/lmax/disruptor/InsufficientCapacityException;->INSTANCE:Lcom/lmax/disruptor/InsufficientCapacityException;

    throw p1
.end method

.method public k(JJ)V
    .locals 0

    invoke-virtual {p0, p3, p4}, LId/F;->e(J)V

    return-void
.end method

.method public l(J)Z
    .locals 2

    iget-object v0, p0, LId/a;->d:LId/z;

    invoke-virtual {v0}, LId/z;->c()J

    move-result-wide v0

    cmp-long p1, p1, v0

    if-gtz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public n()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lmax/disruptor/InsufficientCapacityException;
        }
    .end annotation

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, LId/F;->h(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public next()J
    .locals 2

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, LId/F;->f(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public remainingCapacity()J
    .locals 6

    iget-object v0, p0, LId/F;->g:LId/F$b;

    iget-wide v0, v0, LId/F$b;->a:J

    iget-object v2, p0, LId/a;->e:[LId/z;

    invoke-static {v2, v0, v1}, LLd/d;->d([LId/z;J)J

    move-result-wide v2

    invoke-virtual {p0}, LId/a;->i()I

    move-result v4

    int-to-long v4, v4

    sub-long/2addr v0, v2

    sub-long/2addr v4, v0

    return-wide v4
.end method
