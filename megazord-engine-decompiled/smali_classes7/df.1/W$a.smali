.class public final Ldf/W$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LTe/q;
.implements LVe/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldf/W;
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
        "Ljava/lang/Object;",
        "LTe/q<",
        "TT;>;",
        "LVe/c;"
    }
.end annotation


# instance fields
.field public final b:LTe/N;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LTe/N<",
            "-TT;>;"
        }
    .end annotation
.end field

.field public final c:J

.field public final d:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field public e:LCi/d;

.field public f:J

.field public g:Z


# direct methods
.method public constructor <init>(LTe/N;JLjava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LTe/N<",
            "-TT;>;JTT;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldf/W$a;->b:LTe/N;

    iput-wide p2, p0, Ldf/W$a;->c:J

    iput-object p4, p0, Ldf/W$a;->d:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    sget-object v0, Lmf/j;->CANCELLED:Lmf/j;

    iput-object v0, p0, Ldf/W$a;->e:LCi/d;

    iget-boolean v0, p0, Ldf/W$a;->g:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Ldf/W$a;->g:Z

    iget-object v0, p0, Ldf/W$a;->d:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v1, p0, Ldf/W$a;->b:LTe/N;

    invoke-interface {v1, v0}, LTe/N;->b(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Ldf/W$a;->b:LTe/N;

    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    invoke-interface {v0, v1}, LTe/N;->onError(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public d()Z
    .locals 2

    iget-object v0, p0, Ldf/W$a;->e:LCi/d;

    sget-object v1, Lmf/j;->CANCELLED:Lmf/j;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public dispose()V
    .locals 1

    iget-object v0, p0, Ldf/W$a;->e:LCi/d;

    invoke-interface {v0}, LCi/d;->cancel()V

    sget-object v0, Lmf/j;->CANCELLED:Lmf/j;

    iput-object v0, p0, Ldf/W$a;->e:LCi/d;

    return-void
.end method

.method public g(Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget-boolean v0, p0, Ldf/W$a;->g:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-wide v0, p0, Ldf/W$a;->f:J

    iget-wide v2, p0, Ldf/W$a;->c:J

    cmp-long v2, v0, v2

    if-nez v2, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Ldf/W$a;->g:Z

    iget-object v0, p0, Ldf/W$a;->e:LCi/d;

    invoke-interface {v0}, LCi/d;->cancel()V

    sget-object v0, Lmf/j;->CANCELLED:Lmf/j;

    iput-object v0, p0, Ldf/W$a;->e:LCi/d;

    iget-object v0, p0, Ldf/W$a;->b:LTe/N;

    invoke-interface {v0, p1}, LTe/N;->b(Ljava/lang/Object;)V

    return-void

    :cond_1
    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Ldf/W$a;->f:J

    return-void
.end method

.method public h(LCi/d;)V
    .locals 2

    iget-object v0, p0, Ldf/W$a;->e:LCi/d;

    invoke-static {v0, p1}, Lmf/j;->n(LCi/d;LCi/d;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p1, p0, Ldf/W$a;->e:LCi/d;

    iget-object v0, p0, Ldf/W$a;->b:LTe/N;

    invoke-interface {v0, p0}, LTe/N;->e(LVe/c;)V

    const-wide v0, 0x7fffffffffffffffL

    invoke-interface {p1, v0, v1}, LCi/d;->i(J)V

    :cond_0
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    iget-boolean v0, p0, Ldf/W$a;->g:Z

    if-eqz v0, :cond_0

    invoke-static {p1}, Lqf/a;->Y(Ljava/lang/Throwable;)V

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Ldf/W$a;->g:Z

    sget-object v0, Lmf/j;->CANCELLED:Lmf/j;

    iput-object v0, p0, Ldf/W$a;->e:LCi/d;

    iget-object v0, p0, Ldf/W$a;->b:LTe/N;

    invoke-interface {v0, p1}, LTe/N;->onError(Ljava/lang/Throwable;)V

    return-void
.end method
