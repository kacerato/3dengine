.class public final Lgf/E$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LTe/I;
.implements LVe/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgf/E;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "LTe/I<",
        "TT;>;",
        "LVe/c;"
    }
.end annotation


# instance fields
.field public final b:LTe/I;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LTe/I<",
            "-TT;>;"
        }
    .end annotation
.end field

.field public final c:J

.field public final d:Ljava/util/concurrent/TimeUnit;

.field public final e:LTe/J$c;

.field public f:LVe/c;

.field public g:LVe/c;

.field public volatile h:J

.field public i:Z


# direct methods
.method public constructor <init>(LTe/I;JLjava/util/concurrent/TimeUnit;LTe/J$c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LTe/I<",
            "-TT;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            "LTe/J$c;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lgf/E$b;->b:LTe/I;

    iput-wide p2, p0, Lgf/E$b;->c:J

    iput-object p4, p0, Lgf/E$b;->d:Ljava/util/concurrent/TimeUnit;

    iput-object p5, p0, Lgf/E$b;->e:LTe/J$c;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-boolean v0, p0, Lgf/E$b;->i:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lgf/E$b;->i:Z

    iget-object v0, p0, Lgf/E$b;->g:LVe/c;

    if-eqz v0, :cond_1

    invoke-interface {v0}, LVe/c;->dispose()V

    :cond_1
    check-cast v0, Lgf/E$a;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lgf/E$a;->run()V

    :cond_2
    iget-object v0, p0, Lgf/E$b;->b:LTe/I;

    invoke-interface {v0}, LTe/I;->a()V

    iget-object v0, p0, Lgf/E$b;->e:LTe/J$c;

    invoke-interface {v0}, LVe/c;->dispose()V

    return-void
.end method

.method public b(JLjava/lang/Object;Lgf/E$a;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JTT;",
            "Lgf/E$a<",
            "TT;>;)V"
        }
    .end annotation

    iget-wide v0, p0, Lgf/E$b;->h:J

    cmp-long p1, p1, v0

    if-nez p1, :cond_0

    iget-object p1, p0, Lgf/E$b;->b:LTe/I;

    invoke-interface {p1, p3}, LTe/I;->g(Ljava/lang/Object;)V

    invoke-virtual {p4}, Lgf/E$a;->dispose()V

    :cond_0
    return-void
.end method

.method public d()Z
    .locals 1

    iget-object v0, p0, Lgf/E$b;->e:LTe/J$c;

    invoke-interface {v0}, LVe/c;->d()Z

    move-result v0

    return v0
.end method

.method public dispose()V
    .locals 1

    iget-object v0, p0, Lgf/E$b;->f:LVe/c;

    invoke-interface {v0}, LVe/c;->dispose()V

    iget-object v0, p0, Lgf/E$b;->e:LTe/J$c;

    invoke-interface {v0}, LVe/c;->dispose()V

    return-void
.end method

.method public e(LVe/c;)V
    .locals 1

    iget-object v0, p0, Lgf/E$b;->f:LVe/c;

    invoke-static {v0, p1}, LYe/d;->j(LVe/c;LVe/c;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p1, p0, Lgf/E$b;->f:LVe/c;

    iget-object p1, p0, Lgf/E$b;->b:LTe/I;

    invoke-interface {p1, p0}, LTe/I;->e(LVe/c;)V

    :cond_0
    return-void
.end method

.method public g(Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget-boolean v0, p0, Lgf/E$b;->i:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-wide v0, p0, Lgf/E$b;->h:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lgf/E$b;->h:J

    iget-object v2, p0, Lgf/E$b;->g:LVe/c;

    if-eqz v2, :cond_1

    invoke-interface {v2}, LVe/c;->dispose()V

    :cond_1
    new-instance v2, Lgf/E$a;

    invoke-direct {v2, p1, v0, v1, p0}, Lgf/E$a;-><init>(Ljava/lang/Object;JLgf/E$b;)V

    iput-object v2, p0, Lgf/E$b;->g:LVe/c;

    iget-object p1, p0, Lgf/E$b;->e:LTe/J$c;

    iget-wide v0, p0, Lgf/E$b;->c:J

    iget-object v3, p0, Lgf/E$b;->d:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v2, v0, v1, v3}, LTe/J$c;->c(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)LVe/c;

    move-result-object p1

    invoke-virtual {v2, p1}, Lgf/E$a;->a(LVe/c;)V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    iget-boolean v0, p0, Lgf/E$b;->i:Z

    if-eqz v0, :cond_0

    invoke-static {p1}, Lqf/a;->Y(Ljava/lang/Throwable;)V

    return-void

    :cond_0
    iget-object v0, p0, Lgf/E$b;->g:LVe/c;

    if-eqz v0, :cond_1

    invoke-interface {v0}, LVe/c;->dispose()V

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lgf/E$b;->i:Z

    iget-object v0, p0, Lgf/E$b;->b:LTe/I;

    invoke-interface {v0, p1}, LTe/I;->onError(Ljava/lang/Throwable;)V

    iget-object p1, p0, Lgf/E$b;->e:LTe/J$c;

    invoke-interface {p1}, LVe/c;->dispose()V

    return-void
.end method
