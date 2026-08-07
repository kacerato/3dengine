.class public final Ldf/j1;
.super Ldf/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ldf/j1$a;,
        Ldf/j1$b;,
        Ldf/j1$c;
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

.field public final g:Z


# direct methods
.method public constructor <init>(LTe/l;JLjava/util/concurrent/TimeUnit;LTe/J;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LTe/l<",
            "TT;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            "LTe/J;",
            "Z)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Ldf/a;-><init>(LTe/l;)V

    iput-wide p2, p0, Ldf/j1;->d:J

    iput-object p4, p0, Ldf/j1;->e:Ljava/util/concurrent/TimeUnit;

    iput-object p5, p0, Ldf/j1;->f:LTe/J;

    iput-boolean p6, p0, Ldf/j1;->g:Z

    return-void
.end method


# virtual methods
.method public m6(LCi/c;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LCi/c<",
            "-TT;>;)V"
        }
    .end annotation

    new-instance v1, Luf/e;

    invoke-direct {v1, p1}, Luf/e;-><init>(LCi/c;)V

    iget-boolean p1, p0, Ldf/j1;->g:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Ldf/a;->c:LTe/l;

    new-instance v6, Ldf/j1$a;

    iget-wide v2, p0, Ldf/j1;->d:J

    iget-object v4, p0, Ldf/j1;->e:Ljava/util/concurrent/TimeUnit;

    iget-object v5, p0, Ldf/j1;->f:LTe/J;

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Ldf/j1$a;-><init>(LCi/c;JLjava/util/concurrent/TimeUnit;LTe/J;)V

    invoke-virtual {p1, v6}, LTe/l;->l6(LTe/q;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Ldf/a;->c:LTe/l;

    new-instance v6, Ldf/j1$b;

    iget-wide v2, p0, Ldf/j1;->d:J

    iget-object v4, p0, Ldf/j1;->e:Ljava/util/concurrent/TimeUnit;

    iget-object v5, p0, Ldf/j1;->f:LTe/J;

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Ldf/j1$b;-><init>(LCi/c;JLjava/util/concurrent/TimeUnit;LTe/J;)V

    invoke-virtual {p1, v6}, LTe/l;->l6(LTe/q;)V

    :goto_0
    return-void
.end method
