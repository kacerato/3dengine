.class public final Ldf/y;
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

.field public final f:I

.field public final g:Lio/reactivex/internal/util/j;


# direct methods
.method public constructor <init>(LCi/b;LXe/o;IILio/reactivex/internal/util/j;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LCi/b<",
            "TT;>;",
            "LXe/o<",
            "-TT;+",
            "LCi/b<",
            "+TR;>;>;II",
            "Lio/reactivex/internal/util/j;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, LTe/l;-><init>()V

    iput-object p1, p0, Ldf/y;->c:LCi/b;

    iput-object p2, p0, Ldf/y;->d:LXe/o;

    iput p3, p0, Ldf/y;->e:I

    iput p4, p0, Ldf/y;->f:I

    iput-object p5, p0, Ldf/y;->g:Lio/reactivex/internal/util/j;

    return-void
.end method


# virtual methods
.method public m6(LCi/c;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LCi/c<",
            "-TR;>;)V"
        }
    .end annotation

    iget-object v0, p0, Ldf/y;->c:LCi/b;

    new-instance v7, Ldf/x$a;

    iget-object v3, p0, Ldf/y;->d:LXe/o;

    iget v4, p0, Ldf/y;->e:I

    iget v5, p0, Ldf/y;->f:I

    iget-object v6, p0, Ldf/y;->g:Lio/reactivex/internal/util/j;

    move-object v1, v7

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Ldf/x$a;-><init>(LCi/c;LXe/o;IILio/reactivex/internal/util/j;)V

    invoke-interface {v0, v7}, LCi/b;->l(LCi/c;)V

    return-void
.end method
