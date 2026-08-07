.class public abstract LTf/k;
.super LTf/a;
.source "SourceFile"


# annotations
.annotation build LFf/l0;
    version = "1.3"
.end annotation


# direct methods
.method public constructor <init>(LQf/f;)V
    .locals 1
    .param p1    # LQf/f;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LQf/f<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, LTf/a;-><init>(LQf/f;)V

    if-eqz p1, :cond_1

    invoke-interface {p1}, LQf/f;->getContext()LQf/j;

    move-result-object p1

    sget-object v0, LQf/l;->b:LQf/l;

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Coroutines with restricted suspension must have EmptyCoroutineContext"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public getContext()LQf/j;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, LQf/l;->b:LQf/l;

    return-object v0
.end method
