.class public final Lgf/S;
.super LTe/s;
.source "SourceFile"

# interfaces
.implements Laf/d;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgf/S$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "LTe/s<",
        "TT;>;",
        "Laf/d<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final b:LTe/G;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LTe/G<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final c:J


# direct methods
.method public constructor <init>(LTe/G;J)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LTe/G<",
            "TT;>;J)V"
        }
    .end annotation

    invoke-direct {p0}, LTe/s;-><init>()V

    iput-object p1, p0, Lgf/S;->b:LTe/G;

    iput-wide p2, p0, Lgf/S;->c:J

    return-void
.end method


# virtual methods
.method public c()LTe/B;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LTe/B<",
            "TT;>;"
        }
    .end annotation

    new-instance v6, Lgf/Q;

    iget-object v1, p0, Lgf/S;->b:LTe/G;

    iget-wide v2, p0, Lgf/S;->c:J

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lgf/Q;-><init>(LTe/G;JLjava/lang/Object;Z)V

    invoke-static {v6}, Lqf/a;->R(LTe/B;)LTe/B;

    move-result-object v0

    return-object v0
.end method

.method public t1(LTe/v;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LTe/v<",
            "-TT;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lgf/S;->b:LTe/G;

    new-instance v1, Lgf/S$a;

    iget-wide v2, p0, Lgf/S;->c:J

    invoke-direct {v1, p1, v2, v3}, Lgf/S$a;-><init>(LTe/v;J)V

    invoke-interface {v0, v1}, LTe/G;->b(LTe/I;)V

    return-void
.end method
