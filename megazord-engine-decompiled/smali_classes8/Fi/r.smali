.class public LFi/r;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:LFi/i;

.field public final b:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque<",
            "LFi/p;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(LFi/i;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "config"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, LFi/r;->b:Ljava/util/Deque;

    iput-object p1, p0, LFi/r;->a:LFi/i;

    return-void
.end method


# virtual methods
.method public a(JJ[F[FLEi/L;)LFi/q;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "startRef",
            "endRef",
            "startPos",
            "endPos",
            "filter"
        }
    .end annotation

    iget-object v0, p0, LFi/r;->b:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->size()I

    move-result v0

    iget-object v1, p0, LFi/r;->a:LFi/i;

    iget v1, v1, LFi/i;->b:I

    const/4 v2, 0x0

    if-lt v0, v1, :cond_0

    return-object v2

    :cond_0
    new-instance v0, LFi/p;

    invoke-direct {v0}, LFi/p;-><init>()V

    iget-object v1, v0, LFi/p;->a:[F

    invoke-static {v1, p5}, LEi/g;->w([F[F)V

    iput-wide p1, v0, LFi/p;->c:J

    iget-object p1, v0, LFi/p;->b:[F

    invoke-static {p1, p6}, LEi/g;->w([F[F)V

    iput-wide p3, v0, LFi/p;->d:J

    iget-object p1, v0, LFi/p;->f:LFi/q;

    iput-object v2, p1, LFi/q;->a:LEi/Q;

    iput-object p7, v0, LFi/p;->e:LEi/L;

    iget-object p1, p0, LFi/r;->b:Ljava/util/Deque;

    invoke-interface {p1, v0}, Ljava/util/Deque;->add(Ljava/lang/Object;)Z

    iget-object p1, v0, LFi/p;->f:LFi/q;

    return-object p1
.end method

.method public b(LEi/v;)V
    .locals 12
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "navMesh"
        }
    .end annotation

    iget-object v0, p0, LFi/r;->a:LFi/i;

    iget v0, v0, LFi/i;->c:I

    :cond_0
    :goto_0
    if-lez v0, :cond_5

    iget-object v1, p0, LFi/r;->b:Ljava/util/Deque;

    invoke-interface {v1}, Ljava/util/Deque;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LFi/p;

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    iget-object v2, v1, LFi/p;->f:LFi/q;

    iget-object v2, v2, LFi/q;->a:LEi/Q;

    if-nez v2, :cond_2

    new-instance v3, LEi/A;

    invoke-direct {v3, p1}, LEi/A;-><init>(LEi/v;)V

    iput-object v3, v1, LFi/p;->g:LEi/A;

    iget-object v2, v1, LFi/p;->f:LFi/q;

    iget-wide v4, v1, LFi/p;->c:J

    iget-wide v6, v1, LFi/p;->d:J

    iget-object v8, v1, LFi/p;->a:[F

    iget-object v9, v1, LFi/p;->b:[F

    iget-object v10, v1, LFi/p;->e:LEi/L;

    const/4 v11, 0x0

    invoke-virtual/range {v3 .. v11}, LEi/A;->E(JJ[F[FLEi/L;I)LEi/Q;

    move-result-object v3

    iput-object v3, v2, LFi/q;->a:LEi/Q;

    :cond_2
    iget-object v2, v1, LFi/p;->f:LFi/q;

    iget-object v2, v2, LFi/q;->a:LEi/Q;

    invoke-virtual {v2}, LEi/Q;->c()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, v1, LFi/p;->g:LEi/A;

    invoke-virtual {v2, v0}, LEi/A;->Q(I)LEi/O;

    move-result-object v2

    iget-object v3, v1, LFi/p;->f:LFi/q;

    iget-object v4, v2, LEi/O;->b:LEi/Q;

    iput-object v4, v3, LFi/q;->a:LEi/Q;

    iget-object v2, v2, LEi/O;->a:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    sub-int/2addr v0, v2

    :cond_3
    iget-object v2, v1, LFi/p;->f:LFi/q;

    iget-object v2, v2, LFi/q;->a:LEi/Q;

    invoke-virtual {v2}, LEi/Q;->e()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, v1, LFi/p;->g:LEi/A;

    invoke-virtual {v2}, LEi/A;->f()LEi/O;

    move-result-object v2

    iget-object v3, v1, LFi/p;->f:LFi/q;

    iget-object v4, v2, LEi/O;->b:LEi/Q;

    iput-object v4, v3, LFi/q;->a:LEi/Q;

    iget-object v2, v2, LEi/O;->a:Ljava/lang/Object;

    check-cast v2, Ljava/util/List;

    iput-object v2, v3, LFi/q;->b:Ljava/util/List;

    :cond_4
    iget-object v2, v1, LFi/p;->f:LFi/q;

    iget-object v2, v2, LFi/q;->a:LEi/Q;

    invoke-virtual {v2}, LEi/Q;->b()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, v1, LFi/p;->f:LFi/q;

    iget-object v2, v2, LFi/q;->a:LEi/Q;

    invoke-virtual {v2}, LEi/Q;->e()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, LFi/r;->b:Ljava/util/Deque;

    invoke-interface {v2, v1}, Ljava/util/Deque;->addFirst(Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_5
    :goto_1
    return-void
.end method
