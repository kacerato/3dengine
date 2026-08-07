.class public final Lgf/W0;
.super Lgf/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgf/W0$a;,
        Lgf/W0$b;,
        Lgf/W0$c;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lgf/a<",
        "TT;TT;>;"
    }
.end annotation


# instance fields
.field public final c:J

.field public final d:Ljava/util/concurrent/TimeUnit;

.field public final e:LTe/J;

.field public final f:Z


# direct methods
.method public constructor <init>(LTe/G;JLjava/util/concurrent/TimeUnit;LTe/J;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LTe/G<",
            "TT;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            "LTe/J;",
            "Z)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lgf/a;-><init>(LTe/G;)V

    iput-wide p2, p0, Lgf/W0;->c:J

    iput-object p4, p0, Lgf/W0;->d:Ljava/util/concurrent/TimeUnit;

    iput-object p5, p0, Lgf/W0;->e:LTe/J;

    iput-boolean p6, p0, Lgf/W0;->f:Z

    return-void
.end method


# virtual methods
.method public J5(LTe/I;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LTe/I<",
            "-TT;>;)V"
        }
    .end annotation

    new-instance v1, Lof/m;

    invoke-direct {v1, p1}, Lof/m;-><init>(LTe/I;)V

    iget-boolean p1, p0, Lgf/W0;->f:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lgf/a;->b:LTe/G;

    new-instance v6, Lgf/W0$a;

    iget-wide v2, p0, Lgf/W0;->c:J

    iget-object v4, p0, Lgf/W0;->d:Ljava/util/concurrent/TimeUnit;

    iget-object v5, p0, Lgf/W0;->e:LTe/J;

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lgf/W0$a;-><init>(LTe/I;JLjava/util/concurrent/TimeUnit;LTe/J;)V

    invoke-interface {p1, v6}, LTe/G;->b(LTe/I;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lgf/a;->b:LTe/G;

    new-instance v6, Lgf/W0$b;

    iget-wide v2, p0, Lgf/W0;->c:J

    iget-object v4, p0, Lgf/W0;->d:Ljava/util/concurrent/TimeUnit;

    iget-object v5, p0, Lgf/W0;->e:LTe/J;

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lgf/W0$b;-><init>(LTe/I;JLjava/util/concurrent/TimeUnit;LTe/J;)V

    invoke-interface {p1, v6}, LTe/G;->b(LTe/I;)V

    :goto_0
    return-void
.end method
