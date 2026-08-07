.class public final Ldf/Q;
.super Ldf/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ldf/Q$a;,
        Ldf/Q$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ldf/a<",
        "TT;TT;>;"
    }
.end annotation


# instance fields
.field public final d:LXe/a;


# direct methods
.method public constructor <init>(LTe/l;LXe/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LTe/l<",
            "TT;>;",
            "LXe/a;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1}, Ldf/a;-><init>(LTe/l;)V

    iput-object p2, p0, Ldf/Q;->d:LXe/a;

    return-void
.end method


# virtual methods
.method public m6(LCi/c;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LCi/c<",
            "-TT;>;)V"
        }
    .end annotation

    instance-of v0, p1, Laf/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ldf/a;->c:LTe/l;

    new-instance v1, Ldf/Q$a;

    check-cast p1, Laf/a;

    iget-object v2, p0, Ldf/Q;->d:LXe/a;

    invoke-direct {v1, p1, v2}, Ldf/Q$a;-><init>(Laf/a;LXe/a;)V

    invoke-virtual {v0, v1}, LTe/l;->l6(LTe/q;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Ldf/a;->c:LTe/l;

    new-instance v1, Ldf/Q$b;

    iget-object v2, p0, Ldf/Q;->d:LXe/a;

    invoke-direct {v1, p1, v2}, Ldf/Q$b;-><init>(LCi/c;LXe/a;)V

    invoke-virtual {v0, v1}, LTe/l;->l6(LTe/q;)V

    :goto_0
    return-void
.end method
