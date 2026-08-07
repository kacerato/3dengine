.class public final Ldf/W1;
.super Ldf/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ldf/W1$a;,
        Ldf/W1$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "B:",
        "Ljava/lang/Object;",
        ">",
        "Ldf/a<",
        "TT;",
        "LTe/l<",
        "TT;>;>;"
    }
.end annotation


# instance fields
.field public final d:Ljava/util/concurrent/Callable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Callable<",
            "+",
            "LCi/b<",
            "TB;>;>;"
        }
    .end annotation
.end field

.field public final e:I


# direct methods
.method public constructor <init>(LTe/l;Ljava/util/concurrent/Callable;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LTe/l<",
            "TT;>;",
            "Ljava/util/concurrent/Callable<",
            "+",
            "LCi/b<",
            "TB;>;>;I)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Ldf/a;-><init>(LTe/l;)V

    iput-object p2, p0, Ldf/W1;->d:Ljava/util/concurrent/Callable;

    iput p3, p0, Ldf/W1;->e:I

    return-void
.end method


# virtual methods
.method public m6(LCi/c;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LCi/c<",
            "-",
            "LTe/l<",
            "TT;>;>;)V"
        }
    .end annotation

    new-instance v0, Ldf/W1$b;

    iget v1, p0, Ldf/W1;->e:I

    iget-object v2, p0, Ldf/W1;->d:Ljava/util/concurrent/Callable;

    invoke-direct {v0, p1, v1, v2}, Ldf/W1$b;-><init>(LCi/c;ILjava/util/concurrent/Callable;)V

    iget-object p1, p0, Ldf/a;->c:LTe/l;

    invoke-virtual {p1, v0}, LTe/l;->l6(LTe/q;)V

    return-void
.end method
