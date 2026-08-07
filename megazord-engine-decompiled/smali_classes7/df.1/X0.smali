.class public final Ldf/X0;
.super LTe/s;
.source "SourceFile"

# interfaces
.implements Laf/h;
.implements Laf/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ldf/X0$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "LTe/s<",
        "TT;>;",
        "Laf/h<",
        "TT;>;",
        "Laf/b<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final b:LTe/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LTe/l<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final c:LXe/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LXe/c<",
            "TT;TT;TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(LTe/l;LXe/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LTe/l<",
            "TT;>;",
            "LXe/c<",
            "TT;TT;TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, LTe/s;-><init>()V

    iput-object p1, p0, Ldf/X0;->b:LTe/l;

    iput-object p2, p0, Ldf/X0;->c:LXe/c;

    return-void
.end method


# virtual methods
.method public f()LTe/l;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LTe/l<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Ldf/W0;

    iget-object v1, p0, Ldf/X0;->b:LTe/l;

    iget-object v2, p0, Ldf/X0;->c:LXe/c;

    invoke-direct {v0, v1, v2}, Ldf/W0;-><init>(LTe/l;LXe/c;)V

    invoke-static {v0}, Lqf/a;->P(LTe/l;)LTe/l;

    move-result-object v0

    return-object v0
.end method

.method public source()LCi/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LCi/b<",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p0, Ldf/X0;->b:LTe/l;

    return-object v0
.end method

.method public t1(LTe/v;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LTe/v<",
            "-TT;>;)V"
        }
    .end annotation

    iget-object v0, p0, Ldf/X0;->b:LTe/l;

    new-instance v1, Ldf/X0$a;

    iget-object v2, p0, Ldf/X0;->c:LXe/c;

    invoke-direct {v1, p1, v2}, Ldf/X0$a;-><init>(LTe/v;LXe/c;)V

    invoke-virtual {v0, v1}, LTe/l;->l6(LTe/q;)V

    return-void
.end method
