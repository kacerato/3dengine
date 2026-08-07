.class public final Lif/y;
.super LTe/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lif/y$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "LTe/c;"
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
            "LTe/i;",
            ">;"
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
            "LTe/i;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, LTe/c;-><init>()V

    iput-object p1, p0, Lif/y;->b:LTe/Q;

    iput-object p2, p0, Lif/y;->c:LXe/o;

    return-void
.end method


# virtual methods
.method public K0(LTe/f;)V
    .locals 2

    new-instance v0, Lif/y$a;

    iget-object v1, p0, Lif/y;->c:LXe/o;

    invoke-direct {v0, p1, v1}, Lif/y$a;-><init>(LTe/f;LXe/o;)V

    invoke-interface {p1, v0}, LTe/f;->e(LVe/c;)V

    iget-object p1, p0, Lif/y;->b:LTe/Q;

    invoke-interface {p1, v0}, LTe/Q;->a(LTe/N;)V

    return-void
.end method
