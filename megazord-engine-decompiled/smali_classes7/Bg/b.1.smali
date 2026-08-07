.class public final LBg/b;
.super LBg/f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "LBg/f<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final f:Leg/p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Leg/p<",
            "Lyg/B<",
            "-TT;>;",
            "LQf/f<",
            "-",
            "LFf/P0;",
            ">;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Leg/p;LQf/j;ILyg/i;)V
    .locals 0
    .param p1    # Leg/p;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # LQf/j;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lyg/i;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Leg/p<",
            "-",
            "Lyg/B<",
            "-TT;>;-",
            "LQf/f<",
            "-",
            "LFf/P0;",
            ">;+",
            "Ljava/lang/Object;",
            ">;",
            "LQf/j;",
            "I",
            "Lyg/i;",
            ")V"
        }
    .end annotation

    .line 4
    invoke-direct {p0, p1, p2, p3, p4}, LBg/f;-><init>(Leg/p;LQf/j;ILyg/i;)V

    .line 5
    iput-object p1, p0, LBg/b;->f:Leg/p;

    return-void
.end method

.method public synthetic constructor <init>(Leg/p;LQf/j;ILyg/i;ILkotlin/jvm/internal/x;)V
    .locals 0

    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_0

    .line 1
    sget-object p2, LQf/l;->b:LQf/l;

    :cond_0
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_1

    const/4 p3, -0x2

    :cond_1
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_2

    .line 2
    sget-object p4, Lyg/i;->SUSPEND:Lyg/i;

    .line 3
    :cond_2
    invoke-direct {p0, p1, p2, p3, p4}, LBg/b;-><init>(Leg/p;LQf/j;ILyg/i;)V

    return-void
.end method


# virtual methods
.method public f(Lyg/B;LQf/f;)Ljava/lang/Object;
    .locals 4
    .param p1    # Lyg/B;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # LQf/f;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lyg/B<",
            "-TT;>;",
            "LQf/f<",
            "-",
            "LFf/P0;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    instance-of v0, p2, LBg/b$a;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, LBg/b$a;

    iget v1, v0, LBg/b$a;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, LBg/b$a;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, LBg/b$a;

    invoke-direct {v0, p0, p2}, LBg/b$a;-><init>(LBg/b;LQf/f;)V

    :goto_0
    iget-object p2, v0, LBg/b$a;->c:Ljava/lang/Object;

    invoke-static {}, LSf/d;->l()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, LBg/b$a;->e:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p1, v0, LBg/b$a;->b:Ljava/lang/Object;

    check-cast p1, Lyg/B;

    invoke-static {p2}, LFf/j0;->n(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p2}, LFf/j0;->n(Ljava/lang/Object;)V

    iput-object p1, v0, LBg/b$a;->b:Ljava/lang/Object;

    iput v3, v0, LBg/b$a;->e:I

    invoke-super {p0, p1, v0}, LBg/f;->f(Lyg/B;LQf/f;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    invoke-interface {p1}, Lyg/E;->M()Z

    move-result p1

    if-eqz p1, :cond_4

    sget-object p1, LFf/P0;->a:LFf/P0;

    return-object p1

    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "\'awaitClose { yourCallbackOrListener.cancel() }\' should be used in the end of callbackFlow block.\nOtherwise, a callback/listener may leak in case of external cancellation.\nSee callbackFlow API documentation for the details."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public g(LQf/j;ILyg/i;)LCg/d;
    .locals 2
    .param p1    # LQf/j;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lyg/i;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LQf/j;",
            "I",
            "Lyg/i;",
            ")",
            "LCg/d<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, LBg/b;

    iget-object v1, p0, LBg/b;->f:Leg/p;

    invoke-direct {v0, v1, p1, p2, p3}, LBg/b;-><init>(Leg/p;LQf/j;ILyg/i;)V

    return-object v0
.end method
