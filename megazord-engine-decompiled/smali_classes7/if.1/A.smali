.class public final Lif/A;
.super LTe/B;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lif/A$a;
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
.field public final b:LTe/Q;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LTe/Q<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final c:LXe/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LXe/o<",
            "-TT;+",
            "Ljava/lang/Iterable<",
            "+TR;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(LTe/Q;LXe/o;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LTe/Q<",
            "TT;>;",
            "LXe/o<",
            "-TT;+",
            "Ljava/lang/Iterable<",
            "+TR;>;>;)V"
        }
    .end annotation

    invoke-direct {p0}, LTe/B;-><init>()V

    iput-object p1, p0, Lif/A;->b:LTe/Q;

    iput-object p2, p0, Lif/A;->c:LXe/o;

    return-void
.end method


# virtual methods
.method public J5(LTe/I;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LTe/I<",
            "-TR;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lif/A;->b:LTe/Q;

    new-instance v1, Lif/A$a;

    iget-object v2, p0, Lif/A;->c:LXe/o;

    invoke-direct {v1, p1, v2}, Lif/A$a;-><init>(LTe/I;LXe/o;)V

    invoke-interface {v0, v1}, LTe/Q;->a(LTe/N;)V

    return-void
.end method
