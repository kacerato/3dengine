.class public final Ldf/M1$a;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "SourceFile"

# interfaces
.implements LTe/q;
.implements LVe/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldf/M1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/concurrent/atomic/AtomicReference<",
        "LCi/d;",
        ">;",
        "LTe/q<",
        "Ljava/lang/Object;",
        ">;",
        "LVe/c;"
    }
.end annotation


# static fields
.field public static final d:J = 0x78db4ef70799ee01L


# instance fields
.field public final b:Ldf/M1$c;

.field public final c:J


# direct methods
.method public constructor <init>(JLdf/M1$c;)V
    .locals 0

    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-wide p1, p0, Ldf/M1$a;->c:J

    iput-object p3, p0, Ldf/M1$a;->b:Ldf/M1$c;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lmf/j;->CANCELLED:Lmf/j;

    if-eq v0, v1, :cond_0

    invoke-virtual {p0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->lazySet(Ljava/lang/Object;)V

    iget-object v0, p0, Ldf/M1$a;->b:Ldf/M1$c;

    iget-wide v1, p0, Ldf/M1$a;->c:J

    invoke-interface {v0, v1, v2}, Ldf/N1$d;->b(J)V

    :cond_0
    return-void
.end method

.method public d()Z
    .locals 2

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

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
    .locals 0

    invoke-static {p0}, Lmf/j;->a(Ljava/util/concurrent/atomic/AtomicReference;)Z

    return-void
.end method

.method public g(Ljava/lang/Object;)V
    .locals 2

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LCi/d;

    sget-object v0, Lmf/j;->CANCELLED:Lmf/j;

    if-eq p1, v0, :cond_0

    invoke-interface {p1}, LCi/d;->cancel()V

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicReference;->lazySet(Ljava/lang/Object;)V

    iget-object p1, p0, Ldf/M1$a;->b:Ldf/M1$c;

    iget-wide v0, p0, Ldf/M1$a;->c:J

    invoke-interface {p1, v0, v1}, Ldf/N1$d;->b(J)V

    :cond_0
    return-void
.end method

.method public h(LCi/d;)V
    .locals 2

    const-wide v0, 0x7fffffffffffffffL

    invoke-static {p0, p1, v0, v1}, Lmf/j;->k(Ljava/util/concurrent/atomic/AtomicReference;LCi/d;J)Z

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 3

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lmf/j;->CANCELLED:Lmf/j;

    if-eq v0, v1, :cond_0

    invoke-virtual {p0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->lazySet(Ljava/lang/Object;)V

    iget-object v0, p0, Ldf/M1$a;->b:Ldf/M1$c;

    iget-wide v1, p0, Ldf/M1$a;->c:J

    invoke-interface {v0, v1, v2, p1}, Ldf/M1$c;->c(JLjava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lqf/a;->Y(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
