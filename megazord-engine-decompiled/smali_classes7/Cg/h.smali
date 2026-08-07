.class public final LCg/h;
.super LCg/g;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "LCg/g<",
        "TT;TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(LBg/i;LQf/j;ILyg/i;)V
    .locals 0
    .param p1    # LBg/i;
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
            "LBg/i<",
            "+TT;>;",
            "LQf/j;",
            "I",
            "Lyg/i;",
            ")V"
        }
    .end annotation

    .line 4
    invoke-direct {p0, p1, p2, p3, p4}, LCg/g;-><init>(LBg/i;LQf/j;ILyg/i;)V

    return-void
.end method

.method public synthetic constructor <init>(LBg/i;LQf/j;ILyg/i;ILkotlin/jvm/internal/x;)V
    .locals 0

    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_0

    .line 1
    sget-object p2, LQf/l;->b:LQf/l;

    :cond_0
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_1

    const/4 p3, -0x3

    :cond_1
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_2

    .line 2
    sget-object p4, Lyg/i;->SUSPEND:Lyg/i;

    .line 3
    :cond_2
    invoke-direct {p0, p1, p2, p3, p4}, LCg/h;-><init>(LBg/i;LQf/j;ILyg/i;)V

    return-void
.end method


# virtual methods
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

    new-instance v0, LCg/h;

    iget-object v1, p0, LCg/g;->e:LBg/i;

    invoke-direct {v0, v1, p1, p2, p3}, LCg/h;-><init>(LBg/i;LQf/j;ILyg/i;)V

    return-object v0
.end method

.method public h()LBg/i;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LBg/i<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, LCg/g;->e:LBg/i;

    return-object v0
.end method

.method public s(LBg/j;LQf/f;)Ljava/lang/Object;
    .locals 1
    .param p1    # LBg/j;
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
            "LBg/j<",
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

    iget-object v0, p0, LCg/g;->e:LBg/i;

    invoke-interface {v0, p1, p2}, LBg/i;->a(LBg/j;LQf/f;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, LSf/d;->l()Ljava/lang/Object;

    move-result-object p2

    if-ne p1, p2, :cond_0

    return-object p1

    :cond_0
    sget-object p1, LFf/P0;->a:LFf/P0;

    return-object p1
.end method
