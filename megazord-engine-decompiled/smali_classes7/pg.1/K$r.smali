.class public final Lpg/K$r;
.super LTf/l;
.source "SourceFile"

# interfaces
.implements Leg/p;


# annotations
.annotation runtime LTf/f;
    c = "kotlin.sequences.SequencesKt___SequencesKt$zipWithNext$2"
    f = "_Sequences.kt"
    i = {
        0x0,
        0x0,
        0x0,
        0x0
    }
    l = {
        0xbb8
    }
    m = "invokeSuspend"
    n = {
        "$this$result",
        "iterator",
        "current",
        "next"
    }
    nl = {
        0xbb9
    }
    s = {
        "L$0",
        "L$1",
        "L$2",
        "L$3"
    }
    v = 0x2
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpg/K;->V3(Lpg/m;Leg/p;)Lpg/m;
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
        "-TR;>;",
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

.field public d:Ljava/lang/Object;

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

.field public final synthetic h:Leg/p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Leg/p<",
            "TT;TT;TR;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lpg/m;Leg/p;LQf/f;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lpg/m<",
            "+TT;>;",
            "Leg/p<",
            "-TT;-TT;+TR;>;",
            "LQf/f<",
            "-",
            "Lpg/K$r;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lpg/K$r;->g:Lpg/m;

    iput-object p2, p0, Lpg/K$r;->h:Leg/p;

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

    new-instance v0, Lpg/K$r;

    iget-object v1, p0, Lpg/K$r;->g:Lpg/m;

    iget-object v2, p0, Lpg/K$r;->h:Leg/p;

    invoke-direct {v0, v1, v2, p2}, Lpg/K$r;-><init>(Lpg/m;Leg/p;LQf/f;)V

    iput-object p1, v0, Lpg/K$r;->f:Ljava/lang/Object;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lpg/o;

    check-cast p2, LQf/f;

    invoke-virtual {p0, p1, p2}, Lpg/K$r;->invoke(Lpg/o;LQf/f;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lpg/o;LQf/f;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lpg/o<",
            "-TR;>;",
            "LQf/f<",
            "-",
            "LFf/P0;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 2
    invoke-virtual {p0, p1, p2}, Lpg/K$r;->create(Ljava/lang/Object;LQf/f;)LQf/f;

    move-result-object p1

    check-cast p1, Lpg/K$r;

    sget-object p2, LFf/P0;->a:LFf/P0;

    invoke-virtual {p1, p2}, Lpg/K$r;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    iget-object v0, p0, Lpg/K$r;->f:Ljava/lang/Object;

    check-cast v0, Lpg/o;

    invoke-static {}, LSf/d;->l()Ljava/lang/Object;

    move-result-object v1

    iget v2, p0, Lpg/K$r;->e:I

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lpg/K$r;->d:Ljava/lang/Object;

    iget-object v4, p0, Lpg/K$r;->b:Ljava/lang/Object;

    check-cast v4, Ljava/util/Iterator;

    invoke-static {p1}, LFf/j0;->n(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {p1}, LFf/j0;->n(Ljava/lang/Object;)V

    iget-object p1, p0, Lpg/K$r;->g:Lpg/m;

    invoke-interface {p1}, Lpg/m;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_2

    sget-object p1, LFf/P0;->a:LFf/P0;

    return-object p1

    :cond_2
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v4, p1

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    iget-object v5, p0, Lpg/K$r;->h:Leg/p;

    invoke-interface {v5, v2, p1}, Leg/p;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    iput-object v0, p0, Lpg/K$r;->f:Ljava/lang/Object;

    iput-object v4, p0, Lpg/K$r;->b:Ljava/lang/Object;

    invoke-static {v2}, LTf/o;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    iput-object v2, p0, Lpg/K$r;->c:Ljava/lang/Object;

    iput-object p1, p0, Lpg/K$r;->d:Ljava/lang/Object;

    iput v3, p0, Lpg/K$r;->e:I

    invoke-virtual {v0, v5, p0}, Lpg/o;->a(Ljava/lang/Object;LQf/f;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_3

    return-object v1

    :cond_3
    move-object v2, p1

    goto :goto_0

    :cond_4
    sget-object p1, LFf/P0;->a:LFf/P0;

    return-object p1
.end method
