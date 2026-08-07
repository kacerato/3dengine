.class public abstract Lwg/M;
.super LQf/a;
.source "SourceFile"

# interfaces
.implements LQf/g;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lwg/M$a;
    }
.end annotation


# static fields
.field public static final Key:Lwg/M$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lwg/M$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lwg/M$a;-><init>(Lkotlin/jvm/internal/x;)V

    sput-object v0, Lwg/M;->Key:Lwg/M$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    sget-object v0, LQf/g;->m0:LQf/g$b;

    invoke-direct {p0, v0}, LQf/a;-><init>(LQf/j$c;)V

    return-void
.end method


# virtual methods
.method public abstract dispatch(LQf/j;Ljava/lang/Runnable;)V
    .param p1    # LQf/j;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Runnable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public dispatchYield(LQf/j;Ljava/lang/Runnable;)V
    .locals 0
    .param p1    # LQf/j;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Runnable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lwg/F0;
    .end annotation

    invoke-virtual {p0, p1, p2}, Lwg/M;->dispatch(LQf/j;Ljava/lang/Runnable;)V

    return-void
.end method

.method public get(LQf/j$c;)LQf/j$b;
    .locals 0
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

    invoke-static {p0, p1}, LQf/g$a;->b(LQf/g;LQf/j$c;)LQf/j$b;

    move-result-object p1

    return-object p1
.end method

.method public final interceptContinuation(LQf/f;)LQf/f;
    .locals 1
    .param p1    # LQf/f;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "LQf/f<",
            "-TT;>;)",
            "LQf/f<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, LEg/l;

    invoke-direct {v0, p0, p1}, LEg/l;-><init>(Lwg/M;LQf/f;)V

    return-object v0
.end method

.method public isDispatchNeeded(LQf/j;)Z
    .locals 0
    .param p1    # LQf/j;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const/4 p1, 0x1

    return p1
.end method

.method public limitedParallelism(I)Lwg/M;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .annotation build Lwg/z0;
    .end annotation

    invoke-static {p1}, LEg/t;->a(I)V

    new-instance v0, LEg/s;

    invoke-direct {v0, p0, p1}, LEg/s;-><init>(Lwg/M;I)V

    return-object v0
.end method

.method public minusKey(LQf/j$c;)LQf/j;
    .locals 0
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

    invoke-static {p0, p1}, LQf/g$a;->c(LQf/g;LQf/j$c;)LQf/j;

    move-result-object p1

    return-object p1
.end method

.method public final plus(Lwg/M;)Lwg/M;
    .locals 0
    .param p1    # Lwg/M;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime LFf/o;
        level = .enum LFf/q;->ERROR:LFf/q;
        message = "Operator \'+\' on two CoroutineDispatcher objects is meaningless. CoroutineDispatcher is a coroutine context element and `+` is a set-sum operator for coroutine contexts. The dispatcher to the right of `+` just replaces the dispatcher to the left."
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    return-object p1
.end method

.method public final releaseInterceptedContinuation(LQf/f;)V
    .locals 1
    .param p1    # LQf/f;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LQf/f<",
            "*>;)V"
        }
    .end annotation

    const-string v0, "null cannot be cast to non-null type kotlinx.coroutines.internal.DispatchedContinuation<*>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->n(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, LEg/l;

    invoke-virtual {p1}, LEg/l;->y()V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lwg/W;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lwg/W;->b(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
