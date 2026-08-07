.class public final Lgf/z1;
.super Lgf/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgf/z1$d;,
        Lgf/z1$a;,
        Lgf/z1$b;,
        Lgf/z1$e;,
        Lgf/z1$c;
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

.field public final f:LTe/G;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LTe/G<",
            "+TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(LTe/B;JLjava/util/concurrent/TimeUnit;LTe/J;LTe/G;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LTe/B<",
            "TT;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            "LTe/J;",
            "LTe/G<",
            "+TT;>;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lgf/a;-><init>(LTe/G;)V

    iput-wide p2, p0, Lgf/z1;->c:J

    iput-object p4, p0, Lgf/z1;->d:Ljava/util/concurrent/TimeUnit;

    iput-object p5, p0, Lgf/z1;->e:LTe/J;

    iput-object p6, p0, Lgf/z1;->f:LTe/G;

    return-void
.end method


# virtual methods
.method public J5(LTe/I;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LTe/I<",
            "-TT;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lgf/z1;->f:LTe/G;

    const-wide/16 v1, 0x0

    if-nez v0, :cond_0

    new-instance v0, Lgf/z1$c;

    iget-wide v5, p0, Lgf/z1;->c:J

    iget-object v7, p0, Lgf/z1;->d:Ljava/util/concurrent/TimeUnit;

    iget-object v3, p0, Lgf/z1;->e:LTe/J;

    invoke-virtual {v3}, LTe/J;->c()LTe/J$c;

    move-result-object v8

    move-object v3, v0

    move-object v4, p1

    invoke-direct/range {v3 .. v8}, Lgf/z1$c;-><init>(LTe/I;JLjava/util/concurrent/TimeUnit;LTe/J$c;)V

    invoke-interface {p1, v0}, LTe/I;->e(LVe/c;)V

    invoke-virtual {v0, v1, v2}, Lgf/z1$c;->f(J)V

    iget-object p1, p0, Lgf/a;->b:LTe/G;

    invoke-interface {p1, v0}, LTe/G;->b(LTe/I;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lgf/z1$b;

    iget-wide v5, p0, Lgf/z1;->c:J

    iget-object v7, p0, Lgf/z1;->d:Ljava/util/concurrent/TimeUnit;

    iget-object v3, p0, Lgf/z1;->e:LTe/J;

    invoke-virtual {v3}, LTe/J;->c()LTe/J$c;

    move-result-object v8

    iget-object v9, p0, Lgf/z1;->f:LTe/G;

    move-object v3, v0

    move-object v4, p1

    invoke-direct/range {v3 .. v9}, Lgf/z1$b;-><init>(LTe/I;JLjava/util/concurrent/TimeUnit;LTe/J$c;LTe/G;)V

    invoke-interface {p1, v0}, LTe/I;->e(LVe/c;)V

    invoke-virtual {v0, v1, v2}, Lgf/z1$b;->f(J)V

    iget-object p1, p0, Lgf/a;->b:LTe/G;

    invoke-interface {p1, v0}, LTe/G;->b(LTe/I;)V

    :goto_0
    return-void
.end method
