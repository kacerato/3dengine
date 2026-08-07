.class public final Lgf/q0;
.super LTe/B;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgf/q0$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "LTe/B<",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field public final b:LTe/J;

.field public final c:J

.field public final d:J

.field public final e:Ljava/util/concurrent/TimeUnit;


# direct methods
.method public constructor <init>(JJLjava/util/concurrent/TimeUnit;LTe/J;)V
    .locals 0

    invoke-direct {p0}, LTe/B;-><init>()V

    iput-wide p1, p0, Lgf/q0;->c:J

    iput-wide p3, p0, Lgf/q0;->d:J

    iput-object p5, p0, Lgf/q0;->e:Ljava/util/concurrent/TimeUnit;

    iput-object p6, p0, Lgf/q0;->b:LTe/J;

    return-void
.end method


# virtual methods
.method public J5(LTe/I;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LTe/I<",
            "-",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    new-instance v7, Lgf/q0$a;

    invoke-direct {v7, p1}, Lgf/q0$a;-><init>(LTe/I;)V

    invoke-interface {p1, v7}, LTe/I;->e(LVe/c;)V

    iget-object v0, p0, Lgf/q0;->b:LTe/J;

    instance-of p1, v0, Lkf/s;

    if-eqz p1, :cond_0

    invoke-virtual {v0}, LTe/J;->c()LTe/J$c;

    move-result-object v0

    invoke-virtual {v7, v0}, Lgf/q0$a;->a(LVe/c;)V

    iget-wide v2, p0, Lgf/q0;->c:J

    iget-wide v4, p0, Lgf/q0;->d:J

    iget-object v6, p0, Lgf/q0;->e:Ljava/util/concurrent/TimeUnit;

    move-object v1, v7

    invoke-virtual/range {v0 .. v6}, LTe/J$c;->e(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)LVe/c;

    goto :goto_0

    :cond_0
    iget-wide v2, p0, Lgf/q0;->c:J

    iget-wide v4, p0, Lgf/q0;->d:J

    iget-object v6, p0, Lgf/q0;->e:Ljava/util/concurrent/TimeUnit;

    move-object v1, v7

    invoke-virtual/range {v0 .. v6}, LTe/J;->h(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)LVe/c;

    move-result-object p1

    invoke-virtual {v7, p1}, Lgf/q0$a;->a(LVe/c;)V

    :goto_0
    return-void
.end method
