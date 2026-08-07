.class public final Ldf/W;
.super LTe/K;
.source "SourceFile"

# interfaces
.implements Laf/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ldf/W$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "LTe/K<",
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

.field public final d:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(LTe/l;JLjava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LTe/l<",
            "TT;>;JTT;)V"
        }
    .end annotation

    invoke-direct {p0}, LTe/K;-><init>()V

    iput-object p1, p0, Ldf/W;->b:LTe/l;

    iput-wide p2, p0, Ldf/W;->c:J

    iput-object p4, p0, Ldf/W;->d:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public d1(LTe/N;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LTe/N<",
            "-TT;>;)V"
        }
    .end annotation

    iget-object v0, p0, Ldf/W;->b:LTe/l;

    new-instance v1, Ldf/W$a;

    iget-wide v2, p0, Ldf/W;->c:J

    iget-object v4, p0, Ldf/W;->d:Ljava/lang/Object;

    invoke-direct {v1, p1, v2, v3, v4}, Ldf/W$a;-><init>(LTe/N;JLjava/lang/Object;)V

    invoke-virtual {v0, v1}, LTe/l;->l6(LTe/q;)V

    return-void
.end method

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

    iget-object v1, p0, Ldf/W;->b:LTe/l;

    iget-wide v2, p0, Ldf/W;->c:J

    iget-object v4, p0, Ldf/W;->d:Ljava/lang/Object;

    const/4 v5, 0x1

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Ldf/U;-><init>(LTe/l;JLjava/lang/Object;Z)V

    invoke-static {v6}, Lqf/a;->P(LTe/l;)LTe/l;

    move-result-object v0

    return-object v0
.end method
