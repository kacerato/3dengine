.class public abstract LTf/d;
.super LTf/a;
.source "SourceFile"


# annotations
.annotation build LFf/l0;
    version = "1.3"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nContinuationImpl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ContinuationImpl.kt\nkotlin/coroutines/jvm/internal/ContinuationImpl\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,169:1\n1#2:170\n*E\n"
.end annotation

.annotation build Lkotlin/jvm/internal/t0;
    value = {
        "SMAP\nContinuationImpl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ContinuationImpl.kt\nkotlin/coroutines/jvm/internal/ContinuationImpl\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,169:1\n1#2:170\n*E\n"
    }
.end annotation


# instance fields
.field private final _context:LQf/j;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private transient intercepted:LQf/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LQf/f<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(LQf/f;)V
    .locals 1
    .param p1    # LQf/f;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LQf/f<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 3
    invoke-interface {p1}, LQf/f;->getContext()LQf/j;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, p1, v0}, LTf/d;-><init>(LQf/f;LQf/j;)V

    return-void
.end method

.method public constructor <init>(LQf/f;LQf/j;)V
    .locals 0
    .param p1    # LQf/f;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # LQf/j;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LQf/f<",
            "Ljava/lang/Object;",
            ">;",
            "LQf/j;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, LTf/a;-><init>(LQf/f;)V

    .line 2
    iput-object p2, p0, LTf/d;->_context:LQf/j;

    return-void
.end method


# virtual methods
.method public getContext()LQf/j;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, LTf/d;->_context:LQf/j;

    invoke-static {v0}, Lkotlin/jvm/internal/M;->m(Ljava/lang/Object;)V

    return-object v0
.end method

.method public final intercepted()LQf/f;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LQf/f<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, LTf/d;->intercepted:LQf/f;

    if-nez v0, :cond_2

    invoke-virtual {p0}, LTf/d;->getContext()LQf/j;

    move-result-object v0

    sget-object v1, LQf/g;->m0:LQf/g$b;

    invoke-interface {v0, v1}, LQf/j;->get(LQf/j$c;)LQf/j$b;

    move-result-object v0

    check-cast v0, LQf/g;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, LQf/g;->interceptContinuation(LQf/f;)LQf/f;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    move-object v0, p0

    :cond_1
    iput-object v0, p0, LTf/d;->intercepted:LQf/f;

    :cond_2
    return-object v0
.end method

.method public releaseIntercepted()V
    .locals 3

    iget-object v0, p0, LTf/d;->intercepted:LQf/f;

    if-eqz v0, :cond_0

    if-eq v0, p0, :cond_0

    invoke-virtual {p0}, LTf/d;->getContext()LQf/j;

    move-result-object v1

    sget-object v2, LQf/g;->m0:LQf/g$b;

    invoke-interface {v1, v2}, LQf/j;->get(LQf/j$c;)LQf/j$b;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/M;->m(Ljava/lang/Object;)V

    check-cast v1, LQf/g;

    invoke-interface {v1, v0}, LQf/g;->releaseInterceptedContinuation(LQf/f;)V

    :cond_0
    sget-object v0, LTf/c;->b:LTf/c;

    iput-object v0, p0, LTf/d;->intercepted:LQf/f;

    return-void
.end method
