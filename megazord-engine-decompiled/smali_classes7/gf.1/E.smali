.class public final Lgf/E;
.super Lgf/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgf/E$a;,
        Lgf/E$b;
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


# direct methods
.method public constructor <init>(LTe/G;JLjava/util/concurrent/TimeUnit;LTe/J;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LTe/G<",
            "TT;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            "LTe/J;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lgf/a;-><init>(LTe/G;)V

    iput-wide p2, p0, Lgf/E;->c:J

    iput-object p4, p0, Lgf/E;->d:Ljava/util/concurrent/TimeUnit;

    iput-object p5, p0, Lgf/E;->e:LTe/J;

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

    iget-object v0, p0, Lgf/a;->b:LTe/G;

    new-instance v7, Lgf/E$b;

    new-instance v2, Lof/m;

    invoke-direct {v2, p1}, Lof/m;-><init>(LTe/I;)V

    iget-wide v3, p0, Lgf/E;->c:J

    iget-object v5, p0, Lgf/E;->d:Ljava/util/concurrent/TimeUnit;

    iget-object p1, p0, Lgf/E;->e:LTe/J;

    invoke-virtual {p1}, LTe/J;->c()LTe/J$c;

    move-result-object v6

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lgf/E$b;-><init>(LTe/I;JLjava/util/concurrent/TimeUnit;LTe/J$c;)V

    invoke-interface {v0, v7}, LTe/G;->b(LTe/I;)V

    return-void
.end method
