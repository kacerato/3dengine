.class public final Lif/t;
.super LTe/K;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lif/t$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "LTe/K<",
        "TT;>;"
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

.field public final c:LXe/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LXe/g<",
            "-TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(LTe/Q;LXe/g;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LTe/Q<",
            "TT;>;",
            "LXe/g<",
            "-TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, LTe/K;-><init>()V

    iput-object p1, p0, Lif/t;->b:LTe/Q;

    iput-object p2, p0, Lif/t;->c:LXe/g;

    return-void
.end method


# virtual methods
.method public d1(LTe/N;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LTe/N<",
            "-TT;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lif/t;->b:LTe/Q;

    new-instance v1, Lif/t$a;

    invoke-direct {v1, p0, p1}, Lif/t$a;-><init>(Lif/t;LTe/N;)V

    invoke-interface {v0, v1}, LTe/Q;->a(LTe/N;)V

    return-void
.end method
