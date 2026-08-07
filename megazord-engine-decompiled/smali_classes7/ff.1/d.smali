.class public final Lff/d;
.super LTe/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lff/d$a;
    }
.end annotation

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
.field public final c:LTe/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LTe/l<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final d:LXe/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LXe/o<",
            "-TT;+",
            "LTe/y<",
            "+TR;>;>;"
        }
    .end annotation
.end field

.field public final e:Lio/reactivex/internal/util/j;

.field public final f:I


# direct methods
.method public constructor <init>(LTe/l;LXe/o;Lio/reactivex/internal/util/j;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LTe/l<",
            "TT;>;",
            "LXe/o<",
            "-TT;+",
            "LTe/y<",
            "+TR;>;>;",
            "Lio/reactivex/internal/util/j;",
            "I)V"
        }
    .end annotation

    invoke-direct {p0}, LTe/l;-><init>()V

    iput-object p1, p0, Lff/d;->c:LTe/l;

    iput-object p2, p0, Lff/d;->d:LXe/o;

    iput-object p3, p0, Lff/d;->e:Lio/reactivex/internal/util/j;

    iput p4, p0, Lff/d;->f:I

    return-void
.end method


# virtual methods
.method public m6(LCi/c;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LCi/c<",
            "-TR;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lff/d;->c:LTe/l;

    new-instance v1, Lff/d$a;

    iget-object v2, p0, Lff/d;->d:LXe/o;

    iget v3, p0, Lff/d;->f:I

    iget-object v4, p0, Lff/d;->e:Lio/reactivex/internal/util/j;

    invoke-direct {v1, p1, v2, v3, v4}, Lff/d$a;-><init>(LCi/c;LXe/o;ILio/reactivex/internal/util/j;)V

    invoke-virtual {v0, v1}, LTe/l;->l6(LTe/q;)V

    return-void
.end method
