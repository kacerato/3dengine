.class public final Lff/n;
.super LTe/B;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lff/n$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "LTe/B<",
        "TR;>;"
    }
.end annotation


# instance fields
.field public final b:LTe/B;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LTe/B<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final c:LXe/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LXe/o<",
            "-TT;+",
            "LTe/Q<",
            "+TR;>;>;"
        }
    .end annotation
.end field

.field public final d:Lio/reactivex/internal/util/j;

.field public final e:I


# direct methods
.method public constructor <init>(LTe/B;LXe/o;Lio/reactivex/internal/util/j;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LTe/B<",
            "TT;>;",
            "LXe/o<",
            "-TT;+",
            "LTe/Q<",
            "+TR;>;>;",
            "Lio/reactivex/internal/util/j;",
            "I)V"
        }
    .end annotation

    invoke-direct {p0}, LTe/B;-><init>()V

    iput-object p1, p0, Lff/n;->b:LTe/B;

    iput-object p2, p0, Lff/n;->c:LXe/o;

    iput-object p3, p0, Lff/n;->d:Lio/reactivex/internal/util/j;

    iput p4, p0, Lff/n;->e:I

    return-void
.end method


# virtual methods
.method public J5(LTe/I;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LTe/I<",
            "-TR;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lff/n;->b:LTe/B;

    iget-object v1, p0, Lff/n;->c:LXe/o;

    invoke-static {v0, v1, p1}, Lff/r;->c(Ljava/lang/Object;LXe/o;LTe/I;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lff/n;->b:LTe/B;

    new-instance v1, Lff/n$a;

    iget-object v2, p0, Lff/n;->c:LXe/o;

    iget v3, p0, Lff/n;->e:I

    iget-object v4, p0, Lff/n;->d:Lio/reactivex/internal/util/j;

    invoke-direct {v1, p1, v2, v3, v4}, Lff/n$a;-><init>(LTe/I;LXe/o;ILio/reactivex/internal/util/j;)V

    invoke-virtual {v0, v1}, LTe/B;->b(LTe/I;)V

    :cond_0
    return-void
.end method
