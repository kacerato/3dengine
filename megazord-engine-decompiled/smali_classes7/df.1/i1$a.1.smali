.class public final Ldf/i1$a;
.super Ldf/i1$c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldf/i1;
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
        "Ldf/i1$c<",
        "TT;>;"
    }
.end annotation


# static fields
.field public static final j:J = -0x2a0bdab9530de829L


# instance fields
.field public final h:Ljava/util/concurrent/atomic/AtomicInteger;

.field public volatile i:Z


# direct methods
.method public constructor <init>(LCi/c;LCi/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LCi/c<",
            "-TT;>;",
            "LCi/b<",
            "*>;)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ldf/i1$c;-><init>(LCi/c;LCi/b;)V

    new-instance p1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object p1, p0, Ldf/i1$a;->h:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method


# virtual methods
.method public c()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Ldf/i1$a;->i:Z

    iget-object v0, p0, Ldf/i1$a;->h:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ldf/i1$c;->d()V

    iget-object v0, p0, Ldf/i1$c;->b:LCi/c;

    invoke-interface {v0}, LCi/c;->a()V

    :cond_0
    return-void
.end method

.method public f()V
    .locals 1

    iget-object v0, p0, Ldf/i1$a;->h:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    iget-boolean v0, p0, Ldf/i1$a;->i:Z

    invoke-virtual {p0}, Ldf/i1$c;->d()V

    if-eqz v0, :cond_1

    iget-object v0, p0, Ldf/i1$c;->b:LCi/c;

    invoke-interface {v0}, LCi/c;->a()V

    return-void

    :cond_1
    iget-object v0, p0, Ldf/i1$a;->h:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    if-nez v0, :cond_0

    :cond_2
    return-void
.end method
