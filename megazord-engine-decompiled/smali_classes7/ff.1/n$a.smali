.class public final Lff/n$a;
.super Ljava/util/concurrent/atomic/AtomicInteger;
.source "SourceFile"

# interfaces
.implements LTe/I;
.implements LVe/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lff/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lff/n$a$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicInteger;",
        "LTe/I<",
        "TT;>;",
        "LVe/c;"
    }
.end annotation


# static fields
.field public static final m:J = -0x7ed83da4674d8da5L

.field public static final n:I = 0x0

.field public static final o:I = 0x1

.field public static final p:I = 0x2


# instance fields
.field public final b:LTe/I;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LTe/I<",
            "-TR;>;"
        }
    .end annotation
.end field

.field public final c:LXe/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LXe/o<",
            "-TT;+",
            "LTe/Q<",
            "+TR;>;>;"
        }
    .end annotation
.end field

.field public final d:Lio/reactivex/internal/util/c;

.field public final e:Lff/n$a$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lff/n$a$a<",
            "TR;>;"
        }
    .end annotation
.end field

.field public final f:Laf/n;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Laf/n<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final g:Lio/reactivex/internal/util/j;

.field public h:LVe/c;

.field public volatile i:Z

.field public volatile j:Z

.field public k:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TR;"
        }
    .end annotation
.end field

.field public volatile l:I


# direct methods
.method public constructor <init>(LTe/I;LXe/o;ILio/reactivex/internal/util/j;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LTe/I<",
            "-TR;>;",
            "LXe/o<",
            "-TT;+",
            "LTe/Q<",
            "+TR;>;>;I",
            "Lio/reactivex/internal/util/j;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object p1, p0, Lff/n$a;->b:LTe/I;

    iput-object p2, p0, Lff/n$a;->c:LXe/o;

    iput-object p4, p0, Lff/n$a;->g:Lio/reactivex/internal/util/j;

    new-instance p1, Lio/reactivex/internal/util/c;

    invoke-direct {p1}, Lio/reactivex/internal/util/c;-><init>()V

    iput-object p1, p0, Lff/n$a;->d:Lio/reactivex/internal/util/c;

    new-instance p1, Lff/n$a$a;

    invoke-direct {p1, p0}, Lff/n$a$a;-><init>(Lff/n$a;)V

    iput-object p1, p0, Lff/n$a;->e:Lff/n$a$a;

    new-instance p1, Ljf/c;

    invoke-direct {p1, p3}, Ljf/c;-><init>(I)V

    iput-object p1, p0, Lff/n$a;->f:Laf/n;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lff/n$a;->i:Z

    invoke-virtual {p0}, Lff/n$a;->b()V

    return-void
.end method

.method public b()V
    .locals 10

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lff/n$a;->b:LTe/I;

    iget-object v1, p0, Lff/n$a;->g:Lio/reactivex/internal/util/j;

    iget-object v2, p0, Lff/n$a;->f:Laf/n;

    iget-object v3, p0, Lff/n$a;->d:Lio/reactivex/internal/util/c;

    const/4 v4, 0x1

    move v5, v4

    :cond_1
    :goto_0
    iget-boolean v6, p0, Lff/n$a;->j:Z

    const/4 v7, 0x0

    if-eqz v6, :cond_2

    invoke-interface {v2}, Laf/o;->clear()V

    iput-object v7, p0, Lff/n$a;->k:Ljava/lang/Object;

    goto/16 :goto_2

    :cond_2
    iget v6, p0, Lff/n$a;->l:I

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v8

    if-eqz v8, :cond_4

    sget-object v8, Lio/reactivex/internal/util/j;->IMMEDIATE:Lio/reactivex/internal/util/j;

    if-eq v1, v8, :cond_3

    sget-object v8, Lio/reactivex/internal/util/j;->BOUNDARY:Lio/reactivex/internal/util/j;

    if-ne v1, v8, :cond_4

    if-nez v6, :cond_4

    :cond_3
    invoke-interface {v2}, Laf/o;->clear()V

    iput-object v7, p0, Lff/n$a;->k:Ljava/lang/Object;

    invoke-virtual {v3}, Lio/reactivex/internal/util/c;->c()Ljava/lang/Throwable;

    move-result-object v1

    invoke-interface {v0, v1}, LTe/I;->onError(Ljava/lang/Throwable;)V

    return-void

    :cond_4
    const/4 v8, 0x0

    if-nez v6, :cond_9

    iget-boolean v6, p0, Lff/n$a;->i:Z

    invoke-interface {v2}, Laf/n;->poll()Ljava/lang/Object;

    move-result-object v7

    if-nez v7, :cond_5

    move v8, v4

    :cond_5
    if-eqz v6, :cond_7

    if-eqz v8, :cond_7

    invoke-virtual {v3}, Lio/reactivex/internal/util/c;->c()Ljava/lang/Throwable;

    move-result-object v1

    if-nez v1, :cond_6

    invoke-interface {v0}, LTe/I;->a()V

    goto :goto_1

    :cond_6
    invoke-interface {v0, v1}, LTe/I;->onError(Ljava/lang/Throwable;)V

    :goto_1
    return-void

    :cond_7
    if-eqz v8, :cond_8

    goto :goto_2

    :cond_8
    :try_start_0
    iget-object v6, p0, Lff/n$a;->c:LXe/o;

    invoke-interface {v6, v7}, LXe/o;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    const-string v7, "The mapper returned a null SingleSource"

    invoke-static {v6, v7}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, LTe/Q;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput v4, p0, Lff/n$a;->l:I

    iget-object v7, p0, Lff/n$a;->e:Lff/n$a$a;

    invoke-interface {v6, v7}, LTe/Q;->a(LTe/N;)V

    goto :goto_2

    :catchall_0
    move-exception v1

    invoke-static {v1}, Lio/reactivex/exceptions/a;->b(Ljava/lang/Throwable;)V

    iget-object v4, p0, Lff/n$a;->h:LVe/c;

    invoke-interface {v4}, LVe/c;->dispose()V

    invoke-interface {v2}, Laf/o;->clear()V

    invoke-virtual {v3, v1}, Lio/reactivex/internal/util/c;->a(Ljava/lang/Throwable;)Z

    invoke-virtual {v3}, Lio/reactivex/internal/util/c;->c()Ljava/lang/Throwable;

    move-result-object v1

    invoke-interface {v0, v1}, LTe/I;->onError(Ljava/lang/Throwable;)V

    return-void

    :cond_9
    const/4 v9, 0x2

    if-ne v6, v9, :cond_a

    iget-object v6, p0, Lff/n$a;->k:Ljava/lang/Object;

    iput-object v7, p0, Lff/n$a;->k:Ljava/lang/Object;

    invoke-interface {v0, v6}, LTe/I;->g(Ljava/lang/Object;)V

    iput v8, p0, Lff/n$a;->l:I

    goto/16 :goto_0

    :cond_a
    :goto_2
    neg-int v5, v5

    invoke-virtual {p0, v5}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    move-result v5

    if-nez v5, :cond_1

    return-void
.end method

.method public c(Ljava/lang/Throwable;)V
    .locals 1

    iget-object v0, p0, Lff/n$a;->d:Lio/reactivex/internal/util/c;

    invoke-virtual {v0, p1}, Lio/reactivex/internal/util/c;->a(Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p1, p0, Lff/n$a;->g:Lio/reactivex/internal/util/j;

    sget-object v0, Lio/reactivex/internal/util/j;->END:Lio/reactivex/internal/util/j;

    if-eq p1, v0, :cond_0

    iget-object p1, p0, Lff/n$a;->h:LVe/c;

    invoke-interface {p1}, LVe/c;->dispose()V

    :cond_0
    const/4 p1, 0x0

    iput p1, p0, Lff/n$a;->l:I

    invoke-virtual {p0}, Lff/n$a;->b()V

    goto :goto_0

    :cond_1
    invoke-static {p1}, Lqf/a;->Y(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public d()Z
    .locals 1

    iget-boolean v0, p0, Lff/n$a;->j:Z

    return v0
.end method

.method public dispose()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lff/n$a;->j:Z

    iget-object v0, p0, Lff/n$a;->h:LVe/c;

    invoke-interface {v0}, LVe/c;->dispose()V

    iget-object v0, p0, Lff/n$a;->e:Lff/n$a$a;

    invoke-virtual {v0}, Lff/n$a$a;->a()V

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lff/n$a;->f:Laf/n;

    invoke-interface {v0}, Laf/o;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Lff/n$a;->k:Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public e(LVe/c;)V
    .locals 1

    iget-object v0, p0, Lff/n$a;->h:LVe/c;

    invoke-static {v0, p1}, LYe/d;->j(LVe/c;LVe/c;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p1, p0, Lff/n$a;->h:LVe/c;

    iget-object p1, p0, Lff/n$a;->b:LTe/I;

    invoke-interface {p1, p0}, LTe/I;->e(LVe/c;)V

    :cond_0
    return-void
.end method

.method public f(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;)V"
        }
    .end annotation

    iput-object p1, p0, Lff/n$a;->k:Ljava/lang/Object;

    const/4 p1, 0x2

    iput p1, p0, Lff/n$a;->l:I

    invoke-virtual {p0}, Lff/n$a;->b()V

    return-void
.end method

.method public g(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget-object v0, p0, Lff/n$a;->f:Laf/n;

    invoke-interface {v0, p1}, Laf/o;->offer(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lff/n$a;->b()V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    iget-object v0, p0, Lff/n$a;->d:Lio/reactivex/internal/util/c;

    invoke-virtual {v0, p1}, Lio/reactivex/internal/util/c;->a(Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p1, p0, Lff/n$a;->g:Lio/reactivex/internal/util/j;

    sget-object v0, Lio/reactivex/internal/util/j;->IMMEDIATE:Lio/reactivex/internal/util/j;

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lff/n$a;->e:Lff/n$a$a;

    invoke-virtual {p1}, Lff/n$a$a;->a()V

    :cond_0
    const/4 p1, 0x1

    iput-boolean p1, p0, Lff/n$a;->i:Z

    invoke-virtual {p0}, Lff/n$a;->b()V

    goto :goto_0

    :cond_1
    invoke-static {p1}, Lqf/a;->Y(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
