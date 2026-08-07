.class public final Lgf/K1;
.super Lgf/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgf/K1$b;,
        Lgf/K1$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "U:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Lgf/a<",
        "TT;TR;>;"
    }
.end annotation


# instance fields
.field public final c:LXe/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LXe/c<",
            "-TT;-TU;+TR;>;"
        }
    .end annotation
.end field

.field public final d:LTe/G;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LTe/G<",
            "+TU;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(LTe/G;LXe/c;LTe/G;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LTe/G<",
            "TT;>;",
            "LXe/c<",
            "-TT;-TU;+TR;>;",
            "LTe/G<",
            "+TU;>;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lgf/a;-><init>(LTe/G;)V

    iput-object p2, p0, Lgf/K1;->c:LXe/c;

    iput-object p3, p0, Lgf/K1;->d:LTe/G;

    return-void
.end method


# virtual methods
.method public J5(LTe/I;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LTe/I<",
            "-TR;>;)V"
        }
    .end annotation

    new-instance v0, Lof/m;

    invoke-direct {v0, p1}, Lof/m;-><init>(LTe/I;)V

    new-instance p1, Lgf/K1$a;

    iget-object v1, p0, Lgf/K1;->c:LXe/c;

    invoke-direct {p1, v0, v1}, Lgf/K1$a;-><init>(LTe/I;LXe/c;)V

    invoke-virtual {v0, p1}, Lof/m;->e(LVe/c;)V

    iget-object v0, p0, Lgf/K1;->d:LTe/G;

    new-instance v1, Lgf/K1$b;

    invoke-direct {v1, p0, p1}, Lgf/K1$b;-><init>(Lgf/K1;Lgf/K1$a;)V

    invoke-interface {v0, v1}, LTe/G;->b(LTe/I;)V

    iget-object v0, p0, Lgf/a;->b:LTe/G;

    invoke-interface {v0, p1}, LTe/G;->b(LTe/I;)V

    return-void
.end method
