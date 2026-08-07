.class public final Lgf/j1;
.super Lgf/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgf/j1$a;,
        Lgf/j1$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "U:",
        "Ljava/lang/Object;",
        ">",
        "Lgf/a<",
        "TT;TT;>;"
    }
.end annotation


# instance fields
.field public final c:LTe/G;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LTe/G<",
            "TU;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(LTe/G;LTe/G;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LTe/G<",
            "TT;>;",
            "LTe/G<",
            "TU;>;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lgf/a;-><init>(LTe/G;)V

    iput-object p2, p0, Lgf/j1;->c:LTe/G;

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

    new-instance v0, Lof/m;

    invoke-direct {v0, p1}, Lof/m;-><init>(LTe/I;)V

    new-instance p1, LYe/a;

    const/4 v1, 0x2

    invoke-direct {p1, v1}, LYe/a;-><init>(I)V

    invoke-virtual {v0, p1}, Lof/m;->e(LVe/c;)V

    new-instance v1, Lgf/j1$b;

    invoke-direct {v1, v0, p1}, Lgf/j1$b;-><init>(LTe/I;LYe/a;)V

    iget-object v2, p0, Lgf/j1;->c:LTe/G;

    new-instance v3, Lgf/j1$a;

    invoke-direct {v3, p0, p1, v1, v0}, Lgf/j1$a;-><init>(Lgf/j1;LYe/a;Lgf/j1$b;Lof/m;)V

    invoke-interface {v2, v3}, LTe/G;->b(LTe/I;)V

    iget-object p1, p0, Lgf/a;->b:LTe/G;

    invoke-interface {p1, v1}, LTe/G;->b(LTe/I;)V

    return-void
.end method
