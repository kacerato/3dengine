.class public final Lgf/o;
.super Lgf/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgf/o$a;,
        Lgf/o$b;
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
        "Lgf/a<",
        "TT;TU;>;"
    }
.end annotation


# instance fields
.field public final c:Ljava/util/concurrent/Callable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Callable<",
            "+",
            "LTe/G<",
            "TB;>;>;"
        }
    .end annotation
.end field

.field public final d:Ljava/util/concurrent/Callable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Callable<",
            "TU;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(LTe/G;Ljava/util/concurrent/Callable;Ljava/util/concurrent/Callable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LTe/G<",
            "TT;>;",
            "Ljava/util/concurrent/Callable<",
            "+",
            "LTe/G<",
            "TB;>;>;",
            "Ljava/util/concurrent/Callable<",
            "TU;>;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lgf/a;-><init>(LTe/G;)V

    iput-object p2, p0, Lgf/o;->c:Ljava/util/concurrent/Callable;

    iput-object p3, p0, Lgf/o;->d:Ljava/util/concurrent/Callable;

    return-void
.end method


# virtual methods
.method public J5(LTe/I;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LTe/I<",
            "-TU;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lgf/a;->b:LTe/G;

    new-instance v1, Lgf/o$b;

    new-instance v2, Lof/m;

    invoke-direct {v2, p1}, Lof/m;-><init>(LTe/I;)V

    iget-object p1, p0, Lgf/o;->d:Ljava/util/concurrent/Callable;

    iget-object v3, p0, Lgf/o;->c:Ljava/util/concurrent/Callable;

    invoke-direct {v1, v2, p1, v3}, Lgf/o$b;-><init>(LTe/I;Ljava/util/concurrent/Callable;Ljava/util/concurrent/Callable;)V

    invoke-interface {v0, v1}, LTe/G;->b(LTe/I;)V

    return-void
.end method
