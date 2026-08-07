.class public final LCg/f;
.super LCg/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
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
            "LBg/i<",
            "TT;>;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final f:I


# direct methods
.method public constructor <init>(LBg/i;ILQf/j;ILyg/i;)V
    .locals 0
    .param p1    # LBg/i;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # LQf/j;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Lyg/i;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LBg/i<",
            "+",
            "LBg/i<",
            "+TT;>;>;I",
            "LQf/j;",
            "I",
            "Lyg/i;",
            ")V"
        }
    .end annotation

    .line 4
    invoke-direct {p0, p3, p4, p5}, LCg/d;-><init>(LQf/j;ILyg/i;)V

    .line 5
    iput-object p1, p0, LCg/f;->e:LBg/i;

    .line 6
    iput p2, p0, LCg/f;->f:I

    return-void
.end method

.method public synthetic constructor <init>(LBg/i;ILQf/j;ILyg/i;ILkotlin/jvm/internal/x;)V
    .locals 6

    and-int/lit8 p7, p6, 0x4

    if-eqz p7, :cond_0

    .line 1
    sget-object p3, LQf/l;->b:LQf/l;

    :cond_0
    move-object v3, p3

    and-int/lit8 p3, p6, 0x8

    if-eqz p3, :cond_1

    const/4 p4, -0x2

    :cond_1
    move v4, p4

    and-int/lit8 p3, p6, 0x10

    if-eqz p3, :cond_2

    .line 2
    sget-object p5, Lyg/i;->SUSPEND:Lyg/i;

    :cond_2
    move-object v5, p5

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    .line 3
    invoke-direct/range {v0 .. v5}, LCg/f;-><init>(LBg/i;ILQf/j;ILyg/i;)V

    return-void
.end method


# virtual methods
.method public d()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "concurrency="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, LCg/f;->f:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public f(Lyg/B;LQf/f;)Ljava/lang/Object;
    .locals 5
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

    iget v0, p0, LCg/f;->f:I

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v2}, LJg/f;->b(IIILjava/lang/Object;)LJg/d;

    move-result-object v0

    new-instance v1, LCg/w;

    invoke-direct {v1, p1}, LCg/w;-><init>(Lyg/E;)V

    invoke-interface {p2}, LQf/f;->getContext()LQf/j;

    move-result-object v2

    sget-object v3, Lwg/K0;->O0:Lwg/K0$b;

    invoke-interface {v2, v3}, LQf/j;->get(LQf/j$c;)LQf/j$b;

    move-result-object v2

    check-cast v2, Lwg/K0;

    iget-object v3, p0, LCg/f;->e:LBg/i;

    new-instance v4, LCg/f$a;

    invoke-direct {v4, v2, v0, p1, v1}, LCg/f$a;-><init>(Lwg/K0;LJg/d;Lyg/B;LCg/w;)V

    invoke-interface {v3, v4, p2}, LBg/i;->a(LBg/j;LQf/f;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, LSf/d;->l()Ljava/lang/Object;

    move-result-object p2

    if-ne p1, p2, :cond_0

    return-object p1

    :cond_0
    sget-object p1, LFf/P0;->a:LFf/P0;

    return-object p1
.end method

.method public g(LQf/j;ILyg/i;)LCg/d;
    .locals 7
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

    new-instance v6, LCg/f;

    iget-object v1, p0, LCg/f;->e:LBg/i;

    iget v2, p0, LCg/f;->f:I

    move-object v0, v6

    move-object v3, p1

    move v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, LCg/f;-><init>(LBg/i;ILQf/j;ILyg/i;)V

    return-object v6
.end method

.method public m(Lwg/S;)Lyg/D;
    .locals 3
    .param p1    # Lwg/S;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lwg/S;",
            ")",
            "Lyg/D<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, LCg/d;->b:LQf/j;

    iget v1, p0, LCg/d;->c:I

    invoke-virtual {p0}, LCg/d;->i()Leg/p;

    move-result-object v2

    invoke-static {p1, v0, v1, v2}, Lyg/z;->c(Lwg/S;LQf/j;ILeg/p;)Lyg/D;

    move-result-object p1

    return-object p1
.end method
