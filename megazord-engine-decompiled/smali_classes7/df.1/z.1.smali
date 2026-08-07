.class public final Ldf/z;
.super LTe/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "LTe/l<",
        "TR;>;"
    }
.end annotation


# instance fields
.field public final c:LCi/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LCi/b<",
            "TT;>;"
        }
    .end annotation
.end field

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
.method public constructor <init>(LCi/b;LXe/o;ILio/reactivex/internal/util/j;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LCi/b<",
            "TT;>;",
            "LXe/o<",
            "-TT;+",
            "LCi/b<",
            "+TR;>;>;I",
            "Lio/reactivex/internal/util/j;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, LTe/l;-><init>()V

    iput-object p1, p0, Ldf/z;->c:LCi/b;

    iput-object p2, p0, Ldf/z;->d:LXe/o;

    iput p3, p0, Ldf/z;->e:I

    iput-object p4, p0, Ldf/z;->f:Lio/reactivex/internal/util/j;

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

    iget-object v0, p0, Ldf/z;->c:LCi/b;

    iget-object v1, p0, Ldf/z;->d:LXe/o;

    invoke-static {v0, p1, v1}, Ldf/k1;->b(LCi/b;LCi/c;LXe/o;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Ldf/z;->c:LCi/b;

    iget-object v1, p0, Ldf/z;->d:LXe/o;

    iget v2, p0, Ldf/z;->e:I

    iget-object v3, p0, Ldf/z;->f:Lio/reactivex/internal/util/j;

    invoke-static {p1, v1, v2, v3}, Ldf/w;->O8(LCi/c;LXe/o;ILio/reactivex/internal/util/j;)LCi/c;

    move-result-object p1

    invoke-interface {v0, p1}, LCi/b;->l(LCi/c;)V

    return-void
.end method
