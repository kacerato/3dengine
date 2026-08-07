.class public final Lgf/S0$k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LTe/G;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgf/S0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "k"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "LTe/G<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final b:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lgf/S0$j<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field public final c:Lgf/S0$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lgf/S0$b<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/concurrent/atomic/AtomicReference;Lgf/S0$b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lgf/S0$j<",
            "TT;>;>;",
            "Lgf/S0$b<",
            "TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lgf/S0$k;->b:Ljava/util/concurrent/atomic/AtomicReference;

    iput-object p2, p0, Lgf/S0$k;->c:Lgf/S0$b;

    return-void
.end method


# virtual methods
.method public b(LTe/I;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LTe/I<",
            "-TT;>;)V"
        }
    .end annotation

    :goto_0
    iget-object v0, p0, Lgf/S0$k;->b:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgf/S0$j;

    if-nez v0, :cond_1

    iget-object v0, p0, Lgf/S0$k;->c:Lgf/S0$b;

    invoke-interface {v0}, Lgf/S0$b;->call()Lgf/S0$h;

    move-result-object v0

    new-instance v1, Lgf/S0$j;

    invoke-direct {v1, v0}, Lgf/S0$j;-><init>(Lgf/S0$h;)V

    iget-object v0, p0, Lgf/S0$k;->b:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Landroidx/lifecycle/c;->a(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :cond_1
    new-instance v1, Lgf/S0$d;

    invoke-direct {v1, v0, p1}, Lgf/S0$d;-><init>(Lgf/S0$j;LTe/I;)V

    invoke-interface {p1, v1}, LTe/I;->e(LVe/c;)V

    invoke-virtual {v0, v1}, Lgf/S0$j;->b(Lgf/S0$d;)Z

    invoke-virtual {v1}, Lgf/S0$d;->d()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {v0, v1}, Lgf/S0$j;->c(Lgf/S0$d;)V

    return-void

    :cond_2
    iget-object p1, v0, Lgf/S0$j;->b:Lgf/S0$h;

    invoke-interface {p1, v1}, Lgf/S0$h;->b(Lgf/S0$d;)V

    return-void
.end method
