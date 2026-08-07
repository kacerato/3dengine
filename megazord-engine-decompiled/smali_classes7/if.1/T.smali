.class public final Lif/T;
.super LTe/K;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lif/T$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "LTe/K<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final b:LTe/Q;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LTe/Q<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final c:J

.field public final d:Ljava/util/concurrent/TimeUnit;

.field public final e:LTe/J;

.field public final f:LTe/Q;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LTe/Q<",
            "+TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(LTe/Q;JLjava/util/concurrent/TimeUnit;LTe/J;LTe/Q;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LTe/Q<",
            "TT;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            "LTe/J;",
            "LTe/Q<",
            "+TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, LTe/K;-><init>()V

    iput-object p1, p0, Lif/T;->b:LTe/Q;

    iput-wide p2, p0, Lif/T;->c:J

    iput-object p4, p0, Lif/T;->d:Ljava/util/concurrent/TimeUnit;

    iput-object p5, p0, Lif/T;->e:LTe/J;

    iput-object p6, p0, Lif/T;->f:LTe/Q;

    return-void
.end method


# virtual methods
.method public d1(LTe/N;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LTe/N<",
            "-TT;>;)V"
        }
    .end annotation

    new-instance v6, Lif/T$a;

    iget-object v2, p0, Lif/T;->f:LTe/Q;

    iget-wide v3, p0, Lif/T;->c:J

    iget-object v5, p0, Lif/T;->d:Ljava/util/concurrent/TimeUnit;

    move-object v0, v6

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lif/T$a;-><init>(LTe/N;LTe/Q;JLjava/util/concurrent/TimeUnit;)V

    invoke-interface {p1, v6}, LTe/N;->e(LVe/c;)V

    iget-object p1, v6, Lif/T$a;->c:Ljava/util/concurrent/atomic/AtomicReference;

    iget-object v0, p0, Lif/T;->e:LTe/J;

    iget-wide v1, p0, Lif/T;->c:J

    iget-object v3, p0, Lif/T;->d:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v6, v1, v2, v3}, LTe/J;->g(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)LVe/c;

    move-result-object v0

    invoke-static {p1, v0}, LYe/d;->c(Ljava/util/concurrent/atomic/AtomicReference;LVe/c;)Z

    iget-object p1, p0, Lif/T;->b:LTe/Q;

    invoke-interface {p1, v6}, LTe/Q;->a(LTe/N;)V

    return-void
.end method
