.class public final Lgf/C0;
.super Lgf/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgf/C0$a;
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
.field public final c:LTe/Q;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LTe/Q<",
            "+TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(LTe/B;LTe/Q;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LTe/B<",
            "TT;>;",
            "LTe/Q<",
            "+TT;>;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lgf/a;-><init>(LTe/G;)V

    iput-object p2, p0, Lgf/C0;->c:LTe/Q;

    return-void
.end method


# virtual methods
.method public J5(LTe/I;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LTe/I<",
            "-TT;>;)V"
        }
    .end annotation

    new-instance v0, Lgf/C0$a;

    invoke-direct {v0, p1}, Lgf/C0$a;-><init>(LTe/I;)V

    invoke-interface {p1, v0}, LTe/I;->e(LVe/c;)V

    iget-object p1, p0, Lgf/a;->b:LTe/G;

    invoke-interface {p1, v0}, LTe/G;->b(LTe/I;)V

    iget-object p1, p0, Lgf/C0;->c:LTe/Q;

    iget-object v0, v0, Lgf/C0$a;->d:Lgf/C0$a$a;

    invoke-interface {p1, v0}, LTe/Q;->a(LTe/N;)V

    return-void
.end method
