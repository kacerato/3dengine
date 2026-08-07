.class public final Lff/q;
.super LTe/B;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lff/q$a;
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

.field public final d:Z


# direct methods
.method public constructor <init>(LTe/B;LXe/o;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LTe/B<",
            "TT;>;",
            "LXe/o<",
            "-TT;+",
            "LTe/Q<",
            "+TR;>;>;Z)V"
        }
    .end annotation

    invoke-direct {p0}, LTe/B;-><init>()V

    iput-object p1, p0, Lff/q;->b:LTe/B;

    iput-object p2, p0, Lff/q;->c:LXe/o;

    iput-boolean p3, p0, Lff/q;->d:Z

    return-void
.end method


# virtual methods
.method public J5(LTe/I;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LTe/I<",
            "-TR;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lff/q;->b:LTe/B;

    iget-object v1, p0, Lff/q;->c:LXe/o;

    invoke-static {v0, v1, p1}, Lff/r;->c(Ljava/lang/Object;LXe/o;LTe/I;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lff/q;->b:LTe/B;

    new-instance v1, Lff/q$a;

    iget-object v2, p0, Lff/q;->c:LXe/o;

    iget-boolean v3, p0, Lff/q;->d:Z

    invoke-direct {v1, p1, v2, v3}, Lff/q$a;-><init>(LTe/I;LXe/o;Z)V

    invoke-virtual {v0, v1}, LTe/B;->b(LTe/I;)V

    :cond_0
    return-void
.end method
