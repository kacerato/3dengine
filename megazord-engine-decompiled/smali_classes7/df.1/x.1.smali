.class public final Ldf/x;
.super Ldf/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ldf/x$a;
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

.field public final f:I

.field public final g:Lio/reactivex/internal/util/j;


# direct methods
.method public constructor <init>(LTe/l;LXe/o;IILio/reactivex/internal/util/j;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LTe/l<",
            "TT;>;",
            "LXe/o<",
            "-TT;+",
            "LCi/b<",
            "+TR;>;>;II",
            "Lio/reactivex/internal/util/j;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1}, Ldf/a;-><init>(LTe/l;)V

    iput-object p2, p0, Ldf/x;->d:LXe/o;

    iput p3, p0, Ldf/x;->e:I

    iput p4, p0, Ldf/x;->f:I

    iput-object p5, p0, Ldf/x;->g:Lio/reactivex/internal/util/j;

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

    iget-object v0, p0, Ldf/a;->c:LTe/l;

    new-instance v7, Ldf/x$a;

    iget-object v3, p0, Ldf/x;->d:LXe/o;

    iget v4, p0, Ldf/x;->e:I

    iget v5, p0, Ldf/x;->f:I

    iget-object v6, p0, Ldf/x;->g:Lio/reactivex/internal/util/j;

    move-object v1, v7

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Ldf/x$a;-><init>(LCi/c;LXe/o;IILio/reactivex/internal/util/j;)V

    invoke-virtual {v0, v7}, LTe/l;->l6(LTe/q;)V

    return-void
.end method
