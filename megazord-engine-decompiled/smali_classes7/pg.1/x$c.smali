.class public final Lpg/x$c;
.super LTf/l;
.source "SourceFile"

# interfaces
.implements Leg/p;


# annotations
.annotation runtime LTf/f;
    c = "kotlin.sequences.SequencesKt__SequencesKt$flatMapIndexed$1"
    f = "Sequences.kt"
    i = {
        0x0,
        0x0,
        0x0,
        0x0
    }
    l = {
        0x17f
    }
    m = "invokeSuspend"
    n = {
        "$this$sequence",
        "element",
        "result",
        "index"
    }
    nl = {
        0x181
    }
    s = {
        "L$0",
        "L$2",
        "L$3",
        "I$0"
    }
    v = 0x2
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpg/x;->m(Lpg/m;Leg/p;Leg/l;)Lpg/m;
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

.field public f:I

.field public synthetic g:Ljava/lang/Object;

.field public final synthetic h:Lpg/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lpg/m<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final synthetic i:Leg/p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Leg/p<",
            "Ljava/lang/Integer;",
            "TT;TC;>;"
        }
    .end annotation
.end field

.field public final synthetic j:Leg/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Leg/l<",
            "TC;",
            "Ljava/util/Iterator<",
            "TR;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lpg/m;Leg/p;Leg/l;LQf/f;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lpg/m<",
            "+TT;>;",
            "Leg/p<",
            "-",
            "Ljava/lang/Integer;",
            "-TT;+TC;>;",
            "Leg/l<",
            "-TC;+",
            "Ljava/util/Iterator<",
            "+TR;>;>;",
            "LQf/f<",
            "-",
            "Lpg/x$c;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lpg/x$c;->h:Lpg/m;

    iput-object p2, p0, Lpg/x$c;->i:Leg/p;

    iput-object p3, p0, Lpg/x$c;->j:Leg/l;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, LTf/l;-><init>(ILQf/f;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;LQf/f;)LQf/f;
    .locals 4
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

    new-instance v0, Lpg/x$c;

    iget-object v1, p0, Lpg/x$c;->h:Lpg/m;

    iget-object v2, p0, Lpg/x$c;->i:Leg/p;

    iget-object v3, p0, Lpg/x$c;->j:Leg/l;

    invoke-direct {v0, v1, v2, v3, p2}, Lpg/x$c;-><init>(Lpg/m;Leg/p;Leg/l;LQf/f;)V

    iput-object p1, v0, Lpg/x$c;->g:Ljava/lang/Object;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lpg/o;

    check-cast p2, LQf/f;

    invoke-virtual {p0, p1, p2}, Lpg/x$c;->invoke(Lpg/o;LQf/f;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lpg/x$c;->create(Ljava/lang/Object;LQf/f;)LQf/f;

    move-result-object p1

    check-cast p1, Lpg/x$c;

    sget-object p2, LFf/P0;->a:LFf/P0;

    invoke-virtual {p1, p2}, Lpg/x$c;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    iget-object v0, p0, Lpg/x$c;->g:Ljava/lang/Object;

    check-cast v0, Lpg/o;

    invoke-static {}, LSf/d;->l()Ljava/lang/Object;

    move-result-object v1

    iget v2, p0, Lpg/x$c;->f:I

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    if-ne v2, v3, :cond_0

    iget v2, p0, Lpg/x$c;->e:I

    iget-object v4, p0, Lpg/x$c;->b:Ljava/lang/Object;

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

    iget-object p1, p0, Lpg/x$c;->h:Lpg/m;

    invoke-interface {p1}, Lpg/m;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v2, 0x0

    move-object v4, p1

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    iget-object v5, p0, Lpg/x$c;->i:Leg/p;

    add-int/lit8 v6, v2, 0x1

    if-gez v2, :cond_2

    invoke-static {}, LHf/H;->b0()V

    :cond_2
    invoke-static {v2}, LTf/b;->f(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v5, v2, p1}, Leg/p;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    iget-object v5, p0, Lpg/x$c;->j:Leg/l;

    invoke-interface {v5, v2}, Leg/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Iterator;

    iput-object v0, p0, Lpg/x$c;->g:Ljava/lang/Object;

    iput-object v4, p0, Lpg/x$c;->b:Ljava/lang/Object;

    invoke-static {p1}, LTf/o;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lpg/x$c;->c:Ljava/lang/Object;

    invoke-static {v2}, LTf/o;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lpg/x$c;->d:Ljava/lang/Object;

    iput v6, p0, Lpg/x$c;->e:I

    iput v3, p0, Lpg/x$c;->f:I

    invoke-virtual {v0, v5, p0}, Lpg/o;->e(Ljava/util/Iterator;LQf/f;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_3

    return-object v1

    :cond_3
    move v2, v6

    goto :goto_0

    :cond_4
    sget-object p1, LFf/P0;->a:LFf/P0;

    return-object p1
.end method
