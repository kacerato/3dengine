.class public final Ldf/w;
.super Ldf/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ldf/w$e;,
        Ldf/w$f;,
        Ldf/w$c;,
        Ldf/w$g;,
        Ldf/w$d;,
        Ldf/w$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ldf/a<",
        "TT;TR;>;"
    }
.end annotation


# instance fields
.field public final d:LXe/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LXe/o<",
            "-TT;+",
            "LCi/b<",
            "+TR;>;>;"
        }
    .end annotation
.end field

.field public final e:I

.field public final f:Lio/reactivex/internal/util/j;


# direct methods
.method public constructor <init>(LTe/l;LXe/o;ILio/reactivex/internal/util/j;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LTe/l<",
            "TT;>;",
            "LXe/o<",
            "-TT;+",
            "LCi/b<",
            "+TR;>;>;I",
            "Lio/reactivex/internal/util/j;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1}, Ldf/a;-><init>(LTe/l;)V

    iput-object p2, p0, Ldf/w;->d:LXe/o;

    iput p3, p0, Ldf/w;->e:I

    iput-object p4, p0, Ldf/w;->f:Lio/reactivex/internal/util/j;

    return-void
.end method

.method public static O8(LCi/c;LXe/o;ILio/reactivex/internal/util/j;)LCi/c;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "LCi/c<",
            "-TR;>;",
            "LXe/o<",
            "-TT;+",
            "LCi/b<",
            "+TR;>;>;I",
            "Lio/reactivex/internal/util/j;",
            ")",
            "LCi/c<",
            "TT;>;"
        }
    .end annotation

    sget-object v0, Ldf/w$a;->a:[I

    invoke-virtual {p3}, Ljava/lang/Enum;->ordinal()I

    move-result p3

    aget p3, v0, p3

    const/4 v0, 0x1

    if-eq p3, v0, :cond_1

    const/4 v1, 0x2

    if-eq p3, v1, :cond_0

    new-instance p3, Ldf/w$d;

    invoke-direct {p3, p0, p1, p2}, Ldf/w$d;-><init>(LCi/c;LXe/o;I)V

    return-object p3

    :cond_0
    new-instance p3, Ldf/w$c;

    invoke-direct {p3, p0, p1, p2, v0}, Ldf/w$c;-><init>(LCi/c;LXe/o;IZ)V

    return-object p3

    :cond_1
    new-instance p3, Ldf/w$c;

    const/4 v0, 0x0

    invoke-direct {p3, p0, p1, p2, v0}, Ldf/w$c;-><init>(LCi/c;LXe/o;IZ)V

    return-object p3
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

    iget-object v0, p0, Ldf/a;->c:LTe/l;

    iget-object v1, p0, Ldf/w;->d:LXe/o;

    invoke-static {v0, p1, v1}, Ldf/k1;->b(LCi/b;LCi/c;LXe/o;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Ldf/a;->c:LTe/l;

    iget-object v1, p0, Ldf/w;->d:LXe/o;

    iget v2, p0, Ldf/w;->e:I

    iget-object v3, p0, Ldf/w;->f:Lio/reactivex/internal/util/j;

    invoke-static {p1, v1, v2, v3}, Ldf/w;->O8(LCi/c;LXe/o;ILio/reactivex/internal/util/j;)LCi/c;

    move-result-object p1

    invoke-virtual {v0, p1}, LTe/l;->l(LCi/c;)V

    return-void
.end method
