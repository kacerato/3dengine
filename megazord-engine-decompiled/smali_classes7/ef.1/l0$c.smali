.class public final Lef/l0$c;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "SourceFile"

# interfaces
.implements LTe/q;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lef/l0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "U:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicReference<",
        "LCi/d;",
        ">;",
        "LTe/q<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field public static final c:J = 0x783c01649d3b2729L


# instance fields
.field public final b:Lef/l0$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lef/l0$b<",
            "TT;TU;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lef/l0$b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lef/l0$b<",
            "TT;TU;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object p1, p0, Lef/l0$c;->b:Lef/l0$b;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Lef/l0$c;->b:Lef/l0$b;

    invoke-virtual {v0}, Lef/l0$b;->c()V

    return-void
.end method

.method public g(Ljava/lang/Object;)V
    .locals 0

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LCi/d;

    invoke-interface {p1}, LCi/d;->cancel()V

    iget-object p1, p0, Lef/l0$c;->b:Lef/l0$b;

    invoke-virtual {p1}, Lef/l0$b;->c()V

    return-void
.end method

.method public h(LCi/d;)V
    .locals 2

    const-wide v0, 0x7fffffffffffffffL

    invoke-static {p0, p1, v0, v1}, Lmf/j;->k(Ljava/util/concurrent/atomic/AtomicReference;LCi/d;J)Z

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    iget-object v0, p0, Lef/l0$c;->b:Lef/l0$b;

    invoke-virtual {v0, p1}, Lef/l0$b;->f(Ljava/lang/Throwable;)V

    return-void
.end method
