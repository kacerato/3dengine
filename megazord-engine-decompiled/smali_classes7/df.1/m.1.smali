.class public final Ldf/m;
.super Ldf/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ldf/m$b;,
        Ldf/m$c;,
        Ldf/m$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "C::",
        "Ljava/util/Collection<",
        "-TT;>;>",
        "Ldf/a<",
        "TT;TC;>;"
    }
.end annotation


# instance fields
.field public final d:I

.field public final e:I

.field public final f:Ljava/util/concurrent/Callable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Callable<",
            "TC;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(LTe/l;IILjava/util/concurrent/Callable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LTe/l<",
            "TT;>;II",
            "Ljava/util/concurrent/Callable<",
            "TC;>;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Ldf/a;-><init>(LTe/l;)V

    iput p2, p0, Ldf/m;->d:I

    iput p3, p0, Ldf/m;->e:I

    iput-object p4, p0, Ldf/m;->f:Ljava/util/concurrent/Callable;

    return-void
.end method


# virtual methods
.method public m6(LCi/c;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LCi/c<",
            "-TC;>;)V"
        }
    .end annotation

    iget v0, p0, Ldf/m;->d:I

    iget v1, p0, Ldf/m;->e:I

    if-ne v0, v1, :cond_0

    iget-object v1, p0, Ldf/a;->c:LTe/l;

    new-instance v2, Ldf/m$a;

    iget-object v3, p0, Ldf/m;->f:Ljava/util/concurrent/Callable;

    invoke-direct {v2, p1, v0, v3}, Ldf/m$a;-><init>(LCi/c;ILjava/util/concurrent/Callable;)V

    invoke-virtual {v1, v2}, LTe/l;->l6(LTe/q;)V

    goto :goto_0

    :cond_0
    if-le v1, v0, :cond_1

    iget-object v0, p0, Ldf/a;->c:LTe/l;

    new-instance v1, Ldf/m$c;

    iget v2, p0, Ldf/m;->d:I

    iget v3, p0, Ldf/m;->e:I

    iget-object v4, p0, Ldf/m;->f:Ljava/util/concurrent/Callable;

    invoke-direct {v1, p1, v2, v3, v4}, Ldf/m$c;-><init>(LCi/c;IILjava/util/concurrent/Callable;)V

    invoke-virtual {v0, v1}, LTe/l;->l6(LTe/q;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Ldf/a;->c:LTe/l;

    new-instance v1, Ldf/m$b;

    iget v2, p0, Ldf/m;->d:I

    iget v3, p0, Ldf/m;->e:I

    iget-object v4, p0, Ldf/m;->f:Ljava/util/concurrent/Callable;

    invoke-direct {v1, p1, v2, v3, v4}, Ldf/m$b;-><init>(LCi/c;IILjava/util/concurrent/Callable;)V

    invoke-virtual {v0, v1}, LTe/l;->l6(LTe/q;)V

    :goto_0
    return-void
.end method
