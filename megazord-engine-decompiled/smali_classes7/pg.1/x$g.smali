.class public final Lpg/x$g;
.super LTf/l;
.source "SourceFile"

# interfaces
.implements Leg/p;


# annotations
.annotation runtime LTf/f;
    c = "kotlin.sequences.SequencesKt__SequencesKt$shuffled$1"
    f = "Sequences.kt"
    i = {
        0x0,
        0x0,
        0x0,
        0x0,
        0x0
    }
    l = {
        0xb2
    }
    m = "invokeSuspend"
    n = {
        "$this$sequence",
        "buffer",
        "last",
        "value",
        "j"
    }
    nl = {
        0xb4
    }
    s = {
        "L$0",
        "L$1",
        "L$2",
        "L$3",
        "I$0"
    }
    v = 0x2
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpg/x;->E(Lpg/m;Llg/f;)Lpg/m;
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
        "-TT;>;",
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

.field public final synthetic i:Llg/f;


# direct methods
.method public constructor <init>(Lpg/m;Llg/f;LQf/f;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lpg/m<",
            "+TT;>;",
            "Llg/f;",
            "LQf/f<",
            "-",
            "Lpg/x$g;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lpg/x$g;->h:Lpg/m;

    iput-object p2, p0, Lpg/x$g;->i:Llg/f;

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

    new-instance v0, Lpg/x$g;

    iget-object v1, p0, Lpg/x$g;->h:Lpg/m;

    iget-object v2, p0, Lpg/x$g;->i:Llg/f;

    invoke-direct {v0, v1, v2, p2}, Lpg/x$g;-><init>(Lpg/m;Llg/f;LQf/f;)V

    iput-object p1, v0, Lpg/x$g;->g:Ljava/lang/Object;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lpg/o;

    check-cast p2, LQf/f;

    invoke-virtual {p0, p1, p2}, Lpg/x$g;->invoke(Lpg/o;LQf/f;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lpg/o;LQf/f;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lpg/o<",
            "-TT;>;",
            "LQf/f<",
            "-",
            "LFf/P0;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 2
    invoke-virtual {p0, p1, p2}, Lpg/x$g;->create(Ljava/lang/Object;LQf/f;)LQf/f;

    move-result-object p1

    check-cast p1, Lpg/x$g;

    sget-object p2, LFf/P0;->a:LFf/P0;

    invoke-virtual {p1, p2}, Lpg/x$g;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    iget-object v0, p0, Lpg/x$g;->g:Ljava/lang/Object;

    check-cast v0, Lpg/o;

    invoke-static {}, LSf/d;->l()Ljava/lang/Object;

    move-result-object v1

    iget v2, p0, Lpg/x$g;->f:I

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lpg/x$g;->b:Ljava/lang/Object;

    check-cast v2, Ljava/util/List;

    invoke-static {p1}, LFf/j0;->n(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {p1}, LFf/j0;->n(Ljava/lang/Object;)V

    iget-object p1, p0, Lpg/x$g;->h:Lpg/m;

    invoke-static {p1}, Lpg/K;->J3(Lpg/m;)Ljava/util/List;

    move-result-object p1

    move-object v2, p1

    :cond_2
    :goto_0
    move-object p1, v2

    check-cast p1, Ljava/util/Collection;

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_4

    iget-object p1, p0, Lpg/x$g;->i:Llg/f;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {p1, v4}, Llg/f;->m(I)I

    move-result p1

    invoke-static {v2}, LHf/M;->Q0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    if-ge p1, v5, :cond_3

    invoke-interface {v2, p1, v4}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    goto :goto_1

    :cond_3
    move-object v5, v4

    :goto_1
    iput-object v0, p0, Lpg/x$g;->g:Ljava/lang/Object;

    iput-object v2, p0, Lpg/x$g;->b:Ljava/lang/Object;

    invoke-static {v4}, LTf/o;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    iput-object v4, p0, Lpg/x$g;->c:Ljava/lang/Object;

    invoke-static {v5}, LTf/o;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    iput-object v4, p0, Lpg/x$g;->d:Ljava/lang/Object;

    iput p1, p0, Lpg/x$g;->e:I

    iput v3, p0, Lpg/x$g;->f:I

    invoke-virtual {v0, v5, p0}, Lpg/o;->a(Ljava/lang/Object;LQf/f;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_2

    return-object v1

    :cond_4
    sget-object p1, LFf/P0;->a:LFf/P0;

    return-object p1
.end method
