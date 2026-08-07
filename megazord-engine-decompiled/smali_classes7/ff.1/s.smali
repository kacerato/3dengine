.class public final Lff/s;
.super LTe/B;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lff/s$a;
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
            "LTe/G<",
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
            "LTe/G<",
            "+TR;>;>;)V"
        }
    .end annotation

    invoke-direct {p0}, LTe/B;-><init>()V

    iput-object p1, p0, Lff/s;->b:LTe/Q;

    iput-object p2, p0, Lff/s;->c:LXe/o;

    return-void
.end method


# virtual methods
.method public J5(LTe/I;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LTe/I<",
            "-TR;>;)V"
        }
    .end annotation

    new-instance v0, Lff/s$a;

    iget-object v1, p0, Lff/s;->c:LXe/o;

    invoke-direct {v0, p1, v1}, Lff/s$a;-><init>(LTe/I;LXe/o;)V

    invoke-interface {p1, v0}, LTe/I;->e(LVe/c;)V

    iget-object p1, p0, Lff/s;->b:LTe/Q;

    invoke-interface {p1, v0}, LTe/Q;->a(LTe/N;)V

    return-void
.end method
