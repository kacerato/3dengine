.class public final Ldf/J;
.super Ldf/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ldf/J$a;
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

    iput-wide p2, p0, Ldf/J;->d:J

    iput-object p4, p0, Ldf/J;->e:Ljava/util/concurrent/TimeUnit;

    iput-object p5, p0, Ldf/J;->f:LTe/J;

    iput-boolean p6, p0, Ldf/J;->g:Z

    return-void
.end method


# virtual methods
.method public m6(LCi/c;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LCi/c<",
            "-TT;>;)V"
        }
    .end annotation

    iget-boolean v0, p0, Ldf/J;->g:Z

    if-eqz v0, :cond_0

    move-object v2, p1

    goto :goto_0

    :cond_0
    new-instance v0, Luf/e;

    invoke-direct {v0, p1}, Luf/e;-><init>(LCi/c;)V

    move-object v2, v0

    :goto_0
    iget-object p1, p0, Ldf/J;->f:LTe/J;

    invoke-virtual {p1}, LTe/J;->c()LTe/J$c;

    move-result-object v6

    iget-object p1, p0, Ldf/a;->c:LTe/l;

    new-instance v0, Ldf/J$a;

    iget-wide v3, p0, Ldf/J;->d:J

    iget-object v5, p0, Ldf/J;->e:Ljava/util/concurrent/TimeUnit;

    iget-boolean v7, p0, Ldf/J;->g:Z

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Ldf/J$a;-><init>(LCi/c;JLjava/util/concurrent/TimeUnit;LTe/J$c;Z)V

    invoke-virtual {p1, v0}, LTe/l;->l6(LTe/q;)V

    return-void
.end method
