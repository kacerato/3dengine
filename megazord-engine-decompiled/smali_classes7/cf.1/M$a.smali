.class public final Lcf/M$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcf/M;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcf/M$a$a;
    }
.end annotation


# instance fields
.field public final b:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final c:LVe/b;

.field public final d:LTe/f;

.field public final synthetic e:Lcf/M;


# direct methods
.method public constructor <init>(Lcf/M;Ljava/util/concurrent/atomic/AtomicBoolean;LVe/b;LTe/f;)V
    .locals 0

    iput-object p1, p0, Lcf/M$a;->e:Lcf/M;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcf/M$a;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p3, p0, Lcf/M$a;->c:LVe/b;

    iput-object p4, p0, Lcf/M$a;->d:LTe/f;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lcf/M$a;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcf/M$a;->c:LVe/b;

    invoke-virtual {v0}, LVe/b;->f()V

    iget-object v0, p0, Lcf/M$a;->e:Lcf/M;

    iget-object v0, v0, Lcf/M;->f:LTe/i;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcf/M$a;->d:LTe/f;

    new-instance v1, Ljava/util/concurrent/TimeoutException;

    iget-object v2, p0, Lcf/M$a;->e:Lcf/M;

    iget-wide v3, v2, Lcf/M;->c:J

    iget-object v2, v2, Lcf/M;->d:Ljava/util/concurrent/TimeUnit;

    invoke-static {v3, v4, v2}, Lio/reactivex/internal/util/ExceptionHelper;->e(JLjava/util/concurrent/TimeUnit;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/concurrent/TimeoutException;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, LTe/f;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    new-instance v1, Lcf/M$a$a;

    invoke-direct {v1, p0}, Lcf/M$a$a;-><init>(Lcf/M$a;)V

    invoke-interface {v0, v1}, LTe/i;->b(LTe/f;)V

    :cond_1
    :goto_0
    return-void
.end method
