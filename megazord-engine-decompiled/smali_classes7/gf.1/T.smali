.class public final Lgf/T;
.super LTe/K;
.source "SourceFile"

# interfaces
.implements Laf/d;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgf/T$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "LTe/K<",
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

.field public final d:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(LTe/G;JLjava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LTe/G<",
            "TT;>;JTT;)V"
        }
    .end annotation

    invoke-direct {p0}, LTe/K;-><init>()V

    iput-object p1, p0, Lgf/T;->b:LTe/G;

    iput-wide p2, p0, Lgf/T;->c:J

    iput-object p4, p0, Lgf/T;->d:Ljava/lang/Object;

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

    iget-object v1, p0, Lgf/T;->b:LTe/G;

    iget-wide v2, p0, Lgf/T;->c:J

    iget-object v4, p0, Lgf/T;->d:Ljava/lang/Object;

    const/4 v5, 0x1

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lgf/Q;-><init>(LTe/G;JLjava/lang/Object;Z)V

    invoke-static {v6}, Lqf/a;->R(LTe/B;)LTe/B;

    move-result-object v0

    return-object v0
.end method

.method public d1(LTe/N;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LTe/N<",
            "-TT;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lgf/T;->b:LTe/G;

    new-instance v1, Lgf/T$a;

    iget-wide v2, p0, Lgf/T;->c:J

    iget-object v4, p0, Lgf/T;->d:Ljava/lang/Object;

    invoke-direct {v1, p1, v2, v3, v4}, Lgf/T$a;-><init>(LTe/N;JLjava/lang/Object;)V

    invoke-interface {v0, v1}, LTe/G;->b(LTe/I;)V

    return-void
.end method
