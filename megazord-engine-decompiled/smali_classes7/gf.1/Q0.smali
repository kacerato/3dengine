.class public final Lgf/Q0;
.super Lgf/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgf/Q0$a;
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
.field public final c:LXe/e;


# direct methods
.method public constructor <init>(LTe/B;LXe/e;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LTe/B<",
            "TT;>;",
            "LXe/e;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lgf/a;-><init>(LTe/G;)V

    iput-object p2, p0, Lgf/Q0;->c:LXe/e;

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

    new-instance v0, LYe/h;

    invoke-direct {v0}, LYe/h;-><init>()V

    invoke-interface {p1, v0}, LTe/I;->e(LVe/c;)V

    new-instance v1, Lgf/Q0$a;

    iget-object v2, p0, Lgf/Q0;->c:LXe/e;

    iget-object v3, p0, Lgf/a;->b:LTe/G;

    invoke-direct {v1, p1, v2, v0, v3}, Lgf/Q0$a;-><init>(LTe/I;LXe/e;LYe/h;LTe/G;)V

    invoke-virtual {v1}, Lgf/Q0$a;->b()V

    return-void
.end method
