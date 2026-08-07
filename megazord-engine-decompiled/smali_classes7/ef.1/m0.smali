.class public final Lef/m0;
.super LTe/s;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lef/m0$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "LTe/s<",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field public final b:J

.field public final c:Ljava/util/concurrent/TimeUnit;

.field public final d:LTe/J;


# direct methods
.method public constructor <init>(JLjava/util/concurrent/TimeUnit;LTe/J;)V
    .locals 0

    invoke-direct {p0}, LTe/s;-><init>()V

    iput-wide p1, p0, Lef/m0;->b:J

    iput-object p3, p0, Lef/m0;->c:Ljava/util/concurrent/TimeUnit;

    iput-object p4, p0, Lef/m0;->d:LTe/J;

    return-void
.end method


# virtual methods
.method public t1(LTe/v;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LTe/v<",
            "-",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lef/m0$a;

    invoke-direct {v0, p1}, Lef/m0$a;-><init>(LTe/v;)V

    invoke-interface {p1, v0}, LTe/v;->e(LVe/c;)V

    iget-object p1, p0, Lef/m0;->d:LTe/J;

    iget-wide v1, p0, Lef/m0;->b:J

    iget-object v3, p0, Lef/m0;->c:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v0, v1, v2, v3}, LTe/J;->g(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)LVe/c;

    move-result-object p1

    invoke-virtual {v0, p1}, Lef/m0$a;->a(LVe/c;)V

    return-void
.end method
