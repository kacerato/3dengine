.class public final Lgf/J1;
.super Lgf/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgf/J1$c;,
        Lgf/J1$a;,
        Lgf/J1$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lgf/a<",
        "TT;",
        "LTe/B<",
        "TT;>;>;"
    }
.end annotation


# instance fields
.field public final c:J

.field public final d:J

.field public final e:Ljava/util/concurrent/TimeUnit;

.field public final f:LTe/J;

.field public final g:J

.field public final h:I

.field public final i:Z


# direct methods
.method public constructor <init>(LTe/G;JJLjava/util/concurrent/TimeUnit;LTe/J;JIZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LTe/G<",
            "TT;>;JJ",
            "Ljava/util/concurrent/TimeUnit;",
            "LTe/J;",
            "JIZ)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lgf/a;-><init>(LTe/G;)V

    iput-wide p2, p0, Lgf/J1;->c:J

    iput-wide p4, p0, Lgf/J1;->d:J

    iput-object p6, p0, Lgf/J1;->e:Ljava/util/concurrent/TimeUnit;

    iput-object p7, p0, Lgf/J1;->f:LTe/J;

    iput-wide p8, p0, Lgf/J1;->g:J

    iput p10, p0, Lgf/J1;->h:I

    iput-boolean p11, p0, Lgf/J1;->i:Z

    return-void
.end method


# virtual methods
.method public J5(LTe/I;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LTe/I<",
            "-",
            "LTe/B<",
            "TT;>;>;)V"
        }
    .end annotation

    new-instance v1, Lof/m;

    invoke-direct {v1, p1}, Lof/m;-><init>(LTe/I;)V

    iget-wide v2, p0, Lgf/J1;->c:J

    iget-wide v4, p0, Lgf/J1;->d:J

    cmp-long p1, v2, v4

    if-nez p1, :cond_1

    iget-wide v7, p0, Lgf/J1;->g:J

    const-wide v4, 0x7fffffffffffffffL

    cmp-long p1, v7, v4

    if-nez p1, :cond_0

    iget-object p1, p0, Lgf/a;->b:LTe/G;

    new-instance v7, Lgf/J1$b;

    iget-wide v2, p0, Lgf/J1;->c:J

    iget-object v4, p0, Lgf/J1;->e:Ljava/util/concurrent/TimeUnit;

    iget-object v5, p0, Lgf/J1;->f:LTe/J;

    iget v6, p0, Lgf/J1;->h:I

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lgf/J1$b;-><init>(LTe/I;JLjava/util/concurrent/TimeUnit;LTe/J;I)V

    invoke-interface {p1, v7}, LTe/G;->b(LTe/I;)V

    return-void

    :cond_0
    iget-object p1, p0, Lgf/a;->b:LTe/G;

    new-instance v10, Lgf/J1$a;

    iget-object v4, p0, Lgf/J1;->e:Ljava/util/concurrent/TimeUnit;

    iget-object v5, p0, Lgf/J1;->f:LTe/J;

    iget v6, p0, Lgf/J1;->h:I

    iget-boolean v9, p0, Lgf/J1;->i:Z

    move-object v0, v10

    invoke-direct/range {v0 .. v9}, Lgf/J1$a;-><init>(LTe/I;JLjava/util/concurrent/TimeUnit;LTe/J;IJZ)V

    invoke-interface {p1, v10}, LTe/G;->b(LTe/I;)V

    return-void

    :cond_1
    iget-object p1, p0, Lgf/a;->b:LTe/G;

    new-instance v9, Lgf/J1$c;

    iget-object v6, p0, Lgf/J1;->e:Ljava/util/concurrent/TimeUnit;

    iget-object v0, p0, Lgf/J1;->f:LTe/J;

    invoke-virtual {v0}, LTe/J;->c()LTe/J$c;

    move-result-object v7

    iget v8, p0, Lgf/J1;->h:I

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lgf/J1$c;-><init>(LTe/I;JJLjava/util/concurrent/TimeUnit;LTe/J$c;I)V

    invoke-interface {p1, v9}, LTe/G;->b(LTe/I;)V

    return-void
.end method
