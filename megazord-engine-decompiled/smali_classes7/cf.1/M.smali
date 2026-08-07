.class public final Lcf/M;
.super LTe/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcf/M$a;,
        Lcf/M$b;
    }
.end annotation


# instance fields
.field public final b:LTe/i;

.field public final c:J

.field public final d:Ljava/util/concurrent/TimeUnit;

.field public final e:LTe/J;

.field public final f:LTe/i;


# direct methods
.method public constructor <init>(LTe/i;JLjava/util/concurrent/TimeUnit;LTe/J;LTe/i;)V
    .locals 0

    invoke-direct {p0}, LTe/c;-><init>()V

    iput-object p1, p0, Lcf/M;->b:LTe/i;

    iput-wide p2, p0, Lcf/M;->c:J

    iput-object p4, p0, Lcf/M;->d:Ljava/util/concurrent/TimeUnit;

    iput-object p5, p0, Lcf/M;->e:LTe/J;

    iput-object p6, p0, Lcf/M;->f:LTe/i;

    return-void
.end method


# virtual methods
.method public K0(LTe/f;)V
    .locals 7

    new-instance v0, LVe/b;

    invoke-direct {v0}, LVe/b;-><init>()V

    invoke-interface {p1, v0}, LTe/f;->e(LVe/c;)V

    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iget-object v2, p0, Lcf/M;->e:LTe/J;

    new-instance v3, Lcf/M$a;

    invoke-direct {v3, p0, v1, v0, p1}, Lcf/M$a;-><init>(Lcf/M;Ljava/util/concurrent/atomic/AtomicBoolean;LVe/b;LTe/f;)V

    iget-wide v4, p0, Lcf/M;->c:J

    iget-object v6, p0, Lcf/M;->d:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v3, v4, v5, v6}, LTe/J;->g(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)LVe/c;

    move-result-object v2

    invoke-virtual {v0, v2}, LVe/b;->b(LVe/c;)Z

    iget-object v2, p0, Lcf/M;->b:LTe/i;

    new-instance v3, Lcf/M$b;

    invoke-direct {v3, v0, v1, p1}, Lcf/M$b;-><init>(LVe/b;Ljava/util/concurrent/atomic/AtomicBoolean;LTe/f;)V

    invoke-interface {v2, v3}, LTe/i;->b(LTe/f;)V

    return-void
.end method
