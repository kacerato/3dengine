.class public final Lif/K;
.super LTe/K;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lif/K$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "LTe/K<",
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
            "-TT;+TR;>;"
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
            "-TT;+TR;>;)V"
        }
    .end annotation

    invoke-direct {p0}, LTe/K;-><init>()V

    iput-object p1, p0, Lif/K;->b:LTe/Q;

    iput-object p2, p0, Lif/K;->c:LXe/o;

    return-void
.end method


# virtual methods
.method public d1(LTe/N;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LTe/N<",
            "-TR;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lif/K;->b:LTe/Q;

    new-instance v1, Lif/K$a;

    iget-object v2, p0, Lif/K;->c:LXe/o;

    invoke-direct {v1, p1, v2}, Lif/K$a;-><init>(LTe/N;LXe/o;)V

    invoke-interface {v0, v1}, LTe/Q;->a(LTe/N;)V

    return-void
.end method
