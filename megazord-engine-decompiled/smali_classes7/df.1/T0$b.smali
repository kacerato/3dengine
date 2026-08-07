.class public final Ldf/T0$b;
.super Ljava/util/concurrent/atomic/AtomicLong;
.source "SourceFile"

# interfaces
.implements LCi/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldf/T0;
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
.field public static final e:J = 0x783f9b81a81b45ffL


# instance fields
.field public final b:LCi/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LCi/c<",
            "-TT;>;"
        }
    .end annotation
.end field

.field public final c:Ldf/T0$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldf/T0$a<",
            "TT;>;"
        }
    .end annotation
.end field

.field public d:J


# direct methods
.method public constructor <init>(LCi/c;Ldf/T0$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LCi/c<",
            "-TT;>;",
            "Ldf/T0$a<",
            "TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object p1, p0, Ldf/T0$b;->b:LCi/c;

    iput-object p2, p0, Ldf/T0$b;->c:Ldf/T0$a;

    return-void
.end method


# virtual methods
.method public a()Z
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

.method public cancel()V
    .locals 4

    const-wide/high16 v0, -0x8000000000000000L

    invoke-virtual {p0, v0, v1}, Ljava/util/concurrent/atomic/AtomicLong;->getAndSet(J)J

    move-result-wide v2

    cmp-long v0, v2, v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ldf/T0$b;->c:Ldf/T0$a;

    invoke-virtual {v0, p0}, Ldf/T0$a;->S8(Ldf/T0$b;)V

    iget-object v0, p0, Ldf/T0$b;->c:Ldf/T0$a;

    invoke-virtual {v0}, Ldf/T0$a;->Q8()V

    :cond_0
    return-void
.end method

.method public i(J)V
    .locals 1

    invoke-static {p1, p2}, Lmf/j;->m(J)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0, p1, p2}, Lio/reactivex/internal/util/d;->b(Ljava/util/concurrent/atomic/AtomicLong;J)J

    iget-object p1, p0, Ldf/T0$b;->c:Ldf/T0$a;

    invoke-virtual {p1}, Ldf/T0$a;->Q8()V

    :cond_0
    return-void
.end method
