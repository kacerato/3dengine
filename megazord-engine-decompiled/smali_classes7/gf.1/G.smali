.class public final Lgf/G;
.super Lgf/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgf/G$a;
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

    iput-wide p2, p0, Lgf/G;->c:J

    iput-object p4, p0, Lgf/G;->d:Ljava/util/concurrent/TimeUnit;

    iput-object p5, p0, Lgf/G;->e:LTe/J;

    iput-boolean p6, p0, Lgf/G;->f:Z

    return-void
.end method


# virtual methods
.method public J5(LTe/I;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LTe/I<",
            "-TT;>;)V"
        }
    .end annotation

    iget-boolean v0, p0, Lgf/G;->f:Z

    if-eqz v0, :cond_0

    move-object v2, p1

    goto :goto_0

    :cond_0
    new-instance v0, Lof/m;

    invoke-direct {v0, p1}, Lof/m;-><init>(LTe/I;)V

    move-object v2, v0

    :goto_0
    iget-object p1, p0, Lgf/G;->e:LTe/J;

    invoke-virtual {p1}, LTe/J;->c()LTe/J$c;

    move-result-object v6

    iget-object p1, p0, Lgf/a;->b:LTe/G;

    new-instance v0, Lgf/G$a;

    iget-wide v3, p0, Lgf/G;->c:J

    iget-object v5, p0, Lgf/G;->d:Ljava/util/concurrent/TimeUnit;

    iget-boolean v7, p0, Lgf/G;->f:Z

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lgf/G$a;-><init>(LTe/I;JLjava/util/concurrent/TimeUnit;LTe/J$c;Z)V

    invoke-interface {p1, v0}, LTe/G;->b(LTe/I;)V

    return-void
.end method
