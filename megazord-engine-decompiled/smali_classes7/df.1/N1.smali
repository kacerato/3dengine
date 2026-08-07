.class public final Ldf/N1;
.super Ldf/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ldf/N1$d;,
        Ldf/N1$a;,
        Ldf/N1$b;,
        Ldf/N1$e;,
        Ldf/N1$c;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ldf/a<",
        "TT;TT;>;"
    }
.end annotation


# instance fields
.field public final d:J

.field public final e:Ljava/util/concurrent/TimeUnit;

.field public final f:LTe/J;

.field public final g:LCi/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LCi/b<",
            "+TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(LTe/l;JLjava/util/concurrent/TimeUnit;LTe/J;LCi/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LTe/l<",
            "TT;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            "LTe/J;",
            "LCi/b<",
            "+TT;>;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Ldf/a;-><init>(LTe/l;)V

    iput-wide p2, p0, Ldf/N1;->d:J

    iput-object p4, p0, Ldf/N1;->e:Ljava/util/concurrent/TimeUnit;

    iput-object p5, p0, Ldf/N1;->f:LTe/J;

    iput-object p6, p0, Ldf/N1;->g:LCi/b;

    return-void
.end method


# virtual methods
.method public m6(LCi/c;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LCi/c<",
            "-TT;>;)V"
        }
    .end annotation

    iget-object v0, p0, Ldf/N1;->g:LCi/b;

    const-wide/16 v1, 0x0

    if-nez v0, :cond_0

    new-instance v0, Ldf/N1$c;

    iget-wide v5, p0, Ldf/N1;->d:J

    iget-object v7, p0, Ldf/N1;->e:Ljava/util/concurrent/TimeUnit;

    iget-object v3, p0, Ldf/N1;->f:LTe/J;

    invoke-virtual {v3}, LTe/J;->c()LTe/J$c;

    move-result-object v8

    move-object v3, v0

    move-object v4, p1

    invoke-direct/range {v3 .. v8}, Ldf/N1$c;-><init>(LCi/c;JLjava/util/concurrent/TimeUnit;LTe/J$c;)V

    invoke-interface {p1, v0}, LCi/c;->h(LCi/d;)V

    invoke-virtual {v0, v1, v2}, Ldf/N1$c;->d(J)V

    iget-object p1, p0, Ldf/a;->c:LTe/l;

    invoke-virtual {p1, v0}, LTe/l;->l6(LTe/q;)V

    goto :goto_0

    :cond_0
    new-instance v0, Ldf/N1$b;

    iget-wide v5, p0, Ldf/N1;->d:J

    iget-object v7, p0, Ldf/N1;->e:Ljava/util/concurrent/TimeUnit;

    iget-object v3, p0, Ldf/N1;->f:LTe/J;

    invoke-virtual {v3}, LTe/J;->c()LTe/J$c;

    move-result-object v8

    iget-object v9, p0, Ldf/N1;->g:LCi/b;

    move-object v3, v0

    move-object v4, p1

    invoke-direct/range {v3 .. v9}, Ldf/N1$b;-><init>(LCi/c;JLjava/util/concurrent/TimeUnit;LTe/J$c;LCi/b;)V

    invoke-interface {p1, v0}, LCi/c;->h(LCi/d;)V

    invoke-virtual {v0, v1, v2}, Ldf/N1$b;->m(J)V

    iget-object p1, p0, Ldf/a;->c:LTe/l;

    invoke-virtual {p1, v0}, LTe/l;->l6(LTe/q;)V

    :goto_0
    return-void
.end method
