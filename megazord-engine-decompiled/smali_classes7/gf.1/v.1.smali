.class public final Lgf/v;
.super Lgf/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgf/v$a;,
        Lgf/v$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "U:",
        "Ljava/lang/Object;",
        ">",
        "Lgf/a<",
        "TT;TU;>;"
    }
.end annotation


# instance fields
.field public final c:LXe/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LXe/o<",
            "-TT;+",
            "LTe/G<",
            "+TU;>;>;"
        }
    .end annotation
.end field

.field public final d:I

.field public final e:Lio/reactivex/internal/util/j;


# direct methods
.method public constructor <init>(LTe/G;LXe/o;ILio/reactivex/internal/util/j;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LTe/G<",
            "TT;>;",
            "LXe/o<",
            "-TT;+",
            "LTe/G<",
            "+TU;>;>;I",
            "Lio/reactivex/internal/util/j;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lgf/a;-><init>(LTe/G;)V

    iput-object p2, p0, Lgf/v;->c:LXe/o;

    iput-object p4, p0, Lgf/v;->e:Lio/reactivex/internal/util/j;

    const/16 p1, 0x8

    invoke-static {p1, p3}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lgf/v;->d:I

    return-void
.end method


# virtual methods
.method public J5(LTe/I;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LTe/I<",
            "-TU;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lgf/a;->b:LTe/G;

    iget-object v1, p0, Lgf/v;->c:LXe/o;

    invoke-static {v0, p1, v1}, Lgf/Y0;->b(LTe/G;LTe/I;LXe/o;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lgf/v;->e:Lio/reactivex/internal/util/j;

    sget-object v1, Lio/reactivex/internal/util/j;->IMMEDIATE:Lio/reactivex/internal/util/j;

    if-ne v0, v1, :cond_1

    new-instance v0, Lof/m;

    invoke-direct {v0, p1}, Lof/m;-><init>(LTe/I;)V

    iget-object p1, p0, Lgf/a;->b:LTe/G;

    new-instance v1, Lgf/v$b;

    iget-object v2, p0, Lgf/v;->c:LXe/o;

    iget v3, p0, Lgf/v;->d:I

    invoke-direct {v1, v0, v2, v3}, Lgf/v$b;-><init>(LTe/I;LXe/o;I)V

    invoke-interface {p1, v1}, LTe/G;->b(LTe/I;)V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lgf/a;->b:LTe/G;

    new-instance v1, Lgf/v$a;

    iget-object v2, p0, Lgf/v;->c:LXe/o;

    iget v3, p0, Lgf/v;->d:I

    iget-object v4, p0, Lgf/v;->e:Lio/reactivex/internal/util/j;

    sget-object v5, Lio/reactivex/internal/util/j;->END:Lio/reactivex/internal/util/j;

    if-ne v4, v5, :cond_2

    const/4 v4, 0x1

    goto :goto_0

    :cond_2
    const/4 v4, 0x0

    :goto_0
    invoke-direct {v1, p1, v2, v3, v4}, Lgf/v$a;-><init>(LTe/I;LXe/o;IZ)V

    invoke-interface {v0, v1}, LTe/G;->b(LTe/I;)V

    :goto_1
    return-void
.end method
