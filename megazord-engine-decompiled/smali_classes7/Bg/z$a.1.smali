.class public final LBg/z$a;
.super LTf/q;
.source "SourceFile"

# interfaces
.implements Leg/p;


# annotations
.annotation runtime LTf/f;
    c = "kotlinx.coroutines.flow.FlowKt__ShareKt$launchSharing$1"
    f = "Share.kt"
    i = {}
    l = {
        0xd6,
        0xda,
        0xdb,
        0xe1
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LBg/z;->d(Lwg/S;LQf/j;LBg/i;LBg/D;LBg/O;Ljava/lang/Object;)Lwg/K0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "LTf/q;",
        "Leg/p<",
        "Lwg/S;",
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

.field public final synthetic c:LBg/O;

.field public final synthetic d:LBg/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LBg/i<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final synthetic e:LBg/D;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LBg/D<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final synthetic f:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(LBg/O;LBg/i;LBg/D;Ljava/lang/Object;LQf/f;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LBg/O;",
            "LBg/i<",
            "+TT;>;",
            "LBg/D<",
            "TT;>;TT;",
            "LQf/f<",
            "-",
            "LBg/z$a;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, LBg/z$a;->c:LBg/O;

    iput-object p2, p0, LBg/z$a;->d:LBg/i;

    iput-object p3, p0, LBg/z$a;->e:LBg/D;

    iput-object p4, p0, LBg/z$a;->f:Ljava/lang/Object;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p5}, LTf/q;-><init>(ILQf/f;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;LQf/f;)LQf/f;
    .locals 6
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

    new-instance p1, LBg/z$a;

    iget-object v1, p0, LBg/z$a;->c:LBg/O;

    iget-object v2, p0, LBg/z$a;->d:LBg/i;

    iget-object v3, p0, LBg/z$a;->e:LBg/D;

    iget-object v4, p0, LBg/z$a;->f:Ljava/lang/Object;

    move-object v0, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, LBg/z$a;-><init>(LBg/O;LBg/i;LBg/D;Ljava/lang/Object;LQf/f;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lwg/S;

    check-cast p2, LQf/f;

    invoke-virtual {p0, p1, p2}, LBg/z$a;->invoke(Lwg/S;LQf/f;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lwg/S;LQf/f;)Ljava/lang/Object;
    .locals 0
    .param p1    # Lwg/S;
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
            "Lwg/S;",
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
    invoke-virtual {p0, p1, p2}, LBg/z$a;->create(Ljava/lang/Object;LQf/f;)LQf/f;

    move-result-object p1

    check-cast p1, LBg/z$a;

    sget-object p2, LFf/P0;->a:LFf/P0;

    invoke-virtual {p1, p2}, LBg/z$a;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    invoke-static {}, LSf/d;->l()Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, LBg/z$a;->b:I

    const/4 v2, 0x4

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v1, :cond_3

    if-eq v1, v5, :cond_2

    if-eq v1, v4, :cond_1

    if-eq v1, v3, :cond_2

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {p1}, LFf/j0;->n(Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    :goto_0
    invoke-static {p1}, LFf/j0;->n(Ljava/lang/Object;)V

    goto :goto_2

    :cond_3
    invoke-static {p1}, LFf/j0;->n(Ljava/lang/Object;)V

    iget-object p1, p0, LBg/z$a;->c:LBg/O;

    sget-object v1, LBg/O;->a:LBg/O$a;

    invoke-virtual {v1}, LBg/O$a;->c()LBg/O;

    move-result-object v6

    if-ne p1, v6, :cond_4

    iget-object p1, p0, LBg/z$a;->d:LBg/i;

    iget-object v1, p0, LBg/z$a;->e:LBg/D;

    iput v5, p0, LBg/z$a;->b:I

    invoke-interface {p1, v1, p0}, LBg/i;->a(LBg/j;LQf/f;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_7

    return-object v0

    :cond_4
    iget-object p1, p0, LBg/z$a;->c:LBg/O;

    invoke-virtual {v1}, LBg/O$a;->d()LBg/O;

    move-result-object v1

    const/4 v5, 0x0

    if-ne p1, v1, :cond_6

    iget-object p1, p0, LBg/z$a;->e:LBg/D;

    invoke-interface {p1}, LBg/D;->k()LBg/U;

    move-result-object p1

    new-instance v1, LBg/z$a$a;

    invoke-direct {v1, v5}, LBg/z$a$a;-><init>(LQf/f;)V

    iput v4, p0, LBg/z$a;->b:I

    invoke-static {p1, v1, p0}, LBg/k;->v0(LBg/i;Leg/p;LQf/f;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_5

    return-object v0

    :cond_5
    :goto_1
    iget-object p1, p0, LBg/z$a;->d:LBg/i;

    iget-object v1, p0, LBg/z$a;->e:LBg/D;

    iput v3, p0, LBg/z$a;->b:I

    invoke-interface {p1, v1, p0}, LBg/i;->a(LBg/j;LQf/f;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_7

    return-object v0

    :cond_6
    iget-object p1, p0, LBg/z$a;->c:LBg/O;

    iget-object v1, p0, LBg/z$a;->e:LBg/D;

    invoke-interface {v1}, LBg/D;->k()LBg/U;

    move-result-object v1

    invoke-interface {p1, v1}, LBg/O;->a(LBg/U;)LBg/i;

    move-result-object p1

    invoke-static {p1}, LBg/k;->g0(LBg/i;)LBg/i;

    move-result-object p1

    new-instance v1, LBg/z$a$b;

    iget-object v3, p0, LBg/z$a;->d:LBg/i;

    iget-object v4, p0, LBg/z$a;->e:LBg/D;

    iget-object v6, p0, LBg/z$a;->f:Ljava/lang/Object;

    invoke-direct {v1, v3, v4, v6, v5}, LBg/z$a$b;-><init>(LBg/i;LBg/D;Ljava/lang/Object;LQf/f;)V

    iput v2, p0, LBg/z$a;->b:I

    invoke-static {p1, v1, p0}, LBg/k;->A(LBg/i;Leg/p;LQf/f;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_7

    return-object v0

    :cond_7
    :goto_2
    sget-object p1, LFf/P0;->a:LFf/P0;

    return-object p1
.end method
