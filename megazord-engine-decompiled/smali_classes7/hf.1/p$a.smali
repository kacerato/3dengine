.class public final Lhf/p$a;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "SourceFile"

# interfaces
.implements LTe/q;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lhf/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicReference<",
        "LCi/d;",
        ">;",
        "LTe/q<",
        "Ljava/util/List<",
        "TT;>;>;"
    }
.end annotation


# static fields
.field public static final d:J = 0x5db06e61210dc8deL


# instance fields
.field public final b:Lhf/p$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lhf/p$b<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final c:I


# direct methods
.method public constructor <init>(Lhf/p$b;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lhf/p$b<",
            "TT;>;I)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object p1, p0, Lhf/p$a;->b:Lhf/p$b;

    iput p2, p0, Lhf/p$a;->c:I

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    return-void
.end method

.method public b()V
    .locals 0

    invoke-static {p0}, Lmf/j;->a(Ljava/util/concurrent/atomic/AtomicReference;)Z

    return-void
.end method

.method public c(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lhf/p$a;->b:Lhf/p$b;

    iget v1, p0, Lhf/p$a;->c:I

    invoke-virtual {v0, p1, v1}, Lhf/p$b;->d(Ljava/util/List;I)V

    return-void
.end method

.method public bridge synthetic g(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lhf/p$a;->c(Ljava/util/List;)V

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

    iget-object v0, p0, Lhf/p$a;->b:Lhf/p$b;

    invoke-virtual {v0, p1}, Lhf/p$b;->c(Ljava/lang/Throwable;)V

    return-void
.end method
