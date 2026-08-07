.class public final Lgf/w1;
.super Lgf/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgf/w1$a;
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
.method public constructor <init>(LTe/B;JLjava/util/concurrent/TimeUnit;LTe/J;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LTe/B<",
            "TT;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            "LTe/J;",
            "Z)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lgf/a;-><init>(LTe/G;)V

    iput-wide p2, p0, Lgf/w1;->c:J

    iput-object p4, p0, Lgf/w1;->d:Ljava/util/concurrent/TimeUnit;

    iput-object p5, p0, Lgf/w1;->e:LTe/J;

    iput-boolean p6, p0, Lgf/w1;->f:Z

    return-void
.end method


# virtual methods
.method public J5(LTe/I;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LTe/I<",
            "-TT;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lgf/a;->b:LTe/G;

    new-instance v8, Lgf/w1$a;

    iget-wide v3, p0, Lgf/w1;->c:J

    iget-object v5, p0, Lgf/w1;->d:Ljava/util/concurrent/TimeUnit;

    iget-object v1, p0, Lgf/w1;->e:LTe/J;

    invoke-virtual {v1}, LTe/J;->c()LTe/J$c;

    move-result-object v6

    iget-boolean v7, p0, Lgf/w1;->f:Z

    move-object v1, v8

    move-object v2, p1

    invoke-direct/range {v1 .. v7}, Lgf/w1$a;-><init>(LTe/I;JLjava/util/concurrent/TimeUnit;LTe/J$c;Z)V

    invoke-interface {v0, v8}, LTe/G;->b(LTe/I;)V

    return-void
.end method
