.class public LHg/l;
.super Lwg/n;
.source "SourceFile"

# interfaces
.implements LHg/c;
.implements LHg/n;


# annotations
.annotation build LFf/f0;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LHg/l$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Lwg/n;",
        "LHg/c<",
        "TR;>;",
        "LHg/n<",
        "TR;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSelect.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Select.kt\nkotlinx/coroutines/selects/SelectImplementation\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 4 CancellableContinuation.kt\nkotlinx/coroutines/CancellableContinuationKt\n+ 5 CompletionHandler.kt\nkotlinx/coroutines/CompletionHandlerKt\n+ 6 StackTraceRecovery.kt\nkotlinx/coroutines/internal/StackTraceRecoveryKt\n*L\n1#1,873:1\n1#2:874\n2624#3,3:875\n1855#3,2:888\n1855#3,2:896\n1855#3,2:898\n314#4,9:878\n323#4,2:890\n19#5:887\n153#6,4:892\n*S KotlinDebug\n*F\n+ 1 Select.kt\nkotlinx/coroutines/selects/SelectImplementation\n*L\n505#1:875,3\n569#1:888,2\n726#1:896,2\n751#1:898,2\n545#1:878,9\n545#1:890,2\n561#1:887\n711#1:892,4\n*E\n"
.end annotation

.annotation build Lkotlin/jvm/internal/t0;
    value = {
        "SMAP\nSelect.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Select.kt\nkotlinx/coroutines/selects/SelectImplementation\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 4 CancellableContinuation.kt\nkotlinx/coroutines/CancellableContinuationKt\n+ 5 CompletionHandler.kt\nkotlinx/coroutines/CompletionHandlerKt\n+ 6 StackTraceRecovery.kt\nkotlinx/coroutines/internal/StackTraceRecoveryKt\n*L\n1#1,873:1\n1#2:874\n2624#3,3:875\n1855#3,2:888\n1855#3,2:896\n1855#3,2:898\n314#4,9:878\n323#4,2:890\n19#5:887\n153#6,4:892\n*S KotlinDebug\n*F\n+ 1 Select.kt\nkotlinx/coroutines/selects/SelectImplementation\n*L\n505#1:875,3\n569#1:888,2\n726#1:896,2\n751#1:898,2\n545#1:878,9\n545#1:890,2\n561#1:887\n711#1:892,4\n*E\n"
    }
.end annotation


# static fields
.field public static final g:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field public final b:LQf/j;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "LHg/l<",
            "TR;>.a;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public d:Ljava/lang/Object;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public e:I

.field public f:Ljava/lang/Object;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private volatile state:Ljava/lang/Object;
    .annotation runtime Ldg/x;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-class v0, Ljava/lang/Object;

    const-string v1, "state"

    const-class v2, LHg/l;

    invoke-static {v2, v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, LHg/l;->g:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    return-void
.end method

.method public constructor <init>(LQf/j;)V
    .locals 1
    .param p1    # LQf/j;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    invoke-direct {p0}, Lwg/n;-><init>()V

    iput-object p1, p0, LHg/l;->b:LQf/j;

    invoke-static {}, LHg/o;->j()LEg/T;

    move-result-object p1

    iput-object p1, p0, LHg/l;->state:Ljava/lang/Object;

    new-instance p1, Ljava/util/ArrayList;

    const/4 v0, 0x2

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, LHg/l;->c:Ljava/util/List;

    const/4 p1, -0x1

    iput p1, p0, LHg/l;->e:I

    invoke-static {}, LHg/o;->g()LEg/T;

    move-result-object p1

    iput-object p1, p0, LHg/l;->f:Ljava/lang/Object;

    return-void
.end method

.method public static final synthetic D(LHg/l;)Z
    .locals 0

    invoke-virtual {p0}, LHg/l;->b0()Z

    move-result p0

    return p0
.end method

.method public static final synthetic J(LHg/l;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, LHg/l;->f:Ljava/lang/Object;

    return-object p0
.end method

.method public static final synthetic K()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;
    .locals 1

    sget-object v0, LHg/l;->g:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    return-object v0
.end method

.method public static final synthetic L(LHg/l;)Z
    .locals 0

    invoke-direct {p0}, LHg/l;->c0()Z

    move-result p0

    return p0
.end method

.method public static final synthetic R(LHg/l;LHg/l$a;Ljava/lang/Object;LQf/f;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, LHg/l;->f0(LHg/l$a;Ljava/lang/Object;LQf/f;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic S(LHg/l;Ljava/lang/Object;)V
    .locals 0

    invoke-virtual {p0, p1}, LHg/l;->i0(Ljava/lang/Object;)V

    return-void
.end method

.method public static final synthetic T(LHg/l;LQf/f;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, LHg/l;->m0(LQf/f;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic Y(LHg/l;LQf/f;)Ljava/lang/Object;
    .locals 1
    .annotation build LFf/f0;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "LHg/l<",
            "TR;>;",
            "LQf/f<",
            "-TR;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-direct {p0}, LHg/l;->d0()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, LHg/l;->W(LQf/f;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p0, p1}, LHg/l;->Z(LQf/f;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private final c0()Z
    .locals 2

    sget-object v0, LHg/l;->g:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {}, LHg/o;->h()LEg/T;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private final d0()Z
    .locals 1

    sget-object v0, LHg/l;->g:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, LHg/l$a;

    return v0
.end method

.method private final e0(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Leg/l;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;",
            "Leg/l<",
            "Ljava/lang/Object;",
            "LFf/P0;",
            ">;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    :goto_0
    invoke-virtual {p1, p3}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p2, v0}, Leg/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public static synthetic h0(LHg/l;LHg/l$a;ZILjava/lang/Object;)V
    .locals 0

    if-nez p4, :cond_1

    and-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    :cond_0
    invoke-virtual {p0, p1, p2}, LHg/l;->g0(LHg/l$a;Z)V

    return-void

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: register"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final synthetic x(LHg/l;LQf/f;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, LHg/l;->W(LQf/f;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic z(LHg/l;LQf/f;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, LHg/l;->Z(LQf/f;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final U(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, LHg/l;->c:Ljava/util/List;

    invoke-static {v0}, Lkotlin/jvm/internal/M;->m(Ljava/lang/Object;)V

    check-cast v0, Ljava/lang/Iterable;

    instance-of v1, v0, Ljava/util/Collection;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LHg/l$a;

    iget-object v1, v1, LHg/l$a;->a:Ljava/lang/Object;

    if-eq v1, p1, :cond_1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cannot use select clauses on the same object: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    :goto_1
    return-void
.end method

.method public final V(LHg/l$a;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LHg/l<",
            "TR;>.a;)V"
        }
    .end annotation

    iget-object v0, p0, LHg/l;->c:Ljava/util/List;

    if-nez v0, :cond_0

    return-void

    :cond_0
    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LHg/l$a;

    if-eq v1, p1, :cond_1

    invoke-virtual {v1}, LHg/l$a;->b()V

    goto :goto_0

    :cond_2
    sget-object p1, LHg/l;->g:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-static {}, LHg/o;->i()LEg/T;

    move-result-object v0

    invoke-virtual {p1, p0, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {}, LHg/o;->g()LEg/T;

    move-result-object p1

    iput-object p1, p0, LHg/l;->f:Ljava/lang/Object;

    const/4 p1, 0x0

    iput-object p1, p0, LHg/l;->c:Ljava/util/List;

    return-void
.end method

.method public final W(LQf/f;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LQf/f<",
            "-TR;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    sget-object v0, LHg/l;->g:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type kotlinx.coroutines.selects.SelectImplementation.ClauseData<R of kotlinx.coroutines.selects.SelectImplementation>"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/M;->n(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, LHg/l$a;

    iget-object v1, p0, LHg/l;->f:Ljava/lang/Object;

    invoke-virtual {p0, v0}, LHg/l;->V(LHg/l$a;)V

    invoke-virtual {v0, v1}, LHg/l$a;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, LHg/l$a;->c(Ljava/lang/Object;LQf/f;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public X(LQf/f;)Ljava/lang/Object;
    .locals 0
    .param p1    # LQf/f;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build LFf/f0;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LQf/f<",
            "-TR;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    invoke-static {p0, p1}, LHg/l;->Y(LHg/l;LQf/f;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final Z(LQf/f;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LQf/f<",
            "-TR;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, LHg/l$b;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, LHg/l$b;

    iget v1, v0, LHg/l$b;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, LHg/l$b;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, LHg/l$b;

    invoke-direct {v0, p0, p1}, LHg/l$b;-><init>(LHg/l;LQf/f;)V

    :goto_0
    iget-object p1, v0, LHg/l$b;->c:Ljava/lang/Object;

    invoke-static {}, LSf/d;->l()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, LHg/l$b;->e:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p1}, LFf/j0;->n(Ljava/lang/Object;)V

    goto :goto_2

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    iget-object v2, v0, LHg/l$b;->b:Ljava/lang/Object;

    check-cast v2, LHg/l;

    invoke-static {p1}, LFf/j0;->n(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-static {p1}, LFf/j0;->n(Ljava/lang/Object;)V

    iput-object p0, v0, LHg/l$b;->b:Ljava/lang/Object;

    iput v4, v0, LHg/l$b;->e:I

    invoke-virtual {p0, v0}, LHg/l;->m0(LQf/f;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_4

    return-object v1

    :cond_4
    move-object v2, p0

    :goto_1
    const/4 p1, 0x0

    iput-object p1, v0, LHg/l$b;->b:Ljava/lang/Object;

    iput v3, v0, LHg/l$b;->e:I

    invoke-virtual {v2, v0}, LHg/l;->W(LQf/f;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_5

    return-object v1

    :cond_5
    :goto_2
    return-object p1
.end method

.method public final a0(Ljava/lang/Object;)LHg/l$a;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "LHg/l<",
            "TR;>.a;"
        }
    .end annotation

    iget-object v0, p0, LHg/l;->c:Ljava/util/List;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, LHg/l$a;

    iget-object v3, v3, LHg/l$a;->a:Ljava/lang/Object;

    if-ne v3, p1, :cond_1

    move-object v1, v2

    :cond_2
    check-cast v1, LHg/l$a;

    if-eqz v1, :cond_3

    return-object v1

    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Clause with object "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " is not found"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final b0()Z
    .locals 2

    sget-object v0, LHg/l;->g:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {}, LHg/o;->j()LEg/T;

    move-result-object v1

    if-eq v0, v1, :cond_1

    instance-of v0, v0, Ljava/util/List;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public c(LHg/i;Leg/p;)V
    .locals 0
    .param p1    # LHg/i;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Leg/p;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P:",
            "Ljava/lang/Object;",
            "Q:",
            "Ljava/lang/Object;",
            ">(",
            "LHg/i<",
            "-TP;+TQ;>;",
            "Leg/p<",
            "-TQ;-",
            "LQf/f<",
            "-TR;>;+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    invoke-static {p0, p1, p2}, LHg/c$a;->a(LHg/c;LHg/i;Leg/p;)V

    return-void
.end method

.method public d(Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, LHg/l;->f:Ljava/lang/Object;

    return-void
.end method

.method public final f0(LHg/l$a;Ljava/lang/Object;LQf/f;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LHg/l<",
            "TR;>.a;",
            "Ljava/lang/Object;",
            "LQf/f<",
            "-TR;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p3, LHg/l$c;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, LHg/l$c;

    iget v1, v0, LHg/l$c;->d:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, LHg/l$c;->d:I

    goto :goto_0

    :cond_0
    new-instance v0, LHg/l$c;

    invoke-direct {v0, p0, p3}, LHg/l$c;-><init>(LHg/l;LQf/f;)V

    :goto_0
    iget-object p3, v0, LHg/l$c;->b:Ljava/lang/Object;

    invoke-static {}, LSf/d;->l()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, LHg/l$c;->d:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p3}, LFf/j0;->n(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p3}, LFf/j0;->n(Ljava/lang/Object;)V

    invoke-virtual {p1, p2}, LHg/l$a;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    iput v3, v0, LHg/l$c;->d:I

    invoke-virtual {p1, p2, v0}, LHg/l$a;->c(Ljava/lang/Object;LQf/f;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    return-object p3
.end method

.method public g(JLeg/l;)V
    .locals 0
    .param p3    # Leg/l;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime LFf/o;
        level = .enum LFf/q;->ERROR:LFf/q;
        message = "Replaced with the same extension function"
        replaceWith = .subannotation LFf/g0;
            expression = "onTimeout"
            imports = {
                "kotlinx.coroutines.selects.onTimeout"
            }
        .end subannotation
    .end annotation

    .annotation build LWf/i;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Leg/l<",
            "-",
            "LQf/f<",
            "-TR;>;+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .annotation build Lwg/z0;
    .end annotation

    invoke-static {p0, p1, p2, p3}, LHg/c$a;->b(LHg/c;JLeg/l;)V

    return-void
.end method

.method public final g0(LHg/l$a;Z)V
    .locals 2
    .param p1    # LHg/l$a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LHg/l<",
            "TR;>.a;Z)V"
        }
    .end annotation

    .annotation build Ldg/j;
        name = "register"
    .end annotation

    sget-object v0, LHg/l;->g:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, LHg/l$a;

    if-eqz v1, :cond_0

    return-void

    :cond_0
    if-nez p2, :cond_1

    iget-object v1, p1, LHg/l$a;->a:Ljava/lang/Object;

    invoke-virtual {p0, v1}, LHg/l;->U(Ljava/lang/Object;)V

    :cond_1
    invoke-virtual {p1, p0}, LHg/l$a;->e(LHg/l;)Z

    move-result v1

    if-eqz v1, :cond_3

    if-nez p2, :cond_2

    iget-object p2, p0, LHg/l;->c:Ljava/util/List;

    invoke-static {p2}, Lkotlin/jvm/internal/M;->m(Ljava/lang/Object;)V

    check-cast p2, Ljava/util/Collection;

    invoke-interface {p2, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_2
    iget-object p2, p0, LHg/l;->d:Ljava/lang/Object;

    iput-object p2, p1, LHg/l$a;->g:Ljava/lang/Object;

    iget p2, p0, LHg/l;->e:I

    iput p2, p1, LHg/l$a;->h:I

    const/4 p1, 0x0

    iput-object p1, p0, LHg/l;->d:Ljava/lang/Object;

    const/4 p1, -0x1

    iput p1, p0, LHg/l;->e:I

    goto :goto_0

    :cond_3
    invoke-virtual {v0, p0, p1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public getContext()LQf/j;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, LHg/l;->b:LQf/j;

    return-object v0
.end method

.method public i(LHg/i;Ljava/lang/Object;Leg/p;)V
    .locals 9
    .param p1    # LHg/i;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Leg/p;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P:",
            "Ljava/lang/Object;",
            "Q:",
            "Ljava/lang/Object;",
            ">(",
            "LHg/i<",
            "-TP;+TQ;>;TP;",
            "Leg/p<",
            "-TQ;-",
            "LQf/f<",
            "-TR;>;+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    new-instance v8, LHg/l$a;

    invoke-interface {p1}, LHg/k;->d()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p1}, LHg/k;->a()Leg/q;

    move-result-object v3

    invoke-interface {p1}, LHg/k;->c()Leg/q;

    move-result-object v4

    invoke-interface {p1}, LHg/k;->b()Leg/q;

    move-result-object v7

    move-object v0, v8

    move-object v1, p0

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v0 .. v7}, LHg/l$a;-><init>(LHg/l;Ljava/lang/Object;Leg/q;Leg/q;Ljava/lang/Object;Ljava/lang/Object;Leg/q;)V

    const/4 p1, 0x1

    const/4 p2, 0x0

    const/4 p3, 0x0

    invoke-static {p0, v8, p3, p1, p2}, LHg/l;->h0(LHg/l;LHg/l$a;ZILjava/lang/Object;)V

    return-void
.end method

.method public final i0(Ljava/lang/Object;)V
    .locals 1

    invoke-virtual {p0, p1}, LHg/l;->a0(Ljava/lang/Object;)LHg/l$a;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/M;->m(Ljava/lang/Object;)V

    const/4 v0, 0x0

    iput-object v0, p1, LHg/l$a;->g:Ljava/lang/Object;

    const/4 v0, -0x1

    iput v0, p1, LHg/l$a;->h:I

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, LHg/l;->g0(LHg/l$a;Z)V

    return-void
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, LHg/l;->w(Ljava/lang/Throwable;)V

    sget-object p1, LFf/P0;->a:LFf/P0;

    return-object p1
.end method

.method public j(LHg/e;Leg/l;)V
    .locals 9
    .param p1    # LHg/e;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Leg/l;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LHg/e;",
            "Leg/l<",
            "-",
            "LQf/f<",
            "-TR;>;+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    new-instance v8, LHg/l$a;

    invoke-interface {p1}, LHg/k;->d()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p1}, LHg/k;->a()Leg/q;

    move-result-object v3

    invoke-interface {p1}, LHg/k;->c()Leg/q;

    move-result-object v4

    invoke-static {}, LHg/o;->l()LEg/T;

    move-result-object v5

    invoke-interface {p1}, LHg/k;->b()Leg/q;

    move-result-object v7

    move-object v0, v8

    move-object v1, p0

    move-object v6, p2

    invoke-direct/range {v0 .. v7}, LHg/l$a;-><init>(LHg/l;Ljava/lang/Object;Leg/q;Leg/q;Ljava/lang/Object;Ljava/lang/Object;Leg/q;)V

    const/4 p1, 0x1

    const/4 p2, 0x0

    const/4 v0, 0x0

    invoke-static {p0, v8, v0, p1, p2}, LHg/l;->h0(LHg/l;LHg/l$a;ZILjava/lang/Object;)V

    return-void
.end method

.method public final j0(Ljava/lang/Object;Ljava/lang/Object;)LHg/r;
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-virtual {p0, p1, p2}, LHg/l;->k0(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p1

    invoke-static {p1}, LHg/o;->e(I)LHg/r;

    move-result-object p1

    return-object p1
.end method

.method public k(LEg/P;I)V
    .locals 0
    .param p1    # LEg/P;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LEg/P<",
            "*>;I)V"
        }
    .end annotation

    iput-object p1, p0, LHg/l;->d:Ljava/lang/Object;

    iput p2, p0, LHg/l;->e:I

    return-void
.end method

.method public final k0(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 5

    :cond_0
    :goto_0
    sget-object v0, LHg/l;->g:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Lwg/p;

    const/4 v3, 0x2

    if-eqz v2, :cond_3

    invoke-virtual {p0, p1}, LHg/l;->a0(Ljava/lang/Object;)LHg/l$a;

    move-result-object v2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v2, p0, p2}, LHg/l$a;->a(LHg/m;Ljava/lang/Object;)Leg/l;

    move-result-object v4

    invoke-static {v0, p0, v1, v2}, Landroidx/concurrent/futures/a;->a(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    check-cast v1, Lwg/p;

    iput-object p2, p0, LHg/l;->f:Ljava/lang/Object;

    invoke-static {v1, v4}, LHg/o;->k(Lwg/p;Leg/l;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x0

    return p1

    :cond_2
    const/4 p1, 0x0

    iput-object p1, p0, LHg/l;->f:Ljava/lang/Object;

    return v3

    :cond_3
    invoke-static {}, LHg/o;->i()LEg/T;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/jvm/internal/M;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    const/4 v4, 0x1

    if-eqz v2, :cond_4

    move v2, v4

    goto :goto_1

    :cond_4
    instance-of v2, v1, LHg/l$a;

    :goto_1
    if-eqz v2, :cond_5

    const/4 p1, 0x3

    return p1

    :cond_5
    invoke-static {}, LHg/o;->h()LEg/T;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/jvm/internal/M;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    return v3

    :cond_6
    invoke-static {}, LHg/o;->j()LEg/T;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/jvm/internal/M;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-static {p1}, LHf/G;->l(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-static {v0, p0, v1, v2}, Landroidx/concurrent/futures/a;->a(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v4

    :cond_7
    instance-of v2, v1, Ljava/util/List;

    if-eqz v2, :cond_8

    move-object v2, v1

    check-cast v2, Ljava/util/Collection;

    invoke-static {v2, p1}, LHf/S;->J4(Ljava/util/Collection;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-static {v0, p0, v1, v2}, Landroidx/concurrent/futures/a;->a(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v4

    :cond_8
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unexpected state: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final l0(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Leg/l;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;",
            "Leg/l<",
            "Ljava/lang/Object;",
            "+",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    :cond_0
    invoke-virtual {p1, p3}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p2, v0}, Leg/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1, p3, v0, v1}, Landroidx/concurrent/futures/a;->a(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void
.end method

.method public m(LHg/g;Leg/p;)V
    .locals 9
    .param p1    # LHg/g;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Leg/p;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Q:",
            "Ljava/lang/Object;",
            ">(",
            "LHg/g<",
            "+TQ;>;",
            "Leg/p<",
            "-TQ;-",
            "LQf/f<",
            "-TR;>;+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    new-instance v8, LHg/l$a;

    invoke-interface {p1}, LHg/k;->d()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p1}, LHg/k;->a()Leg/q;

    move-result-object v3

    invoke-interface {p1}, LHg/k;->c()Leg/q;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {p1}, LHg/k;->b()Leg/q;

    move-result-object v7

    move-object v0, v8

    move-object v1, p0

    move-object v6, p2

    invoke-direct/range {v0 .. v7}, LHg/l$a;-><init>(LHg/l;Ljava/lang/Object;Leg/q;Leg/q;Ljava/lang/Object;Ljava/lang/Object;Leg/q;)V

    const/4 p1, 0x1

    const/4 p2, 0x0

    const/4 v0, 0x0

    invoke-static {p0, v8, v0, p1, p2}, LHg/l;->h0(LHg/l;LHg/l$a;ZILjava/lang/Object;)V

    return-void
.end method

.method public final m0(LQf/f;)Ljava/lang/Object;
    .locals 5
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

    new-instance v0, Lwg/q;

    invoke-static {p1}, LSf/c;->e(LQf/f;)LQf/f;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lwg/q;-><init>(LQf/f;I)V

    invoke-virtual {v0}, Lwg/q;->K()V

    invoke-static {}, LHg/l;->K()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v1

    :cond_0
    invoke-virtual {v1, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {}, LHg/o;->j()LEg/T;

    move-result-object v3

    if-ne v2, v3, :cond_1

    invoke-static {}, LHg/l;->K()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v3

    invoke-static {v3, p0, v2, v0}, Landroidx/concurrent/futures/a;->a(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0, p0}, Lwg/p;->m(Leg/l;)V

    goto :goto_1

    :cond_1
    instance-of v3, v2, Ljava/util/List;

    if-eqz v3, :cond_2

    invoke-static {}, LHg/l;->K()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v3

    invoke-static {}, LHg/o;->j()LEg/T;

    move-result-object v4

    invoke-static {v3, p0, v2, v4}, Landroidx/concurrent/futures/a;->a(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    check-cast v2, Ljava/lang/Iterable;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-static {p0, v3}, LHg/l;->S(LHg/l;Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    instance-of v1, v2, LHg/l$a;

    if-eqz v1, :cond_5

    sget-object v1, LFf/P0;->a:LFf/P0;

    check-cast v2, LHg/l$a;

    invoke-static {p0}, LHg/l;->J(LHg/l;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, p0, v3}, LHg/l$a;->a(LHg/m;Ljava/lang/Object;)Leg/l;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lwg/p;->z(Ljava/lang/Object;Leg/l;)V

    :goto_1
    invoke-virtual {v0}, Lwg/q;->E()Ljava/lang/Object;

    move-result-object v0

    invoke-static {}, LSf/d;->l()Ljava/lang/Object;

    move-result-object v1

    if-ne v0, v1, :cond_3

    invoke-static {p1}, LTf/h;->c(LQf/f;)V

    :cond_3
    invoke-static {}, LSf/d;->l()Ljava/lang/Object;

    move-result-object p1

    if-ne v0, p1, :cond_4

    return-object v0

    :cond_4
    sget-object p1, LFf/P0;->a:LFf/P0;

    return-object p1

    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unexpected state: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public o(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    invoke-virtual {p0, p1, p2}, LHg/l;->k0(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public q(Lwg/m0;)V
    .locals 0
    .param p1    # Lwg/m0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    iput-object p1, p0, LHg/l;->d:Ljava/lang/Object;

    return-void
.end method

.method public w(Ljava/lang/Throwable;)V
    .locals 2
    .param p1    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    sget-object p1, LHg/l;->g:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    :cond_0
    invoke-virtual {p1, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {}, LHg/o;->i()LEg/T;

    move-result-object v1

    if-ne v0, v1, :cond_1

    return-void

    :cond_1
    invoke-static {}, LHg/o;->h()LEg/T;

    move-result-object v1

    invoke-static {p1, p0, v0, v1}, Landroidx/concurrent/futures/a;->a(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, LHg/l;->c:Ljava/util/List;

    if-nez p1, :cond_2

    return-void

    :cond_2
    check-cast p1, Ljava/lang/Iterable;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LHg/l$a;

    invoke-virtual {v0}, LHg/l$a;->b()V

    goto :goto_0

    :cond_3
    invoke-static {}, LHg/o;->g()LEg/T;

    move-result-object p1

    iput-object p1, p0, LHg/l;->f:Ljava/lang/Object;

    const/4 p1, 0x0

    iput-object p1, p0, LHg/l;->c:Ljava/util/List;

    return-void
.end method
