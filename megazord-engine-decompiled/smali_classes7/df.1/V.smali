.class public final Ldf/V;
.super LTe/s;
.source "SourceFile"

# interfaces
.implements Laf/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ldf/V$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "LTe/s<",
        "TT;>;",
        "Laf/b<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final b:LTe/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LTe/l<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final c:J


# direct methods
.method public constructor <init>(LTe/l;J)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LTe/l<",
            "TT;>;J)V"
        }
    .end annotation

    invoke-direct {p0}, LTe/s;-><init>()V

    iput-object p1, p0, Ldf/V;->b:LTe/l;

    iput-wide p2, p0, Ldf/V;->c:J

    return-void
.end method


# virtual methods
.method public f()LTe/l;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LTe/l<",
            "TT;>;"
        }
    .end annotation

    new-instance v6, Ldf/U;

    iget-object v1, p0, Ldf/V;->b:LTe/l;

    iget-wide v2, p0, Ldf/V;->c:J

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Ldf/U;-><init>(LTe/l;JLjava/lang/Object;Z)V

    invoke-static {v6}, Lqf/a;->P(LTe/l;)LTe/l;

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

    iget-object v0, p0, Ldf/V;->b:LTe/l;

    new-instance v1, Ldf/V$a;

    iget-wide v2, p0, Ldf/V;->c:J

    invoke-direct {v1, p1, v2, v3}, Ldf/V$a;-><init>(LTe/v;J)V

    invoke-virtual {v0, v1}, LTe/l;->l6(LTe/q;)V

    return-void
.end method
