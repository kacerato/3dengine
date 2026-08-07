.class public final Lif/a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LTe/N;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lif/a;
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
        "LTe/N<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final b:LVe/b;

.field public final c:LTe/N;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LTe/N<",
            "-TT;>;"
        }
    .end annotation
.end field

.field public final d:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public e:LVe/c;


# direct methods
.method public constructor <init>(LTe/N;LVe/b;Ljava/util/concurrent/atomic/AtomicBoolean;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LTe/N<",
            "-TT;>;",
            "LVe/b;",
            "Ljava/util/concurrent/atomic/AtomicBoolean;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lif/a$a;->c:LTe/N;

    iput-object p2, p0, Lif/a$a;->b:LVe/b;

    iput-object p3, p0, Lif/a$a;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method


# virtual methods
.method public b(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget-object v0, p0, Lif/a$a;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lif/a$a;->b:LVe/b;

    iget-object v1, p0, Lif/a$a;->e:LVe/c;

    invoke-virtual {v0, v1}, LVe/b;->a(LVe/c;)Z

    iget-object v0, p0, Lif/a$a;->b:LVe/b;

    invoke-virtual {v0}, LVe/b;->dispose()V

    iget-object v0, p0, Lif/a$a;->c:LTe/N;

    invoke-interface {v0, p1}, LTe/N;->b(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public e(LVe/c;)V
    .locals 1

    iput-object p1, p0, Lif/a$a;->e:LVe/c;

    iget-object v0, p0, Lif/a$a;->b:LVe/b;

    invoke-virtual {v0, p1}, LVe/b;->b(LVe/c;)Z

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 3

    iget-object v0, p0, Lif/a$a;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lif/a$a;->b:LVe/b;

    iget-object v1, p0, Lif/a$a;->e:LVe/c;

    invoke-virtual {v0, v1}, LVe/b;->a(LVe/c;)Z

    iget-object v0, p0, Lif/a$a;->b:LVe/b;

    invoke-virtual {v0}, LVe/b;->dispose()V

    iget-object v0, p0, Lif/a$a;->c:LTe/N;

    invoke-interface {v0, p1}, LTe/N;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lqf/a;->Y(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
