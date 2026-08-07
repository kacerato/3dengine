.class public final LCg/k$c$a;
.super Lkotlin/jvm/internal/O;
.source "SourceFile"

# interfaces
.implements Leg/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LCg/k$c;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/O;",
        "Leg/l<",
        "Ljava/lang/Throwable;",
        "LFf/P0;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Lwg/B;

.field public final synthetic c:LBg/j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LBg/j<",
            "TR;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lwg/B;LBg/j;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lwg/B;",
            "LBg/j<",
            "-TR;>;)V"
        }
    .end annotation

    iput-object p1, p0, LCg/k$c$a;->b:Lwg/B;

    iput-object p2, p0, LCg/k$c$a;->c:LBg/j;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/O;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, LCg/k$c$a;->invoke(Ljava/lang/Throwable;)V

    sget-object p1, LFf/P0;->a:LFf/P0;

    return-object p1
.end method

.method public final invoke(Ljava/lang/Throwable;)V
    .locals 2
    .param p1    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 2
    iget-object p1, p0, LCg/k$c$a;->b:Lwg/B;

    invoke-interface {p1}, Lwg/K0;->isActive()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, LCg/k$c$a;->b:Lwg/B;

    new-instance v0, Lkotlinx/coroutines/flow/internal/AbortFlowException;

    iget-object v1, p0, LCg/k$c$a;->c:LBg/j;

    invoke-direct {v0, v1}, Lkotlinx/coroutines/flow/internal/AbortFlowException;-><init>(LBg/j;)V

    invoke-interface {p1, v0}, Lwg/K0;->a(Ljava/util/concurrent/CancellationException;)V

    :cond_0
    return-void
.end method
