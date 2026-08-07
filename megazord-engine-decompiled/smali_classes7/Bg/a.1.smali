.class public abstract LBg/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LBg/i;
.implements LBg/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "LBg/i<",
        "TT;>;",
        "LBg/c<",
        "TT;>;"
    }
.end annotation

.annotation build Lwg/z0;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(LBg/j;LQf/f;)Ljava/lang/Object;
    .locals 5
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

    instance-of v0, p2, LBg/a$a;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, LBg/a$a;

    iget v1, v0, LBg/a$a;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, LBg/a$a;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, LBg/a$a;

    invoke-direct {v0, p0, p2}, LBg/a$a;-><init>(LBg/a;LQf/f;)V

    :goto_0
    iget-object p2, v0, LBg/a$a;->c:Ljava/lang/Object;

    invoke-static {}, LSf/d;->l()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, LBg/a$a;->e:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p1, v0, LBg/a$a;->b:Ljava/lang/Object;

    check-cast p1, LCg/t;

    :try_start_0
    invoke-static {p2}, LFf/j0;->n(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p2

    goto :goto_2

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p2}, LFf/j0;->n(Ljava/lang/Object;)V

    new-instance p2, LCg/t;

    invoke-interface {v0}, LQf/f;->getContext()LQf/j;

    move-result-object v2

    invoke-direct {p2, p1, v2}, LCg/t;-><init>(LBg/j;LQf/j;)V

    :try_start_1
    iput-object p2, v0, LBg/a$a;->b:Ljava/lang/Object;

    iput v3, v0, LBg/a$a;->e:I

    invoke-virtual {p0, p2, v0}, LBg/a;->d(LBg/j;LQf/f;)Ljava/lang/Object;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-ne p1, v1, :cond_3

    return-object v1

    :cond_3
    move-object p1, p2

    :goto_1
    invoke-virtual {p1}, LCg/t;->releaseIntercepted()V

    sget-object p1, LFf/P0;->a:LFf/P0;

    return-object p1

    :catchall_1
    move-exception p1

    move-object v4, p2

    move-object p2, p1

    move-object p1, v4

    :goto_2
    invoke-virtual {p1}, LCg/t;->releaseIntercepted()V

    throw p2
.end method

.method public abstract d(LBg/j;LQf/f;)Ljava/lang/Object;
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
