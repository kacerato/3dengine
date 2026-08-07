.class public final Lcf/S$a;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "SourceFile"

# interfaces
.implements LTe/f;
.implements LVe/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcf/S;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicReference<",
        "Ljava/lang/Object;",
        ">;",
        "LTe/f;",
        "LVe/c;"
    }
.end annotation


# static fields
.field public static final f:J = -0x95bf75d78cfb0efL


# instance fields
.field public final b:LTe/f;

.field public final c:LXe/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LXe/g<",
            "-TR;>;"
        }
    .end annotation
.end field

.field public final d:Z

.field public e:LVe/c;


# direct methods
.method public constructor <init>(LTe/f;Ljava/lang/Object;LXe/g;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LTe/f;",
            "TR;",
            "LXe/g<",
            "-TR;>;Z)V"
        }
    .end annotation

    invoke-direct {p0, p2}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcf/S$a;->b:LTe/f;

    iput-object p3, p0, Lcf/S$a;->c:LXe/g;

    iput-boolean p4, p0, Lcf/S$a;->d:Z

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    sget-object v0, LYe/d;->DISPOSED:LYe/d;

    iput-object v0, p0, Lcf/S$a;->e:LVe/c;

    iget-boolean v0, p0, Lcf/S$a;->d:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0, p0}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eq v0, p0, :cond_0

    :try_start_0
    iget-object v1, p0, Lcf/S$a;->c:LXe/g;

    invoke-interface {v1, v0}, LXe/g;->accept(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {v0}, Lio/reactivex/exceptions/a;->b(Ljava/lang/Throwable;)V

    iget-object v1, p0, Lcf/S$a;->b:LTe/f;

    invoke-interface {v1, v0}, LTe/f;->onError(Ljava/lang/Throwable;)V

    :cond_0
    return-void

    :cond_1
    :goto_0
    iget-object v0, p0, Lcf/S$a;->b:LTe/f;

    invoke-interface {v0}, LTe/f;->a()V

    iget-boolean v0, p0, Lcf/S$a;->d:Z

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcf/S$a;->b()V

    :cond_2
    return-void
.end method

.method public b()V
    .locals 2

    invoke-virtual {p0, p0}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eq v0, p0, :cond_0

    :try_start_0
    iget-object v1, p0, Lcf/S$a;->c:LXe/g;

    invoke-interface {v1, v0}, LXe/g;->accept(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {v0}, Lio/reactivex/exceptions/a;->b(Ljava/lang/Throwable;)V

    invoke-static {v0}, Lqf/a;->Y(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public d()Z
    .locals 1

    iget-object v0, p0, Lcf/S$a;->e:LVe/c;

    invoke-interface {v0}, LVe/c;->d()Z

    move-result v0

    return v0
.end method

.method public dispose()V
    .locals 1

    iget-object v0, p0, Lcf/S$a;->e:LVe/c;

    invoke-interface {v0}, LVe/c;->dispose()V

    sget-object v0, LYe/d;->DISPOSED:LYe/d;

    iput-object v0, p0, Lcf/S$a;->e:LVe/c;

    invoke-virtual {p0}, Lcf/S$a;->b()V

    return-void
.end method

.method public e(LVe/c;)V
    .locals 1

    iget-object v0, p0, Lcf/S$a;->e:LVe/c;

    invoke-static {v0, p1}, LYe/d;->j(LVe/c;LVe/c;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p1, p0, Lcf/S$a;->e:LVe/c;

    iget-object p1, p0, Lcf/S$a;->b:LTe/f;

    invoke-interface {p1, p0}, LTe/f;->e(LVe/c;)V

    :cond_0
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 2

    sget-object v0, LYe/d;->DISPOSED:LYe/d;

    iput-object v0, p0, Lcf/S$a;->e:LVe/c;

    iget-boolean v0, p0, Lcf/S$a;->d:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0, p0}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eq v0, p0, :cond_0

    :try_start_0
    iget-object v1, p0, Lcf/S$a;->c:LXe/g;

    invoke-interface {v1, v0}, LXe/g;->accept(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {v0}, Lio/reactivex/exceptions/a;->b(Ljava/lang/Throwable;)V

    new-instance v1, Lio/reactivex/exceptions/CompositeException;

    filled-new-array {p1, v0}, [Ljava/lang/Throwable;

    move-result-object p1

    invoke-direct {v1, p1}, Lio/reactivex/exceptions/CompositeException;-><init>([Ljava/lang/Throwable;)V

    move-object p1, v1

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    :goto_0
    iget-object v0, p0, Lcf/S$a;->b:LTe/f;

    invoke-interface {v0, p1}, LTe/f;->onError(Ljava/lang/Throwable;)V

    iget-boolean p1, p0, Lcf/S$a;->d:Z

    if-nez p1, :cond_2

    invoke-virtual {p0}, Lcf/S$a;->b()V

    :cond_2
    return-void
.end method
