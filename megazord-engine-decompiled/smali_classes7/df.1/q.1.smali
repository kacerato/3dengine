.class public final Ldf/q;
.super Ldf/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ldf/q$a;,
        Ldf/q$c;,
        Ldf/q$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "U::",
        "Ljava/util/Collection<",
        "-TT;>;>",
        "Ldf/a<",
        "TT;TU;>;"
    }
.end annotation


# instance fields
.field public final d:J

.field public final e:J

.field public final f:Ljava/util/concurrent/TimeUnit;

.field public final g:LTe/J;

.field public final h:Ljava/util/concurrent/Callable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Callable<",
            "TU;>;"
        }
    .end annotation
.end field

.field public final i:I

.field public final j:Z


# direct methods
.method public constructor <init>(LTe/l;JJLjava/util/concurrent/TimeUnit;LTe/J;Ljava/util/concurrent/Callable;IZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LTe/l<",
            "TT;>;JJ",
            "Ljava/util/concurrent/TimeUnit;",
            "LTe/J;",
            "Ljava/util/concurrent/Callable<",
            "TU;>;IZ)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Ldf/a;-><init>(LTe/l;)V

    iput-wide p2, p0, Ldf/q;->d:J

    iput-wide p4, p0, Ldf/q;->e:J

    iput-object p6, p0, Ldf/q;->f:Ljava/util/concurrent/TimeUnit;

    iput-object p7, p0, Ldf/q;->g:LTe/J;

    iput-object p8, p0, Ldf/q;->h:Ljava/util/concurrent/Callable;

    iput p9, p0, Ldf/q;->i:I

    iput-boolean p10, p0, Ldf/q;->j:Z

    return-void
.end method


# virtual methods
.method public m6(LCi/c;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LCi/c<",
            "-TU;>;)V"
        }
    .end annotation

    iget-wide v0, p0, Ldf/q;->d:J

    iget-wide v2, p0, Ldf/q;->e:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget v0, p0, Ldf/q;->i:I

    const v1, 0x7fffffff

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Ldf/a;->c:LTe/l;

    new-instance v8, Ldf/q$b;

    new-instance v2, Luf/e;

    invoke-direct {v2, p1}, Luf/e;-><init>(LCi/c;)V

    iget-object v3, p0, Ldf/q;->h:Ljava/util/concurrent/Callable;

    iget-wide v4, p0, Ldf/q;->d:J

    iget-object v6, p0, Ldf/q;->f:Ljava/util/concurrent/TimeUnit;

    iget-object v7, p0, Ldf/q;->g:LTe/J;

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Ldf/q$b;-><init>(LCi/c;Ljava/util/concurrent/Callable;JLjava/util/concurrent/TimeUnit;LTe/J;)V

    invoke-virtual {v0, v8}, LTe/l;->l6(LTe/q;)V

    return-void

    :cond_0
    iget-object v0, p0, Ldf/q;->g:LTe/J;

    invoke-virtual {v0}, LTe/J;->c()LTe/J$c;

    move-result-object v9

    iget-wide v0, p0, Ldf/q;->d:J

    iget-wide v2, p0, Ldf/q;->e:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    iget-object v0, p0, Ldf/a;->c:LTe/l;

    new-instance v10, Ldf/q$a;

    new-instance v2, Luf/e;

    invoke-direct {v2, p1}, Luf/e;-><init>(LCi/c;)V

    iget-object v3, p0, Ldf/q;->h:Ljava/util/concurrent/Callable;

    iget-wide v4, p0, Ldf/q;->d:J

    iget-object v6, p0, Ldf/q;->f:Ljava/util/concurrent/TimeUnit;

    iget v7, p0, Ldf/q;->i:I

    iget-boolean v8, p0, Ldf/q;->j:Z

    move-object v1, v10

    invoke-direct/range {v1 .. v9}, Ldf/q$a;-><init>(LCi/c;Ljava/util/concurrent/Callable;JLjava/util/concurrent/TimeUnit;IZLTe/J$c;)V

    invoke-virtual {v0, v10}, LTe/l;->l6(LTe/q;)V

    return-void

    :cond_1
    iget-object v0, p0, Ldf/a;->c:LTe/l;

    new-instance v10, Ldf/q$c;

    new-instance v2, Luf/e;

    invoke-direct {v2, p1}, Luf/e;-><init>(LCi/c;)V

    iget-object v3, p0, Ldf/q;->h:Ljava/util/concurrent/Callable;

    iget-wide v4, p0, Ldf/q;->d:J

    iget-wide v6, p0, Ldf/q;->e:J

    iget-object v8, p0, Ldf/q;->f:Ljava/util/concurrent/TimeUnit;

    move-object v1, v10

    invoke-direct/range {v1 .. v9}, Ldf/q$c;-><init>(LCi/c;Ljava/util/concurrent/Callable;JJLjava/util/concurrent/TimeUnit;LTe/J$c;)V

    invoke-virtual {v0, v10}, LTe/l;->l6(LTe/q;)V

    return-void
.end method
