.class public final Lif/Q;
.super LTe/K;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lif/Q$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "LTe/K<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final b:LTe/Q;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LTe/Q<",
            "+TT;>;"
        }
    .end annotation
.end field

.field public final c:LTe/J;


# direct methods
.method public constructor <init>(LTe/Q;LTe/J;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LTe/Q<",
            "+TT;>;",
            "LTe/J;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, LTe/K;-><init>()V

    iput-object p1, p0, Lif/Q;->b:LTe/Q;

    iput-object p2, p0, Lif/Q;->c:LTe/J;

    return-void
.end method


# virtual methods
.method public d1(LTe/N;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LTe/N<",
            "-TT;>;)V"
        }
    .end annotation

    new-instance v0, Lif/Q$a;

    iget-object v1, p0, Lif/Q;->b:LTe/Q;

    invoke-direct {v0, p1, v1}, Lif/Q$a;-><init>(LTe/N;LTe/Q;)V

    invoke-interface {p1, v0}, LTe/N;->e(LVe/c;)V

    iget-object p1, p0, Lif/Q;->c:LTe/J;

    invoke-virtual {p1, v0}, LTe/J;->f(Ljava/lang/Runnable;)LVe/c;

    move-result-object p1

    iget-object v0, v0, Lif/Q$a;->c:LYe/h;

    invoke-virtual {v0, p1}, LYe/h;->a(LVe/c;)Z

    return-void
.end method
