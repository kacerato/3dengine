.class public final Lyg/A;
.super Lyg/m;
.source "SourceFile"

# interfaces
.implements Lyg/B;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lyg/m<",
        "TE;>;",
        "Lyg/B<",
        "TE;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(LQf/j;Lyg/l;)V
    .locals 1
    .param p1    # LQf/j;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lyg/l;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LQf/j;",
            "Lyg/l<",
            "TE;>;)V"
        }
    .end annotation

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0, v0}, Lyg/m;-><init>(LQf/j;Lyg/l;ZZ)V

    return-void
.end method


# virtual methods
.method public bridge synthetic A1(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, LFf/P0;

    invoke-virtual {p0, p1}, Lyg/A;->D1(LFf/P0;)V

    return-void
.end method

.method public D1(LFf/P0;)V
    .locals 2
    .param p1    # LFf/P0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    invoke-virtual {p0}, Lyg/m;->C1()Lyg/l;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p1, v0, v1, v0}, Lyg/E$a;->a(Lyg/E;Ljava/lang/Throwable;ILjava/lang/Object;)Z

    return-void
.end method

.method public bridge synthetic getChannel()Lyg/E;
    .locals 1

    invoke-virtual {p0}, Lyg/m;->getChannel()Lyg/l;

    move-result-object v0

    return-object v0
.end method

.method public isActive()Z
    .locals 1

    invoke-super {p0}, Lwg/a;->isActive()Z

    move-result v0

    return v0
.end method

.method public z1(Ljava/lang/Throwable;Z)V
    .locals 1
    .param p1    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    invoke-virtual {p0}, Lyg/m;->C1()Lyg/l;

    move-result-object v0

    invoke-interface {v0, p1}, Lyg/E;->L(Ljava/lang/Throwable;)Z

    move-result v0

    if-nez v0, :cond_0

    if-nez p2, :cond_0

    invoke-virtual {p0}, Lwg/a;->getContext()LQf/j;

    move-result-object p2

    invoke-static {p2, p1}, Lwg/O;->b(LQf/j;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method
