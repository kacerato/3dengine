.class public final LHg/d;
.super LHg/l;
.source "SourceFile"


# annotations
.annotation build LFf/f0;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "LHg/l<",
        "TR;>;"
    }
.end annotation


# instance fields
.field public final h:Lwg/q;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lwg/q<",
            "TR;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(LQf/f;)V
    .locals 2
    .param p1    # LQf/f;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LQf/f<",
            "-TR;>;)V"
        }
    .end annotation

    invoke-interface {p1}, LQf/f;->getContext()LQf/j;

    move-result-object v0

    invoke-direct {p0, v0}, LHg/l;-><init>(LQf/j;)V

    new-instance v0, Lwg/q;

    invoke-static {p1}, LSf/c;->e(LQf/f;)LQf/f;

    move-result-object p1

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1}, Lwg/q;-><init>(LQf/f;I)V

    iput-object v0, p0, LHg/d;->h:Lwg/q;

    return-void
.end method

.method public static final synthetic n0(LHg/d;)Lwg/q;
    .locals 0

    iget-object p0, p0, LHg/d;->h:Lwg/q;

    return-object p0
.end method


# virtual methods
.method public final o0()Ljava/lang/Object;
    .locals 7
    .annotation build LFf/f0;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, LHg/d;->h:Lwg/q;

    invoke-virtual {v0}, Lwg/q;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, LHg/d;->h:Lwg/q;

    invoke-virtual {v0}, Lwg/q;->E()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {p0}, LHg/l;->getContext()LQf/j;

    move-result-object v0

    invoke-static {v0}, Lwg/T;->a(LQf/j;)Lwg/S;

    move-result-object v1

    sget-object v3, Lwg/U;->UNDISPATCHED:Lwg/U;

    new-instance v4, LHg/d$a;

    const/4 v0, 0x0

    invoke-direct {v4, p0, v0}, LHg/d$a;-><init>(LHg/d;LQf/f;)V

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v2, 0x0

    invoke-static/range {v1 .. v6}, Lwg/i;->e(Lwg/S;LQf/j;Lwg/U;Leg/p;ILjava/lang/Object;)Lwg/K0;

    iget-object v0, p0, LHg/d;->h:Lwg/q;

    invoke-virtual {v0}, Lwg/q;->E()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final p0(Ljava/lang/Throwable;)V
    .locals 2
    .param p1    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build LFf/f0;
    .end annotation

    iget-object v0, p0, LHg/d;->h:Lwg/q;

    sget-object v1, LFf/i0;->c:LFf/i0$a;

    invoke-static {p1}, LFf/j0;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, LFf/i0;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1}, LQf/f;->resumeWith(Ljava/lang/Object;)V

    return-void
.end method
