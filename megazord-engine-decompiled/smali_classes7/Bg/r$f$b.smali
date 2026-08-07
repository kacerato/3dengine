.class public final LBg/r$f$b;
.super LTf/q;
.source "SourceFile"

# interfaces
.implements Leg/l;


# annotations
.annotation runtime LTf/f;
    c = "kotlinx.coroutines.flow.FlowKt__DelayKt$timeoutInternal$1$1$2"
    f = "Delay.kt"
    i = {}
    l = {}
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LBg/r$f;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "LTf/q;",
        "Leg/l<",
        "LQf/f<",
        "*>;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field public b:I

.field public final synthetic c:J


# direct methods
.method public constructor <init>(JLQf/f;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "LQf/f<",
            "-",
            "LBg/r$f$b;",
            ">;)V"
        }
    .end annotation

    iput-wide p1, p0, LBg/r$f$b;->c:J

    const/4 p1, 0x1

    invoke-direct {p0, p1, p3}, LTf/q;-><init>(ILQf/f;)V

    return-void
.end method


# virtual methods
.method public final create(LQf/f;)LQf/f;
    .locals 3
    .param p1    # LQf/f;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LQf/f<",
            "*>;)",
            "LQf/f<",
            "LFf/P0;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, LBg/r$f$b;

    iget-wide v1, p0, LBg/r$f$b;->c:J

    invoke-direct {v0, v1, v2, p1}, LBg/r$f$b;-><init>(JLQf/f;)V

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, LQf/f;

    invoke-virtual {p0, p1}, LBg/r$f$b;->w(LQf/f;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    invoke-static {}, LSf/d;->l()Ljava/lang/Object;

    iget v0, p0, LBg/r$f$b;->b:I

    if-eqz v0, :cond_0

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    invoke-static {p1}, LFf/j0;->n(Ljava/lang/Object;)V

    new-instance p1, Lkotlinx/coroutines/TimeoutCancellationException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Timed out waiting for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, LBg/r$f$b;->c:J

    invoke-static {v1, v2}, Lkotlin/time/h;->h0(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lkotlinx/coroutines/TimeoutCancellationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final w(LQf/f;)Ljava/lang/Object;
    .locals 1
    .param p1    # LQf/f;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LQf/f<",
            "*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    invoke-virtual {p0, p1}, LBg/r$f$b;->create(LQf/f;)LQf/f;

    move-result-object p1

    check-cast p1, LBg/r$f$b;

    sget-object v0, LFf/P0;->a:LFf/P0;

    invoke-virtual {p1, v0}, LBg/r$f$b;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
