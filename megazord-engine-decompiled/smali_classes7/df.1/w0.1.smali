.class public final Ldf/w0;
.super Ldf/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ldf/w0$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T",
        "Left:Ljava/lang/Object;",
        "TRight:",
        "Ljava/lang/Object;",
        "T",
        "LeftEnd:Ljava/lang/Object;",
        "TRightEnd:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ldf/a<",
        "TT",
        "Left;",
        "TR;>;"
    }
.end annotation


# instance fields
.field public final d:LCi/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LCi/b<",
            "+TTRight;>;"
        }
    .end annotation
.end field

.field public final e:LXe/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LXe/o<",
            "-TT",
            "Left;",
            "+",
            "LCi/b<",
            "TT",
            "LeftEnd;",
            ">;>;"
        }
    .end annotation
.end field

.field public final f:LXe/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LXe/o<",
            "-TTRight;+",
            "LCi/b<",
            "TTRightEnd;>;>;"
        }
    .end annotation
.end field

.field public final g:LXe/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LXe/c<",
            "-TT",
            "Left;",
            "-TTRight;+TR;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(LTe/l;LCi/b;LXe/o;LXe/o;LXe/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LTe/l<",
            "TT",
            "Left;",
            ">;",
            "LCi/b<",
            "+TTRight;>;",
            "LXe/o<",
            "-TT",
            "Left;",
            "+",
            "LCi/b<",
            "TT",
            "LeftEnd;",
            ">;>;",
            "LXe/o<",
            "-TTRight;+",
            "LCi/b<",
            "TTRightEnd;>;>;",
            "LXe/c<",
            "-TT",
            "Left;",
            "-TTRight;+TR;>;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Ldf/a;-><init>(LTe/l;)V

    iput-object p2, p0, Ldf/w0;->d:LCi/b;

    iput-object p3, p0, Ldf/w0;->e:LXe/o;

    iput-object p4, p0, Ldf/w0;->f:LXe/o;

    iput-object p5, p0, Ldf/w0;->g:LXe/c;

    return-void
.end method


# virtual methods
.method public m6(LCi/c;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LCi/c<",
            "-TR;>;)V"
        }
    .end annotation

    new-instance v0, Ldf/w0$a;

    iget-object v1, p0, Ldf/w0;->e:LXe/o;

    iget-object v2, p0, Ldf/w0;->f:LXe/o;

    iget-object v3, p0, Ldf/w0;->g:LXe/c;

    invoke-direct {v0, p1, v1, v2, v3}, Ldf/w0$a;-><init>(LCi/c;LXe/o;LXe/o;LXe/c;)V

    invoke-interface {p1, v0}, LCi/c;->h(LCi/d;)V

    new-instance p1, Ldf/p0$d;

    const/4 v1, 0x1

    invoke-direct {p1, v0, v1}, Ldf/p0$d;-><init>(Ldf/p0$b;Z)V

    iget-object v1, v0, Ldf/w0$a;->e:LVe/b;

    invoke-virtual {v1, p1}, LVe/b;->b(LVe/c;)Z

    new-instance v1, Ldf/p0$d;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Ldf/p0$d;-><init>(Ldf/p0$b;Z)V

    iget-object v0, v0, Ldf/w0$a;->e:LVe/b;

    invoke-virtual {v0, v1}, LVe/b;->b(LVe/c;)Z

    iget-object v0, p0, Ldf/a;->c:LTe/l;

    invoke-virtual {v0, p1}, LTe/l;->l6(LTe/q;)V

    iget-object p1, p0, Ldf/w0;->d:LCi/b;

    invoke-interface {p1, v1}, LCi/b;->l(LCi/c;)V

    return-void
.end method
