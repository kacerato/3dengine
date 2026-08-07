.class public final LDg/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/BiFunction;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/function/BiFunction<",
        "TT;",
        "Ljava/lang/Throwable;",
        "LFf/P0;",
        ">;"
    }
.end annotation


# instance fields
.field public volatile cont:LQf/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LQf/f<",
            "-TT;>;"
        }
    .end annotation

    .annotation build Ldg/g;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(LQf/f;)V
    .locals 0
    .param p1    # LQf/f;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LQf/f<",
            "-TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LDg/b;->cont:LQf/f;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, LDg/b;->cont:LQf/f;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-nez p2, :cond_1

    sget-object p2, LFf/i0;->c:LFf/i0$a;

    invoke-static {p1}, LFf/i0;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1}, LQf/f;->resumeWith(Ljava/lang/Object;)V

    goto :goto_2

    :cond_1
    instance-of p1, p2, Ljava/util/concurrent/CompletionException;

    if-eqz p1, :cond_2

    move-object p1, p2

    check-cast p1, Ljava/util/concurrent/CompletionException;

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_4

    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    if-nez p1, :cond_3

    goto :goto_1

    :cond_3
    move-object p2, p1

    :cond_4
    :goto_1
    sget-object p1, LFf/i0;->c:LFf/i0$a;

    invoke-static {p2}, LFf/j0;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, LFf/i0;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1}, LQf/f;->resumeWith(Ljava/lang/Object;)V

    :goto_2
    return-void
.end method

.method public bridge synthetic apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Ljava/lang/Throwable;

    invoke-virtual {p0, p1, p2}, LDg/b;->a(Ljava/lang/Object;Ljava/lang/Throwable;)V

    sget-object p1, LFf/P0;->a:LFf/P0;

    return-object p1
.end method
