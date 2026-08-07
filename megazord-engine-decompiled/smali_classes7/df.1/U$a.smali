.class public final Ldf/U$a;
.super Lmf/f;
.source "SourceFile"

# interfaces
.implements LTe/q;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldf/U;
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
        "Lmf/f<",
        "TT;>;",
        "LTe/q<",
        "TT;>;"
    }
.end annotation


# static fields
.field public static final t:J = 0x386f7dd17fceb6ddL


# instance fields
.field public final n:J

.field public final o:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field public final p:Z

.field public q:LCi/d;

.field public r:J

.field public s:Z


# direct methods
.method public constructor <init>(LCi/c;JLjava/lang/Object;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LCi/c<",
            "-TT;>;JTT;Z)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lmf/f;-><init>(LCi/c;)V

    iput-wide p2, p0, Ldf/U$a;->n:J

    iput-object p4, p0, Ldf/U$a;->o:Ljava/lang/Object;

    iput-boolean p5, p0, Ldf/U$a;->p:Z

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-boolean v0, p0, Ldf/U$a;->s:Z

    if-nez v0, :cond_2

    const/4 v0, 0x1

    iput-boolean v0, p0, Ldf/U$a;->s:Z

    iget-object v0, p0, Ldf/U$a;->o:Ljava/lang/Object;

    if-nez v0, :cond_1

    iget-boolean v0, p0, Ldf/U$a;->p:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmf/f;->c:LCi/c;

    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    invoke-interface {v0, v1}, LCi/c;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lmf/f;->c:LCi/c;

    invoke-interface {v0}, LCi/c;->a()V

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v0}, Lmf/f;->d(Ljava/lang/Object;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public cancel()V
    .locals 1

    invoke-super {p0}, Lmf/f;->cancel()V

    iget-object v0, p0, Ldf/U$a;->q:LCi/d;

    invoke-interface {v0}, LCi/d;->cancel()V

    return-void
.end method

.method public g(Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget-boolean v0, p0, Ldf/U$a;->s:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-wide v0, p0, Ldf/U$a;->r:J

    iget-wide v2, p0, Ldf/U$a;->n:J

    cmp-long v2, v0, v2

    if-nez v2, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Ldf/U$a;->s:Z

    iget-object v0, p0, Ldf/U$a;->q:LCi/d;

    invoke-interface {v0}, LCi/d;->cancel()V

    invoke-virtual {p0, p1}, Lmf/f;->d(Ljava/lang/Object;)V

    return-void

    :cond_1
    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Ldf/U$a;->r:J

    return-void
.end method

.method public h(LCi/d;)V
    .locals 2

    iget-object v0, p0, Ldf/U$a;->q:LCi/d;

    invoke-static {v0, p1}, Lmf/j;->n(LCi/d;LCi/d;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p1, p0, Ldf/U$a;->q:LCi/d;

    iget-object v0, p0, Lmf/f;->c:LCi/c;

    invoke-interface {v0, p0}, LCi/c;->h(LCi/d;)V

    const-wide v0, 0x7fffffffffffffffL

    invoke-interface {p1, v0, v1}, LCi/d;->i(J)V

    :cond_0
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    iget-boolean v0, p0, Ldf/U$a;->s:Z

    if-eqz v0, :cond_0

    invoke-static {p1}, Lqf/a;->Y(Ljava/lang/Throwable;)V

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Ldf/U$a;->s:Z

    iget-object v0, p0, Lmf/f;->c:LCi/c;

    invoke-interface {v0, p1}, LCi/c;->onError(Ljava/lang/Throwable;)V

    return-void
.end method
