.class public final Lcf/a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LTe/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcf/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final b:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final c:LVe/b;

.field public final d:LTe/f;

.field public e:LVe/c;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/atomic/AtomicBoolean;LVe/b;LTe/f;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcf/a$a;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p2, p0, Lcf/a$a;->c:LVe/b;

    iput-object p3, p0, Lcf/a$a;->d:LTe/f;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    iget-object v0, p0, Lcf/a$a;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcf/a$a;->c:LVe/b;

    iget-object v1, p0, Lcf/a$a;->e:LVe/c;

    invoke-virtual {v0, v1}, LVe/b;->a(LVe/c;)Z

    iget-object v0, p0, Lcf/a$a;->c:LVe/b;

    invoke-virtual {v0}, LVe/b;->dispose()V

    iget-object v0, p0, Lcf/a$a;->d:LTe/f;

    invoke-interface {v0}, LTe/f;->a()V

    :cond_0
    return-void
.end method

.method public e(LVe/c;)V
    .locals 1

    iput-object p1, p0, Lcf/a$a;->e:LVe/c;

    iget-object v0, p0, Lcf/a$a;->c:LVe/b;

    invoke-virtual {v0, p1}, LVe/b;->b(LVe/c;)Z

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 3

    iget-object v0, p0, Lcf/a$a;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcf/a$a;->c:LVe/b;

    iget-object v1, p0, Lcf/a$a;->e:LVe/c;

    invoke-virtual {v0, v1}, LVe/b;->a(LVe/c;)Z

    iget-object v0, p0, Lcf/a$a;->c:LVe/b;

    invoke-virtual {v0}, LVe/b;->dispose()V

    iget-object v0, p0, Lcf/a$a;->d:LTe/f;

    invoke-interface {v0, p1}, LTe/f;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lqf/a;->Y(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
