.class public abstract Lxg/e;
.super Lwg/V0;
.source "SourceFile"

# interfaces
.implements Lwg/b0;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Lwg/V0;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/x;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lxg/e;-><init>()V

    return-void
.end method


# virtual methods
.method public q(JLjava/lang/Runnable;LQf/j;)Lwg/m0;
    .locals 0
    .param p3    # Ljava/lang/Runnable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # LQf/j;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-static {p0, p1, p2, p3, p4}, Lwg/b0$a;->b(Lwg/b0;JLjava/lang/Runnable;LQf/j;)Lwg/m0;

    move-result-object p1

    return-object p1
.end method

.method public r(JLQf/f;)Ljava/lang/Object;
    .locals 0
    .param p3    # LQf/f;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime LFf/o;
        level = .enum LFf/q;->ERROR:LFf/q;
        message = "Deprecated without replacement as an internal method never intended for public use"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "LQf/f<",
            "-",
            "LFf/P0;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    invoke-static {p0, p1, p2, p3}, Lwg/b0$a;->a(Lwg/b0;JLQf/f;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public abstract z()Lxg/e;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method
