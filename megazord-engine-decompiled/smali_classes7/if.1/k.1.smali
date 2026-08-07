.class public final Lif/k;
.super LTe/s;
.source "SourceFile"


# annotations
.annotation build LUe/e;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lif/k$a;
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
.field public final b:LTe/K;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LTe/K<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final c:LXe/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LXe/o<",
            "-TT;",
            "LTe/A<",
            "TR;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(LTe/K;LXe/o;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LTe/K<",
            "TT;>;",
            "LXe/o<",
            "-TT;",
            "LTe/A<",
            "TR;>;>;)V"
        }
    .end annotation

    invoke-direct {p0}, LTe/s;-><init>()V

    iput-object p1, p0, Lif/k;->b:LTe/K;

    iput-object p2, p0, Lif/k;->c:LXe/o;

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

    iget-object v0, p0, Lif/k;->b:LTe/K;

    new-instance v1, Lif/k$a;

    iget-object v2, p0, Lif/k;->c:LXe/o;

    invoke-direct {v1, p1, v2}, Lif/k$a;-><init>(LTe/v;LXe/o;)V

    invoke-virtual {v0, v1}, LTe/K;->a(LTe/N;)V

    return-void
.end method
