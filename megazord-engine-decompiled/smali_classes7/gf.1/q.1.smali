.class public final Lgf/q;
.super Lgf/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgf/q$a;,
        Lgf/q$c;,
        Lgf/q$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "U::",
        "Ljava/util/Collection<",
        "-TT;>;>",
        "Lgf/a<",
        "TT;TU;>;"
    }
.end annotation


# instance fields
.field public final c:J

.field public final d:J

.field public final e:Ljava/util/concurrent/TimeUnit;

.field public final f:LTe/J;

.field public final g:Ljava/util/concurrent/Callable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Callable<",
            "TU;>;"
        }
    .end annotation
.end field

.field public final h:I

.field public final i:Z


# direct methods
.method public constructor <init>(LTe/G;JJLjava/util/concurrent/TimeUnit;LTe/J;Ljava/util/concurrent/Callable;IZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LTe/G<",
            "TT;>;JJ",
            "Ljava/util/concurrent/TimeUnit;",
            "LTe/J;",
            "Ljava/util/concurrent/Callable<",
            "TU;>;IZ)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lgf/a;-><init>(LTe/G;)V

    iput-wide p2, p0, Lgf/q;->c:J

    iput-wide p4, p0, Lgf/q;->d:J

    iput-object p6, p0, Lgf/q;->e:Ljava/util/concurrent/TimeUnit;

    iput-object p7, p0, Lgf/q;->f:LTe/J;

    iput-object p8, p0, Lgf/q;->g:Ljava/util/concurrent/Callable;

    iput p9, p0, Lgf/q;->h:I

    iput-boolean p10, p0, Lgf/q;->i:Z

    return-void
.end method


# virtual methods
.method public J5(LTe/I;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LTe/I<",
            "-TU;>;)V"
        }
    .end annotation

    iget-wide v0, p0, Lgf/q;->c:J

    iget-wide v2, p0, Lgf/q;->d:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget v0, p0, Lgf/q;->h:I

    const v1, 0x7fffffff

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lgf/a;->b:LTe/G;

    new-instance v8, Lgf/q$b;

    new-instance v2, Lof/m;

    invoke-direct {v2, p1}, Lof/m;-><init>(LTe/I;)V

    iget-object v3, p0, Lgf/q;->g:Ljava/util/concurrent/Callable;

    iget-wide v4, p0, Lgf/q;->c:J

    iget-object v6, p0, Lgf/q;->e:Ljava/util/concurrent/TimeUnit;

    iget-object v7, p0, Lgf/q;->f:LTe/J;

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Lgf/q$b;-><init>(LTe/I;Ljava/util/concurrent/Callable;JLjava/util/concurrent/TimeUnit;LTe/J;)V

    invoke-interface {v0, v8}, LTe/G;->b(LTe/I;)V

    return-void

    :cond_0
    iget-object v0, p0, Lgf/q;->f:LTe/J;

    invoke-virtual {v0}, LTe/J;->c()LTe/J$c;

    move-result-object v9

    iget-wide v0, p0, Lgf/q;->c:J

    iget-wide v2, p0, Lgf/q;->d:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    iget-object v0, p0, Lgf/a;->b:LTe/G;

    new-instance v10, Lgf/q$a;

    new-instance v2, Lof/m;

    invoke-direct {v2, p1}, Lof/m;-><init>(LTe/I;)V

    iget-object v3, p0, Lgf/q;->g:Ljava/util/concurrent/Callable;

    iget-wide v4, p0, Lgf/q;->c:J

    iget-object v6, p0, Lgf/q;->e:Ljava/util/concurrent/TimeUnit;

    iget v7, p0, Lgf/q;->h:I

    iget-boolean v8, p0, Lgf/q;->i:Z

    move-object v1, v10

    invoke-direct/range {v1 .. v9}, Lgf/q$a;-><init>(LTe/I;Ljava/util/concurrent/Callable;JLjava/util/concurrent/TimeUnit;IZLTe/J$c;)V

    invoke-interface {v0, v10}, LTe/G;->b(LTe/I;)V

    return-void

    :cond_1
    iget-object v0, p0, Lgf/a;->b:LTe/G;

    new-instance v10, Lgf/q$c;

    new-instance v2, Lof/m;

    invoke-direct {v2, p1}, Lof/m;-><init>(LTe/I;)V

    iget-object v3, p0, Lgf/q;->g:Ljava/util/concurrent/Callable;

    iget-wide v4, p0, Lgf/q;->c:J

    iget-wide v6, p0, Lgf/q;->d:J

    iget-object v8, p0, Lgf/q;->e:Ljava/util/concurrent/TimeUnit;

    move-object v1, v10

    invoke-direct/range {v1 .. v9}, Lgf/q$c;-><init>(LTe/I;Ljava/util/concurrent/Callable;JJLjava/util/concurrent/TimeUnit;LTe/J$c;)V

    invoke-interface {v0, v10}, LTe/G;->b(LTe/I;)V

    return-void
.end method
