.class public final Lgf/l1;
.super Lgf/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgf/l1$b;,
        Lgf/l1$a;
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
.field public final c:LTe/J;


# direct methods
.method public constructor <init>(LTe/G;LTe/J;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LTe/G<",
            "TT;>;",
            "LTe/J;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lgf/a;-><init>(LTe/G;)V

    iput-object p2, p0, Lgf/l1;->c:LTe/J;

    return-void
.end method


# virtual methods
.method public J5(LTe/I;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LTe/I<",
            "-TT;>;)V"
        }
    .end annotation

    new-instance v0, Lgf/l1$a;

    invoke-direct {v0, p1}, Lgf/l1$a;-><init>(LTe/I;)V

    invoke-interface {p1, v0}, LTe/I;->e(LVe/c;)V

    iget-object p1, p0, Lgf/l1;->c:LTe/J;

    new-instance v1, Lgf/l1$b;

    invoke-direct {v1, p0, v0}, Lgf/l1$b;-><init>(Lgf/l1;Lgf/l1$a;)V

    invoke-virtual {p1, v1}, LTe/J;->f(Ljava/lang/Runnable;)LVe/c;

    move-result-object p1

    invoke-virtual {v0, p1}, Lgf/l1$a;->b(LVe/c;)V

    return-void
.end method
