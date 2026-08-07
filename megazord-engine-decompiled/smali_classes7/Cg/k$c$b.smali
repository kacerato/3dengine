.class public final LCg/k$c$b;
.super LTf/q;
.source "SourceFile"

# interfaces
.implements Leg/p;


# annotations
.annotation runtime LTf/f;
    c = "kotlinx.coroutines.flow.internal.CombineKt$zipImpl$1$1$2"
    f = "Combine.kt"
    i = {}
    l = {
        0x7f
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LCg/k$c;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "LTf/q;",
        "Leg/p<",
        "LFf/P0;",
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

.field public final synthetic c:LBg/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LBg/i<",
            "TT1;>;"
        }
    .end annotation
.end field

.field public final synthetic d:LQf/j;

.field public final synthetic e:Ljava/lang/Object;

.field public final synthetic f:Lyg/D;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lyg/D<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic g:LBg/j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LBg/j<",
            "TR;>;"
        }
    .end annotation
.end field

.field public final synthetic h:Leg/q;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Leg/q<",
            "TT1;TT2;",
            "LQf/f<",
            "-TR;>;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(LBg/i;LQf/j;Ljava/lang/Object;Lyg/D;LBg/j;Leg/q;LQf/f;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LBg/i<",
            "+TT1;>;",
            "LQf/j;",
            "Ljava/lang/Object;",
            "Lyg/D<",
            "+",
            "Ljava/lang/Object;",
            ">;",
            "LBg/j<",
            "-TR;>;",
            "Leg/q<",
            "-TT1;-TT2;-",
            "LQf/f<",
            "-TR;>;+",
            "Ljava/lang/Object;",
            ">;",
            "LQf/f<",
            "-",
            "LCg/k$c$b;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, LCg/k$c$b;->c:LBg/i;

    iput-object p2, p0, LCg/k$c$b;->d:LQf/j;

    iput-object p3, p0, LCg/k$c$b;->e:Ljava/lang/Object;

    iput-object p4, p0, LCg/k$c$b;->f:Lyg/D;

    iput-object p5, p0, LCg/k$c$b;->g:LBg/j;

    iput-object p6, p0, LCg/k$c$b;->h:Leg/q;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p7}, LTf/q;-><init>(ILQf/f;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;LQf/f;)LQf/f;
    .locals 8
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

    new-instance p1, LCg/k$c$b;

    iget-object v1, p0, LCg/k$c$b;->c:LBg/i;

    iget-object v2, p0, LCg/k$c$b;->d:LQf/j;

    iget-object v3, p0, LCg/k$c$b;->e:Ljava/lang/Object;

    iget-object v4, p0, LCg/k$c$b;->f:Lyg/D;

    iget-object v5, p0, LCg/k$c$b;->g:LBg/j;

    iget-object v6, p0, LCg/k$c$b;->h:Leg/q;

    move-object v0, p1

    move-object v7, p2

    invoke-direct/range {v0 .. v7}, LCg/k$c$b;-><init>(LBg/i;LQf/j;Ljava/lang/Object;Lyg/D;LBg/j;Leg/q;LQf/f;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, LFf/P0;

    check-cast p2, LQf/f;

    invoke-virtual {p0, p1, p2}, LCg/k$c$b;->w(LFf/P0;LQf/f;)Ljava/lang/Object;

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

    iget v1, p0, LCg/k$c$b;->b:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, LFf/j0;->n(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {p1}, LFf/j0;->n(Ljava/lang/Object;)V

    iget-object p1, p0, LCg/k$c$b;->c:LBg/i;

    new-instance v1, LCg/k$c$b$a;

    iget-object v4, p0, LCg/k$c$b;->d:LQf/j;

    iget-object v5, p0, LCg/k$c$b;->e:Ljava/lang/Object;

    iget-object v6, p0, LCg/k$c$b;->f:Lyg/D;

    iget-object v7, p0, LCg/k$c$b;->g:LBg/j;

    iget-object v8, p0, LCg/k$c$b;->h:Leg/q;

    move-object v3, v1

    invoke-direct/range {v3 .. v8}, LCg/k$c$b$a;-><init>(LQf/j;Ljava/lang/Object;Lyg/D;LBg/j;Leg/q;)V

    iput v2, p0, LCg/k$c$b;->b:I

    invoke-interface {p1, v1, p0}, LBg/i;->a(LBg/j;LQf/f;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    sget-object p1, LFf/P0;->a:LFf/P0;

    return-object p1
.end method

.method public final w(LFf/P0;LQf/f;)Ljava/lang/Object;
    .locals 0
    .param p1    # LFf/P0;
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
            "LFf/P0;",
            "LQf/f<",
            "-",
            "LFf/P0;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    invoke-virtual {p0, p1, p2}, LCg/k$c$b;->create(Ljava/lang/Object;LQf/f;)LQf/f;

    move-result-object p1

    check-cast p1, LCg/k$c$b;

    sget-object p2, LFf/P0;->a:LFf/P0;

    invoke-virtual {p1, p2}, LCg/k$c$b;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
