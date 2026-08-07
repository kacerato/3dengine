.class public final Lgf/B;
.super LTe/K;
.source "SourceFile"

# interfaces
.implements Laf/d;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgf/B$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "LTe/K<",
        "Ljava/lang/Long;",
        ">;",
        "Laf/d<",
        "Ljava/lang/Long;",
        ">;"
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


# direct methods
.method public constructor <init>(LTe/G;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LTe/G<",
            "TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, LTe/K;-><init>()V

    iput-object p1, p0, Lgf/B;->b:LTe/G;

    return-void
.end method


# virtual methods
.method public c()LTe/B;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LTe/B<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    new-instance v0, Lgf/A;

    iget-object v1, p0, Lgf/B;->b:LTe/G;

    invoke-direct {v0, v1}, Lgf/A;-><init>(LTe/G;)V

    invoke-static {v0}, Lqf/a;->R(LTe/B;)LTe/B;

    move-result-object v0

    return-object v0
.end method

.method public d1(LTe/N;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LTe/N<",
            "-",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lgf/B;->b:LTe/G;

    new-instance v1, Lgf/B$a;

    invoke-direct {v1, p1}, Lgf/B$a;-><init>(LTe/N;)V

    invoke-interface {v0, v1}, LTe/G;->b(LTe/I;)V

    return-void
.end method
