.class public Lwg/q;
.super Lwg/g0;
.source "SourceFile"

# interfaces
.implements Lwg/p;
.implements LTf/e;
.implements Lwg/y1;


# annotations
.annotation build LFf/f0;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lwg/g0<",
        "TT;>;",
        "Lwg/p<",
        "TT;>;",
        "LTf/e;",
        "Lwg/y1;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCancellableContinuationImpl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CancellableContinuationImpl.kt\nkotlinx/coroutines/CancellableContinuationImpl\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 CancellableContinuationImpl.kt\nkotlinx/coroutines/CancellableContinuationImplKt\n+ 4 CompletionHandler.kt\nkotlinx/coroutines/CompletionHandlerKt\n+ 5 StackTraceRecovery.kt\nkotlinx/coroutines/internal/StackTraceRecoveryKt\n*L\n1#1,662:1\n230#1,2:666\n232#1,8:669\n230#1,10:677\n230#1,10:688\n1#2:663\n24#3:664\n24#3:665\n22#3:687\n21#3:698\n22#3,3:699\n21#3:702\n22#3,3:703\n22#3:711\n21#3,4:712\n22#4:668\n13#4:710\n61#5,2:706\n61#5,2:708\n61#5,2:716\n*S KotlinDebug\n*F\n+ 1 CancellableContinuationImpl.kt\nkotlinx/coroutines/CancellableContinuationImpl\n*L\n246#1:666,2\n246#1:669,8\n249#1:677,10\n254#1:688,10\n72#1:664\n158#1:665\n252#1:687\n277#1:698\n278#1:699,3\n287#1:702\n288#1:703,3\n389#1:711\n392#1:712,4\n246#1:668\n350#1:710\n329#1:706,2\n339#1:708,2\n613#1:716,2\n*E\n"
.end annotation

.annotation build Lkotlin/jvm/internal/t0;
    value = {
        "SMAP\nCancellableContinuationImpl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CancellableContinuationImpl.kt\nkotlinx/coroutines/CancellableContinuationImpl\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 CancellableContinuationImpl.kt\nkotlinx/coroutines/CancellableContinuationImplKt\n+ 4 CompletionHandler.kt\nkotlinx/coroutines/CompletionHandlerKt\n+ 5 StackTraceRecovery.kt\nkotlinx/coroutines/internal/StackTraceRecoveryKt\n*L\n1#1,662:1\n230#1,2:666\n232#1,8:669\n230#1,10:677\n230#1,10:688\n1#2:663\n24#3:664\n24#3:665\n22#3:687\n21#3:698\n22#3,3:699\n21#3:702\n22#3,3:703\n22#3:711\n21#3,4:712\n22#4:668\n13#4:710\n61#5,2:706\n61#5,2:708\n61#5,2:716\n*S KotlinDebug\n*F\n+ 1 CancellableContinuationImpl.kt\nkotlinx/coroutines/CancellableContinuationImpl\n*L\n246#1:666,2\n246#1:669,8\n249#1:677,10\n254#1:688,10\n72#1:664\n158#1:665\n252#1:687\n277#1:698\n278#1:699,3\n287#1:702\n288#1:703,3\n389#1:711\n392#1:712,4\n246#1:668\n350#1:710\n329#1:706,2\n339#1:708,2\n613#1:716,2\n*E\n"
    }
.end annotation


# static fields
.field public static final g:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final h:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final i:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private volatile _decisionAndIndex:I
    .annotation runtime Ldg/x;
    .end annotation
.end field

.field private volatile _parentHandle:Ljava/lang/Object;
    .annotation runtime Ldg/x;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private volatile _state:Ljava/lang/Object;
    .annotation runtime Ldg/x;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public final e:LQf/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LQf/f<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final f:LQf/j;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "_decisionAndIndex"

    const-class v1, Lwg/q;

    invoke-static {v1, v0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v0

    sput-object v0, Lwg/q;->g:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    const-string v0, "_state"

    const-class v2, Ljava/lang/Object;

    invoke-static {v1, v2, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, Lwg/q;->h:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    const-string v0, "_parentHandle"

    invoke-static {v1, v2, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, Lwg/q;->i:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    return-void
.end method

.method public constructor <init>(LQf/f;I)V
    .locals 0
    .param p1    # LQf/f;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LQf/f<",
            "-TT;>;I)V"
        }
    .end annotation

    invoke-direct {p0, p2}, Lwg/g0;-><init>(I)V

    iput-object p1, p0, Lwg/q;->e:LQf/f;

    invoke-interface {p1}, LQf/f;->getContext()LQf/j;

    move-result-object p1

    iput-object p1, p0, Lwg/q;->f:LQf/j;

    const p1, 0x1fffffff

    iput p1, p0, Lwg/q;->_decisionAndIndex:I

    sget-object p1, Lwg/d;->b:Lwg/d;

    iput-object p1, p0, Lwg/q;->_state:Ljava/lang/Object;

    return-void
.end method

.method private final M(Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;Leg/l;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;",
            "Leg/l<",
            "-",
            "Ljava/lang/Integer;",
            "LFf/P0;",
            ">;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    :goto_0
    invoke-virtual {p1, p3}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->get(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p2, v0}, Leg/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public static synthetic W(Lwg/q;Ljava/lang/Object;ILeg/l;ILjava/lang/Object;)V
    .locals 0

    if-nez p5, :cond_1

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lwg/q;->U(Ljava/lang/Object;ILeg/l;)V

    return-void

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: resumeImpl"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private final Y()Z
    .locals 6

    sget-object v0, Lwg/q;->g:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    :cond_0
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->get(Ljava/lang/Object;)I

    move-result v1

    shr-int/lit8 v2, v1, 0x1d

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    const/4 v0, 0x0

    return v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already resumed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    sget-object v2, Lwg/q;->g:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    const v4, 0x1fffffff

    and-int/2addr v4, v1

    const/high16 v5, 0x40000000    # 2.0f

    add-int/2addr v5, v4

    invoke-virtual {v2, p0, v1, v5}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    move-result v1

    if-eqz v1, :cond_0

    return v3
.end method

.method private final a0()Z
    .locals 5

    sget-object v0, Lwg/q;->g:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    :cond_0
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->get(Ljava/lang/Object;)I

    move-result v1

    shr-int/lit8 v2, v1, 0x1d

    if-eqz v2, :cond_2

    const/4 v0, 0x2

    if-ne v2, v0, :cond_1

    const/4 v0, 0x0

    return v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already suspended"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    sget-object v2, Lwg/q;->g:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    const v3, 0x1fffffff

    and-int/2addr v3, v1

    const/high16 v4, 0x20000000

    add-int/2addr v4, v3

    invoke-virtual {v2, p0, v1, v4}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public final A(I)V
    .locals 1

    invoke-direct {p0}, Lwg/q;->Y()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-static {p0, p1}, Lwg/h0;->a(Lwg/g0;I)V

    return-void
.end method

.method public B(Lwg/K0;)Ljava/lang/Throwable;
    .locals 0
    .param p1    # Lwg/K0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-interface {p1}, Lwg/K0;->l()Ljava/util/concurrent/CancellationException;

    move-result-object p1

    return-object p1
.end method

.method public final C()Lwg/m0;
    .locals 1

    sget-object v0, Lwg/q;->i:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lwg/m0;

    return-object v0
.end method

.method public D(Lwg/M;Ljava/lang/Throwable;)V
    .locals 9
    .param p1    # Lwg/M;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    iget-object v0, p0, Lwg/q;->e:LQf/f;

    instance-of v1, v0, LEg/l;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    check-cast v0, LEg/l;

    goto :goto_0

    :cond_0
    move-object v0, v2

    :goto_0
    new-instance v4, Lwg/D;

    const/4 v1, 0x0

    const/4 v3, 0x2

    invoke-direct {v4, p2, v1, v3, v2}, Lwg/D;-><init>(Ljava/lang/Throwable;ZILkotlin/jvm/internal/x;)V

    if-eqz v0, :cond_1

    iget-object v2, v0, LEg/l;->e:Lwg/M;

    :cond_1
    if-ne v2, p1, :cond_2

    const/4 p1, 0x4

    :goto_1
    move v5, p1

    goto :goto_2

    :cond_2
    iget p1, p0, Lwg/g0;->d:I

    goto :goto_1

    :goto_2
    const/4 v7, 0x4

    const/4 v8, 0x0

    const/4 v6, 0x0

    move-object v3, p0

    invoke-static/range {v3 .. v8}, Lwg/q;->W(Lwg/q;Ljava/lang/Object;ILeg/l;ILjava/lang/Object;)V

    return-void
.end method

.method public final E()Ljava/lang/Object;
    .locals 3
    .annotation build LFf/f0;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    invoke-virtual {p0}, Lwg/q;->L()Z

    move-result v0

    invoke-direct {p0}, Lwg/q;->a0()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lwg/q;->C()Lwg/m0;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lwg/q;->H()Lwg/m0;

    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lwg/q;->S()V

    :cond_1
    invoke-static {}, LSf/d;->l()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_2
    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lwg/q;->S()V

    :cond_3
    invoke-virtual {p0}, Lwg/q;->F()Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Lwg/D;

    if-nez v1, :cond_6

    iget v1, p0, Lwg/g0;->d:I

    invoke-static {v1}, Lwg/h0;->c(I)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {p0}, Lwg/q;->getContext()LQf/j;

    move-result-object v1

    sget-object v2, Lwg/K0;->O0:Lwg/K0$b;

    invoke-interface {v1, v2}, LQf/j;->get(LQf/j$c;)LQf/j$b;

    move-result-object v1

    check-cast v1, Lwg/K0;

    if-eqz v1, :cond_5

    invoke-interface {v1}, Lwg/K0;->isActive()Z

    move-result v2

    if-eqz v2, :cond_4

    goto :goto_0

    :cond_4
    invoke-interface {v1}, Lwg/K0;->l()Ljava/util/concurrent/CancellationException;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lwg/q;->b(Ljava/lang/Object;Ljava/lang/Throwable;)V

    throw v1

    :cond_5
    :goto_0
    invoke-virtual {p0, v0}, Lwg/q;->h(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_6
    check-cast v0, Lwg/D;

    iget-object v0, v0, Lwg/D;->a:Ljava/lang/Throwable;

    throw v0
.end method

.method public final F()Ljava/lang/Object;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    sget-object v0, Lwg/q;->h:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final G()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lwg/q;->F()Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Lwg/Z0;

    if-eqz v1, :cond_0

    const-string v0, "Active"

    goto :goto_0

    :cond_0
    instance-of v0, v0, Lwg/t;

    if-eqz v0, :cond_1

    const-string v0, "Cancelled"

    goto :goto_0

    :cond_1
    const-string v0, "Completed"

    :goto_0
    return-object v0
.end method

.method public final H()Lwg/m0;
    .locals 7

    invoke-virtual {p0}, Lwg/q;->getContext()LQf/j;

    move-result-object v0

    sget-object v1, Lwg/K0;->O0:Lwg/K0$b;

    invoke-interface {v0, v1}, LQf/j;->get(LQf/j$c;)LQf/j$b;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lwg/K0;

    const/4 v0, 0x0

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    new-instance v4, Lwg/u;

    invoke-direct {v4, p0}, Lwg/u;-><init>(Lwg/q;)V

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lwg/K0$a;->g(Lwg/K0;ZZLeg/l;ILjava/lang/Object;)Lwg/m0;

    move-result-object v1

    sget-object v2, Lwg/q;->i:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-static {v2, p0, v0, v1}, Landroidx/concurrent/futures/a;->a(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    return-object v1
.end method

.method public final I(Ljava/lang/Object;)V
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    sget-object v2, Lwg/q;->h:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    :cond_0
    :goto_0
    invoke-virtual {v2, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    instance-of v3, v11, Lwg/d;

    if-eqz v3, :cond_1

    sget-object v3, Lwg/q;->h:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-static {v3, v0, v11, v1}, Landroidx/concurrent/futures/a;->a(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    return-void

    :cond_1
    instance-of v3, v11, Lwg/n;

    if-eqz v3, :cond_2

    const/4 v3, 0x1

    goto :goto_1

    :cond_2
    instance-of v3, v11, LEg/P;

    :goto_1
    if-eqz v3, :cond_3

    invoke-virtual {v0, v1, v11}, Lwg/q;->P(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    instance-of v3, v11, Lwg/D;

    if-eqz v3, :cond_9

    move-object v2, v11

    check-cast v2, Lwg/D;

    invoke-virtual {v2}, Lwg/D;->b()Z

    move-result v3

    if-nez v3, :cond_4

    invoke-virtual {v0, v1, v11}, Lwg/q;->P(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_4
    instance-of v3, v11, Lwg/t;

    if-eqz v3, :cond_8

    instance-of v3, v11, Lwg/D;

    const/4 v4, 0x0

    if-eqz v3, :cond_5

    goto :goto_2

    :cond_5
    move-object v2, v4

    :goto_2
    if-eqz v2, :cond_6

    iget-object v4, v2, Lwg/D;->a:Ljava/lang/Throwable;

    :cond_6
    instance-of v2, v1, Lwg/n;

    if-eqz v2, :cond_7

    check-cast v1, Lwg/n;

    invoke-virtual {v0, v1, v4}, Lwg/q;->r(Lwg/n;Ljava/lang/Throwable;)V

    goto :goto_3

    :cond_7
    const-string v2, "null cannot be cast to non-null type kotlinx.coroutines.internal.Segment<*>"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/M;->n(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, LEg/P;

    invoke-virtual {v0, v1, v4}, Lwg/q;->v(LEg/P;Ljava/lang/Throwable;)V

    :cond_8
    :goto_3
    return-void

    :cond_9
    instance-of v3, v11, Lwg/C;

    const-string v4, "null cannot be cast to non-null type kotlinx.coroutines.CancelHandler"

    if-eqz v3, :cond_d

    move-object v12, v11

    check-cast v12, Lwg/C;

    iget-object v3, v12, Lwg/C;->b:Lwg/n;

    if-eqz v3, :cond_a

    invoke-virtual {v0, v1, v11}, Lwg/q;->P(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_a
    instance-of v3, v1, LEg/P;

    if-eqz v3, :cond_b

    return-void

    :cond_b
    invoke-static {v1, v4}, Lkotlin/jvm/internal/M;->n(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v14, v1

    check-cast v14, Lwg/n;

    invoke-virtual {v12}, Lwg/C;->h()Z

    move-result v3

    if-eqz v3, :cond_c

    iget-object v1, v12, Lwg/C;->e:Ljava/lang/Throwable;

    invoke-virtual {v0, v14, v1}, Lwg/q;->r(Lwg/n;Ljava/lang/Throwable;)V

    return-void

    :cond_c
    const/16 v18, 0x1d

    const/16 v19, 0x0

    const/4 v13, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    invoke-static/range {v12 .. v19}, Lwg/C;->g(Lwg/C;Ljava/lang/Object;Lwg/n;Leg/l;Ljava/lang/Object;Ljava/lang/Throwable;ILjava/lang/Object;)Lwg/C;

    move-result-object v3

    sget-object v4, Lwg/q;->h:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-static {v4, v0, v11, v3}, Landroidx/concurrent/futures/a;->a(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    return-void

    :cond_d
    instance-of v3, v1, LEg/P;

    if-eqz v3, :cond_e

    return-void

    :cond_e
    invoke-static {v1, v4}, Lkotlin/jvm/internal/M;->n(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v5, v1

    check-cast v5, Lwg/n;

    new-instance v12, Lwg/C;

    const/16 v9, 0x1c

    const/4 v10, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v3, v12

    move-object v4, v11

    invoke-direct/range {v3 .. v10}, Lwg/C;-><init>(Ljava/lang/Object;Lwg/n;Leg/l;Ljava/lang/Object;Ljava/lang/Throwable;ILkotlin/jvm/internal/x;)V

    sget-object v3, Lwg/q;->h:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-static {v3, v0, v11, v12}, Landroidx/concurrent/futures/a;->a(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    return-void
.end method

.method public J(Ljava/lang/Object;Ljava/lang/Object;Leg/l;)Ljava/lang/Object;
    .locals 0
    .param p2    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Leg/l;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/Object;",
            "Leg/l<",
            "-",
            "Ljava/lang/Throwable;",
            "LFf/P0;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    invoke-virtual {p0, p1, p2, p3}, Lwg/q;->Z(Ljava/lang/Object;Ljava/lang/Object;Leg/l;)LEg/T;

    move-result-object p1

    return-object p1
.end method

.method public K()V
    .locals 2

    invoke-virtual {p0}, Lwg/q;->H()Lwg/m0;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lwg/q;->d()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Lwg/m0;->dispose()V

    sget-object v0, Lwg/q;->i:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    sget-object v1, Lwg/Y0;->b:Lwg/Y0;

    invoke-virtual {v0, p0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public final L()Z
    .locals 2

    iget v0, p0, Lwg/g0;->d:I

    invoke-static {v0}, Lwg/h0;->d(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lwg/q;->e:LQf/f;

    const-string v1, "null cannot be cast to non-null type kotlinx.coroutines.internal.DispatchedContinuation<*>"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/M;->n(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, LEg/l;

    invoke-virtual {v0}, LEg/l;->v()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final N(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Leg/l;Ljava/lang/Object;)V
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

.method public final O(Leg/l;)Lwg/n;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Leg/l<",
            "-",
            "Ljava/lang/Throwable;",
            "LFf/P0;",
            ">;)",
            "Lwg/n;"
        }
    .end annotation

    instance-of v0, p1, Lwg/n;

    if-eqz v0, :cond_0

    check-cast p1, Lwg/n;

    goto :goto_0

    :cond_0
    new-instance v0, Lwg/H0;

    invoke-direct {v0, p1}, Lwg/H0;-><init>(Leg/l;)V

    move-object p1, v0

    :goto_0
    return-object p1
.end method

.method public final P(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "It\'s prohibited to register multiple handlers, tried to register "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", already has "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public Q()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "CancellableContinuation"

    return-object v0
.end method

.method public final R(Ljava/lang/Throwable;)V
    .locals 1
    .param p1    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    invoke-virtual {p0, p1}, Lwg/q;->w(Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lwg/q;->c(Ljava/lang/Throwable;)Z

    invoke-virtual {p0}, Lwg/q;->y()V

    return-void
.end method

.method public final S()V
    .locals 2

    iget-object v0, p0, Lwg/q;->e:LQf/f;

    instance-of v1, v0, LEg/l;

    if-eqz v1, :cond_0

    check-cast v0, LEg/l;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    invoke-virtual {v0, p0}, LEg/l;->E(Lwg/p;)Ljava/lang/Throwable;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lwg/q;->x()V

    invoke-virtual {p0, v0}, Lwg/q;->c(Ljava/lang/Throwable;)Z

    :cond_2
    :goto_1
    return-void
.end method

.method public final T()Z
    .locals 3
    .annotation build Ldg/j;
        name = "resetStateReusable"
    .end annotation

    sget-object v0, Lwg/q;->h:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Lwg/C;

    if-eqz v2, :cond_0

    check-cast v1, Lwg/C;

    iget-object v1, v1, Lwg/C;->d:Ljava/lang/Object;

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lwg/q;->x()V

    const/4 v0, 0x0

    return v0

    :cond_0
    sget-object v1, Lwg/q;->g:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    const v2, 0x1fffffff

    invoke-virtual {v1, p0, v2}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->set(Ljava/lang/Object;I)V

    sget-object v1, Lwg/d;->b:Lwg/d;

    invoke-virtual {v0, p0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v0, 0x1

    return v0
.end method

.method public final U(Ljava/lang/Object;ILeg/l;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "I",
            "Leg/l<",
            "-",
            "Ljava/lang/Throwable;",
            "LFf/P0;",
            ">;)V"
        }
    .end annotation

    sget-object v0, Lwg/q;->h:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    :cond_0
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Lwg/Z0;

    if-eqz v2, :cond_1

    move-object v4, v1

    check-cast v4, Lwg/Z0;

    const/4 v8, 0x0

    move-object v3, p0

    move-object v5, p1

    move v6, p2

    move-object v7, p3

    invoke-virtual/range {v3 .. v8}, Lwg/q;->X(Lwg/Z0;Ljava/lang/Object;ILeg/l;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Lwg/q;->h:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-static {v3, p0, v1, v2}, Landroidx/concurrent/futures/a;->a(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lwg/q;->y()V

    invoke-virtual {p0, p2}, Lwg/q;->A(I)V

    return-void

    :cond_1
    instance-of p2, v1, Lwg/t;

    if-eqz p2, :cond_3

    check-cast v1, Lwg/t;

    invoke-virtual {v1}, Lwg/t;->c()Z

    move-result p2

    if-eqz p2, :cond_3

    if-eqz p3, :cond_2

    iget-object p1, v1, Lwg/D;->a:Ljava/lang/Throwable;

    invoke-virtual {p0, p3, p1}, Lwg/q;->u(Leg/l;Ljava/lang/Throwable;)V

    :cond_2
    return-void

    :cond_3
    invoke-virtual {p0, p1}, Lwg/q;->o(Ljava/lang/Object;)Ljava/lang/Void;

    new-instance p1, Lkotlin/KotlinNothingValueException;

    invoke-direct {p1}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw p1
.end method

.method public V(Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    iget p1, p0, Lwg/g0;->d:I

    invoke-virtual {p0, p1}, Lwg/q;->A(I)V

    return-void
.end method

.method public final X(Lwg/Z0;Ljava/lang/Object;ILeg/l;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lwg/Z0;",
            "Ljava/lang/Object;",
            "I",
            "Leg/l<",
            "-",
            "Ljava/lang/Throwable;",
            "LFf/P0;",
            ">;",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Lwg/D;

    if-eqz v0, :cond_0

    goto :goto_2

    :cond_0
    invoke-static {p3}, Lwg/h0;->c(I)Z

    move-result p3

    if-nez p3, :cond_1

    if-nez p5, :cond_1

    goto :goto_2

    :cond_1
    if-nez p4, :cond_2

    instance-of p3, p1, Lwg/n;

    if-nez p3, :cond_2

    if-eqz p5, :cond_4

    :cond_2
    new-instance p3, Lwg/C;

    instance-of v0, p1, Lwg/n;

    if-eqz v0, :cond_3

    check-cast p1, Lwg/n;

    :goto_0
    move-object v2, p1

    goto :goto_1

    :cond_3
    const/4 p1, 0x0

    goto :goto_0

    :goto_1
    const/16 v6, 0x10

    const/4 v7, 0x0

    const/4 v5, 0x0

    move-object v0, p3

    move-object v1, p2

    move-object v3, p4

    move-object v4, p5

    invoke-direct/range {v0 .. v7}, Lwg/C;-><init>(Ljava/lang/Object;Lwg/n;Leg/l;Ljava/lang/Object;Ljava/lang/Throwable;ILkotlin/jvm/internal/x;)V

    move-object p2, p3

    :cond_4
    :goto_2
    return-object p2
.end method

.method public final Z(Ljava/lang/Object;Ljava/lang/Object;Leg/l;)LEg/T;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Leg/l<",
            "-",
            "Ljava/lang/Throwable;",
            "LFf/P0;",
            ">;)",
            "LEg/T;"
        }
    .end annotation

    sget-object v0, Lwg/q;->h:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    :cond_0
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Lwg/Z0;

    if-eqz v2, :cond_1

    move-object v4, v1

    check-cast v4, Lwg/Z0;

    iget v6, p0, Lwg/g0;->d:I

    move-object v3, p0

    move-object v5, p1

    move-object v7, p3

    move-object v8, p2

    invoke-virtual/range {v3 .. v8}, Lwg/q;->X(Lwg/Z0;Ljava/lang/Object;ILeg/l;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Lwg/q;->h:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-static {v3, p0, v1, v2}, Landroidx/concurrent/futures/a;->a(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lwg/q;->y()V

    sget-object p1, Lwg/r;->g:LEg/T;

    return-object p1

    :cond_1
    instance-of p1, v1, Lwg/C;

    const/4 p3, 0x0

    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    check-cast v1, Lwg/C;

    iget-object p1, v1, Lwg/C;->d:Ljava/lang/Object;

    if-ne p1, p2, :cond_2

    sget-object p3, Lwg/r;->g:LEg/T;

    :cond_2
    return-object p3
.end method

.method public b(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 19
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    move-object/from16 v0, p0

    sget-object v1, Lwg/q;->h:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    :cond_0
    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    instance-of v2, v10, Lwg/Z0;

    if-nez v2, :cond_4

    instance-of v2, v10, Lwg/D;

    if-eqz v2, :cond_1

    return-void

    :cond_1
    instance-of v2, v10, Lwg/C;

    if-eqz v2, :cond_3

    move-object v2, v10

    check-cast v2, Lwg/C;

    invoke-virtual {v2}, Lwg/C;->h()Z

    move-result v3

    if-nez v3, :cond_2

    const/16 v17, 0xf

    const/16 v18, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object v11, v2

    move-object/from16 v16, p2

    invoke-static/range {v11 .. v18}, Lwg/C;->g(Lwg/C;Ljava/lang/Object;Lwg/n;Leg/l;Ljava/lang/Object;Ljava/lang/Throwable;ILjava/lang/Object;)Lwg/C;

    move-result-object v3

    sget-object v4, Lwg/q;->h:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-static {v4, v0, v10, v3}, Landroidx/concurrent/futures/a;->a(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    move-object/from16 v11, p2

    if-eqz v3, :cond_0

    invoke-virtual {v2, v0, v11}, Lwg/C;->i(Lwg/q;Ljava/lang/Throwable;)V

    return-void

    :cond_2
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Must be called at most once"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3
    move-object/from16 v11, p2

    sget-object v12, Lwg/q;->h:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    new-instance v13, Lwg/C;

    const/16 v8, 0xe

    const/4 v9, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, v13

    move-object v3, v10

    move-object/from16 v7, p2

    invoke-direct/range {v2 .. v9}, Lwg/C;-><init>(Ljava/lang/Object;Lwg/n;Leg/l;Ljava/lang/Object;Ljava/lang/Throwable;ILkotlin/jvm/internal/x;)V

    invoke-static {v12, v0, v10, v13}, Landroidx/concurrent/futures/a;->a(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-void

    :cond_4
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Not completed"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final b0(Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;Leg/l;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;",
            "Leg/l<",
            "-",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    :cond_0
    invoke-virtual {p1, p3}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->get(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p2, v1}, Leg/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    invoke-virtual {p1, p3, v0, v1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void
.end method

.method public c(Ljava/lang/Throwable;)Z
    .locals 6
    .param p1    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    sget-object v0, Lwg/q;->h:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    :cond_0
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Lwg/Z0;

    const/4 v3, 0x0

    if-nez v2, :cond_1

    return v3

    :cond_1
    new-instance v2, Lwg/t;

    instance-of v4, v1, Lwg/n;

    const/4 v5, 0x1

    if-nez v4, :cond_2

    instance-of v4, v1, LEg/P;

    if-eqz v4, :cond_3

    :cond_2
    move v3, v5

    :cond_3
    invoke-direct {v2, p0, p1, v3}, Lwg/t;-><init>(LQf/f;Ljava/lang/Throwable;Z)V

    sget-object v3, Lwg/q;->h:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-static {v3, p0, v1, v2}, Landroidx/concurrent/futures/a;->a(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v0, v1

    check-cast v0, Lwg/Z0;

    instance-of v2, v0, Lwg/n;

    if-eqz v2, :cond_4

    check-cast v1, Lwg/n;

    invoke-virtual {p0, v1, p1}, Lwg/q;->r(Lwg/n;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_4
    instance-of v0, v0, LEg/P;

    if-eqz v0, :cond_5

    check-cast v1, LEg/P;

    invoke-virtual {p0, v1, p1}, Lwg/q;->v(LEg/P;Ljava/lang/Throwable;)V

    :cond_5
    :goto_0
    invoke-virtual {p0}, Lwg/q;->y()V

    iget p1, p0, Lwg/g0;->d:I

    invoke-virtual {p0, p1}, Lwg/q;->A(I)V

    return v5
.end method

.method public d()Z
    .locals 1

    invoke-virtual {p0}, Lwg/q;->F()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lwg/Z0;

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public final e()LQf/f;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LQf/f<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lwg/q;->e:LQf/f;

    return-object v0
.end method

.method public f(Ljava/lang/Object;)Ljava/lang/Throwable;
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    invoke-super {p0, p1}, Lwg/g0;->f(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public g(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p2    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lwg/q;->Z(Ljava/lang/Object;Ljava/lang/Object;Leg/l;)LEg/T;

    move-result-object p1

    return-object p1
.end method

.method public getCallerFrame()LTf/e;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lwg/q;->e:LQf/f;

    instance-of v1, v0, LTf/e;

    if-eqz v1, :cond_0

    check-cast v0, LTf/e;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getContext()LQf/j;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lwg/q;->f:LQf/j;

    return-object v0
.end method

.method public getStackTraceElement()Ljava/lang/StackTraceElement;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public h(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    instance-of v0, p1, Lwg/C;

    if-eqz v0, :cond_0

    check-cast p1, Lwg/C;

    iget-object p1, p1, Lwg/C;->a:Ljava/lang/Object;

    :cond_0
    return-object p1
.end method

.method public i(Lwg/M;Ljava/lang/Object;)V
    .locals 6
    .param p1    # Lwg/M;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lwg/M;",
            "TT;)V"
        }
    .end annotation

    iget-object v0, p0, Lwg/q;->e:LQf/f;

    instance-of v1, v0, LEg/l;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    check-cast v0, LEg/l;

    goto :goto_0

    :cond_0
    move-object v0, v2

    :goto_0
    if-eqz v0, :cond_1

    iget-object v2, v0, LEg/l;->e:Lwg/M;

    :cond_1
    if-ne v2, p1, :cond_2

    const/4 p1, 0x4

    :goto_1
    move v2, p1

    goto :goto_2

    :cond_2
    iget p1, p0, Lwg/g0;->d:I

    goto :goto_1

    :goto_2
    const/4 v4, 0x4

    const/4 v5, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p2

    invoke-static/range {v0 .. v5}, Lwg/q;->W(Lwg/q;Ljava/lang/Object;ILeg/l;ILjava/lang/Object;)V

    return-void
.end method

.method public isActive()Z
    .locals 1

    invoke-virtual {p0}, Lwg/q;->F()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lwg/Z0;

    return v0
.end method

.method public isCancelled()Z
    .locals 1

    invoke-virtual {p0}, Lwg/q;->F()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lwg/t;

    return v0
.end method

.method public k(LEg/P;I)V
    .locals 4
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

    sget-object v0, Lwg/q;->g:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    :cond_0
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->get(Ljava/lang/Object;)I

    move-result v1

    const v2, 0x1fffffff

    and-int v3, v1, v2

    if-ne v3, v2, :cond_1

    shr-int/lit8 v2, v1, 0x1d

    shl-int/lit8 v2, v2, 0x1d

    add-int/2addr v2, p2

    invoke-virtual {v0, p0, v1, v2}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, p1}, Lwg/q;->I(Ljava/lang/Object;)V

    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "invokeOnCancellation should be called at most once"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public m(Leg/l;)V
    .locals 0
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
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lwg/q;->O(Leg/l;)Lwg/n;

    move-result-object p1

    invoke-virtual {p0, p1}, Lwg/q;->I(Ljava/lang/Object;)V

    return-void
.end method

.method public n()Ljava/lang/Object;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    invoke-virtual {p0}, Lwg/q;->F()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final o(Ljava/lang/Object;)Ljava/lang/Void;
    .locals 3

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Already resumed, but proposed with update "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final p(Leg/l;Ljava/lang/Throwable;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Leg/l<",
            "-",
            "Ljava/lang/Throwable;",
            "LFf/P0;",
            ">;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    :try_start_0
    invoke-interface {p1, p2}, Leg/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Lwg/q;->getContext()LQf/j;

    move-result-object p2

    new-instance v0, Lkotlinx/coroutines/CompletionHandlerException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception in invokeOnCancellation handler for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lkotlinx/coroutines/CompletionHandlerException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {p2, v0}, Lwg/O;->b(LQf/j;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public q(Ljava/lang/Throwable;)Ljava/lang/Object;
    .locals 4
    .param p1    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    new-instance v0, Lwg/D;

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-direct {v0, p1, v1, v2, v3}, Lwg/D;-><init>(Ljava/lang/Throwable;ZILkotlin/jvm/internal/x;)V

    invoke-virtual {p0, v0, v3, v3}, Lwg/q;->Z(Ljava/lang/Object;Ljava/lang/Object;Leg/l;)LEg/T;

    move-result-object p1

    return-object p1
.end method

.method public final r(Lwg/n;Ljava/lang/Throwable;)V
    .locals 3
    .param p1    # Lwg/n;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    :try_start_0
    invoke-virtual {p1, p2}, Lwg/o;->w(Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Lwg/q;->getContext()LQf/j;

    move-result-object p2

    new-instance v0, Lkotlinx/coroutines/CompletionHandlerException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception in invokeOnCancellation handler for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lkotlinx/coroutines/CompletionHandlerException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {p2, v0}, Lwg/O;->b(LQf/j;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public resumeWith(Ljava/lang/Object;)V
    .locals 6
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    invoke-static {p1, p0}, Lwg/I;->c(Ljava/lang/Object;Lwg/p;)Ljava/lang/Object;

    move-result-object v1

    iget v2, p0, Lwg/g0;->d:I

    const/4 v4, 0x4

    const/4 v5, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lwg/q;->W(Lwg/q;Ljava/lang/Object;ILeg/l;ILjava/lang/Object;)V

    return-void
.end method

.method public final s(Leg/a;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Leg/a<",
            "LFf/P0;",
            ">;)V"
        }
    .end annotation

    :try_start_0
    invoke-interface {p1}, Leg/a;->invoke()Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Lwg/q;->getContext()LQf/j;

    move-result-object v0

    new-instance v1, Lkotlinx/coroutines/CompletionHandlerException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception in invokeOnCancellation handler for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, p1}, Lkotlinx/coroutines/CompletionHandlerException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {v0, v1}, Lwg/O;->b(LQf/j;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lwg/q;->Q()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lwg/q;->e:LQf/f;

    invoke-static {v1}, Lwg/W;->c(LQf/f;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "){"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lwg/q;->G()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "}@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lwg/W;->b(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final u(Leg/l;Ljava/lang/Throwable;)V
    .locals 3
    .param p1    # Leg/l;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Throwable;
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
            ">;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    :try_start_0
    invoke-interface {p1, p2}, Leg/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Lwg/q;->getContext()LQf/j;

    move-result-object p2

    new-instance v0, Lkotlinx/coroutines/CompletionHandlerException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception in resume onCancellation handler for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lkotlinx/coroutines/CompletionHandlerException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {p2, v0}, Lwg/O;->b(LQf/j;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public final v(LEg/P;Ljava/lang/Throwable;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LEg/P<",
            "*>;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    sget-object v0, Lwg/q;->g:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->get(Ljava/lang/Object;)I

    move-result v0

    const v1, 0x1fffffff

    and-int/2addr v0, v1

    if-eq v0, v1, :cond_0

    :try_start_0
    invoke-virtual {p0}, Lwg/q;->getContext()LQf/j;

    move-result-object v1

    invoke-virtual {p1, v0, p2, v1}, LEg/P;->q(ILjava/lang/Throwable;LQf/j;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Lwg/q;->getContext()LQf/j;

    move-result-object p2

    new-instance v0, Lkotlinx/coroutines/CompletionHandlerException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception in invokeOnCancellation handler for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lkotlinx/coroutines/CompletionHandlerException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {p2, v0}, Lwg/O;->b(LQf/j;Ljava/lang/Throwable;)V

    :goto_0
    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "The index for Segment.onCancellation(..) is broken"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final w(Ljava/lang/Throwable;)Z
    .locals 2

    invoke-virtual {p0}, Lwg/q;->L()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-object v0, p0, Lwg/q;->e:LQf/f;

    const-string v1, "null cannot be cast to non-null type kotlinx.coroutines.internal.DispatchedContinuation<*>"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/M;->n(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, LEg/l;

    invoke-virtual {v0, p1}, LEg/l;->x(Ljava/lang/Throwable;)Z

    move-result p1

    return p1
.end method

.method public final x()V
    .locals 2

    invoke-virtual {p0}, Lwg/q;->C()Lwg/m0;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v0}, Lwg/m0;->dispose()V

    sget-object v0, Lwg/q;->i:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    sget-object v1, Lwg/Y0;->b:Lwg/Y0;

    invoke-virtual {v0, p0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public final y()V
    .locals 1

    invoke-virtual {p0}, Lwg/q;->L()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lwg/q;->x()V

    :cond_0
    return-void
.end method

.method public z(Ljava/lang/Object;Leg/l;)V
    .locals 1
    .param p2    # Leg/l;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Leg/l<",
            "-",
            "Ljava/lang/Throwable;",
            "LFf/P0;",
            ">;)V"
        }
    .end annotation

    iget v0, p0, Lwg/g0;->d:I

    invoke-virtual {p0, p1, v0, p2}, Lwg/q;->U(Ljava/lang/Object;ILeg/l;)V

    return-void
.end method
