.class public final Lgf/r0;
.super LTe/B;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgf/r0$a;
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

.field public final e:J

.field public final f:J

.field public final g:Ljava/util/concurrent/TimeUnit;


# direct methods
.method public constructor <init>(JJJJLjava/util/concurrent/TimeUnit;LTe/J;)V
    .locals 0

    invoke-direct {p0}, LTe/B;-><init>()V

    iput-wide p5, p0, Lgf/r0;->e:J

    iput-wide p7, p0, Lgf/r0;->f:J

    iput-object p9, p0, Lgf/r0;->g:Ljava/util/concurrent/TimeUnit;

    iput-object p10, p0, Lgf/r0;->b:LTe/J;

    iput-wide p1, p0, Lgf/r0;->c:J

    iput-wide p3, p0, Lgf/r0;->d:J

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

    new-instance v7, Lgf/r0$a;

    iget-wide v2, p0, Lgf/r0;->c:J

    iget-wide v4, p0, Lgf/r0;->d:J

    move-object v0, v7

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lgf/r0$a;-><init>(LTe/I;JJ)V

    invoke-interface {p1, v7}, LTe/I;->e(LVe/c;)V

    iget-object v0, p0, Lgf/r0;->b:LTe/J;

    instance-of p1, v0, Lkf/s;

    if-eqz p1, :cond_0

    invoke-virtual {v0}, LTe/J;->c()LTe/J$c;

    move-result-object v0

    invoke-virtual {v7, v0}, Lgf/r0$a;->a(LVe/c;)V

    iget-wide v2, p0, Lgf/r0;->e:J

    iget-wide v4, p0, Lgf/r0;->f:J

    iget-object v6, p0, Lgf/r0;->g:Ljava/util/concurrent/TimeUnit;

    move-object v1, v7

    invoke-virtual/range {v0 .. v6}, LTe/J$c;->e(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)LVe/c;

    goto :goto_0

    :cond_0
    iget-wide v2, p0, Lgf/r0;->e:J

    iget-wide v4, p0, Lgf/r0;->f:J

    iget-object v6, p0, Lgf/r0;->g:Ljava/util/concurrent/TimeUnit;

    move-object v1, v7

    invoke-virtual/range {v0 .. v6}, LTe/J;->h(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)LVe/c;

    move-result-object p1

    invoke-virtual {v7, p1}, Lgf/r0$a;->a(LVe/c;)V

    :goto_0
    return-void
.end method
