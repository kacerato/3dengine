.class public final Lgf/r1;
.super Lgf/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgf/r1$a;
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

.field public final d:J

.field public final e:Ljava/util/concurrent/TimeUnit;

.field public final f:LTe/J;

.field public final g:I

.field public final h:Z


# direct methods
.method public constructor <init>(LTe/G;JJLjava/util/concurrent/TimeUnit;LTe/J;IZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LTe/G<",
            "TT;>;JJ",
            "Ljava/util/concurrent/TimeUnit;",
            "LTe/J;",
            "IZ)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lgf/a;-><init>(LTe/G;)V

    iput-wide p2, p0, Lgf/r1;->c:J

    iput-wide p4, p0, Lgf/r1;->d:J

    iput-object p6, p0, Lgf/r1;->e:Ljava/util/concurrent/TimeUnit;

    iput-object p7, p0, Lgf/r1;->f:LTe/J;

    iput p8, p0, Lgf/r1;->g:I

    iput-boolean p9, p0, Lgf/r1;->h:Z

    return-void
.end method


# virtual methods
.method public J5(LTe/I;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LTe/I<",
            "-TT;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lgf/a;->b:LTe/G;

    new-instance v11, Lgf/r1$a;

    iget-wide v3, p0, Lgf/r1;->c:J

    iget-wide v5, p0, Lgf/r1;->d:J

    iget-object v7, p0, Lgf/r1;->e:Ljava/util/concurrent/TimeUnit;

    iget-object v8, p0, Lgf/r1;->f:LTe/J;

    iget v9, p0, Lgf/r1;->g:I

    iget-boolean v10, p0, Lgf/r1;->h:Z

    move-object v1, v11

    move-object v2, p1

    invoke-direct/range {v1 .. v10}, Lgf/r1$a;-><init>(LTe/I;JJLjava/util/concurrent/TimeUnit;LTe/J;IZ)V

    invoke-interface {v0, v11}, LTe/G;->b(LTe/I;)V

    return-void
.end method
