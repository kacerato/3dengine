.class public final Ldf/e1$d;
.super Ljava/util/concurrent/atomic/AtomicLong;
.source "SourceFile"

# interfaces
.implements LCi/d;
.implements LVe/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldf/e1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicLong;",
        "LCi/d;",
        "LVe/c;"
    }
.end annotation


# static fields
.field public static final h:J = -0x3dcf6c3b2e70d8baL

.field public static final i:J = -0x8000000000000000L


# instance fields
.field public final b:Ldf/e1$j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldf/e1$j<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final c:LCi/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LCi/c<",
            "-TT;>;"
        }
    .end annotation
.end field

.field public d:Ljava/lang/Object;

.field public final e:Ljava/util/concurrent/atomic/AtomicLong;

.field public f:Z

.field public g:Z


# direct methods
.method public constructor <init>(Ldf/e1$j;LCi/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldf/e1$j<",
            "TT;>;",
            "LCi/c<",
            "-TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object p1, p0, Ldf/e1$d;->b:Ldf/e1$j;

    iput-object p2, p0, Ldf/e1$d;->c:LCi/c;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object p1, p0, Ldf/e1$d;->e:Ljava/util/concurrent/atomic/AtomicLong;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">()TU;"
        }
    .end annotation

    iget-object v0, p0, Ldf/e1$d;->d:Ljava/lang/Object;

    return-object v0
.end method

.method public b(J)J
    .locals 0

    invoke-static {p0, p1, p2}, Lio/reactivex/internal/util/d;->f(Ljava/util/concurrent/atomic/AtomicLong;J)J

    move-result-wide p1

    return-wide p1
.end method

.method public cancel()V
    .locals 0

    invoke-virtual {p0}, Ldf/e1$d;->dispose()V

    return-void
.end method

.method public d()Z
    .locals 4

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public dispose()V
    .locals 4

    const-wide/high16 v0, -0x8000000000000000L

    invoke-virtual {p0, v0, v1}, Ljava/util/concurrent/atomic/AtomicLong;->getAndSet(J)J

    move-result-wide v2

    cmp-long v0, v2, v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ldf/e1$d;->b:Ldf/e1$j;

    invoke-virtual {v0, p0}, Ldf/e1$j;->e(Ldf/e1$d;)V

    iget-object v0, p0, Ldf/e1$d;->b:Ldf/e1$j;

    invoke-virtual {v0}, Ldf/e1$j;->c()V

    const/4 v0, 0x0

    iput-object v0, p0, Ldf/e1$d;->d:Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public i(J)V
    .locals 4

    invoke-static {p1, p2}, Lmf/j;->m(J)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0, p1, p2}, Lio/reactivex/internal/util/d;->b(Ljava/util/concurrent/atomic/AtomicLong;J)J

    move-result-wide v0

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-object v0, p0, Ldf/e1$d;->e:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {v0, p1, p2}, Lio/reactivex/internal/util/d;->a(Ljava/util/concurrent/atomic/AtomicLong;J)J

    iget-object p1, p0, Ldf/e1$d;->b:Ldf/e1$j;

    invoke-virtual {p1}, Ldf/e1$j;->c()V

    iget-object p1, p0, Ldf/e1$d;->b:Ldf/e1$j;

    iget-object p1, p1, Ldf/e1$j;->b:Ldf/e1$g;

    invoke-interface {p1, p0}, Ldf/e1$g;->d(Ldf/e1$d;)V

    :cond_0
    return-void
.end method
