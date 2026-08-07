.class public abstract LTg/b;
.super LTg/q;
.source "SourceFile"


# instance fields
.field public b:I

.field public c:[B

.field public d:LUg/d;

.field public e:J

.field public f:J

.field public g:J

.field public h:J

.field public i:I

.field public j:I

.field public k:Ljava/lang/String;

.field public l:Z

.field public m:LUg/e;

.field public n:Z

.field public o:LTg/p;

.field public p:LTg/a;

.field public q:Z

.field public r:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "LTg/i;",
            ">;"
        }
    .end annotation
.end field

.field public s:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, LTg/q;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, LTg/b;->f:J

    iput-wide v0, p0, LTg/b;->g:J

    iput-wide v0, p0, LTg/b;->h:J

    sget-object v0, LUg/e;->NONE:LUg/e;

    iput-object v0, p0, LTg/b;->m:LUg/e;

    return-void
.end method


# virtual methods
.method public A(Z)V
    .locals 0

    iput-boolean p1, p0, LTg/b;->s:Z

    return-void
.end method

.method public B(Z)V
    .locals 0

    iput-boolean p1, p0, LTg/b;->l:Z

    return-void
.end method

.method public C(LUg/e;)V
    .locals 0

    iput-object p1, p0, LTg/b;->m:LUg/e;

    return-void
.end method

.method public D(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "LTg/i;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, LTg/b;->r:Ljava/util/List;

    return-void
.end method

.method public E(I)V
    .locals 0

    iput p1, p0, LTg/b;->j:I

    return-void
.end method

.method public F(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, LTg/b;->k:Ljava/lang/String;

    return-void
.end method

.method public G(I)V
    .locals 0

    iput p1, p0, LTg/b;->i:I

    return-void
.end method

.method public H(Z)V
    .locals 0

    iput-boolean p1, p0, LTg/b;->q:Z

    return-void
.end method

.method public I([B)V
    .locals 0

    iput-object p1, p0, LTg/b;->c:[B

    return-void
.end method

.method public J(J)V
    .locals 0

    iput-wide p1, p0, LTg/b;->e:J

    return-void
.end method

.method public K(J)V
    .locals 0

    iput-wide p1, p0, LTg/b;->h:J

    return-void
.end method

.method public L(I)V
    .locals 0

    iput p1, p0, LTg/b;->b:I

    return-void
.end method

.method public M(LTg/p;)V
    .locals 0

    iput-object p1, p0, LTg/b;->o:LTg/p;

    return-void
.end method

.method public c()LTg/a;
    .locals 1

    iget-object v0, p0, LTg/b;->p:LTg/a;

    return-object v0
.end method

.method public d()J
    .locals 2

    iget-wide v0, p0, LTg/b;->g:J

    return-wide v0
.end method

.method public e()LUg/d;
    .locals 1

    iget-object v0, p0, LTg/b;->d:LUg/d;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, LTg/b;

    if-nez v1, :cond_1

    return v0

    :cond_1
    invoke-virtual {p0}, LTg/b;->j()Ljava/lang/String;

    move-result-object v0

    check-cast p1, LTg/b;

    invoke-virtual {p1}, LTg/b;->j()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public f()J
    .locals 2

    iget-wide v0, p0, LTg/b;->f:J

    return-wide v0
.end method

.method public g()LUg/e;
    .locals 1

    iget-object v0, p0, LTg/b;->m:LUg/e;

    return-object v0
.end method

.method public h()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "LTg/i;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, LTg/b;->r:Ljava/util/List;

    return-object v0
.end method

.method public i()I
    .locals 1

    iget v0, p0, LTg/b;->j:I

    return v0
.end method

.method public j()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LTg/b;->k:Ljava/lang/String;

    return-object v0
.end method

.method public k()I
    .locals 1

    iget v0, p0, LTg/b;->i:I

    return v0
.end method

.method public l()[B
    .locals 1

    iget-object v0, p0, LTg/b;->c:[B

    return-object v0
.end method

.method public m()J
    .locals 2

    iget-wide v0, p0, LTg/b;->e:J

    return-wide v0
.end method

.method public n()J
    .locals 2

    iget-wide v0, p0, LTg/b;->e:J

    invoke-static {v0, v1}, LXg/h;->f(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public o()J
    .locals 2

    iget-wide v0, p0, LTg/b;->h:J

    return-wide v0
.end method

.method public p()I
    .locals 1

    iget v0, p0, LTg/b;->b:I

    return v0
.end method

.method public q()LTg/p;
    .locals 1

    iget-object v0, p0, LTg/b;->o:LTg/p;

    return-object v0
.end method

.method public r()Z
    .locals 1

    iget-boolean v0, p0, LTg/b;->n:Z

    return v0
.end method

.method public s()Z
    .locals 1

    iget-boolean v0, p0, LTg/b;->s:Z

    return v0
.end method

.method public t()Z
    .locals 1

    iget-boolean v0, p0, LTg/b;->l:Z

    return v0
.end method

.method public u()Z
    .locals 1

    iget-boolean v0, p0, LTg/b;->q:Z

    return v0
.end method

.method public v(LTg/a;)V
    .locals 0

    iput-object p1, p0, LTg/b;->p:LTg/a;

    return-void
.end method

.method public w(J)V
    .locals 0

    iput-wide p1, p0, LTg/b;->g:J

    return-void
.end method

.method public x(LUg/d;)V
    .locals 0

    iput-object p1, p0, LTg/b;->d:LUg/d;

    return-void
.end method

.method public y(J)V
    .locals 0

    iput-wide p1, p0, LTg/b;->f:J

    return-void
.end method

.method public z(Z)V
    .locals 0

    iput-boolean p1, p0, LTg/b;->n:Z

    return-void
.end method
