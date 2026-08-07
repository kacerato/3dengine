.class public LBg/f;
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
.field public final e:Leg/p;
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
    invoke-direct {p0, p2, p3, p4}, LCg/d;-><init>(LQf/j;ILyg/i;)V

    .line 5
    iput-object p1, p0, LBg/f;->e:Leg/p;

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
    invoke-direct {p0, p1, p2, p3, p4}, LBg/f;-><init>(Leg/p;LQf/j;ILyg/i;)V

    return-void
.end method

.method public static synthetic n(LBg/f;Lyg/B;LQf/f;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "LBg/f<",
            "TT;>;",
            "Lyg/B<",
            "-TT;>;",
            "LQf/f<",
            "-",
            "LFf/P0;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    iget-object p0, p0, LBg/f;->e:Leg/p;

    invoke-interface {p0, p1, p2}, Leg/p;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

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

    invoke-static {p0, p1, p2}, LBg/f;->n(LBg/f;Lyg/B;LQf/f;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
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

    new-instance v0, LBg/f;

    iget-object v1, p0, LBg/f;->e:Leg/p;

    invoke-direct {v0, v1, p1, p2, p3}, LBg/f;-><init>(Leg/p;LQf/j;ILyg/i;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "block["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, LBg/f;->e:Leg/p;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "] -> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-super {p0}, LCg/d;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
