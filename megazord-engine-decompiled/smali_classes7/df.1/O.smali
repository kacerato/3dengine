.class public final Ldf/O;
.super Ldf/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ldf/O$a;,
        Ldf/O$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "K:",
        "Ljava/lang/Object;",
        ">",
        "Ldf/a<",
        "TT;TT;>;"
    }
.end annotation


# instance fields
.field public final d:LXe/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LXe/o<",
            "-TT;TK;>;"
        }
    .end annotation
.end field

.field public final e:LXe/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LXe/d<",
            "-TK;-TK;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(LTe/l;LXe/o;LXe/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LTe/l<",
            "TT;>;",
            "LXe/o<",
            "-TT;TK;>;",
            "LXe/d<",
            "-TK;-TK;>;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Ldf/a;-><init>(LTe/l;)V

    iput-object p2, p0, Ldf/O;->d:LXe/o;

    iput-object p3, p0, Ldf/O;->e:LXe/d;

    return-void
.end method


# virtual methods
.method public m6(LCi/c;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LCi/c<",
            "-TT;>;)V"
        }
    .end annotation

    instance-of v0, p1, Laf/a;

    if-eqz v0, :cond_0

    check-cast p1, Laf/a;

    iget-object v0, p0, Ldf/a;->c:LTe/l;

    new-instance v1, Ldf/O$a;

    iget-object v2, p0, Ldf/O;->d:LXe/o;

    iget-object v3, p0, Ldf/O;->e:LXe/d;

    invoke-direct {v1, p1, v2, v3}, Ldf/O$a;-><init>(Laf/a;LXe/o;LXe/d;)V

    invoke-virtual {v0, v1}, LTe/l;->l6(LTe/q;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Ldf/a;->c:LTe/l;

    new-instance v1, Ldf/O$b;

    iget-object v2, p0, Ldf/O;->d:LXe/o;

    iget-object v3, p0, Ldf/O;->e:LXe/d;

    invoke-direct {v1, p1, v2, v3}, Ldf/O$b;-><init>(LCi/c;LXe/o;LXe/d;)V

    invoke-virtual {v0, v1}, LTe/l;->l6(LTe/q;)V

    :goto_0
    return-void
.end method
