.class public final Lyg/x;
.super Lyg/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lyg/a<",
        "TE;>;"
    }
.end annotation


# instance fields
.field public f:LQf/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LQf/f<",
            "-",
            "LFf/P0;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(LQf/j;Lyg/l;Leg/p;)V
    .locals 1
    .param p1    # LQf/j;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lyg/l;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Leg/p;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LQf/j;",
            "Lyg/l<",
            "TE;>;",
            "Leg/p<",
            "-",
            "Lyg/c<",
            "TE;>;-",
            "LQf/f<",
            "-",
            "LFf/P0;",
            ">;+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lyg/a;-><init>(LQf/j;Lyg/l;Z)V

    invoke-static {p3, p0, p0}, LSf/c;->c(Leg/p;Ljava/lang/Object;LQf/f;)LQf/f;

    move-result-object p1

    iput-object p1, p0, Lyg/x;->f:LQf/f;

    return-void
.end method

.method public static final synthetic D1(Lyg/x;LHg/m;Ljava/lang/Object;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lyg/x;->F1(LHg/m;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic E1()V
    .locals 0

    return-void
.end method


# virtual methods
.method public final F1(LHg/m;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LHg/m<",
            "*>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    invoke-virtual {p0}, Lyg/x;->h1()V

    invoke-super {p0}, Lyg/m;->r()LHg/i;

    move-result-object v0

    invoke-interface {v0}, LHg/k;->a()Leg/q;

    move-result-object v0

    invoke-interface {v0, p0, p1, p2}, Leg/q;->E(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public H(Ljava/lang/Object;LQf/f;)Ljava/lang/Object;
    .locals 0
    .param p2    # LQf/f;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;",
            "LQf/f<",
            "-",
            "LFf/P0;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    invoke-virtual {p0}, Lwg/R0;->start()Z

    invoke-super {p0, p1, p2}, Lyg/m;->H(Ljava/lang/Object;LQf/f;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, LSf/d;->l()Ljava/lang/Object;

    move-result-object p2

    if-ne p1, p2, :cond_0

    return-object p1

    :cond_0
    sget-object p1, LFf/P0;->a:LFf/P0;

    return-object p1
.end method

.method public L(Ljava/lang/Throwable;)Z
    .locals 0
    .param p1    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    invoke-super {p0, p1}, Lyg/m;->L(Ljava/lang/Throwable;)Z

    move-result p1

    invoke-virtual {p0}, Lwg/R0;->start()Z

    return p1
.end method

.method public h1()V
    .locals 1

    iget-object v0, p0, Lyg/x;->f:LQf/f;

    invoke-static {v0, p0}, LFg/a;->c(LQf/f;LQf/f;)V

    return-void
.end method

.method public offer(Ljava/lang/Object;)Z
    .locals 0
    .annotation runtime LFf/o;
        level = .enum LFf/q;->ERROR:LFf/q;
        message = "Deprecated in the favour of \'trySend\' method"
        replaceWith = .subannotation LFf/g0;
            expression = "trySend(element).isSuccess"
            imports = {}
        .end subannotation
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    invoke-virtual {p0}, Lwg/R0;->start()Z

    invoke-super {p0, p1}, Lyg/m;->offer(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public r()LHg/i;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LHg/i<",
            "TE;",
            "Lyg/E<",
            "TE;>;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v7, LHg/j;

    sget-object v0, Lyg/x$a;->b:Lyg/x$a;

    const-string v1, "null cannot be cast to non-null type kotlin.Function3<@[ParameterName(name = \'clauseObject\')] kotlin.Any, @[ParameterName(name = \'select\')] kotlinx.coroutines.selects.SelectInstance<*>, @[ParameterName(name = \'param\')] kotlin.Any?, kotlin.Unit>{ kotlinx.coroutines.selects.SelectKt.RegistrationFunction }"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/M;->n(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lkotlin/jvm/internal/w0;->q(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Leg/q;

    invoke-super {p0}, Lyg/m;->r()LHg/i;

    move-result-object v0

    invoke-interface {v0}, LHg/k;->c()Leg/q;

    move-result-object v3

    const/16 v5, 0x8

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v0, v7

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, LHg/j;-><init>(Ljava/lang/Object;Leg/q;Leg/q;Leg/q;ILkotlin/jvm/internal/x;)V

    return-object v7
.end method

.method public y(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-virtual {p0}, Lwg/R0;->start()Z

    invoke-super {p0, p1}, Lyg/m;->y(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
