.class public final Lgf/w;
.super Lgf/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgf/w$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Lgf/a<",
        "TT;TR;>;"
    }
.end annotation


# instance fields
.field public final c:LXe/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LXe/o<",
            "-TT;+",
            "LTe/G<",
            "+TR;>;>;"
        }
    .end annotation
.end field

.field public final d:Lio/reactivex/internal/util/j;

.field public final e:I

.field public final f:I


# direct methods
.method public constructor <init>(LTe/G;LXe/o;Lio/reactivex/internal/util/j;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LTe/G<",
            "TT;>;",
            "LXe/o<",
            "-TT;+",
            "LTe/G<",
            "+TR;>;>;",
            "Lio/reactivex/internal/util/j;",
            "II)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lgf/a;-><init>(LTe/G;)V

    iput-object p2, p0, Lgf/w;->c:LXe/o;

    iput-object p3, p0, Lgf/w;->d:Lio/reactivex/internal/util/j;

    iput p4, p0, Lgf/w;->e:I

    iput p5, p0, Lgf/w;->f:I

    return-void
.end method


# virtual methods
.method public J5(LTe/I;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LTe/I<",
            "-TR;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lgf/a;->b:LTe/G;

    new-instance v7, Lgf/w$a;

    iget-object v3, p0, Lgf/w;->c:LXe/o;

    iget v4, p0, Lgf/w;->e:I

    iget v5, p0, Lgf/w;->f:I

    iget-object v6, p0, Lgf/w;->d:Lio/reactivex/internal/util/j;

    move-object v1, v7

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lgf/w$a;-><init>(LTe/I;LXe/o;IILio/reactivex/internal/util/j;)V

    invoke-interface {v0, v7}, LTe/G;->b(LTe/I;)V

    return-void
.end method
