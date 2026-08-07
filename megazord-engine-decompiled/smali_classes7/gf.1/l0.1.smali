.class public final Lgf/l0;
.super Lgf/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgf/l0$c;,
        Lgf/l0$d;,
        Lgf/l0$a;,
        Lgf/l0$b;
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
        "Lgf/a<",
        "TT",
        "Left;",
        "TR;>;"
    }
.end annotation


# instance fields
.field public final c:LTe/G;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LTe/G<",
            "+TTRight;>;"
        }
    .end annotation
.end field

.field public final d:LXe/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LXe/o<",
            "-TT",
            "Left;",
            "+",
            "LTe/G<",
            "TT",
            "LeftEnd;",
            ">;>;"
        }
    .end annotation
.end field

.field public final e:LXe/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LXe/o<",
            "-TTRight;+",
            "LTe/G<",
            "TTRightEnd;>;>;"
        }
    .end annotation
.end field

.field public final f:LXe/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LXe/c<",
            "-TT",
            "Left;",
            "-",
            "LTe/B<",
            "TTRight;>;+TR;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(LTe/G;LTe/G;LXe/o;LXe/o;LXe/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LTe/G<",
            "TT",
            "Left;",
            ">;",
            "LTe/G<",
            "+TTRight;>;",
            "LXe/o<",
            "-TT",
            "Left;",
            "+",
            "LTe/G<",
            "TT",
            "LeftEnd;",
            ">;>;",
            "LXe/o<",
            "-TTRight;+",
            "LTe/G<",
            "TTRightEnd;>;>;",
            "LXe/c<",
            "-TT",
            "Left;",
            "-",
            "LTe/B<",
            "TTRight;>;+TR;>;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lgf/a;-><init>(LTe/G;)V

    iput-object p2, p0, Lgf/l0;->c:LTe/G;

    iput-object p3, p0, Lgf/l0;->d:LXe/o;

    iput-object p4, p0, Lgf/l0;->e:LXe/o;

    iput-object p5, p0, Lgf/l0;->f:LXe/c;

    return-void
.end method


# virtual methods
.method public J5(LTe/I;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LTe/I<",
            "-TR;>;)V"
        }
    .end annotation

    new-instance v0, Lgf/l0$a;

    iget-object v1, p0, Lgf/l0;->d:LXe/o;

    iget-object v2, p0, Lgf/l0;->e:LXe/o;

    iget-object v3, p0, Lgf/l0;->f:LXe/c;

    invoke-direct {v0, p1, v1, v2, v3}, Lgf/l0$a;-><init>(LTe/I;LXe/o;LXe/o;LXe/c;)V

    invoke-interface {p1, v0}, LTe/I;->e(LVe/c;)V

    new-instance p1, Lgf/l0$d;

    const/4 v1, 0x1

    invoke-direct {p1, v0, v1}, Lgf/l0$d;-><init>(Lgf/l0$b;Z)V

    iget-object v1, v0, Lgf/l0$a;->d:LVe/b;

    invoke-virtual {v1, p1}, LVe/b;->b(LVe/c;)Z

    new-instance v1, Lgf/l0$d;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lgf/l0$d;-><init>(Lgf/l0$b;Z)V

    iget-object v0, v0, Lgf/l0$a;->d:LVe/b;

    invoke-virtual {v0, v1}, LVe/b;->b(LVe/c;)Z

    iget-object v0, p0, Lgf/a;->b:LTe/G;

    invoke-interface {v0, p1}, LTe/G;->b(LTe/I;)V

    iget-object p1, p0, Lgf/l0;->c:LTe/G;

    invoke-interface {p1, v1}, LTe/G;->b(LTe/I;)V

    return-void
.end method
