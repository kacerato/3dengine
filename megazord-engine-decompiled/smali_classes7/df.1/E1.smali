.class public final Ldf/E1;
.super Ldf/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ldf/E1$a;
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

.field public final e:J

.field public final f:Ljava/util/concurrent/TimeUnit;

.field public final g:LTe/J;

.field public final h:I

.field public final i:Z


# direct methods
.method public constructor <init>(LTe/l;JJLjava/util/concurrent/TimeUnit;LTe/J;IZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LTe/l<",
            "TT;>;JJ",
            "Ljava/util/concurrent/TimeUnit;",
            "LTe/J;",
            "IZ)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Ldf/a;-><init>(LTe/l;)V

    iput-wide p2, p0, Ldf/E1;->d:J

    iput-wide p4, p0, Ldf/E1;->e:J

    iput-object p6, p0, Ldf/E1;->f:Ljava/util/concurrent/TimeUnit;

    iput-object p7, p0, Ldf/E1;->g:LTe/J;

    iput p8, p0, Ldf/E1;->h:I

    iput-boolean p9, p0, Ldf/E1;->i:Z

    return-void
.end method


# virtual methods
.method public m6(LCi/c;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LCi/c<",
            "-TT;>;)V"
        }
    .end annotation

    iget-object v0, p0, Ldf/a;->c:LTe/l;

    new-instance v11, Ldf/E1$a;

    iget-wide v3, p0, Ldf/E1;->d:J

    iget-wide v5, p0, Ldf/E1;->e:J

    iget-object v7, p0, Ldf/E1;->f:Ljava/util/concurrent/TimeUnit;

    iget-object v8, p0, Ldf/E1;->g:LTe/J;

    iget v9, p0, Ldf/E1;->h:I

    iget-boolean v10, p0, Ldf/E1;->i:Z

    move-object v1, v11

    move-object v2, p1

    invoke-direct/range {v1 .. v10}, Ldf/E1$a;-><init>(LCi/c;JJLjava/util/concurrent/TimeUnit;LTe/J;IZ)V

    invoke-virtual {v0, v11}, LTe/l;->l6(LTe/q;)V

    return-void
.end method
