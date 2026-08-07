.class public final Lif/S;
.super LTe/K;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lif/S$b;,
        Lif/S$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "U:",
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
            "TT;>;"
        }
    .end annotation
.end field

.field public final c:LCi/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LCi/b<",
            "TU;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(LTe/Q;LCi/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LTe/Q<",
            "TT;>;",
            "LCi/b<",
            "TU;>;)V"
        }
    .end annotation

    invoke-direct {p0}, LTe/K;-><init>()V

    iput-object p1, p0, Lif/S;->b:LTe/Q;

    iput-object p2, p0, Lif/S;->c:LCi/b;

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

    new-instance v0, Lif/S$a;

    invoke-direct {v0, p1}, Lif/S$a;-><init>(LTe/N;)V

    invoke-interface {p1, v0}, LTe/N;->e(LVe/c;)V

    iget-object p1, p0, Lif/S;->c:LCi/b;

    iget-object v1, v0, Lif/S$a;->c:Lif/S$b;

    invoke-interface {p1, v1}, LCi/b;->l(LCi/c;)V

    iget-object p1, p0, Lif/S;->b:LTe/Q;

    invoke-interface {p1, v0}, LTe/Q;->a(LTe/N;)V

    return-void
.end method
