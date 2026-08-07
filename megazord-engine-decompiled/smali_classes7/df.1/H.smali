.class public final Ldf/H;
.super Ldf/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ldf/H$a;,
        Ldf/H$b;
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


# direct methods
.method public constructor <init>(LTe/l;JLjava/util/concurrent/TimeUnit;LTe/J;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LTe/l<",
            "TT;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            "LTe/J;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1}, Ldf/a;-><init>(LTe/l;)V

    iput-wide p2, p0, Ldf/H;->d:J

    iput-object p4, p0, Ldf/H;->e:Ljava/util/concurrent/TimeUnit;

    iput-object p5, p0, Ldf/H;->f:LTe/J;

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

    iget-object v0, p0, Ldf/a;->c:LTe/l;

    new-instance v7, Ldf/H$b;

    new-instance v2, Luf/e;

    invoke-direct {v2, p1}, Luf/e;-><init>(LCi/c;)V

    iget-wide v3, p0, Ldf/H;->d:J

    iget-object v5, p0, Ldf/H;->e:Ljava/util/concurrent/TimeUnit;

    iget-object p1, p0, Ldf/H;->f:LTe/J;

    invoke-virtual {p1}, LTe/J;->c()LTe/J$c;

    move-result-object v6

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Ldf/H$b;-><init>(LCi/c;JLjava/util/concurrent/TimeUnit;LTe/J$c;)V

    invoke-virtual {v0, v7}, LTe/l;->l6(LTe/q;)V

    return-void
.end method
