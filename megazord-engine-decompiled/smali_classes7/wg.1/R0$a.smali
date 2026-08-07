.class public final Lwg/R0$a;
.super Lwg/q;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwg/R0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lwg/q<",
        "TT;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nJobSupport.kt\nKotlin\n*S Kotlin\n*F\n+ 1 JobSupport.kt\nkotlinx/coroutines/JobSupport$AwaitContinuation\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,1454:1\n1#2:1455\n*E\n"
.end annotation

.annotation build Lkotlin/jvm/internal/t0;
    value = {
        "SMAP\nJobSupport.kt\nKotlin\n*S Kotlin\n*F\n+ 1 JobSupport.kt\nkotlinx/coroutines/JobSupport$AwaitContinuation\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,1454:1\n1#2:1455\n*E\n"
    }
.end annotation


# instance fields
.field public final j:Lwg/R0;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(LQf/f;Lwg/R0;)V
    .locals 1
    .param p1    # LQf/f;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lwg/R0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LQf/f<",
            "-TT;>;",
            "Lwg/R0;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lwg/q;-><init>(LQf/f;I)V

    iput-object p2, p0, Lwg/R0$a;->j:Lwg/R0;

    return-void
.end method


# virtual methods
.method public B(Lwg/K0;)Ljava/lang/Throwable;
    .locals 2
    .param p1    # Lwg/K0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lwg/R0$a;->j:Lwg/R0;

    invoke-virtual {v0}, Lwg/R0;->J0()Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Lwg/R0$c;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lwg/R0$c;

    invoke-virtual {v1}, Lwg/R0$c;->e()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_0

    return-object v1

    :cond_0
    instance-of v1, v0, Lwg/D;

    if-eqz v1, :cond_1

    check-cast v0, Lwg/D;

    iget-object p1, v0, Lwg/D;->a:Ljava/lang/Throwable;

    return-object p1

    :cond_1
    invoke-interface {p1}, Lwg/K0;->l()Ljava/util/concurrent/CancellationException;

    move-result-object p1

    return-object p1
.end method

.method public Q()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "AwaitContinuation"

    return-object v0
.end method
