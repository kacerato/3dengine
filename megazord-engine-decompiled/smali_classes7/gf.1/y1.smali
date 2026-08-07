.class public final Lgf/y1;
.super Lgf/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgf/y1$a;,
        Lgf/y1$b;,
        Lgf/y1$c;,
        Lgf/y1$d;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "U:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lgf/a<",
        "TT;TT;>;"
    }
.end annotation


# instance fields
.field public final c:LTe/G;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LTe/G<",
            "TU;>;"
        }
    .end annotation
.end field

.field public final d:LXe/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LXe/o<",
            "-TT;+",
            "LTe/G<",
            "TV;>;>;"
        }
    .end annotation
.end field

.field public final e:LTe/G;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LTe/G<",
            "+TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(LTe/B;LTe/G;LXe/o;LTe/G;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LTe/B<",
            "TT;>;",
            "LTe/G<",
            "TU;>;",
            "LXe/o<",
            "-TT;+",
            "LTe/G<",
            "TV;>;>;",
            "LTe/G<",
            "+TT;>;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lgf/a;-><init>(LTe/G;)V

    iput-object p2, p0, Lgf/y1;->c:LTe/G;

    iput-object p3, p0, Lgf/y1;->d:LXe/o;

    iput-object p4, p0, Lgf/y1;->e:LTe/G;

    return-void
.end method


# virtual methods
.method public J5(LTe/I;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LTe/I<",
            "-TT;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lgf/y1;->e:LTe/G;

    if-nez v0, :cond_0

    new-instance v0, Lgf/y1$c;

    iget-object v1, p0, Lgf/y1;->d:LXe/o;

    invoke-direct {v0, p1, v1}, Lgf/y1$c;-><init>(LTe/I;LXe/o;)V

    invoke-interface {p1, v0}, LTe/I;->e(LVe/c;)V

    iget-object p1, p0, Lgf/y1;->c:LTe/G;

    invoke-virtual {v0, p1}, Lgf/y1$c;->f(LTe/G;)V

    iget-object p1, p0, Lgf/a;->b:LTe/G;

    invoke-interface {p1, v0}, LTe/G;->b(LTe/I;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lgf/y1$b;

    iget-object v1, p0, Lgf/y1;->d:LXe/o;

    iget-object v2, p0, Lgf/y1;->e:LTe/G;

    invoke-direct {v0, p1, v1, v2}, Lgf/y1$b;-><init>(LTe/I;LXe/o;LTe/G;)V

    invoke-interface {p1, v0}, LTe/I;->e(LVe/c;)V

    iget-object p1, p0, Lgf/y1;->c:LTe/G;

    invoke-virtual {v0, p1}, Lgf/y1$b;->f(LTe/G;)V

    iget-object p1, p0, Lgf/a;->b:LTe/G;

    invoke-interface {p1, v0}, LTe/G;->b(LTe/I;)V

    :goto_0
    return-void
.end method
