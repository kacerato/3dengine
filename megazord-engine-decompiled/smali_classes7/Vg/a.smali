.class public LVg/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LVg/a$c;,
        LVg/a$a;,
        LVg/a$b;
    }
.end annotation


# instance fields
.field public a:LVg/a$b;

.field public b:J

.field public c:J

.field public d:I

.field public e:LVg/a$c;

.field public f:Ljava/lang/String;

.field public g:LVg/a$a;

.field public h:Ljava/lang/Exception;

.field public i:Z

.field public j:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0}, LVg/a;->n()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    sget-object v0, LVg/a$a;->SUCCESS:LVg/a$a;

    iput-object v0, p0, LVg/a;->g:LVg/a$a;

    const/16 v0, 0x64

    iput v0, p0, LVg/a;->d:I

    invoke-virtual {p0}, LVg/a;->n()V

    return-void
.end method

.method public b(Ljava/lang/Exception;)V
    .locals 1

    sget-object v0, LVg/a$a;->ERROR:LVg/a$a;

    iput-object v0, p0, LVg/a;->g:LVg/a$a;

    iput-object p1, p0, LVg/a;->h:Ljava/lang/Exception;

    invoke-virtual {p0}, LVg/a;->n()V

    return-void
.end method

.method public c()V
    .locals 2

    invoke-virtual {p0}, LVg/a;->n()V

    const/4 v0, 0x0

    iput-object v0, p0, LVg/a;->f:Ljava/lang/String;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, LVg/a;->b:J

    iput-wide v0, p0, LVg/a;->c:J

    const/4 v0, 0x0

    iput v0, p0, LVg/a;->d:I

    return-void
.end method

.method public d()LVg/a$c;
    .locals 1

    iget-object v0, p0, LVg/a;->e:LVg/a$c;

    return-object v0
.end method

.method public e()Ljava/lang/Exception;
    .locals 1

    iget-object v0, p0, LVg/a;->h:Ljava/lang/Exception;

    return-object v0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LVg/a;->f:Ljava/lang/String;

    return-object v0
.end method

.method public g()I
    .locals 1

    iget v0, p0, LVg/a;->d:I

    return v0
.end method

.method public h()LVg/a$a;
    .locals 1

    iget-object v0, p0, LVg/a;->g:LVg/a$a;

    return-object v0
.end method

.method public i()LVg/a$b;
    .locals 1

    iget-object v0, p0, LVg/a;->a:LVg/a$b;

    return-object v0
.end method

.method public j()J
    .locals 2

    iget-wide v0, p0, LVg/a;->b:J

    return-wide v0
.end method

.method public k()J
    .locals 2

    iget-wide v0, p0, LVg/a;->c:J

    return-wide v0
.end method

.method public l()Z
    .locals 1

    iget-boolean v0, p0, LVg/a;->i:Z

    return v0
.end method

.method public m()Z
    .locals 1

    iget-boolean v0, p0, LVg/a;->j:Z

    return v0
.end method

.method public final n()V
    .locals 1

    sget-object v0, LVg/a$c;->NONE:LVg/a$c;

    iput-object v0, p0, LVg/a;->e:LVg/a$c;

    sget-object v0, LVg/a$b;->READY:LVg/a$b;

    iput-object v0, p0, LVg/a;->a:LVg/a$b;

    return-void
.end method

.method public o(Z)V
    .locals 0

    iput-boolean p1, p0, LVg/a;->i:Z

    return-void
.end method

.method public p(LVg/a$c;)V
    .locals 0

    iput-object p1, p0, LVg/a;->e:LVg/a$c;

    return-void
.end method

.method public q(Ljava/lang/Exception;)V
    .locals 0

    iput-object p1, p0, LVg/a;->h:Ljava/lang/Exception;

    return-void
.end method

.method public r(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, LVg/a;->f:Ljava/lang/String;

    return-void
.end method

.method public s(Z)V
    .locals 0

    iput-boolean p1, p0, LVg/a;->j:Z

    return-void
.end method

.method public t(I)V
    .locals 0

    iput p1, p0, LVg/a;->d:I

    return-void
.end method

.method public u(LVg/a$a;)V
    .locals 0

    iput-object p1, p0, LVg/a;->g:LVg/a$a;

    return-void
.end method

.method public v(LVg/a$b;)V
    .locals 0

    iput-object p1, p0, LVg/a;->a:LVg/a$b;

    return-void
.end method

.method public w(J)V
    .locals 0

    iput-wide p1, p0, LVg/a;->b:J

    return-void
.end method

.method public x(J)V
    .locals 4

    iget-wide v0, p0, LVg/a;->c:J

    add-long/2addr v0, p1

    iput-wide v0, p0, LVg/a;->c:J

    iget-wide p1, p0, LVg/a;->b:J

    const-wide/16 v2, 0x0

    cmp-long v2, p1, v2

    if-lez v2, :cond_0

    const-wide/16 v2, 0x64

    mul-long/2addr v0, v2

    div-long/2addr v0, p1

    long-to-int p1, v0

    iput p1, p0, LVg/a;->d:I

    const/16 p2, 0x64

    if-le p1, p2, :cond_0

    iput p2, p0, LVg/a;->d:I

    :catch_0
    :cond_0
    :goto_0
    iget-boolean p1, p0, LVg/a;->j:Z

    if-eqz p1, :cond_1

    const-wide/16 p1, 0x96

    :try_start_0
    invoke-static {p1, p2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_1
    return-void
.end method
