.class public final Ldf/p;
.super Ldf/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ldf/p$a;,
        Ldf/p$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "U::",
        "Ljava/util/Collection<",
        "-TT;>;B:",
        "Ljava/lang/Object;",
        ">",
        "Ldf/a<",
        "TT;TU;>;"
    }
.end annotation


# instance fields
.field public final d:LCi/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LCi/b<",
            "TB;>;"
        }
    .end annotation
.end field

.field public final e:Ljava/util/concurrent/Callable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Callable<",
            "TU;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(LTe/l;LCi/b;Ljava/util/concurrent/Callable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LTe/l<",
            "TT;>;",
            "LCi/b<",
            "TB;>;",
            "Ljava/util/concurrent/Callable<",
            "TU;>;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Ldf/a;-><init>(LTe/l;)V

    iput-object p2, p0, Ldf/p;->d:LCi/b;

    iput-object p3, p0, Ldf/p;->e:Ljava/util/concurrent/Callable;

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

    iget-object v0, p0, Ldf/a;->c:LTe/l;

    new-instance v1, Ldf/p$b;

    new-instance v2, Luf/e;

    invoke-direct {v2, p1}, Luf/e;-><init>(LCi/c;)V

    iget-object p1, p0, Ldf/p;->e:Ljava/util/concurrent/Callable;

    iget-object v3, p0, Ldf/p;->d:LCi/b;

    invoke-direct {v1, v2, p1, v3}, Ldf/p$b;-><init>(LCi/c;Ljava/util/concurrent/Callable;LCi/b;)V

    invoke-virtual {v0, v1}, LTe/l;->l6(LTe/q;)V

    return-void
.end method
