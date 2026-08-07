.class public abstract LCg/g;
.super LCg/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S:",
        "Ljava/lang/Object;",
        "T:",
        "Ljava/lang/Object;",
        ">",
        "LCg/d<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final e:LBg/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LBg/i<",
            "TS;>;"
        }
    .end annotation

    .annotation build Ldg/g;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


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
            "+TS;>;",
            "LQf/j;",
            "I",
            "Lyg/i;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p2, p3, p4}, LCg/d;-><init>(LQf/j;ILyg/i;)V

    iput-object p1, p0, LCg/g;->e:LBg/i;

    return-void
.end method

.method public static final synthetic n(LCg/g;LBg/j;LQf/j;LQf/f;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, LCg/g;->r(LBg/j;LQf/j;LQf/f;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic p(LCg/g;LBg/j;LQf/f;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            "T:",
            "Ljava/lang/Object;",
            ">(",
            "LCg/g<",
            "TS;TT;>;",
            "LBg/j<",
            "-TT;>;",
            "LQf/f<",
            "-",
            "LFf/P0;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    iget v0, p0, LCg/d;->c:I

    const/4 v1, -0x3

    if-ne v0, v1, :cond_3

    invoke-interface {p2}, LQf/f;->getContext()LQf/j;

    move-result-object v0

    iget-object v1, p0, LCg/d;->b:LQf/j;

    invoke-static {v0, v1}, Lwg/L;->d(LQf/j;LQf/j;)LQf/j;

    move-result-object v1

    invoke-static {v1, v0}, Lkotlin/jvm/internal/M;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0, p1, p2}, LCg/g;->s(LBg/j;LQf/f;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {}, LSf/d;->l()Ljava/lang/Object;

    move-result-object p1

    if-ne p0, p1, :cond_0

    return-object p0

    :cond_0
    sget-object p0, LFf/P0;->a:LFf/P0;

    return-object p0

    :cond_1
    sget-object v2, LQf/g;->m0:LQf/g$b;

    invoke-interface {v1, v2}, LQf/j;->get(LQf/j$c;)LQf/j$b;

    move-result-object v3

    invoke-interface {v0, v2}, LQf/j;->get(LQf/j$c;)LQf/j$b;

    move-result-object v0

    invoke-static {v3, v0}, Lkotlin/jvm/internal/M;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0, p1, v1, p2}, LCg/g;->r(LBg/j;LQf/j;LQf/f;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {}, LSf/d;->l()Ljava/lang/Object;

    move-result-object p1

    if-ne p0, p1, :cond_2

    return-object p0

    :cond_2
    sget-object p0, LFf/P0;->a:LFf/P0;

    return-object p0

    :cond_3
    invoke-super {p0, p1, p2}, LCg/d;->a(LBg/j;LQf/f;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {}, LSf/d;->l()Ljava/lang/Object;

    move-result-object p1

    if-ne p0, p1, :cond_4

    return-object p0

    :cond_4
    sget-object p0, LFf/P0;->a:LFf/P0;

    return-object p0
.end method

.method public static synthetic q(LCg/g;Lyg/B;LQf/f;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            "T:",
            "Ljava/lang/Object;",
            ">(",
            "LCg/g<",
            "TS;TT;>;",
            "Lyg/B<",
            "-TT;>;",
            "LQf/f<",
            "-",
            "LFf/P0;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    new-instance v0, LCg/w;

    invoke-direct {v0, p1}, LCg/w;-><init>(Lyg/E;)V

    invoke-virtual {p0, v0, p2}, LCg/g;->s(LBg/j;LQf/f;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {}, LSf/d;->l()Ljava/lang/Object;

    move-result-object p1

    if-ne p0, p1, :cond_0

    return-object p0

    :cond_0
    sget-object p0, LFf/P0;->a:LFf/P0;

    return-object p0
.end method


# virtual methods
.method public a(LBg/j;LQf/f;)Ljava/lang/Object;
    .locals 0
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

    invoke-static {p0, p1, p2}, LCg/g;->p(LCg/g;LBg/j;LQf/f;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public f(Lyg/B;LQf/f;)Ljava/lang/Object;
    .locals 0
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

    invoke-static {p0, p1, p2}, LCg/g;->q(LCg/g;Lyg/B;LQf/f;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final r(LBg/j;LQf/j;LQf/f;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LBg/j<",
            "-TT;>;",
            "LQf/j;",
            "LQf/f<",
            "-",
            "LFf/P0;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-interface {p3}, LQf/f;->getContext()LQf/j;

    move-result-object v0

    invoke-static {p1, v0}, LCg/e;->a(LBg/j;LQf/j;)LBg/j;

    move-result-object v2

    new-instance v4, LCg/g$a;

    const/4 p1, 0x0

    invoke-direct {v4, p0, p1}, LCg/g$a;-><init>(LCg/g;LQf/f;)V

    const/4 v6, 0x4

    const/4 v7, 0x0

    const/4 v3, 0x0

    move-object v1, p2

    move-object v5, p3

    invoke-static/range {v1 .. v7}, LCg/e;->d(LQf/j;Ljava/lang/Object;Ljava/lang/Object;Leg/p;LQf/f;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, LSf/d;->l()Ljava/lang/Object;

    move-result-object p2

    if-ne p1, p2, :cond_0

    return-object p1

    :cond_0
    sget-object p1, LFf/P0;->a:LFf/P0;

    return-object p1
.end method

.method public abstract s(LBg/j;LQf/f;)Ljava/lang/Object;
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
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, LCg/g;->e:LBg/i;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " -> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-super {p0}, LCg/d;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
