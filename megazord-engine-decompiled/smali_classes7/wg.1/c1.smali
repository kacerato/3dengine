.class public final Lwg/c1;
.super Lwg/Q0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lwg/Q0;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nJobSupport.kt\nKotlin\n*S Kotlin\n*F\n+ 1 JobSupport.kt\nkotlinx/coroutines/ResumeAwaitOnCompletion\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,1454:1\n1#2:1455\n*E\n"
.end annotation

.annotation build Lkotlin/jvm/internal/t0;
    value = {
        "SMAP\nJobSupport.kt\nKotlin\n*S Kotlin\n*F\n+ 1 JobSupport.kt\nkotlinx/coroutines/ResumeAwaitOnCompletion\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,1454:1\n1#2:1455\n*E\n"
    }
.end annotation


# instance fields
.field public final f:Lwg/q;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lwg/q<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lwg/q;)V
    .locals 0
    .param p1    # Lwg/q;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lwg/q<",
            "-TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Lwg/Q0;-><init>()V

    iput-object p1, p0, Lwg/c1;->f:Lwg/q;

    return-void
.end method


# virtual methods
.method public Y(Ljava/lang/Throwable;)V
    .locals 2
    .param p1    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    invoke-virtual {p0}, Lwg/Q0;->Z()Lwg/R0;

    move-result-object p1

    invoke-virtual {p1}, Lwg/R0;->J0()Ljava/lang/Object;

    move-result-object p1

    instance-of v0, p1, Lwg/D;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lwg/c1;->f:Lwg/q;

    sget-object v1, LFf/i0;->c:LFf/i0$a;

    check-cast p1, Lwg/D;

    iget-object p1, p1, Lwg/D;->a:Ljava/lang/Throwable;

    invoke-static {p1}, LFf/j0;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, LFf/i0;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1}, LQf/f;->resumeWith(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lwg/c1;->f:Lwg/q;

    sget-object v1, LFf/i0;->c:LFf/i0$a;

    invoke-static {p1}, Lwg/S0;->h(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, LFf/i0;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1}, LQf/f;->resumeWith(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lwg/c1;->Y(Ljava/lang/Throwable;)V

    sget-object p1, LFf/P0;->a:LFf/P0;

    return-object p1
.end method
