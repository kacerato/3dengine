.class public final Ldf/S;
.super Ldf/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ldf/S$a;,
        Ldf/S$b;
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
.field public final d:LXe/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LXe/g<",
            "-TT;>;"
        }
    .end annotation
.end field

.field public final e:LXe/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LXe/g<",
            "-",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation
.end field

.field public final f:LXe/a;

.field public final g:LXe/a;


# direct methods
.method public constructor <init>(LTe/l;LXe/g;LXe/g;LXe/a;LXe/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LTe/l<",
            "TT;>;",
            "LXe/g<",
            "-TT;>;",
            "LXe/g<",
            "-",
            "Ljava/lang/Throwable;",
            ">;",
            "LXe/a;",
            "LXe/a;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1}, Ldf/a;-><init>(LTe/l;)V

    iput-object p2, p0, Ldf/S;->d:LXe/g;

    iput-object p3, p0, Ldf/S;->e:LXe/g;

    iput-object p4, p0, Ldf/S;->f:LXe/a;

    iput-object p5, p0, Ldf/S;->g:LXe/a;

    return-void
.end method


# virtual methods
.method public m6(LCi/c;)V
    .locals 8
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

    new-instance v7, Ldf/S$a;

    move-object v2, p1

    check-cast v2, Laf/a;

    iget-object v3, p0, Ldf/S;->d:LXe/g;

    iget-object v4, p0, Ldf/S;->e:LXe/g;

    iget-object v5, p0, Ldf/S;->f:LXe/a;

    iget-object v6, p0, Ldf/S;->g:LXe/a;

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Ldf/S$a;-><init>(Laf/a;LXe/g;LXe/g;LXe/a;LXe/a;)V

    invoke-virtual {v0, v7}, LTe/l;->l6(LTe/q;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Ldf/a;->c:LTe/l;

    new-instance v7, Ldf/S$b;

    iget-object v3, p0, Ldf/S;->d:LXe/g;

    iget-object v4, p0, Ldf/S;->e:LXe/g;

    iget-object v5, p0, Ldf/S;->f:LXe/a;

    iget-object v6, p0, Ldf/S;->g:LXe/a;

    move-object v1, v7

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Ldf/S$b;-><init>(LCi/c;LXe/g;LXe/g;LXe/a;LXe/a;)V

    invoke-virtual {v0, v7}, LTe/l;->l6(LTe/q;)V

    :goto_0
    return-void
.end method
