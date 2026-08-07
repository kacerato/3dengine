.class public final Lcf/M$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LTe/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcf/M;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public final b:LVe/b;

.field public final c:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final d:LTe/f;


# direct methods
.method public constructor <init>(LVe/b;Ljava/util/concurrent/atomic/AtomicBoolean;LTe/f;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcf/M$b;->b:LVe/b;

    iput-object p2, p0, Lcf/M$b;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p3, p0, Lcf/M$b;->d:LTe/f;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    iget-object v0, p0, Lcf/M$b;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcf/M$b;->b:LVe/b;

    invoke-virtual {v0}, LVe/b;->dispose()V

    iget-object v0, p0, Lcf/M$b;->d:LTe/f;

    invoke-interface {v0}, LTe/f;->a()V

    :cond_0
    return-void
.end method

.method public e(LVe/c;)V
    .locals 1

    iget-object v0, p0, Lcf/M$b;->b:LVe/b;

    invoke-virtual {v0, p1}, LVe/b;->b(LVe/c;)Z

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 3

    iget-object v0, p0, Lcf/M$b;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcf/M$b;->b:LVe/b;

    invoke-virtual {v0}, LVe/b;->dispose()V

    iget-object v0, p0, Lcf/M$b;->d:LTe/f;

    invoke-interface {v0, p1}, LTe/f;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lqf/a;->Y(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
