.class public final Lgf/D$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LTe/I;
.implements LVe/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgf/D;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgf/D$a$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "U:",
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

.field public final c:LXe/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LXe/o<",
            "-TT;+",
            "LTe/G<",
            "TU;>;>;"
        }
    .end annotation
.end field

.field public d:LVe/c;

.field public final e:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "LVe/c;",
            ">;"
        }
    .end annotation
.end field

.field public volatile f:J

.field public g:Z


# direct methods
.method public constructor <init>(LTe/I;LXe/o;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LTe/I<",
            "-TT;>;",
            "LXe/o<",
            "-TT;+",
            "LTe/G<",
            "TU;>;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lgf/D$a;->e:Ljava/util/concurrent/atomic/AtomicReference;

    iput-object p1, p0, Lgf/D$a;->b:LTe/I;

    iput-object p2, p0, Lgf/D$a;->c:LXe/o;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-boolean v0, p0, Lgf/D$a;->g:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lgf/D$a;->g:Z

    iget-object v0, p0, Lgf/D$a;->e:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LVe/c;

    sget-object v1, LYe/d;->DISPOSED:LYe/d;

    if-eq v0, v1, :cond_1

    check-cast v0, Lgf/D$a$a;

    invoke-virtual {v0}, Lgf/D$a$a;->f()V

    iget-object v0, p0, Lgf/D$a;->e:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v0}, LYe/d;->a(Ljava/util/concurrent/atomic/AtomicReference;)Z

    iget-object v0, p0, Lgf/D$a;->b:LTe/I;

    invoke-interface {v0}, LTe/I;->a()V

    :cond_1
    return-void
.end method

.method public b(JLjava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JTT;)V"
        }
    .end annotation

    iget-wide v0, p0, Lgf/D$a;->f:J

    cmp-long p1, p1, v0

    if-nez p1, :cond_0

    iget-object p1, p0, Lgf/D$a;->b:LTe/I;

    invoke-interface {p1, p3}, LTe/I;->g(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public d()Z
    .locals 1

    iget-object v0, p0, Lgf/D$a;->d:LVe/c;

    invoke-interface {v0}, LVe/c;->d()Z

    move-result v0

    return v0
.end method

.method public dispose()V
    .locals 1

    iget-object v0, p0, Lgf/D$a;->d:LVe/c;

    invoke-interface {v0}, LVe/c;->dispose()V

    iget-object v0, p0, Lgf/D$a;->e:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v0}, LYe/d;->a(Ljava/util/concurrent/atomic/AtomicReference;)Z

    return-void
.end method

.method public e(LVe/c;)V
    .locals 1

    iget-object v0, p0, Lgf/D$a;->d:LVe/c;

    invoke-static {v0, p1}, LYe/d;->j(LVe/c;LVe/c;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p1, p0, Lgf/D$a;->d:LVe/c;

    iget-object p1, p0, Lgf/D$a;->b:LTe/I;

    invoke-interface {p1, p0}, LTe/I;->e(LVe/c;)V

    :cond_0
    return-void
.end method

.method public g(Ljava/lang/Object;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget-boolean v0, p0, Lgf/D$a;->g:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-wide v0, p0, Lgf/D$a;->f:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lgf/D$a;->f:J

    iget-object v2, p0, Lgf/D$a;->e:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LVe/c;

    if-eqz v2, :cond_1

    invoke-interface {v2}, LVe/c;->dispose()V

    :cond_1
    :try_start_0
    iget-object v3, p0, Lgf/D$a;->c:LXe/o;

    invoke-interface {v3, p1}, LXe/o;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    const-string v4, "The ObservableSource supplied is null"

    invoke-static {v3, v4}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LTe/G;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance v4, Lgf/D$a$a;

    invoke-direct {v4, p0, v0, v1, p1}, Lgf/D$a$a;-><init>(Lgf/D$a;JLjava/lang/Object;)V

    iget-object p1, p0, Lgf/D$a;->e:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {p1, v2, v4}, Landroidx/lifecycle/c;->a(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-interface {v3, v4}, LTe/G;->b(LTe/I;)V

    :cond_2
    return-void

    :catchall_0
    move-exception p1

    invoke-static {p1}, Lio/reactivex/exceptions/a;->b(Ljava/lang/Throwable;)V

    invoke-virtual {p0}, Lgf/D$a;->dispose()V

    iget-object v0, p0, Lgf/D$a;->b:LTe/I;

    invoke-interface {v0, p1}, LTe/I;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    iget-object v0, p0, Lgf/D$a;->e:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v0}, LYe/d;->a(Ljava/util/concurrent/atomic/AtomicReference;)Z

    iget-object v0, p0, Lgf/D$a;->b:LTe/I;

    invoke-interface {v0, p1}, LTe/I;->onError(Ljava/lang/Throwable;)V

    return-void
.end method
