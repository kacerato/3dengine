.class public final Lpg/K$o;
.super LTf/l;
.source "SourceFile"

# interfaces
.implements Leg/p;


# annotations
.annotation runtime LTf/f;
    c = "kotlin.sequences.SequencesKt___SequencesKt$runningReduceIndexed$1"
    f = "_Sequences.kt"
    i = {
        0x0,
        0x0,
        0x0,
        0x1,
        0x1,
        0x1,
        0x1
    }
    l = {
        0x9e2,
        0x9e6
    }
    m = "invokeSuspend"
    n = {
        "$this$sequence",
        "iterator",
        "accumulator",
        "$this$sequence",
        "iterator",
        "accumulator",
        "index"
    }
    nl = {
        0x9e3,
        0x9e9
    }
    s = {
        "L$0",
        "L$1",
        "L$2",
        "L$0",
        "L$1",
        "L$2",
        "I$0"
    }
    v = 0x2
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpg/K;->f3(Lpg/m;Leg/q;)Lpg/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "LTf/l;",
        "Leg/p<",
        "Lpg/o<",
        "-TS;>;",
        "LQf/f<",
        "-",
        "LFf/P0;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field public b:Ljava/lang/Object;

.field public c:Ljava/lang/Object;

.field public d:I

.field public e:I

.field public synthetic f:Ljava/lang/Object;

.field public final synthetic g:Lpg/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lpg/m<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final synthetic h:Leg/q;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Leg/q<",
            "Ljava/lang/Integer;",
            "TS;TT;TS;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lpg/m;Leg/q;LQf/f;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lpg/m<",
            "+TT;>;",
            "Leg/q<",
            "-",
            "Ljava/lang/Integer;",
            "-TS;-TT;+TS;>;",
            "LQf/f<",
            "-",
            "Lpg/K$o;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lpg/K$o;->g:Lpg/m;

    iput-object p2, p0, Lpg/K$o;->h:Leg/q;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, LTf/l;-><init>(ILQf/f;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;LQf/f;)LQf/f;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "LQf/f<",
            "*>;)",
            "LQf/f<",
            "LFf/P0;",
            ">;"
        }
    .end annotation

    new-instance v0, Lpg/K$o;

    iget-object v1, p0, Lpg/K$o;->g:Lpg/m;

    iget-object v2, p0, Lpg/K$o;->h:Leg/q;

    invoke-direct {v0, v1, v2, p2}, Lpg/K$o;-><init>(Lpg/m;Leg/q;LQf/f;)V

    iput-object p1, v0, Lpg/K$o;->f:Ljava/lang/Object;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lpg/o;

    check-cast p2, LQf/f;

    invoke-virtual {p0, p1, p2}, Lpg/K$o;->invoke(Lpg/o;LQf/f;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lpg/o;LQf/f;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lpg/o<",
            "-TS;>;",
            "LQf/f<",
            "-",
            "LFf/P0;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 2
    invoke-virtual {p0, p1, p2}, Lpg/K$o;->create(Ljava/lang/Object;LQf/f;)LQf/f;

    move-result-object p1

    check-cast p1, Lpg/K$o;

    sget-object p2, LFf/P0;->a:LFf/P0;

    invoke-virtual {p1, p2}, Lpg/K$o;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    iget-object v0, p0, Lpg/K$o;->f:Ljava/lang/Object;

    check-cast v0, Lpg/o;

    invoke-static {}, LSf/d;->l()Ljava/lang/Object;

    move-result-object v1

    iget v2, p0, Lpg/K$o;->e:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_2

    if-eq v2, v4, :cond_1

    if-ne v2, v3, :cond_0

    iget v2, p0, Lpg/K$o;->d:I

    iget-object v4, p0, Lpg/K$o;->c:Ljava/lang/Object;

    iget-object v5, p0, Lpg/K$o;->b:Ljava/lang/Object;

    check-cast v5, Ljava/util/Iterator;

    invoke-static {p1}, LFf/j0;->n(Ljava/lang/Object;)V

    move-object v8, v4

    move v4, v2

    move-object v2, v8

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    iget-object v2, p0, Lpg/K$o;->c:Ljava/lang/Object;

    iget-object v5, p0, Lpg/K$o;->b:Ljava/lang/Object;

    check-cast v5, Ljava/util/Iterator;

    invoke-static {p1}, LFf/j0;->n(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    invoke-static {p1}, LFf/j0;->n(Ljava/lang/Object;)V

    iget-object p1, p0, Lpg/K$o;->g:Lpg/m;

    invoke-interface {p1}, Lpg/m;->iterator()Ljava/util/Iterator;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    iput-object v0, p0, Lpg/K$o;->f:Ljava/lang/Object;

    iput-object v5, p0, Lpg/K$o;->b:Ljava/lang/Object;

    iput-object v2, p0, Lpg/K$o;->c:Ljava/lang/Object;

    iput v4, p0, Lpg/K$o;->e:I

    invoke-virtual {v0, v2, p0}, Lpg/o;->a(Ljava/lang/Object;LQf/f;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_3

    return-object v1

    :cond_3
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lpg/K$o;->h:Leg/q;

    add-int/lit8 v6, v4, 0x1

    if-gez v4, :cond_4

    invoke-static {}, LHf/H;->b0()V

    :cond_4
    invoke-static {v4}, LTf/b;->f(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    invoke-interface {p1, v4, v2, v7}, Leg/q;->E(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    iput-object v0, p0, Lpg/K$o;->f:Ljava/lang/Object;

    iput-object v5, p0, Lpg/K$o;->b:Ljava/lang/Object;

    iput-object v4, p0, Lpg/K$o;->c:Ljava/lang/Object;

    iput v6, p0, Lpg/K$o;->d:I

    iput v3, p0, Lpg/K$o;->e:I

    invoke-virtual {v0, v4, p0}, Lpg/o;->a(Ljava/lang/Object;LQf/f;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_5

    return-object v1

    :cond_5
    move-object v2, v4

    move v4, v6

    goto :goto_0

    :cond_6
    sget-object p1, LFf/P0;->a:LFf/P0;

    return-object p1
.end method
