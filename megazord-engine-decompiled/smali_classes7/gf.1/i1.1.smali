.class public final Lgf/i1;
.super Lgf/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgf/i1$a;
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

.field public final f:I

.field public final g:Z


# direct methods
.method public constructor <init>(LTe/G;JLjava/util/concurrent/TimeUnit;LTe/J;IZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LTe/G<",
            "TT;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            "LTe/J;",
            "IZ)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lgf/a;-><init>(LTe/G;)V

    iput-wide p2, p0, Lgf/i1;->c:J

    iput-object p4, p0, Lgf/i1;->d:Ljava/util/concurrent/TimeUnit;

    iput-object p5, p0, Lgf/i1;->e:LTe/J;

    iput p6, p0, Lgf/i1;->f:I

    iput-boolean p7, p0, Lgf/i1;->g:Z

    return-void
.end method


# virtual methods
.method public J5(LTe/I;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LTe/I<",
            "-TT;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lgf/a;->b:LTe/G;

    new-instance v9, Lgf/i1$a;

    iget-wide v3, p0, Lgf/i1;->c:J

    iget-object v5, p0, Lgf/i1;->d:Ljava/util/concurrent/TimeUnit;

    iget-object v6, p0, Lgf/i1;->e:LTe/J;

    iget v7, p0, Lgf/i1;->f:I

    iget-boolean v8, p0, Lgf/i1;->g:Z

    move-object v1, v9

    move-object v2, p1

    invoke-direct/range {v1 .. v8}, Lgf/i1$a;-><init>(LTe/I;JLjava/util/concurrent/TimeUnit;LTe/J;IZ)V

    invoke-interface {v0, v9}, LTe/G;->b(LTe/I;)V

    return-void
.end method
