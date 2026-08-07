.class public final Ldf/n;
.super Ldf/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ldf/n$b;,
        Ldf/n$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "U::",
        "Ljava/util/Collection<",
        "-TT;>;Open:",
        "Ljava/lang/Object;",
        "Close:",
        "Ljava/lang/Object;",
        ">",
        "Ldf/a<",
        "TT;TU;>;"
    }
.end annotation


# instance fields
.field public final d:Ljava/util/concurrent/Callable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Callable<",
            "TU;>;"
        }
    .end annotation
.end field

.field public final e:LCi/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LCi/b<",
            "+TOpen;>;"
        }
    .end annotation
.end field

.field public final f:LXe/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LXe/o<",
            "-TOpen;+",
            "LCi/b<",
            "+TClose;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(LTe/l;LCi/b;LXe/o;Ljava/util/concurrent/Callable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LTe/l<",
            "TT;>;",
            "LCi/b<",
            "+TOpen;>;",
            "LXe/o<",
            "-TOpen;+",
            "LCi/b<",
            "+TClose;>;>;",
            "Ljava/util/concurrent/Callable<",
            "TU;>;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Ldf/a;-><init>(LTe/l;)V

    iput-object p2, p0, Ldf/n;->e:LCi/b;

    iput-object p3, p0, Ldf/n;->f:LXe/o;

    iput-object p4, p0, Ldf/n;->d:Ljava/util/concurrent/Callable;

    return-void
.end method


# virtual methods
.method public m6(LCi/c;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LCi/c<",
            "-TU;>;)V"
        }
    .end annotation

    new-instance v0, Ldf/n$a;

    iget-object v1, p0, Ldf/n;->e:LCi/b;

    iget-object v2, p0, Ldf/n;->f:LXe/o;

    iget-object v3, p0, Ldf/n;->d:Ljava/util/concurrent/Callable;

    invoke-direct {v0, p1, v1, v2, v3}, Ldf/n$a;-><init>(LCi/c;LCi/b;LXe/o;Ljava/util/concurrent/Callable;)V

    invoke-interface {p1, v0}, LCi/c;->h(LCi/d;)V

    iget-object p1, p0, Ldf/a;->c:LTe/l;

    invoke-virtual {p1, v0}, LTe/l;->l6(LTe/q;)V

    return-void
.end method
