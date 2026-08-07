.class public final Lgf/I1;
.super Lgf/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgf/I1$a;,
        Lgf/I1$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "B:",
        "Ljava/lang/Object;",
        ">",
        "Lgf/a<",
        "TT;",
        "LTe/B<",
        "TT;>;>;"
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

.field public final d:I


# direct methods
.method public constructor <init>(LTe/G;Ljava/util/concurrent/Callable;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LTe/G<",
            "TT;>;",
            "Ljava/util/concurrent/Callable<",
            "+",
            "LTe/G<",
            "TB;>;>;I)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lgf/a;-><init>(LTe/G;)V

    iput-object p2, p0, Lgf/I1;->c:Ljava/util/concurrent/Callable;

    iput p3, p0, Lgf/I1;->d:I

    return-void
.end method


# virtual methods
.method public J5(LTe/I;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LTe/I<",
            "-",
            "LTe/B<",
            "TT;>;>;)V"
        }
    .end annotation

    new-instance v0, Lgf/I1$b;

    iget v1, p0, Lgf/I1;->d:I

    iget-object v2, p0, Lgf/I1;->c:Ljava/util/concurrent/Callable;

    invoke-direct {v0, p1, v1, v2}, Lgf/I1$b;-><init>(LTe/I;ILjava/util/concurrent/Callable;)V

    iget-object p1, p0, Lgf/a;->b:LTe/G;

    invoke-interface {p1, v0}, LTe/G;->b(LTe/I;)V

    return-void
.end method
