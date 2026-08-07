.class public final Ldf/O1;
.super LTe/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ldf/O1$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "LTe/l<",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field public final c:LTe/J;

.field public final d:J

.field public final e:Ljava/util/concurrent/TimeUnit;


# direct methods
.method public constructor <init>(JLjava/util/concurrent/TimeUnit;LTe/J;)V
    .locals 0

    invoke-direct {p0}, LTe/l;-><init>()V

    iput-wide p1, p0, Ldf/O1;->d:J

    iput-object p3, p0, Ldf/O1;->e:Ljava/util/concurrent/TimeUnit;

    iput-object p4, p0, Ldf/O1;->c:LTe/J;

    return-void
.end method


# virtual methods
.method public m6(LCi/c;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LCi/c<",
            "-",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Ldf/O1$a;

    invoke-direct {v0, p1}, Ldf/O1$a;-><init>(LCi/c;)V

    invoke-interface {p1, v0}, LCi/c;->h(LCi/d;)V

    iget-object p1, p0, Ldf/O1;->c:LTe/J;

    iget-wide v1, p0, Ldf/O1;->d:J

    iget-object v3, p0, Ldf/O1;->e:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v0, v1, v2, v3}, LTe/J;->g(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)LVe/c;

    move-result-object p1

    invoke-virtual {v0, p1}, Ldf/O1$a;->a(LVe/c;)V

    return-void
.end method
