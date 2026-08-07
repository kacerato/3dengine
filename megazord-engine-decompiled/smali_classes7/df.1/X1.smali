.class public final Ldf/X1;
.super Ldf/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ldf/X1$c;,
        Ldf/X1$a;,
        Ldf/X1$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ldf/a<",
        "TT;",
        "LTe/l<",
        "TT;>;>;"
    }
.end annotation


# instance fields
.field public final d:J

.field public final e:J

.field public final f:Ljava/util/concurrent/TimeUnit;

.field public final g:LTe/J;

.field public final h:J

.field public final i:I

.field public final j:Z


# direct methods
.method public constructor <init>(LTe/l;JJLjava/util/concurrent/TimeUnit;LTe/J;JIZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LTe/l<",
            "TT;>;JJ",
            "Ljava/util/concurrent/TimeUnit;",
            "LTe/J;",
            "JIZ)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Ldf/a;-><init>(LTe/l;)V

    iput-wide p2, p0, Ldf/X1;->d:J

    iput-wide p4, p0, Ldf/X1;->e:J

    iput-object p6, p0, Ldf/X1;->f:Ljava/util/concurrent/TimeUnit;

    iput-object p7, p0, Ldf/X1;->g:LTe/J;

    iput-wide p8, p0, Ldf/X1;->h:J

    iput p10, p0, Ldf/X1;->i:I

    iput-boolean p11, p0, Ldf/X1;->j:Z

    return-void
.end method


# virtual methods
.method public m6(LCi/c;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LCi/c<",
            "-",
            "LTe/l<",
            "TT;>;>;)V"
        }
    .end annotation

    new-instance v1, Luf/e;

    invoke-direct {v1, p1}, Luf/e;-><init>(LCi/c;)V

    iget-wide v2, p0, Ldf/X1;->d:J

    iget-wide v4, p0, Ldf/X1;->e:J

    cmp-long p1, v2, v4

    if-nez p1, :cond_1

    iget-wide v7, p0, Ldf/X1;->h:J

    const-wide v4, 0x7fffffffffffffffL

    cmp-long p1, v7, v4

    if-nez p1, :cond_0

    iget-object p1, p0, Ldf/a;->c:LTe/l;

    new-instance v7, Ldf/X1$b;

    iget-wide v2, p0, Ldf/X1;->d:J

    iget-object v4, p0, Ldf/X1;->f:Ljava/util/concurrent/TimeUnit;

    iget-object v5, p0, Ldf/X1;->g:LTe/J;

    iget v6, p0, Ldf/X1;->i:I

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Ldf/X1$b;-><init>(LCi/c;JLjava/util/concurrent/TimeUnit;LTe/J;I)V

    invoke-virtual {p1, v7}, LTe/l;->l6(LTe/q;)V

    return-void

    :cond_0
    iget-object p1, p0, Ldf/a;->c:LTe/l;

    new-instance v10, Ldf/X1$a;

    iget-object v4, p0, Ldf/X1;->f:Ljava/util/concurrent/TimeUnit;

    iget-object v5, p0, Ldf/X1;->g:LTe/J;

    iget v6, p0, Ldf/X1;->i:I

    iget-boolean v9, p0, Ldf/X1;->j:Z

    move-object v0, v10

    invoke-direct/range {v0 .. v9}, Ldf/X1$a;-><init>(LCi/c;JLjava/util/concurrent/TimeUnit;LTe/J;IJZ)V

    invoke-virtual {p1, v10}, LTe/l;->l6(LTe/q;)V

    return-void

    :cond_1
    iget-object p1, p0, Ldf/a;->c:LTe/l;

    new-instance v9, Ldf/X1$c;

    iget-object v6, p0, Ldf/X1;->f:Ljava/util/concurrent/TimeUnit;

    iget-object v0, p0, Ldf/X1;->g:LTe/J;

    invoke-virtual {v0}, LTe/J;->c()LTe/J$c;

    move-result-object v7

    iget v8, p0, Ldf/X1;->i:I

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Ldf/X1$c;-><init>(LCi/c;JJLjava/util/concurrent/TimeUnit;LTe/J$c;I)V

    invoke-virtual {p1, v9}, LTe/l;->l6(LTe/q;)V

    return-void
.end method
