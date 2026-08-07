.class public final Lgf/A1;
.super LTe/B;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgf/A1$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "LTe/B<",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field public final b:LTe/J;

.field public final c:J

.field public final d:Ljava/util/concurrent/TimeUnit;


# direct methods
.method public constructor <init>(JLjava/util/concurrent/TimeUnit;LTe/J;)V
    .locals 0

    invoke-direct {p0}, LTe/B;-><init>()V

    iput-wide p1, p0, Lgf/A1;->c:J

    iput-object p3, p0, Lgf/A1;->d:Ljava/util/concurrent/TimeUnit;

    iput-object p4, p0, Lgf/A1;->b:LTe/J;

    return-void
.end method


# virtual methods
.method public J5(LTe/I;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LTe/I<",
            "-",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lgf/A1$a;

    invoke-direct {v0, p1}, Lgf/A1$a;-><init>(LTe/I;)V

    invoke-interface {p1, v0}, LTe/I;->e(LVe/c;)V

    iget-object p1, p0, Lgf/A1;->b:LTe/J;

    iget-wide v1, p0, Lgf/A1;->c:J

    iget-object v3, p0, Lgf/A1;->d:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v0, v1, v2, v3}, LTe/J;->g(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)LVe/c;

    move-result-object p1

    invoke-virtual {v0, p1}, Lgf/A1$a;->a(LVe/c;)V

    return-void
.end method
