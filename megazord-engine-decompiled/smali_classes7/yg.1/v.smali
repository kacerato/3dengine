.class public final Lyg/v;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyg/d;


# annotations
.annotation runtime LFf/o;
    level = .enum LFf/q;->WARNING:LFf/q;
    message = "ConflatedBroadcastChannel is deprecated in the favour of SharedFlow and is no longer supported"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lyg/d<",
        "TE;>;"
    }
.end annotation

.annotation build Lwg/a1;
.end annotation


# instance fields
.field public final b:Lyg/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lyg/e<",
            "TE;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 3
    new-instance v0, Lyg/e;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Lyg/e;-><init>(I)V

    invoke-direct {p0, v0}, Lyg/v;-><init>(Lyg/e;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .line 4
    invoke-direct {p0}, Lyg/v;-><init>()V

    .line 5
    invoke-virtual {p0, p1}, Lyg/v;->y(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lyg/e;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lyg/e<",
            "TE;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lyg/v;->b:Lyg/e;

    return-void
.end method


# virtual methods
.method public C(Leg/l;)V
    .locals 1
    .param p1    # Leg/l;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Leg/l<",
            "-",
            "Ljava/lang/Throwable;",
            "LFf/P0;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lyg/v;->b:Lyg/e;

    invoke-virtual {v0, p1}, Lyg/j;->C(Leg/l;)V

    return-void
.end method

.method public H(Ljava/lang/Object;LQf/f;)Ljava/lang/Object;
    .locals 1
    .param p2    # LQf/f;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;",
            "LQf/f<",
            "-",
            "LFf/P0;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lyg/v;->b:Lyg/e;

    invoke-virtual {v0, p1, p2}, Lyg/e;->H(Ljava/lang/Object;LQf/f;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public L(Ljava/lang/Throwable;)Z
    .locals 1
    .param p1    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lyg/v;->b:Lyg/e;

    invoke-virtual {v0, p1}, Lyg/e;->L(Ljava/lang/Throwable;)Z

    move-result p1

    return p1
.end method

.method public M()Z
    .locals 1

    iget-object v0, p0, Lyg/v;->b:Lyg/e;

    invoke-virtual {v0}, Lyg/e;->M()Z

    move-result v0

    return v0
.end method

.method public a(Ljava/util/concurrent/CancellationException;)V
    .locals 1
    .param p1    # Ljava/util/concurrent/CancellationException;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lyg/v;->b:Lyg/e;

    invoke-virtual {v0, p1}, Lyg/j;->a(Ljava/util/concurrent/CancellationException;)V

    return-void
.end method

.method public final b()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    iget-object v0, p0, Lyg/v;->b:Lyg/e;

    invoke-virtual {v0}, Lyg/e;->L1()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public synthetic c(Ljava/lang/Throwable;)Z
    .locals 1
    .annotation runtime LFf/o;
        level = .enum LFf/q;->HIDDEN:LFf/q;
        message = "Binary compatibility only"
    .end annotation

    iget-object v0, p0, Lyg/v;->b:Lyg/e;

    invoke-virtual {v0, p1}, Lyg/j;->c(Ljava/lang/Throwable;)Z

    move-result p1

    return p1
.end method

.method public final d()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lyg/v;->b:Lyg/e;

    invoke-virtual {v0}, Lyg/e;->N1()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public offer(Ljava/lang/Object;)Z
    .locals 1
    .annotation runtime LFf/o;
        level = .enum LFf/q;->ERROR:LFf/q;
        message = "Deprecated in the favour of \'trySend\' method"
        replaceWith = .subannotation LFf/g0;
            expression = "trySend(element).isSuccess"
            imports = {}
        .end subannotation
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    iget-object v0, p0, Lyg/v;->b:Lyg/e;

    invoke-virtual {v0, p1}, Lyg/j;->offer(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public r()LHg/i;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LHg/i<",
            "TE;",
            "Lyg/E<",
            "TE;>;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lyg/v;->b:Lyg/e;

    invoke-virtual {v0}, Lyg/j;->r()LHg/i;

    move-result-object v0

    return-object v0
.end method

.method public v()Lyg/D;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lyg/D<",
            "TE;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lyg/v;->b:Lyg/e;

    invoke-virtual {v0}, Lyg/e;->v()Lyg/D;

    move-result-object v0

    return-object v0
.end method

.method public y(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lyg/v;->b:Lyg/e;

    invoke-virtual {v0, p1}, Lyg/e;->y(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
