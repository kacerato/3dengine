.class public final Lgf/N;
.super Lgf/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgf/N$a;
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
.field public final c:LXe/a;


# direct methods
.method public constructor <init>(LTe/G;LXe/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LTe/G<",
            "TT;>;",
            "LXe/a;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lgf/a;-><init>(LTe/G;)V

    iput-object p2, p0, Lgf/N;->c:LXe/a;

    return-void
.end method


# virtual methods
.method public J5(LTe/I;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LTe/I<",
            "-TT;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lgf/a;->b:LTe/G;

    new-instance v1, Lgf/N$a;

    iget-object v2, p0, Lgf/N;->c:LXe/a;

    invoke-direct {v1, p1, v2}, Lgf/N$a;-><init>(LTe/I;LXe/a;)V

    invoke-interface {v0, v1}, LTe/G;->b(LTe/I;)V

    return-void
.end method
