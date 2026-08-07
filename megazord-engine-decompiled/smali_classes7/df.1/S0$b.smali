.class public final Ldf/S0$b;
.super Ljava/util/concurrent/atomic/AtomicLong;
.source "SourceFile"

# interfaces
.implements LCi/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldf/S0;
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
        "Ljava/util/concurrent/atomic/AtomicLong;",
        "LCi/d;"
    }
.end annotation


# static fields
.field public static final e:J = -0x3dcf6c3b2e70d8baL


# instance fields
.field public final b:LCi/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LCi/c<",
            "-TT;>;"
        }
    .end annotation
.end field

.field public volatile c:Ldf/S0$c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldf/S0$c<",
            "TT;>;"
        }
    .end annotation
.end field

.field public d:J


# direct methods
.method public constructor <init>(LCi/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LCi/c<",
            "-TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object p1, p0, Ldf/S0$b;->b:LCi/c;

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 4

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    invoke-virtual {p0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->getAndSet(J)J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-object v0, p0, Ldf/S0$b;->c:Ldf/S0$c;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Ldf/S0$c;->f(Ldf/S0$b;)V

    invoke-virtual {v0}, Ldf/S0$c;->e()V

    :cond_0
    return-void
.end method

.method public i(J)V
    .locals 1

    invoke-static {p1, p2}, Lmf/j;->m(J)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0, p1, p2}, Lio/reactivex/internal/util/d;->b(Ljava/util/concurrent/atomic/AtomicLong;J)J

    iget-object p1, p0, Ldf/S0$b;->c:Ldf/S0$c;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ldf/S0$c;->e()V

    :cond_0
    return-void
.end method
