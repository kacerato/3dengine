.class final Landroidx/lifecycle/RepeatOnLifecycleKt$repeatOnLifecycle$3$1$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/LifecycleEventObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/lifecycle/RepeatOnLifecycleKt$repeatOnLifecycle$3$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic $$this$coroutineScope:Lwg/S;

.field final synthetic $block:Leg/p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
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
.end field

.field final synthetic $cancelWorkEvent:Landroidx/lifecycle/Lifecycle$Event;

.field final synthetic $cont:Lwg/p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lwg/p<",
            "LFf/P0;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $launchedJob:Lkotlin/jvm/internal/m0$h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/internal/m0$h<",
            "Lwg/K0;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $mutex:LJg/a;

.field final synthetic $startWorkEvent:Landroidx/lifecycle/Lifecycle$Event;


# direct methods
.method public constructor <init>(Landroidx/lifecycle/Lifecycle$Event;Lkotlin/jvm/internal/m0$h;Lwg/S;Landroidx/lifecycle/Lifecycle$Event;Lwg/p;LJg/a;Leg/p;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/Lifecycle$Event;",
            "Lkotlin/jvm/internal/m0$h<",
            "Lwg/K0;",
            ">;",
            "Lwg/S;",
            "Landroidx/lifecycle/Lifecycle$Event;",
            "Lwg/p<",
            "-",
            "LFf/P0;",
            ">;",
            "LJg/a;",
            "Leg/p<",
            "-",
            "Lwg/S;",
            "-",
            "LQf/f<",
            "-",
            "LFf/P0;",
            ">;+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/lifecycle/RepeatOnLifecycleKt$repeatOnLifecycle$3$1$1$1;->$startWorkEvent:Landroidx/lifecycle/Lifecycle$Event;

    iput-object p2, p0, Landroidx/lifecycle/RepeatOnLifecycleKt$repeatOnLifecycle$3$1$1$1;->$launchedJob:Lkotlin/jvm/internal/m0$h;

    iput-object p3, p0, Landroidx/lifecycle/RepeatOnLifecycleKt$repeatOnLifecycle$3$1$1$1;->$$this$coroutineScope:Lwg/S;

    iput-object p4, p0, Landroidx/lifecycle/RepeatOnLifecycleKt$repeatOnLifecycle$3$1$1$1;->$cancelWorkEvent:Landroidx/lifecycle/Lifecycle$Event;

    iput-object p5, p0, Landroidx/lifecycle/RepeatOnLifecycleKt$repeatOnLifecycle$3$1$1$1;->$cont:Lwg/p;

    iput-object p6, p0, Landroidx/lifecycle/RepeatOnLifecycleKt$repeatOnLifecycle$3$1$1$1;->$mutex:LJg/a;

    iput-object p7, p0, Landroidx/lifecycle/RepeatOnLifecycleKt$repeatOnLifecycle$3$1$1$1;->$block:Leg/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onStateChanged(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Lifecycle$Event;)V
    .locals 7
    .param p1    # Landroidx/lifecycle/LifecycleOwner;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroidx/lifecycle/Lifecycle$Event;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<anonymous parameter 0>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "event"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Landroidx/lifecycle/RepeatOnLifecycleKt$repeatOnLifecycle$3$1$1$1;->$startWorkEvent:Landroidx/lifecycle/Lifecycle$Event;

    const/4 v0, 0x0

    if-ne p2, p1, :cond_0

    iget-object p1, p0, Landroidx/lifecycle/RepeatOnLifecycleKt$repeatOnLifecycle$3$1$1$1;->$launchedJob:Lkotlin/jvm/internal/m0$h;

    iget-object v1, p0, Landroidx/lifecycle/RepeatOnLifecycleKt$repeatOnLifecycle$3$1$1$1;->$$this$coroutineScope:Lwg/S;

    new-instance v4, Landroidx/lifecycle/RepeatOnLifecycleKt$repeatOnLifecycle$3$1$1$1$1;

    iget-object p2, p0, Landroidx/lifecycle/RepeatOnLifecycleKt$repeatOnLifecycle$3$1$1$1;->$mutex:LJg/a;

    iget-object v2, p0, Landroidx/lifecycle/RepeatOnLifecycleKt$repeatOnLifecycle$3$1$1$1;->$block:Leg/p;

    invoke-direct {v4, p2, v2, v0}, Landroidx/lifecycle/RepeatOnLifecycleKt$repeatOnLifecycle$3$1$1$1$1;-><init>(LJg/a;Leg/p;LQf/f;)V

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lwg/i;->e(Lwg/S;LQf/j;Lwg/U;Leg/p;ILjava/lang/Object;)Lwg/K0;

    move-result-object p2

    iput-object p2, p1, Lkotlin/jvm/internal/m0$h;->b:Ljava/lang/Object;

    return-void

    :cond_0
    iget-object p1, p0, Landroidx/lifecycle/RepeatOnLifecycleKt$repeatOnLifecycle$3$1$1$1;->$cancelWorkEvent:Landroidx/lifecycle/Lifecycle$Event;

    if-ne p2, p1, :cond_2

    iget-object p1, p0, Landroidx/lifecycle/RepeatOnLifecycleKt$repeatOnLifecycle$3$1$1$1;->$launchedJob:Lkotlin/jvm/internal/m0$h;

    iget-object p1, p1, Lkotlin/jvm/internal/m0$h;->b:Ljava/lang/Object;

    check-cast p1, Lwg/K0;

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    invoke-static {p1, v0, v1, v0}, Lwg/K0$a;->b(Lwg/K0;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    :cond_1
    iget-object p1, p0, Landroidx/lifecycle/RepeatOnLifecycleKt$repeatOnLifecycle$3$1$1$1;->$launchedJob:Lkotlin/jvm/internal/m0$h;

    iput-object v0, p1, Lkotlin/jvm/internal/m0$h;->b:Ljava/lang/Object;

    :cond_2
    sget-object p1, Landroidx/lifecycle/Lifecycle$Event;->ON_DESTROY:Landroidx/lifecycle/Lifecycle$Event;

    if-ne p2, p1, :cond_3

    iget-object p1, p0, Landroidx/lifecycle/RepeatOnLifecycleKt$repeatOnLifecycle$3$1$1$1;->$cont:Lwg/p;

    sget-object p2, LFf/i0;->c:LFf/i0$a;

    sget-object p2, LFf/P0;->a:LFf/P0;

    invoke-static {p2}, LFf/i0;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-interface {p1, p2}, LQf/f;->resumeWith(Ljava/lang/Object;)V

    :cond_3
    return-void
.end method
