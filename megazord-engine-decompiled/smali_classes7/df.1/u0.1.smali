.class public final Ldf/u0;
.super LTe/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ldf/u0$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "LTe/l<",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field public final c:LTe/J;

.field public final d:J

.field public final e:J

.field public final f:Ljava/util/concurrent/TimeUnit;


# direct methods
.method public constructor <init>(JJLjava/util/concurrent/TimeUnit;LTe/J;)V
    .locals 0

    invoke-direct {p0}, LTe/l;-><init>()V

    iput-wide p1, p0, Ldf/u0;->d:J

    iput-wide p3, p0, Ldf/u0;->e:J

    iput-object p5, p0, Ldf/u0;->f:Ljava/util/concurrent/TimeUnit;

    iput-object p6, p0, Ldf/u0;->c:LTe/J;

    return-void
.end method


# virtual methods
.method public m6(LCi/c;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LCi/c<",
            "-",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    new-instance v7, Ldf/u0$a;

    invoke-direct {v7, p1}, Ldf/u0$a;-><init>(LCi/c;)V

    invoke-interface {p1, v7}, LCi/c;->h(LCi/d;)V

    iget-object v0, p0, Ldf/u0;->c:LTe/J;

    instance-of p1, v0, Lkf/s;

    if-eqz p1, :cond_0

    invoke-virtual {v0}, LTe/J;->c()LTe/J$c;

    move-result-object v0

    invoke-virtual {v7, v0}, Ldf/u0$a;->a(LVe/c;)V

    iget-wide v2, p0, Ldf/u0;->d:J

    iget-wide v4, p0, Ldf/u0;->e:J

    iget-object v6, p0, Ldf/u0;->f:Ljava/util/concurrent/TimeUnit;

    move-object v1, v7

    invoke-virtual/range {v0 .. v6}, LTe/J$c;->e(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)LVe/c;

    goto :goto_0

    :cond_0
    iget-wide v2, p0, Ldf/u0;->d:J

    iget-wide v4, p0, Ldf/u0;->e:J

    iget-object v6, p0, Ldf/u0;->f:Ljava/util/concurrent/TimeUnit;

    move-object v1, v7

    invoke-virtual/range {v0 .. v6}, LTe/J;->h(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)LVe/c;

    move-result-object p1

    invoke-virtual {v7, p1}, Ldf/u0$a;->a(LVe/c;)V

    :goto_0
    return-void
.end method
