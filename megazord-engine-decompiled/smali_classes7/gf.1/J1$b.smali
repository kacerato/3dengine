.class public final Lgf/J1$b;
.super Lbf/v;
.source "SourceFile"

# interfaces
.implements LTe/I;
.implements LVe/c;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgf/J1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lbf/v<",
        "TT;",
        "Ljava/lang/Object;",
        "LTe/B<",
        "TT;>;>;",
        "LTe/I<",
        "TT;>;",
        "LVe/c;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# static fields
.field public static final T:Ljava/lang/Object;


# instance fields
.field public final L:J

.field public final M:Ljava/util/concurrent/TimeUnit;

.field public final N:LTe/J;

.field public final O:I

.field public P:LVe/c;

.field public Q:Ltf/j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ltf/j<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final R:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "LVe/c;",
            ">;"
        }
    .end annotation
.end field

.field public volatile S:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lgf/J1$b;->T:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(LTe/I;JLjava/util/concurrent/TimeUnit;LTe/J;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LTe/I<",
            "-",
            "LTe/B<",
            "TT;>;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            "LTe/J;",
            "I)V"
        }
    .end annotation

    new-instance v0, Ljf/a;

    invoke-direct {v0}, Ljf/a;-><init>()V

    invoke-direct {p0, p1, v0}, Lbf/v;-><init>(LTe/I;Laf/n;)V

    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object p1, p0, Lgf/J1$b;->R:Ljava/util/concurrent/atomic/AtomicReference;

    iput-wide p2, p0, Lgf/J1$b;->L:J

    iput-object p4, p0, Lgf/J1$b;->M:Ljava/util/concurrent/TimeUnit;

    iput-object p5, p0, Lgf/J1$b;->N:LTe/J;

    iput p6, p0, Lgf/J1$b;->O:I

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lbf/v;->J:Z

    invoke-virtual {p0}, Lbf/v;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lgf/J1$b;->o()V

    :cond_0
    invoke-virtual {p0}, Lgf/J1$b;->n()V

    iget-object v0, p0, Lbf/v;->G:LTe/I;

    invoke-interface {v0}, LTe/I;->a()V

    return-void
.end method

.method public d()Z
    .locals 1

    iget-boolean v0, p0, Lbf/v;->I:Z

    return v0
.end method

.method public dispose()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lbf/v;->I:Z

    return-void
.end method

.method public e(LVe/c;)V
    .locals 7

    iget-object v0, p0, Lgf/J1$b;->P:LVe/c;

    invoke-static {v0, p1}, LYe/d;->j(LVe/c;LVe/c;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p1, p0, Lgf/J1$b;->P:LVe/c;

    iget p1, p0, Lgf/J1$b;->O:I

    invoke-static {p1}, Ltf/j;->p8(I)Ltf/j;

    move-result-object p1

    iput-object p1, p0, Lgf/J1$b;->Q:Ltf/j;

    iget-object p1, p0, Lbf/v;->G:LTe/I;

    invoke-interface {p1, p0}, LTe/I;->e(LVe/c;)V

    iget-object v0, p0, Lgf/J1$b;->Q:Ltf/j;

    invoke-interface {p1, v0}, LTe/I;->g(Ljava/lang/Object;)V

    iget-boolean p1, p0, Lbf/v;->I:Z

    if-nez p1, :cond_0

    iget-object v0, p0, Lgf/J1$b;->N:LTe/J;

    iget-wide v4, p0, Lgf/J1$b;->L:J

    iget-object v6, p0, Lgf/J1$b;->M:Ljava/util/concurrent/TimeUnit;

    move-object v1, p0

    move-wide v2, v4

    invoke-virtual/range {v0 .. v6}, LTe/J;->h(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)LVe/c;

    move-result-object p1

    iget-object v0, p0, Lgf/J1$b;->R:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v0, p1}, LYe/d;->c(Ljava/util/concurrent/atomic/AtomicReference;LVe/c;)Z

    :cond_0
    return-void
.end method

.method public g(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget-boolean v0, p0, Lgf/J1$b;->S:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lbf/v;->h()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lgf/J1$b;->Q:Ltf/j;

    invoke-virtual {v0, p1}, Ltf/j;->g(Ljava/lang/Object;)V

    const/4 p1, -0x1

    invoke-virtual {p0, p1}, Lbf/v;->b(I)I

    move-result p1

    if-nez p1, :cond_2

    return-void

    :cond_1
    iget-object v0, p0, Lbf/v;->H:Laf/n;

    invoke-static {p1}, Lio/reactivex/internal/util/p;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1}, Laf/o;->offer(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lbf/v;->c()Z

    move-result p1

    if-nez p1, :cond_2

    return-void

    :cond_2
    invoke-virtual {p0}, Lgf/J1$b;->o()V

    return-void
.end method

.method public n()V
    .locals 1

    iget-object v0, p0, Lgf/J1$b;->R:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v0}, LYe/d;->a(Ljava/util/concurrent/atomic/AtomicReference;)Z

    return-void
.end method

.method public o()V
    .locals 7

    iget-object v0, p0, Lbf/v;->H:Laf/n;

    check-cast v0, Ljf/a;

    iget-object v1, p0, Lbf/v;->G:LTe/I;

    iget-object v2, p0, Lgf/J1$b;->Q:Ltf/j;

    const/4 v3, 0x1

    :cond_0
    :goto_0
    iget-boolean v4, p0, Lgf/J1$b;->S:Z

    iget-boolean v5, p0, Lbf/v;->J:Z

    invoke-virtual {v0}, Ljf/a;->poll()Ljava/lang/Object;

    move-result-object v6

    if-eqz v5, :cond_3

    if-eqz v6, :cond_1

    sget-object v5, Lgf/J1$b;->T:Ljava/lang/Object;

    if-ne v6, v5, :cond_3

    :cond_1
    const/4 v1, 0x0

    iput-object v1, p0, Lgf/J1$b;->Q:Ltf/j;

    invoke-virtual {v0}, Ljf/a;->clear()V

    invoke-virtual {p0}, Lgf/J1$b;->n()V

    iget-object v0, p0, Lbf/v;->K:Ljava/lang/Throwable;

    if-eqz v0, :cond_2

    invoke-virtual {v2, v0}, Ltf/j;->onError(Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_2
    invoke-virtual {v2}, Ltf/j;->a()V

    :goto_1
    return-void

    :cond_3
    if-nez v6, :cond_4

    neg-int v3, v3

    invoke-virtual {p0, v3}, Lbf/v;->b(I)I

    move-result v3

    if-nez v3, :cond_0

    return-void

    :cond_4
    sget-object v5, Lgf/J1$b;->T:Ljava/lang/Object;

    if-ne v6, v5, :cond_6

    invoke-virtual {v2}, Ltf/j;->a()V

    if-nez v4, :cond_5

    iget v2, p0, Lgf/J1$b;->O:I

    invoke-static {v2}, Ltf/j;->p8(I)Ltf/j;

    move-result-object v2

    iput-object v2, p0, Lgf/J1$b;->Q:Ltf/j;

    invoke-interface {v1, v2}, LTe/I;->g(Ljava/lang/Object;)V

    goto :goto_0

    :cond_5
    iget-object v4, p0, Lgf/J1$b;->P:LVe/c;

    invoke-interface {v4}, LVe/c;->dispose()V

    goto :goto_0

    :cond_6
    invoke-static {v6}, Lio/reactivex/internal/util/p;->m(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v4}, Ltf/j;->g(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    iput-object p1, p0, Lbf/v;->K:Ljava/lang/Throwable;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lbf/v;->J:Z

    invoke-virtual {p0}, Lbf/v;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lgf/J1$b;->o()V

    :cond_0
    invoke-virtual {p0}, Lgf/J1$b;->n()V

    iget-object v0, p0, Lbf/v;->G:LTe/I;

    invoke-interface {v0, p1}, LTe/I;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public run()V
    .locals 2

    iget-boolean v0, p0, Lbf/v;->I:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lgf/J1$b;->S:Z

    invoke-virtual {p0}, Lgf/J1$b;->n()V

    :cond_0
    iget-object v0, p0, Lbf/v;->H:Laf/n;

    sget-object v1, Lgf/J1$b;->T:Ljava/lang/Object;

    invoke-interface {v0, v1}, Laf/o;->offer(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lbf/v;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lgf/J1$b;->o()V

    :cond_1
    return-void
.end method
