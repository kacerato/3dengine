.class public final Ldf/Y1;
.super Ldf/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ldf/Y1$a;,
        Ldf/Y1$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "U:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ldf/a<",
        "TT;TR;>;"
    }
.end annotation


# instance fields
.field public final d:LXe/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LXe/c<",
            "-TT;-TU;+TR;>;"
        }
    .end annotation
.end field

.field public final e:LCi/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LCi/b<",
            "+TU;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(LTe/l;LXe/c;LCi/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LTe/l<",
            "TT;>;",
            "LXe/c<",
            "-TT;-TU;+TR;>;",
            "LCi/b<",
            "+TU;>;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Ldf/a;-><init>(LTe/l;)V

    iput-object p2, p0, Ldf/Y1;->d:LXe/c;

    iput-object p3, p0, Ldf/Y1;->e:LCi/b;

    return-void
.end method


# virtual methods
.method public m6(LCi/c;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LCi/c<",
            "-TR;>;)V"
        }
    .end annotation

    new-instance v0, Luf/e;

    invoke-direct {v0, p1}, Luf/e;-><init>(LCi/c;)V

    new-instance p1, Ldf/Y1$b;

    iget-object v1, p0, Ldf/Y1;->d:LXe/c;

    invoke-direct {p1, v0, v1}, Ldf/Y1$b;-><init>(LCi/c;LXe/c;)V

    invoke-virtual {v0, p1}, Luf/e;->h(LCi/d;)V

    iget-object v0, p0, Ldf/Y1;->e:LCi/b;

    new-instance v1, Ldf/Y1$a;

    invoke-direct {v1, p0, p1}, Ldf/Y1$a;-><init>(Ldf/Y1;Ldf/Y1$b;)V

    invoke-interface {v0, v1}, LCi/b;->l(LCi/c;)V

    iget-object v0, p0, Ldf/a;->c:LTe/l;

    invoke-virtual {v0, p1}, LTe/l;->l6(LTe/q;)V

    return-void
.end method
