.class public final Lif/i;
.super LTe/K;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lif/i$a;
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

    iput-object p1, p0, Lif/i;->b:LTe/Q;

    iput-object p2, p0, Lif/i;->c:LCi/b;

    return-void
.end method


# virtual methods
.method public d1(LTe/N;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LTe/N<",
            "-TT;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lif/i;->c:LCi/b;

    new-instance v1, Lif/i$a;

    iget-object v2, p0, Lif/i;->b:LTe/Q;

    invoke-direct {v1, p1, v2}, Lif/i$a;-><init>(LTe/N;LTe/Q;)V

    invoke-interface {v0, v1}, LCi/b;->l(LCi/c;)V

    return-void
.end method
