.class public final LCg/i$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LBg/j;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LCg/i$a;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "LBg/j;"
    }
.end annotation


# instance fields
.field public final synthetic b:Lkotlin/jvm/internal/m0$h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/internal/m0$h<",
            "Lwg/K0;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic c:Lwg/S;

.field public final synthetic d:LCg/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LCg/i<",
            "TT;TR;>;"
        }
    .end annotation
.end field

.field public final synthetic e:LBg/j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LBg/j<",
            "TR;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lkotlin/jvm/internal/m0$h;Lwg/S;LCg/i;LBg/j;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/internal/m0$h<",
            "Lwg/K0;",
            ">;",
            "Lwg/S;",
            "LCg/i<",
            "TT;TR;>;",
            "LBg/j<",
            "-TR;>;)V"
        }
    .end annotation

    iput-object p1, p0, LCg/i$a$a;->b:Lkotlin/jvm/internal/m0$h;

    iput-object p2, p0, LCg/i$a$a;->c:Lwg/S;

    iput-object p3, p0, LCg/i$a$a;->d:LCg/i;

    iput-object p4, p0, LCg/i$a$a;->e:LBg/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final emit(Ljava/lang/Object;LQf/f;)Ljava/lang/Object;
    .locals 7
    .param p2    # LQf/f;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "LQf/f<",
            "-",
            "LFf/P0;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    instance-of v0, p2, LCg/i$a$a$b;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, LCg/i$a$a$b;

    iget v1, v0, LCg/i$a$a$b;->g:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, LCg/i$a$a$b;->g:I

    goto :goto_0

    :cond_0
    new-instance v0, LCg/i$a$a$b;

    invoke-direct {v0, p0, p2}, LCg/i$a$a$b;-><init>(LCg/i$a$a;LQf/f;)V

    :goto_0
    iget-object p2, v0, LCg/i$a$a$b;->e:Ljava/lang/Object;

    invoke-static {}, LSf/d;->l()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, LCg/i$a$a$b;->g:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p1, v0, LCg/i$a$a$b;->d:Ljava/lang/Object;

    check-cast p1, Lwg/K0;

    iget-object p1, v0, LCg/i$a$a$b;->c:Ljava/lang/Object;

    iget-object v0, v0, LCg/i$a$a$b;->b:Ljava/lang/Object;

    check-cast v0, LCg/i$a$a;

    invoke-static {p2}, LFf/j0;->n(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p2}, LFf/j0;->n(Ljava/lang/Object;)V

    iget-object p2, p0, LCg/i$a$a;->b:Lkotlin/jvm/internal/m0$h;

    iget-object p2, p2, Lkotlin/jvm/internal/m0$h;->b:Ljava/lang/Object;

    check-cast p2, Lwg/K0;

    if-eqz p2, :cond_3

    new-instance v2, Lkotlinx/coroutines/flow/internal/ChildCancelledException;

    invoke-direct {v2}, Lkotlinx/coroutines/flow/internal/ChildCancelledException;-><init>()V

    invoke-interface {p2, v2}, Lwg/K0;->a(Ljava/util/concurrent/CancellationException;)V

    iput-object p0, v0, LCg/i$a$a$b;->b:Ljava/lang/Object;

    iput-object p1, v0, LCg/i$a$a$b;->c:Ljava/lang/Object;

    iput-object p2, v0, LCg/i$a$a$b;->d:Ljava/lang/Object;

    iput v3, v0, LCg/i$a$a$b;->g:I

    invoke-interface {p2, v0}, Lwg/K0;->b0(LQf/f;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_3

    return-object v1

    :cond_3
    move-object v0, p0

    :goto_1
    iget-object p2, v0, LCg/i$a$a;->b:Lkotlin/jvm/internal/m0$h;

    iget-object v1, v0, LCg/i$a$a;->c:Lwg/S;

    sget-object v3, Lwg/U;->UNDISPATCHED:Lwg/U;

    new-instance v4, LCg/i$a$a$a;

    iget-object v2, v0, LCg/i$a$a;->d:LCg/i;

    iget-object v0, v0, LCg/i$a$a;->e:LBg/j;

    const/4 v5, 0x0

    invoke-direct {v4, v2, v0, p1, v5}, LCg/i$a$a$a;-><init>(LCg/i;LBg/j;Ljava/lang/Object;LQf/f;)V

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v2, 0x0

    invoke-static/range {v1 .. v6}, Lwg/i;->e(Lwg/S;LQf/j;Lwg/U;Leg/p;ILjava/lang/Object;)Lwg/K0;

    move-result-object p1

    iput-object p1, p2, Lkotlin/jvm/internal/m0$h;->b:Ljava/lang/Object;

    sget-object p1, LFf/P0;->a:LFf/P0;

    return-object p1
.end method
