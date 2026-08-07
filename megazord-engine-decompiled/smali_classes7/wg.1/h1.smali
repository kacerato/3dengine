.class public Lwg/h1;
.super Lwg/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lwg/a<",
        "LFf/P0;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(LQf/j;Z)V
    .locals 1
    .param p1    # LQf/j;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, p2}, Lwg/a;-><init>(LQf/j;ZZ)V

    return-void
.end method


# virtual methods
.method public K0(Ljava/lang/Throwable;)Z
    .locals 1
    .param p1    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    invoke-virtual {p0}, Lwg/a;->getContext()LQf/j;

    move-result-object v0

    invoke-static {v0, p1}, Lwg/O;->b(LQf/j;Ljava/lang/Throwable;)V

    const/4 p1, 0x1

    return p1
.end method
