.class public final Lgf/m;
.super Lgf/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgf/m$b;,
        Lgf/m$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "U::",
        "Ljava/util/Collection<",
        "-TT;>;>",
        "Lgf/a<",
        "TT;TU;>;"
    }
.end annotation


# instance fields
.field public final c:I

.field public final d:I

.field public final e:Ljava/util/concurrent/Callable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Callable<",
            "TU;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(LTe/G;IILjava/util/concurrent/Callable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LTe/G<",
            "TT;>;II",
            "Ljava/util/concurrent/Callable<",
            "TU;>;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lgf/a;-><init>(LTe/G;)V

    iput p2, p0, Lgf/m;->c:I

    iput p3, p0, Lgf/m;->d:I

    iput-object p4, p0, Lgf/m;->e:Ljava/util/concurrent/Callable;

    return-void
.end method


# virtual methods
.method public J5(LTe/I;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LTe/I<",
            "-TU;>;)V"
        }
    .end annotation

    iget v0, p0, Lgf/m;->d:I

    iget v1, p0, Lgf/m;->c:I

    if-ne v0, v1, :cond_0

    new-instance v0, Lgf/m$a;

    iget-object v2, p0, Lgf/m;->e:Ljava/util/concurrent/Callable;

    invoke-direct {v0, p1, v1, v2}, Lgf/m$a;-><init>(LTe/I;ILjava/util/concurrent/Callable;)V

    invoke-virtual {v0}, Lgf/m$a;->b()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lgf/a;->b:LTe/G;

    invoke-interface {p1, v0}, LTe/G;->b(LTe/I;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lgf/a;->b:LTe/G;

    new-instance v1, Lgf/m$b;

    iget v2, p0, Lgf/m;->c:I

    iget v3, p0, Lgf/m;->d:I

    iget-object v4, p0, Lgf/m;->e:Ljava/util/concurrent/Callable;

    invoke-direct {v1, p1, v2, v3, v4}, Lgf/m$b;-><init>(LTe/I;IILjava/util/concurrent/Callable;)V

    invoke-interface {v0, v1}, LTe/G;->b(LTe/I;)V

    :cond_1
    :goto_0
    return-void
.end method
