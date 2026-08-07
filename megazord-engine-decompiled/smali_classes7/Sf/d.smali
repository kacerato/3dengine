.class public LSf/d;
.super LSf/c;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, LSf/c;-><init>()V

    return-void
.end method

.method public static l()Ljava/lang/Object;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, LSf/a;->COROUTINE_SUSPENDED:LSf/a;

    return-object v0
.end method

.method public static synthetic m()V
    .locals 0
    .annotation build LFf/l0;
        version = "1.3"
    .end annotation

    return-void
.end method

.method public static final n(Leg/l;LQf/f;)Ljava/lang/Object;
    .locals 0
    .annotation build LFf/l0;
        version = "1.3"
    .end annotation

    .annotation build LWf/f;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Leg/l<",
            "-",
            "LQf/f<",
            "-TT;>;+",
            "Ljava/lang/Object;",
            ">;",
            "LQf/f<",
            "-TT;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    new-instance p0, Lkotlin/NotImplementedError;

    const-string p1, "Implementation of suspendCoroutineUninterceptedOrReturn is intrinsic"

    invoke-direct {p0, p1}, Lkotlin/NotImplementedError;-><init>(Ljava/lang/String;)V

    throw p0
.end method
