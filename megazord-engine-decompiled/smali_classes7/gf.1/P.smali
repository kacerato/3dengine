.class public final Lgf/P;
.super Lgf/a;
.source "SourceFile"


# annotations
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
.field public final c:LXe/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LXe/g<",
            "-",
            "LVe/c;",
            ">;"
        }
    .end annotation
.end field

.field public final d:LXe/a;


# direct methods
.method public constructor <init>(LTe/B;LXe/g;LXe/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LTe/B<",
            "TT;>;",
            "LXe/g<",
            "-",
            "LVe/c;",
            ">;",
            "LXe/a;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lgf/a;-><init>(LTe/G;)V

    iput-object p2, p0, Lgf/P;->c:LXe/g;

    iput-object p3, p0, Lgf/P;->d:LXe/a;

    return-void
.end method


# virtual methods
.method public J5(LTe/I;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LTe/I<",
            "-TT;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lgf/a;->b:LTe/G;

    new-instance v1, Lbf/n;

    iget-object v2, p0, Lgf/P;->c:LXe/g;

    iget-object v3, p0, Lgf/P;->d:LXe/a;

    invoke-direct {v1, p1, v2, v3}, Lbf/n;-><init>(LTe/I;LXe/g;LXe/a;)V

    invoke-interface {v0, v1}, LTe/G;->b(LTe/I;)V

    return-void
.end method
