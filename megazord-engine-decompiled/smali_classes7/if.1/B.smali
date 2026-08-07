.class public final Lif/B;
.super LTe/s;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lif/B$a;,
        Lif/B$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "LTe/s<",
        "TR;>;"
    }
.end annotation


# instance fields
.field public final b:LTe/Q;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LTe/Q<",
            "+TT;>;"
        }
    .end annotation
.end field

.field public final c:LXe/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LXe/o<",
            "-TT;+",
            "LTe/y<",
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
            "+TT;>;",
            "LXe/o<",
            "-TT;+",
            "LTe/y<",
            "+TR;>;>;)V"
        }
    .end annotation

    invoke-direct {p0}, LTe/s;-><init>()V

    iput-object p2, p0, Lif/B;->c:LXe/o;

    iput-object p1, p0, Lif/B;->b:LTe/Q;

    return-void
.end method


# virtual methods
.method public t1(LTe/v;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LTe/v<",
            "-TR;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lif/B;->b:LTe/Q;

    new-instance v1, Lif/B$b;

    iget-object v2, p0, Lif/B;->c:LXe/o;

    invoke-direct {v1, p1, v2}, Lif/B$b;-><init>(LTe/v;LXe/o;)V

    invoke-interface {v0, v1}, LTe/Q;->a(LTe/N;)V

    return-void
.end method
