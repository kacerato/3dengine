.class public final Ldf/K1;
.super Ldf/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ldf/K1$a;
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

    iput-wide p2, p0, Ldf/K1;->d:J

    iput-object p4, p0, Ldf/K1;->e:Ljava/util/concurrent/TimeUnit;

    iput-object p5, p0, Ldf/K1;->f:LTe/J;

    iput-boolean p6, p0, Ldf/K1;->g:Z

    return-void
.end method


# virtual methods
.method public m6(LCi/c;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LCi/c<",
            "-TT;>;)V"
        }
    .end annotation

    iget-object v0, p0, Ldf/a;->c:LTe/l;

    new-instance v8, Ldf/K1$a;

    iget-wide v3, p0, Ldf/K1;->d:J

    iget-object v5, p0, Ldf/K1;->e:Ljava/util/concurrent/TimeUnit;

    iget-object v1, p0, Ldf/K1;->f:LTe/J;

    invoke-virtual {v1}, LTe/J;->c()LTe/J$c;

    move-result-object v6

    iget-boolean v7, p0, Ldf/K1;->g:Z

    move-object v1, v8

    move-object v2, p1

    invoke-direct/range {v1 .. v7}, Ldf/K1$a;-><init>(LCi/c;JLjava/util/concurrent/TimeUnit;LTe/J$c;Z)V

    invoke-virtual {v0, v8}, LTe/l;->l6(LTe/q;)V

    return-void
.end method
