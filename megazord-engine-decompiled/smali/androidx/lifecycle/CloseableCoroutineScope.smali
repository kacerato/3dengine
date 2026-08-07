.class public final Landroidx/lifecycle/CloseableCoroutineScope;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;
.implements Lwg/S;


# instance fields
.field private final coroutineContext:LQf/j;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(LQf/j;)V
    .locals 1
    .param p1    # LQf/j;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/lifecycle/CloseableCoroutineScope;->coroutineContext:LQf/j;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 3

    invoke-virtual {p0}, Landroidx/lifecycle/CloseableCoroutineScope;->getCoroutineContext()LQf/j;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2, v1}, Lwg/N0;->i(LQf/j;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    return-void
.end method

.method public getCoroutineContext()LQf/j;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Landroidx/lifecycle/CloseableCoroutineScope;->coroutineContext:LQf/j;

    return-object v0
.end method
