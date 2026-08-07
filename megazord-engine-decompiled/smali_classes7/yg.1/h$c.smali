.class public final Lyg/h$c;
.super LTf/q;
.source "SourceFile"

# interfaces
.implements Leg/p;


# annotations
.annotation runtime LTf/f;
    c = "kotlinx.coroutines.channels.BroadcastKt$broadcast$2"
    f = "Broadcast.kt"
    i = {
        0x0,
        0x1
    }
    l = {
        0x38,
        0x39
    }
    m = "invokeSuspend"
    n = {
        "$this$broadcast",
        "$this$broadcast"
    }
    s = {
        "L$0",
        "L$0"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lyg/h;->b(Lyg/D;ILwg/U;)Lyg/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "LTf/q;",
        "Leg/p<",
        "Lyg/B<",
        "-TE;>;",
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

.field public c:I

.field public synthetic d:Ljava/lang/Object;

.field public final synthetic e:Lyg/D;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lyg/D<",
            "TE;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lyg/D;LQf/f;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lyg/D<",
            "+TE;>;",
            "LQf/f<",
            "-",
            "Lyg/h$c;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lyg/h$c;->e:Lyg/D;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, LTf/q;-><init>(ILQf/f;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;LQf/f;)LQf/f;
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # LQf/f;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
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

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Lyg/h$c;

    iget-object v1, p0, Lyg/h$c;->e:Lyg/D;

    invoke-direct {v0, v1, p2}, Lyg/h$c;-><init>(Lyg/D;LQf/f;)V

    iput-object p1, v0, Lyg/h$c;->d:Ljava/lang/Object;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lyg/B;

    check-cast p2, LQf/f;

    invoke-virtual {p0, p1, p2}, Lyg/h$c;->invoke(Lyg/B;LQf/f;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lyg/B;LQf/f;)Ljava/lang/Object;
    .locals 0
    .param p1    # Lyg/B;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # LQf/f;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lyg/B<",
            "-TE;>;",
            "LQf/f<",
            "-",
            "LFf/P0;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 2
    invoke-virtual {p0, p1, p2}, Lyg/h$c;->create(Ljava/lang/Object;LQf/f;)LQf/f;

    move-result-object p1

    check-cast p1, Lyg/h$c;

    sget-object p2, LFf/P0;->a:LFf/P0;

    invoke-virtual {p1, p2}, Lyg/h$c;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    invoke-static {}, LSf/d;->l()Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lyg/h$c;->c:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v1, :cond_3

    if-eq v1, v3, :cond_2

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lyg/h$c;->b:Ljava/lang/Object;

    check-cast v1, Lyg/n;

    iget-object v4, p0, Lyg/h$c;->d:Ljava/lang/Object;

    check-cast v4, Lyg/B;

    invoke-static {p1}, LFf/j0;->n(Ljava/lang/Object;)V

    :cond_0
    move-object p1, v4

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    iget-object v1, p0, Lyg/h$c;->b:Ljava/lang/Object;

    check-cast v1, Lyg/n;

    iget-object v4, p0, Lyg/h$c;->d:Ljava/lang/Object;

    check-cast v4, Lyg/B;

    invoke-static {p1}, LFf/j0;->n(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-static {p1}, LFf/j0;->n(Ljava/lang/Object;)V

    iget-object p1, p0, Lyg/h$c;->d:Ljava/lang/Object;

    check-cast p1, Lyg/B;

    iget-object v1, p0, Lyg/h$c;->e:Lyg/D;

    invoke-interface {v1}, Lyg/D;->iterator()Lyg/n;

    move-result-object v1

    :goto_0
    iput-object p1, p0, Lyg/h$c;->d:Ljava/lang/Object;

    iput-object v1, p0, Lyg/h$c;->b:Ljava/lang/Object;

    iput v3, p0, Lyg/h$c;->c:I

    invoke-interface {v1, p0}, Lyg/n;->b(LQf/f;)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v0, :cond_4

    return-object v0

    :cond_4
    move-object v5, v4

    move-object v4, p1

    move-object p1, v5

    :goto_1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-interface {v1}, Lyg/n;->next()Ljava/lang/Object;

    move-result-object p1

    iput-object v4, p0, Lyg/h$c;->d:Ljava/lang/Object;

    iput-object v1, p0, Lyg/h$c;->b:Ljava/lang/Object;

    iput v2, p0, Lyg/h$c;->c:I

    invoke-interface {v4, p1, p0}, Lyg/E;->H(Ljava/lang/Object;LQf/f;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_0

    return-object v0

    :cond_5
    sget-object p1, LFf/P0;->a:LFf/P0;

    return-object p1
.end method
