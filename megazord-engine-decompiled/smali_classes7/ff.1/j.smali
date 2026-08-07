.class public final Lff/j;
.super LTe/B;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lff/j$a;
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
.field public final b:LTe/y;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LTe/y<",
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
.method public constructor <init>(LTe/y;LXe/o;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LTe/y<",
            "TT;>;",
            "LXe/o<",
            "-TT;+",
            "LTe/G<",
            "+TR;>;>;)V"
        }
    .end annotation

    invoke-direct {p0}, LTe/B;-><init>()V

    iput-object p1, p0, Lff/j;->b:LTe/y;

    iput-object p2, p0, Lff/j;->c:LXe/o;

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

    new-instance v0, Lff/j$a;

    iget-object v1, p0, Lff/j;->c:LXe/o;

    invoke-direct {v0, p1, v1}, Lff/j$a;-><init>(LTe/I;LXe/o;)V

    invoke-interface {p1, v0}, LTe/I;->e(LVe/c;)V

    iget-object p1, p0, Lff/j;->b:LTe/y;

    invoke-interface {p1, v0}, LTe/y;->d(LTe/v;)V

    return-void
.end method
