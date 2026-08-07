.class public final Ldf/v1;
.super Ldf/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ldf/v1$a;
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

.field public final g:I

.field public final h:Z


# direct methods
.method public constructor <init>(LTe/l;JLjava/util/concurrent/TimeUnit;LTe/J;IZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LTe/l<",
            "TT;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            "LTe/J;",
            "IZ)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Ldf/a;-><init>(LTe/l;)V

    iput-wide p2, p0, Ldf/v1;->d:J

    iput-object p4, p0, Ldf/v1;->e:Ljava/util/concurrent/TimeUnit;

    iput-object p5, p0, Ldf/v1;->f:LTe/J;

    iput p6, p0, Ldf/v1;->g:I

    iput-boolean p7, p0, Ldf/v1;->h:Z

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

    iget-object v0, p0, Ldf/a;->c:LTe/l;

    new-instance v9, Ldf/v1$a;

    iget-wide v3, p0, Ldf/v1;->d:J

    iget-object v5, p0, Ldf/v1;->e:Ljava/util/concurrent/TimeUnit;

    iget-object v6, p0, Ldf/v1;->f:LTe/J;

    iget v7, p0, Ldf/v1;->g:I

    iget-boolean v8, p0, Ldf/v1;->h:Z

    move-object v1, v9

    move-object v2, p1

    invoke-direct/range {v1 .. v8}, Ldf/v1$a;-><init>(LCi/c;JLjava/util/concurrent/TimeUnit;LTe/J;IZ)V

    invoke-virtual {v0, v9}, LTe/l;->l6(LTe/q;)V

    return-void
.end method
