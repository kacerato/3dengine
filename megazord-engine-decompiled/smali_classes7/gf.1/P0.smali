.class public final Lgf/P0;
.super Lgf/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgf/P0$a;
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


# direct methods
.method public constructor <init>(LTe/B;J)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LTe/B<",
            "TT;>;J)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lgf/a;-><init>(LTe/G;)V

    iput-wide p2, p0, Lgf/P0;->c:J

    return-void
.end method


# virtual methods
.method public J5(LTe/I;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LTe/I<",
            "-TT;>;)V"
        }
    .end annotation

    new-instance v4, LYe/h;

    invoke-direct {v4}, LYe/h;-><init>()V

    invoke-interface {p1, v4}, LTe/I;->e(LVe/c;)V

    new-instance v6, Lgf/P0$a;

    iget-wide v0, p0, Lgf/P0;->c:J

    const-wide v2, 0x7fffffffffffffffL

    cmp-long v5, v0, v2

    if-eqz v5, :cond_0

    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    move-wide v2, v0

    :cond_0
    iget-object v5, p0, Lgf/a;->b:LTe/G;

    move-object v0, v6

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lgf/P0$a;-><init>(LTe/I;JLYe/h;LTe/G;)V

    invoke-virtual {v6}, Lgf/P0$a;->b()V

    return-void
.end method
