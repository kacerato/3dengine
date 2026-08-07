.class public LTg/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field public b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "LTg/k;",
            ">;"
        }
    .end annotation
.end field

.field public c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "LTg/e;",
            ">;"
        }
    .end annotation
.end field

.field public d:LTg/c;

.field public e:LTg/d;

.field public f:LTg/g;

.field public g:LTg/n;

.field public h:LTg/o;

.field public i:Z

.field public j:J

.field public k:Ljava/io/File;

.field public l:Z

.field public m:Z

.field public n:J

.field public o:J


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, LTg/r;->b:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, LTg/r;->c:Ljava/util/List;

    new-instance v0, LTg/c;

    invoke-direct {v0}, LTg/c;-><init>()V

    iput-object v0, p0, LTg/r;->d:LTg/c;

    new-instance v0, LTg/d;

    invoke-direct {v0}, LTg/d;-><init>()V

    iput-object v0, p0, LTg/r;->e:LTg/d;

    new-instance v0, LTg/g;

    invoke-direct {v0}, LTg/g;-><init>()V

    iput-object v0, p0, LTg/r;->f:LTg/g;

    new-instance v0, LTg/n;

    invoke-direct {v0}, LTg/n;-><init>()V

    iput-object v0, p0, LTg/r;->g:LTg/n;

    new-instance v0, LTg/o;

    invoke-direct {v0}, LTg/o;-><init>()V

    iput-object v0, p0, LTg/r;->h:LTg/o;

    const/4 v0, 0x0

    iput-boolean v0, p0, LTg/r;->l:Z

    const-wide/16 v0, -0x1

    iput-wide v0, p0, LTg/r;->j:J

    return-void
.end method


# virtual methods
.method public A(LTg/o;)V
    .locals 0

    iput-object p1, p0, LTg/r;->h:LTg/o;

    return-void
.end method

.method public B(Z)V
    .locals 0

    iput-boolean p1, p0, LTg/r;->l:Z

    return-void
.end method

.method public C(Ljava/io/File;)V
    .locals 0

    iput-object p1, p0, LTg/r;->k:Ljava/io/File;

    return-void
.end method

.method public a()LTg/c;
    .locals 1

    iget-object v0, p0, LTg/r;->d:LTg/c;

    return-object v0
.end method

.method public b()LTg/d;
    .locals 1

    iget-object v0, p0, LTg/r;->e:LTg/d;

    return-object v0
.end method

.method public c()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "LTg/e;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, LTg/r;->c:Ljava/util/List;

    return-object v0
.end method

.method public clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public d()J
    .locals 2

    iget-wide v0, p0, LTg/r;->o:J

    return-wide v0
.end method

.method public e()LTg/g;
    .locals 1

    iget-object v0, p0, LTg/r;->f:LTg/g;

    return-object v0
.end method

.method public f()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "LTg/k;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, LTg/r;->b:Ljava/util/List;

    return-object v0
.end method

.method public g()J
    .locals 2

    iget-wide v0, p0, LTg/r;->j:J

    return-wide v0
.end method

.method public h()J
    .locals 2

    iget-wide v0, p0, LTg/r;->n:J

    return-wide v0
.end method

.method public i()LTg/n;
    .locals 1

    iget-object v0, p0, LTg/r;->g:LTg/n;

    return-object v0
.end method

.method public j()LTg/o;
    .locals 1

    iget-object v0, p0, LTg/r;->h:LTg/o;

    return-object v0
.end method

.method public k()Ljava/io/File;
    .locals 1

    iget-object v0, p0, LTg/r;->k:Ljava/io/File;

    return-object v0
.end method

.method public l()Z
    .locals 1

    iget-boolean v0, p0, LTg/r;->m:Z

    return v0
.end method

.method public m()Z
    .locals 1

    iget-boolean v0, p0, LTg/r;->i:Z

    return v0
.end method

.method public n()Z
    .locals 1

    iget-boolean v0, p0, LTg/r;->l:Z

    return v0
.end method

.method public o(LTg/c;)V
    .locals 0

    iput-object p1, p0, LTg/r;->d:LTg/c;

    return-void
.end method

.method public p(LTg/d;)V
    .locals 0

    iput-object p1, p0, LTg/r;->e:LTg/d;

    return-void
.end method

.method public q(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "LTg/e;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, LTg/r;->c:Ljava/util/List;

    return-void
.end method

.method public r(J)V
    .locals 0

    iput-wide p1, p0, LTg/r;->o:J

    return-void
.end method

.method public s(LTg/g;)V
    .locals 0

    iput-object p1, p0, LTg/r;->f:LTg/g;

    return-void
.end method

.method public t(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "LTg/k;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, LTg/r;->b:Ljava/util/List;

    return-void
.end method

.method public u(Z)V
    .locals 0

    iput-boolean p1, p0, LTg/r;->m:Z

    return-void
.end method

.method public v(Z)V
    .locals 0

    iput-boolean p1, p0, LTg/r;->i:Z

    return-void
.end method

.method public w(J)V
    .locals 0

    iput-wide p1, p0, LTg/r;->j:J

    return-void
.end method

.method public x(J)V
    .locals 0

    iput-wide p1, p0, LTg/r;->n:J

    return-void
.end method

.method public y(LTg/n;)V
    .locals 0

    iput-object p1, p0, LTg/r;->g:LTg/n;

    return-void
.end method
