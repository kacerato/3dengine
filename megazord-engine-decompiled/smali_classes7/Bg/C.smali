.class public final LBg/C;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(LBg/j;Ljava/util/concurrent/CancellationException;)V
    .locals 0
    .param p0    # LBg/j;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/util/concurrent/CancellationException;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation runtime LFf/o;
        level = .enum LFf/q;->ERROR:LFf/q;
        message = "cancel() is resolved into the extension of outer CoroutineScope which is likely to be an error.Use currentCoroutineContext().cancel() instead or specify the receiver of cancel() explicitly"
        replaceWith = .subannotation LFf/g0;
            expression = "currentCoroutineContext().cancel(cause)"
            imports = {}
        .end subannotation
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LBg/j<",
            "*>;",
            "Ljava/util/concurrent/CancellationException;",
            ")V"
        }
    .end annotation

    invoke-static {}, LBg/k;->c1()Ljava/lang/Void;

    new-instance p0, Lkotlin/KotlinNothingValueException;

    invoke-direct {p0}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw p0
.end method

.method public static synthetic b(LBg/j;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    :cond_0
    invoke-static {p0, p1}, LBg/C;->a(LBg/j;Ljava/util/concurrent/CancellationException;)V

    return-void
.end method

.method public static final c(LBg/I;)LBg/i;
    .locals 0
    .param p0    # LBg/I;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime LFf/o;
        level = .enum LFf/q;->ERROR:LFf/q;
        message = "Applying \'cancellable\' to a SharedFlow has no effect. See the SharedFlow documentation on Operator Fusion."
        replaceWith = .subannotation LFf/g0;
            expression = "this"
            imports = {}
        .end subannotation
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "LBg/I<",
            "+TT;>;)",
            "LBg/i<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-static {}, LBg/k;->c1()Ljava/lang/Void;

    new-instance p0, Lkotlin/KotlinNothingValueException;

    invoke-direct {p0}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw p0
.end method

.method public static final d(LBg/I;Leg/q;)LBg/i;
    .locals 1
    .annotation runtime LFf/o;
        level = .enum LFf/q;->WARNING:LFf/q;
        message = "SharedFlow never completes, so this operator typically has not effect, it can only catch exceptions from \'onSubscribe\' operator"
        replaceWith = .subannotation LFf/g0;
            expression = "this"
            imports = {}
        .end subannotation
    .end annotation

    .annotation build LWf/f;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "LBg/I<",
            "+TT;>;",
            "Leg/q<",
            "-",
            "LBg/j<",
            "-TT;>;-",
            "Ljava/lang/Throwable;",
            "-",
            "LQf/f<",
            "-",
            "LFf/P0;",
            ">;+",
            "Ljava/lang/Object;",
            ">;)",
            "LBg/i<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "null cannot be cast to non-null type kotlinx.coroutines.flow.Flow<T of kotlinx.coroutines.flow.LintKt.catch>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/M;->n(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, p1}, LBg/k;->u(LBg/i;Leg/q;)LBg/i;

    move-result-object p0

    return-object p0
.end method

.method public static final e(LBg/U;)LBg/i;
    .locals 0
    .param p0    # LBg/U;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime LFf/o;
        level = .enum LFf/q;->ERROR:LFf/q;
        message = "Applying \'conflate\' to StateFlow has no effect. See the StateFlow documentation on Operator Fusion."
        replaceWith = .subannotation LFf/g0;
            expression = "this"
            imports = {}
        .end subannotation
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "LBg/U<",
            "+TT;>;)",
            "LBg/i<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-static {}, LBg/k;->c1()Ljava/lang/Void;

    new-instance p0, Lkotlin/KotlinNothingValueException;

    invoke-direct {p0}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw p0
.end method

.method public static final f(LBg/I;LQf/f;)Ljava/lang/Object;
    .locals 1
    .annotation runtime LFf/o;
        level = .enum LFf/q;->WARNING:LFf/q;
        message = "SharedFlow never completes, so this terminal operation never completes."
    .end annotation

    .annotation build LWf/f;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "LBg/I<",
            "+TT;>;",
            "LQf/f<",
            "-",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    const-string v0, "null cannot be cast to non-null type kotlinx.coroutines.flow.Flow<T of kotlinx.coroutines.flow.LintKt.count>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/M;->n(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-static {v0}, Lkotlin/jvm/internal/J;->e(I)V

    invoke-static {p0, p1}, LBg/k;->Y(LBg/i;LQf/f;)Ljava/lang/Object;

    move-result-object p0

    const/4 p1, 0x1

    invoke-static {p1}, Lkotlin/jvm/internal/J;->e(I)V

    return-object p0
.end method

.method public static final g(LBg/U;)LBg/i;
    .locals 0
    .param p0    # LBg/U;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime LFf/o;
        level = .enum LFf/q;->ERROR:LFf/q;
        message = "Applying \'distinctUntilChanged\' to StateFlow has no effect. See the StateFlow documentation on Operator Fusion."
        replaceWith = .subannotation LFf/g0;
            expression = "this"
            imports = {}
        .end subannotation
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "LBg/U<",
            "+TT;>;)",
            "LBg/i<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-static {}, LBg/k;->c1()Ljava/lang/Void;

    new-instance p0, Lkotlin/KotlinNothingValueException;

    invoke-direct {p0}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw p0
.end method

.method public static final h(LBg/I;LQf/j;)LBg/i;
    .locals 0
    .param p0    # LBg/I;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # LQf/j;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime LFf/o;
        level = .enum LFf/q;->ERROR:LFf/q;
        message = "Applying \'flowOn\' to SharedFlow has no effect. See the SharedFlow documentation on Operator Fusion."
        replaceWith = .subannotation LFf/g0;
            expression = "this"
            imports = {}
        .end subannotation
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "LBg/I<",
            "+TT;>;",
            "LQf/j;",
            ")",
            "LBg/i<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-static {}, LBg/k;->c1()Ljava/lang/Void;

    new-instance p0, Lkotlin/KotlinNothingValueException;

    invoke-direct {p0}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw p0
.end method

.method public static final i(LBg/j;)LQf/j;
    .locals 0
    .param p0    # LBg/j;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LBg/j<",
            "*>;)",
            "LQf/j;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-static {}, LBg/k;->c1()Ljava/lang/Void;

    new-instance p0, Lkotlin/KotlinNothingValueException;

    invoke-direct {p0}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw p0
.end method

.method public static synthetic j(LBg/j;)V
    .locals 0
    .annotation runtime LFf/o;
        level = .enum LFf/q;->ERROR:LFf/q;
        message = "coroutineContext is resolved into the property of outer CoroutineScope which is likely to be an error.Use currentCoroutineContext() instead or specify the receiver of coroutineContext explicitly"
        replaceWith = .subannotation LFf/g0;
            expression = "currentCoroutineContext()"
            imports = {}
        .end subannotation
    .end annotation

    return-void
.end method

.method public static final k(LBg/j;)Z
    .locals 0
    .param p0    # LBg/j;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LBg/j<",
            "*>;)Z"
        }
    .end annotation

    invoke-static {}, LBg/k;->c1()Ljava/lang/Void;

    new-instance p0, Lkotlin/KotlinNothingValueException;

    invoke-direct {p0}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw p0
.end method

.method public static synthetic l(LBg/j;)V
    .locals 0
    .annotation runtime LFf/o;
        level = .enum LFf/q;->ERROR:LFf/q;
        message = "isActive is resolved into the extension of outer CoroutineScope which is likely to be an error.Use currentCoroutineContext().isActive or cancellable() operator instead or specify the receiver of isActive explicitly. Additionally, flow {} builder emissions are cancellable by default."
        replaceWith = .subannotation LFf/g0;
            expression = "currentCoroutineContext().isActive"
            imports = {}
        .end subannotation
    .end annotation

    return-void
.end method

.method public static final m(LBg/I;JLeg/p;)LBg/i;
    .locals 1
    .annotation runtime LFf/o;
        level = .enum LFf/q;->WARNING:LFf/q;
        message = "SharedFlow never completes, so this operator has no effect."
        replaceWith = .subannotation LFf/g0;
            expression = "this"
            imports = {}
        .end subannotation
    .end annotation

    .annotation build LWf/f;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "LBg/I<",
            "+TT;>;J",
            "Leg/p<",
            "-",
            "Ljava/lang/Throwable;",
            "-",
            "LQf/f<",
            "-",
            "Ljava/lang/Boolean;",
            ">;+",
            "Ljava/lang/Object;",
            ">;)",
            "LBg/i<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "null cannot be cast to non-null type kotlinx.coroutines.flow.Flow<T of kotlinx.coroutines.flow.LintKt.retry>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/M;->n(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, p1, p2, p3}, LBg/k;->w1(LBg/i;JLeg/p;)LBg/i;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic n(LBg/I;JLeg/p;ILjava/lang/Object;)LBg/i;
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    const-wide p1, 0x7fffffffffffffffL

    :cond_0
    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_1

    new-instance p3, LBg/C$a;

    const/4 p4, 0x0

    invoke-direct {p3, p4}, LBg/C$a;-><init>(LQf/f;)V

    :cond_1
    const-string p4, "null cannot be cast to non-null type kotlinx.coroutines.flow.Flow<T of kotlinx.coroutines.flow.LintKt.retry>"

    invoke-static {p0, p4}, Lkotlin/jvm/internal/M;->n(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, p1, p2, p3}, LBg/k;->w1(LBg/i;JLeg/p;)LBg/i;

    move-result-object p0

    return-object p0
.end method

.method public static final o(LBg/I;Leg/r;)LBg/i;
    .locals 1
    .annotation runtime LFf/o;
        level = .enum LFf/q;->WARNING:LFf/q;
        message = "SharedFlow never completes, so this operator has no effect."
        replaceWith = .subannotation LFf/g0;
            expression = "this"
            imports = {}
        .end subannotation
    .end annotation

    .annotation build LWf/f;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "LBg/I<",
            "+TT;>;",
            "Leg/r<",
            "-",
            "LBg/j<",
            "-TT;>;-",
            "Ljava/lang/Throwable;",
            "-",
            "Ljava/lang/Long;",
            "-",
            "LQf/f<",
            "-",
            "Ljava/lang/Boolean;",
            ">;+",
            "Ljava/lang/Object;",
            ">;)",
            "LBg/i<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "null cannot be cast to non-null type kotlinx.coroutines.flow.Flow<T of kotlinx.coroutines.flow.LintKt.retryWhen>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/M;->n(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, p1}, LBg/k;->y1(LBg/i;Leg/r;)LBg/i;

    move-result-object p0

    return-object p0
.end method

.method public static final p(LBg/I;LQf/f;)Ljava/lang/Object;
    .locals 2
    .annotation runtime LFf/o;
        level = .enum LFf/q;->WARNING:LFf/q;
        message = "SharedFlow never completes, so this terminal operation never completes."
    .end annotation

    .annotation build LWf/f;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "LBg/I<",
            "+TT;>;",
            "LQf/f<",
            "-",
            "Ljava/util/List<",
            "+TT;>;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    const-string v0, "null cannot be cast to non-null type kotlinx.coroutines.flow.Flow<T of kotlinx.coroutines.flow.LintKt.toList>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/M;->n(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-static {v0}, Lkotlin/jvm/internal/J;->e(I)V

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p0, v0, p1, v1, v0}, LBg/k;->Z1(LBg/i;Ljava/util/List;LQf/f;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {v1}, Lkotlin/jvm/internal/J;->e(I)V

    return-object p0
.end method

.method public static final q(LBg/I;Ljava/util/List;LQf/f;)Ljava/lang/Object;
    .locals 1
    .annotation build LWf/f;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "LBg/I<",
            "+TT;>;",
            "Ljava/util/List<",
            "TT;>;",
            "LQf/f<",
            "*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    const-string v0, "null cannot be cast to non-null type kotlinx.coroutines.flow.Flow<T of kotlinx.coroutines.flow.LintKt.toList>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/M;->n(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-static {v0}, Lkotlin/jvm/internal/J;->e(I)V

    invoke-static {p0, p1, p2}, LBg/k;->Y1(LBg/i;Ljava/util/List;LQf/f;)Ljava/lang/Object;

    const/4 p0, 0x1

    invoke-static {p0}, Lkotlin/jvm/internal/J;->e(I)V

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "this code is supposed to be unreachable"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final r(LBg/I;LQf/f;)Ljava/lang/Object;
    .locals 2
    .annotation runtime LFf/o;
        level = .enum LFf/q;->WARNING:LFf/q;
        message = "SharedFlow never completes, so this terminal operation never completes."
    .end annotation

    .annotation build LWf/f;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "LBg/I<",
            "+TT;>;",
            "LQf/f<",
            "-",
            "Ljava/util/Set<",
            "+TT;>;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    const-string v0, "null cannot be cast to non-null type kotlinx.coroutines.flow.Flow<T of kotlinx.coroutines.flow.LintKt.toSet>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/M;->n(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-static {v0}, Lkotlin/jvm/internal/J;->e(I)V

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p0, v0, p1, v1, v0}, LBg/k;->b2(LBg/i;Ljava/util/Set;LQf/f;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {v1}, Lkotlin/jvm/internal/J;->e(I)V

    return-object p0
.end method

.method public static final s(LBg/I;Ljava/util/Set;LQf/f;)Ljava/lang/Object;
    .locals 1
    .annotation build LWf/f;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "LBg/I<",
            "+TT;>;",
            "Ljava/util/Set<",
            "TT;>;",
            "LQf/f<",
            "*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    const-string v0, "null cannot be cast to non-null type kotlinx.coroutines.flow.Flow<T of kotlinx.coroutines.flow.LintKt.toSet>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/M;->n(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-static {v0}, Lkotlin/jvm/internal/J;->e(I)V

    invoke-static {p0, p1, p2}, LBg/k;->a2(LBg/i;Ljava/util/Set;LQf/f;)Ljava/lang/Object;

    const/4 p0, 0x1

    invoke-static {p0}, Lkotlin/jvm/internal/J;->e(I)V

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "this code is supposed to be unreachable"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
