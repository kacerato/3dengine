.class public final Lgf/J1$c;
.super Lbf/v;
.source "SourceFile"

# interfaces
.implements LVe/c;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgf/J1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgf/J1$c$a;,
        Lgf/J1$c$b;
    }
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
        "LVe/c;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# instance fields
.field public final L:J

.field public final M:J

.field public final N:Ljava/util/concurrent/TimeUnit;

.field public final O:LTe/J$c;

.field public final P:I

.field public final Q:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ltf/j<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field public R:LVe/c;

.field public volatile S:Z


# direct methods
.method public constructor <init>(LTe/I;JJLjava/util/concurrent/TimeUnit;LTe/J$c;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LTe/I<",
            "-",
            "LTe/B<",
            "TT;>;>;JJ",
            "Ljava/util/concurrent/TimeUnit;",
            "LTe/J$c;",
            "I)V"
        }
    .end annotation

    new-instance v0, Ljf/a;

    invoke-direct {v0}, Ljf/a;-><init>()V

    invoke-direct {p0, p1, v0}, Lbf/v;-><init>(LTe/I;Laf/n;)V

    iput-wide p2, p0, Lgf/J1$c;->L:J

    iput-wide p4, p0, Lgf/J1$c;->M:J

    iput-object p6, p0, Lgf/J1$c;->N:Ljava/util/concurrent/TimeUnit;

    iput-object p7, p0, Lgf/J1$c;->O:LTe/J$c;

    iput p8, p0, Lgf/J1$c;->P:I

    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    iput-object p1, p0, Lgf/J1$c;->Q:Ljava/util/List;

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

    invoke-virtual {p0}, Lgf/J1$c;->p()V

    :cond_0
    iget-object v0, p0, Lbf/v;->G:LTe/I;

    invoke-interface {v0}, LTe/I;->a()V

    invoke-virtual {p0}, Lgf/J1$c;->o()V

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
    .locals 11

    iget-object v0, p0, Lgf/J1$c;->R:LVe/c;

    invoke-static {v0, p1}, LYe/d;->j(LVe/c;LVe/c;)Z

    move-result v0

    if-eqz v0, :cond_1

    iput-object p1, p0, Lgf/J1$c;->R:LVe/c;

    iget-object p1, p0, Lbf/v;->G:LTe/I;

    invoke-interface {p1, p0}, LTe/I;->e(LVe/c;)V

    iget-boolean p1, p0, Lbf/v;->I:Z

    if-eqz p1, :cond_0

    return-void

    :cond_0
    iget p1, p0, Lgf/J1$c;->P:I

    invoke-static {p1}, Ltf/j;->p8(I)Ltf/j;

    move-result-object p1

    iget-object v0, p0, Lgf/J1$c;->Q:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lbf/v;->G:LTe/I;

    invoke-interface {v0, p1}, LTe/I;->g(Ljava/lang/Object;)V

    iget-object v0, p0, Lgf/J1$c;->O:LTe/J$c;

    new-instance v1, Lgf/J1$c$a;

    invoke-direct {v1, p0, p1}, Lgf/J1$c$a;-><init>(Lgf/J1$c;Ltf/j;)V

    iget-wide v2, p0, Lgf/J1$c;->L:J

    iget-object p1, p0, Lgf/J1$c;->N:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3, p1}, LTe/J$c;->c(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)LVe/c;

    iget-object v4, p0, Lgf/J1$c;->O:LTe/J$c;

    iget-wide v8, p0, Lgf/J1$c;->M:J

    iget-object v10, p0, Lgf/J1$c;->N:Ljava/util/concurrent/TimeUnit;

    move-object v5, p0

    move-wide v6, v8

    invoke-virtual/range {v4 .. v10}, LTe/J$c;->e(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)LVe/c;

    :cond_1
    return-void
.end method

.method public g(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lbf/v;->h()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lgf/J1$c;->Q:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ltf/j;

    invoke-virtual {v1, p1}, Ltf/j;->g(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    invoke-virtual {p0, p1}, Lbf/v;->b(I)I

    move-result p1

    if-nez p1, :cond_2

    return-void

    :cond_1
    iget-object v0, p0, Lbf/v;->H:Laf/n;

    invoke-interface {v0, p1}, Laf/o;->offer(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lbf/v;->c()Z

    move-result p1

    if-nez p1, :cond_2

    return-void

    :cond_2
    invoke-virtual {p0}, Lgf/J1$c;->p()V

    return-void
.end method

.method public n(Ltf/j;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltf/j<",
            "TT;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lbf/v;->H:Laf/n;

    new-instance v1, Lgf/J1$c$b;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Lgf/J1$c$b;-><init>(Ltf/j;Z)V

    invoke-interface {v0, v1}, Laf/o;->offer(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lbf/v;->c()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lgf/J1$c;->p()V

    :cond_0
    return-void
.end method

.method public o()V
    .locals 1

    iget-object v0, p0, Lgf/J1$c;->O:LTe/J$c;

    invoke-interface {v0}, LVe/c;->dispose()V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    iput-object p1, p0, Lbf/v;->K:Ljava/lang/Throwable;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lbf/v;->J:Z

    invoke-virtual {p0}, Lbf/v;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lgf/J1$c;->p()V

    :cond_0
    iget-object v0, p0, Lbf/v;->G:LTe/I;

    invoke-interface {v0, p1}, LTe/I;->onError(Ljava/lang/Throwable;)V

    invoke-virtual {p0}, Lgf/J1$c;->o()V

    return-void
.end method

.method public p()V
    .locals 10

    iget-object v0, p0, Lbf/v;->H:Laf/n;

    check-cast v0, Ljf/a;

    iget-object v1, p0, Lbf/v;->G:LTe/I;

    iget-object v2, p0, Lgf/J1$c;->Q:Ljava/util/List;

    const/4 v3, 0x1

    move v4, v3

    :cond_0
    :goto_0
    iget-boolean v5, p0, Lgf/J1$c;->S:Z

    if-eqz v5, :cond_1

    iget-object v1, p0, Lgf/J1$c;->R:LVe/c;

    invoke-interface {v1}, LVe/c;->dispose()V

    invoke-virtual {p0}, Lgf/J1$c;->o()V

    invoke-virtual {v0}, Ljf/a;->clear()V

    invoke-interface {v2}, Ljava/util/List;->clear()V

    return-void

    :cond_1
    iget-boolean v5, p0, Lbf/v;->J:Z

    invoke-virtual {v0}, Ljf/a;->poll()Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_2

    move v7, v3

    goto :goto_1

    :cond_2
    const/4 v7, 0x0

    :goto_1
    instance-of v8, v6, Lgf/J1$c$b;

    if-eqz v5, :cond_6

    if-nez v7, :cond_3

    if-eqz v8, :cond_6

    :cond_3
    invoke-virtual {v0}, Ljf/a;->clear()V

    iget-object v0, p0, Lbf/v;->K:Ljava/lang/Throwable;

    if-eqz v0, :cond_4

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ltf/j;

    invoke-virtual {v3, v0}, Ltf/j;->onError(Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_4
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ltf/j;

    invoke-virtual {v1}, Ltf/j;->a()V

    goto :goto_3

    :cond_5
    invoke-virtual {p0}, Lgf/J1$c;->o()V

    invoke-interface {v2}, Ljava/util/List;->clear()V

    return-void

    :cond_6
    if-eqz v7, :cond_7

    neg-int v4, v4

    invoke-virtual {p0, v4}, Lbf/v;->b(I)I

    move-result v4

    if-nez v4, :cond_0

    return-void

    :cond_7
    if-eqz v8, :cond_a

    check-cast v6, Lgf/J1$c$b;

    iget-boolean v5, v6, Lgf/J1$c$b;->b:Z

    if-eqz v5, :cond_9

    iget-boolean v5, p0, Lbf/v;->I:Z

    if-eqz v5, :cond_8

    goto :goto_0

    :cond_8
    iget v5, p0, Lgf/J1$c;->P:I

    invoke-static {v5}, Ltf/j;->p8(I)Ltf/j;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v1, v5}, LTe/I;->g(Ljava/lang/Object;)V

    iget-object v6, p0, Lgf/J1$c;->O:LTe/J$c;

    new-instance v7, Lgf/J1$c$a;

    invoke-direct {v7, p0, v5}, Lgf/J1$c$a;-><init>(Lgf/J1$c;Ltf/j;)V

    iget-wide v8, p0, Lgf/J1$c;->L:J

    iget-object v5, p0, Lgf/J1$c;->N:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v6, v7, v8, v9, v5}, LTe/J$c;->c(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)LVe/c;

    goto/16 :goto_0

    :cond_9
    iget-object v5, v6, Lgf/J1$c$b;->a:Ltf/j;

    invoke-interface {v2, v5}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    iget-object v5, v6, Lgf/J1$c$b;->a:Ltf/j;

    invoke-virtual {v5}, Ltf/j;->a()V

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_0

    iget-boolean v5, p0, Lbf/v;->I:Z

    if-eqz v5, :cond_0

    iput-boolean v3, p0, Lgf/J1$c;->S:Z

    goto/16 :goto_0

    :cond_a
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ltf/j;

    invoke-virtual {v7, v6}, Ltf/j;->g(Ljava/lang/Object;)V

    goto :goto_4
.end method

.method public run()V
    .locals 3

    iget v0, p0, Lgf/J1$c;->P:I

    invoke-static {v0}, Ltf/j;->p8(I)Ltf/j;

    move-result-object v0

    new-instance v1, Lgf/J1$c$b;

    const/4 v2, 0x1

    invoke-direct {v1, v0, v2}, Lgf/J1$c$b;-><init>(Ltf/j;Z)V

    iget-boolean v0, p0, Lbf/v;->I:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lbf/v;->H:Laf/n;

    invoke-interface {v0, v1}, Laf/o;->offer(Ljava/lang/Object;)Z

    :cond_0
    invoke-virtual {p0}, Lbf/v;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lgf/J1$c;->p()V

    :cond_1
    return-void
.end method
