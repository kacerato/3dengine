.class public Lyg/a;
.super Lyg/m;
.source "SourceFile"

# interfaces
.implements Lyg/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lyg/m<",
        "TE;>;",
        "Lyg/c<",
        "TE;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(LQf/j;Lyg/l;Z)V
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
            "TE;>;Z)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, p3}, Lyg/m;-><init>(LQf/j;Lyg/l;ZZ)V

    sget-object p2, Lwg/K0;->O0:Lwg/K0$b;

    invoke-interface {p1, p2}, LQf/j;->get(LQf/j$c;)LQf/j$b;

    move-result-object p1

    check-cast p1, Lwg/K0;

    invoke-virtual {p0, p1}, Lwg/R0;->M0(Lwg/K0;)V

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

.method public f1(Ljava/lang/Throwable;)V
    .locals 3
    .param p1    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    invoke-virtual {p0}, Lyg/m;->C1()Lyg/l;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    instance-of v2, p1, Ljava/util/concurrent/CancellationException;

    if-eqz v2, :cond_0

    move-object v1, p1

    check-cast v1, Ljava/util/concurrent/CancellationException;

    :cond_0
    if-nez v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lwg/W;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " was cancelled"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p1}, Lwg/v0;->a(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/util/concurrent/CancellationException;

    move-result-object p1

    move-object v1, p1

    :cond_1
    invoke-interface {v0, v1}, Lyg/D;->a(Ljava/util/concurrent/CancellationException;)V

    return-void
.end method
