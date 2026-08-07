.class public final LKg/c$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lwg/Z;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LKg/c;->e(LQ1/k;LQ1/b;)Lwg/Z;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lwg/Z<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final synthetic b:Lwg/y;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lwg/y<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lwg/y;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lwg/y<",
            "TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LKg/c$b;->b:Lwg/y;

    return-void
.end method


# virtual methods
.method public P()LHg/g;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LHg/g<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, LKg/c$b;->b:Lwg/y;

    invoke-interface {v0}, Lwg/Z;->P()LHg/g;

    move-result-object v0

    return-object v0
.end method

.method public Q(Leg/l;)Lwg/m0;
    .locals 1
    .param p1    # Leg/l;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Leg/l<",
            "-",
            "Ljava/lang/Throwable;",
            "LFf/P0;",
            ">;)",
            "Lwg/m0;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, LKg/c$b;->b:Lwg/y;

    invoke-interface {v0, p1}, Lwg/K0;->Q(Leg/l;)Lwg/m0;

    move-result-object p1

    return-object p1
.end method

.method public S()LHg/e;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, LKg/c$b;->b:Lwg/y;

    invoke-interface {v0}, Lwg/K0;->S()LHg/e;

    move-result-object v0

    return-object v0
.end method

.method public T(LQf/f;)Ljava/lang/Object;
    .locals 1
    .param p1    # LQf/f;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LQf/f<",
            "-TT;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, LKg/c$b;->b:Lwg/y;

    invoke-interface {v0, p1}, Lwg/Z;->T(LQf/f;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public X(Lwg/K0;)Lwg/K0;
    .locals 1
    .param p1    # Lwg/K0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime LFf/o;
        level = .enum LFf/q;->ERROR:LFf/q;
        message = "Operator \'+\' on two Job objects is meaningless. Job is a coroutine context element and `+` is a set-sum operator for coroutine contexts. The job to the right of `+` just replaces the job the left of `+`."
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, LKg/c$b;->b:Lwg/y;

    invoke-interface {v0, p1}, Lwg/K0;->X(Lwg/K0;)Lwg/K0;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/util/concurrent/CancellationException;)V
    .locals 1
    .param p1    # Ljava/util/concurrent/CancellationException;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, LKg/c$b;->b:Lwg/y;

    invoke-interface {v0, p1}, Lwg/K0;->a(Ljava/util/concurrent/CancellationException;)V

    return-void
.end method

.method public b0(LQf/f;)Ljava/lang/Object;
    .locals 1
    .param p1    # LQf/f;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LQf/f<",
            "-",
            "LFf/P0;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, LKg/c$b;->b:Lwg/y;

    invoke-interface {v0, p1}, Lwg/K0;->b0(LQf/f;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public synthetic c(Ljava/lang/Throwable;)Z
    .locals 1
    .annotation runtime LFf/o;
        level = .enum LFf/q;->HIDDEN:LFf/q;
        message = "Since 1.2.0, binary compatibility with versions <= 1.1.x"
    .end annotation

    iget-object v0, p0, LKg/c$b;->b:Lwg/y;

    invoke-interface {v0, p1}, Lwg/K0;->c(Ljava/lang/Throwable;)Z

    move-result p1

    return p1
.end method

.method public synthetic cancel()V
    .locals 1
    .annotation runtime LFf/o;
        level = .enum LFf/q;->HIDDEN:LFf/q;
        message = "Since 1.2.0, binary compatibility with versions <= 1.1.x"
    .end annotation

    iget-object v0, p0, LKg/c$b;->b:Lwg/y;

    invoke-interface {v0}, Lwg/K0;->cancel()V

    return-void
.end method

.method public d()Z
    .locals 1

    iget-object v0, p0, LKg/c$b;->b:Lwg/y;

    invoke-interface {v0}, Lwg/K0;->d()Z

    move-result v0

    return v0
.end method

.method public f()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation build Lwg/z0;
    .end annotation

    iget-object v0, p0, LKg/c$b;->b:Lwg/y;

    invoke-interface {v0}, Lwg/Z;->f()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public fold(Ljava/lang/Object;Leg/p;)Ljava/lang/Object;
    .locals 1
    .param p2    # Leg/p;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(TR;",
            "Leg/p<",
            "-TR;-",
            "LQf/j$b;",
            "+TR;>;)TR;"
        }
    .end annotation

    iget-object v0, p0, LKg/c$b;->b:Lwg/y;

    invoke-interface {v0, p1, p2}, LQf/j$b;->fold(Ljava/lang/Object;Leg/p;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public get(LQf/j$c;)LQf/j$b;
    .locals 1
    .param p1    # LQf/j$c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "LQf/j$b;",
            ">(",
            "LQf/j$c<",
            "TE;>;)TE;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, LKg/c$b;->b:Lwg/y;

    invoke-interface {v0, p1}, LQf/j$b;->get(LQf/j$c;)LQf/j$b;

    move-result-object p1

    return-object p1
.end method

.method public getChildren()Lpg/m;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lpg/m<",
            "Lwg/K0;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, LKg/c$b;->b:Lwg/y;

    invoke-interface {v0}, Lwg/K0;->getChildren()Lpg/m;

    move-result-object v0

    return-object v0
.end method

.method public getKey()LQf/j$c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LQf/j$c<",
            "*>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, LKg/c$b;->b:Lwg/y;

    invoke-interface {v0}, LQf/j$b;->getKey()LQf/j$c;

    move-result-object v0

    return-object v0
.end method

.method public getParent()Lwg/K0;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, LKg/c$b;->b:Lwg/y;

    invoke-interface {v0}, Lwg/K0;->getParent()Lwg/K0;

    move-result-object v0

    return-object v0
.end method

.method public isActive()Z
    .locals 1

    iget-object v0, p0, LKg/c$b;->b:Lwg/y;

    invoke-interface {v0}, Lwg/K0;->isActive()Z

    move-result v0

    return v0
.end method

.method public isCancelled()Z
    .locals 1

    iget-object v0, p0, LKg/c$b;->b:Lwg/y;

    invoke-interface {v0}, Lwg/K0;->isCancelled()Z

    move-result v0

    return v0
.end method

.method public k()Ljava/lang/Throwable;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .annotation build Lwg/z0;
    .end annotation

    iget-object v0, p0, LKg/c$b;->b:Lwg/y;

    invoke-interface {v0}, Lwg/Z;->k()Ljava/lang/Throwable;

    move-result-object v0

    return-object v0
.end method

.method public l()Ljava/util/concurrent/CancellationException;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .annotation build Lwg/F0;
    .end annotation

    iget-object v0, p0, LKg/c$b;->b:Lwg/y;

    invoke-interface {v0}, Lwg/K0;->l()Ljava/util/concurrent/CancellationException;

    move-result-object v0

    return-object v0
.end method

.method public minusKey(LQf/j$c;)LQf/j;
    .locals 1
    .param p1    # LQf/j$c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LQf/j$c<",
            "*>;)",
            "LQf/j;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, LKg/c$b;->b:Lwg/y;

    invoke-interface {v0, p1}, LQf/j$b;->minusKey(LQf/j$c;)LQf/j;

    move-result-object p1

    return-object p1
.end method

.method public o(ZZLeg/l;)Lwg/m0;
    .locals 1
    .param p3    # Leg/l;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ",
            "Leg/l<",
            "-",
            "Ljava/lang/Throwable;",
            "LFf/P0;",
            ">;)",
            "Lwg/m0;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .annotation build Lwg/F0;
    .end annotation

    iget-object v0, p0, LKg/c$b;->b:Lwg/y;

    invoke-interface {v0, p1, p2, p3}, Lwg/K0;->o(ZZLeg/l;)Lwg/m0;

    move-result-object p1

    return-object p1
.end method

.method public plus(LQf/j;)LQf/j;
    .locals 1
    .param p1    # LQf/j;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, LKg/c$b;->b:Lwg/y;

    invoke-interface {v0, p1}, LQf/j;->plus(LQf/j;)LQf/j;

    move-result-object p1

    return-object p1
.end method

.method public s(Lwg/x;)Lwg/v;
    .locals 1
    .param p1    # Lwg/x;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .annotation build Lwg/F0;
    .end annotation

    iget-object v0, p0, LKg/c$b;->b:Lwg/y;

    invoke-interface {v0, p1}, Lwg/K0;->s(Lwg/x;)Lwg/v;

    move-result-object p1

    return-object p1
.end method

.method public start()Z
    .locals 1

    iget-object v0, p0, LKg/c$b;->b:Lwg/y;

    invoke-interface {v0}, Lwg/K0;->start()Z

    move-result v0

    return v0
.end method
