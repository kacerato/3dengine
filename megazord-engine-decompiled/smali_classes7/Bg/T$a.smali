.class public final LBg/T$a;
.super LTf/q;
.source "SourceFile"

# interfaces
.implements Leg/q;


# annotations
.annotation runtime LTf/f;
    c = "kotlinx.coroutines.flow.StartedWhileSubscribed$command$1"
    f = "SharingStarted.kt"
    i = {
        0x1,
        0x2,
        0x3
    }
    l = {
        0xb2,
        0xb4,
        0xb6,
        0xb7,
        0xb9
    }
    m = "invokeSuspend"
    n = {
        "$this$transformLatest",
        "$this$transformLatest",
        "$this$transformLatest"
    }
    s = {
        "L$0",
        "L$0",
        "L$0"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LBg/T;->a(LBg/U;)LBg/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "LTf/q;",
        "Leg/q<",
        "LBg/j<",
        "-",
        "LBg/M;",
        ">;",
        "Ljava/lang/Integer;",
        "LQf/f<",
        "-",
        "LFf/P0;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field public b:I

.field public synthetic c:Ljava/lang/Object;

.field public synthetic d:I

.field public final synthetic e:LBg/T;


# direct methods
.method public constructor <init>(LBg/T;LQf/f;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LBg/T;",
            "LQf/f<",
            "-",
            "LBg/T$a;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, LBg/T$a;->e:LBg/T;

    const/4 p1, 0x3

    invoke-direct {p0, p1, p2}, LTf/q;-><init>(ILQf/f;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic E(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, LBg/j;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    check-cast p3, LQf/f;

    invoke-virtual {p0, p1, p2, p3}, LBg/T$a;->w(LBg/j;ILQf/f;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    invoke-static {}, LSf/d;->l()Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, LBg/T$a;->b:I

    const/4 v2, 0x5

    const/4 v3, 0x4

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-eqz v1, :cond_5

    if-eq v1, v6, :cond_4

    if-eq v1, v5, :cond_3

    if-eq v1, v4, :cond_2

    if-eq v1, v3, :cond_1

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    iget-object v1, p0, LBg/T$a;->c:Ljava/lang/Object;

    check-cast v1, LBg/j;

    invoke-static {p1}, LFf/j0;->n(Ljava/lang/Object;)V

    goto :goto_3

    :cond_2
    iget-object v1, p0, LBg/T$a;->c:Ljava/lang/Object;

    check-cast v1, LBg/j;

    invoke-static {p1}, LFf/j0;->n(Ljava/lang/Object;)V

    goto :goto_2

    :cond_3
    iget-object v1, p0, LBg/T$a;->c:Ljava/lang/Object;

    check-cast v1, LBg/j;

    invoke-static {p1}, LFf/j0;->n(Ljava/lang/Object;)V

    goto :goto_1

    :cond_4
    :goto_0
    invoke-static {p1}, LFf/j0;->n(Ljava/lang/Object;)V

    goto :goto_4

    :cond_5
    invoke-static {p1}, LFf/j0;->n(Ljava/lang/Object;)V

    iget-object p1, p0, LBg/T$a;->c:Ljava/lang/Object;

    move-object v1, p1

    check-cast v1, LBg/j;

    iget p1, p0, LBg/T$a;->d:I

    if-lez p1, :cond_6

    sget-object p1, LBg/M;->START:LBg/M;

    iput v6, p0, LBg/T$a;->b:I

    invoke-interface {v1, p1, p0}, LBg/j;->emit(Ljava/lang/Object;LQf/f;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_a

    return-object v0

    :cond_6
    iget-object p1, p0, LBg/T$a;->e:LBg/T;

    invoke-static {p1}, LBg/T;->c(LBg/T;)J

    move-result-wide v6

    iput-object v1, p0, LBg/T$a;->c:Ljava/lang/Object;

    iput v5, p0, LBg/T$a;->b:I

    invoke-static {v6, v7, p0}, Lwg/c0;->b(JLQf/f;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_7

    return-object v0

    :cond_7
    :goto_1
    iget-object p1, p0, LBg/T$a;->e:LBg/T;

    invoke-static {p1}, LBg/T;->b(LBg/T;)J

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmp-long p1, v5, v7

    if-lez p1, :cond_9

    sget-object p1, LBg/M;->STOP:LBg/M;

    iput-object v1, p0, LBg/T$a;->c:Ljava/lang/Object;

    iput v4, p0, LBg/T$a;->b:I

    invoke-interface {v1, p1, p0}, LBg/j;->emit(Ljava/lang/Object;LQf/f;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_8

    return-object v0

    :cond_8
    :goto_2
    iget-object p1, p0, LBg/T$a;->e:LBg/T;

    invoke-static {p1}, LBg/T;->b(LBg/T;)J

    move-result-wide v4

    iput-object v1, p0, LBg/T$a;->c:Ljava/lang/Object;

    iput v3, p0, LBg/T$a;->b:I

    invoke-static {v4, v5, p0}, Lwg/c0;->b(JLQf/f;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_9

    return-object v0

    :cond_9
    :goto_3
    sget-object p1, LBg/M;->STOP_AND_RESET_REPLAY_CACHE:LBg/M;

    const/4 v3, 0x0

    iput-object v3, p0, LBg/T$a;->c:Ljava/lang/Object;

    iput v2, p0, LBg/T$a;->b:I

    invoke-interface {v1, p1, p0}, LBg/j;->emit(Ljava/lang/Object;LQf/f;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_a

    return-object v0

    :cond_a
    :goto_4
    sget-object p1, LFf/P0;->a:LFf/P0;

    return-object p1
.end method

.method public final w(LBg/j;ILQf/f;)Ljava/lang/Object;
    .locals 2
    .param p1    # LBg/j;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # LQf/f;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LBg/j<",
            "-",
            "LBg/M;",
            ">;I",
            "LQf/f<",
            "-",
            "LFf/P0;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    new-instance v0, LBg/T$a;

    iget-object v1, p0, LBg/T$a;->e:LBg/T;

    invoke-direct {v0, v1, p3}, LBg/T$a;-><init>(LBg/T;LQf/f;)V

    iput-object p1, v0, LBg/T$a;->c:Ljava/lang/Object;

    iput p2, v0, LBg/T$a;->d:I

    sget-object p1, LFf/P0;->a:LFf/P0;

    invoke-virtual {v0, p1}, LBg/T$a;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
