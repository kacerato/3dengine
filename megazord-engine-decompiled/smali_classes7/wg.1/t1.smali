.class public final Lwg/t1;
.super LEg/O;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<U:",
        "Ljava/lang/Object;",
        "T::TU;>",
        "LEg/O<",
        "TT;>;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# instance fields
.field public final f:J
    .annotation build Ldg/g;
    .end annotation
.end field


# direct methods
.method public constructor <init>(JLQf/f;)V
    .locals 1
    .param p3    # LQf/f;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "LQf/f<",
            "-TU;>;)V"
        }
    .end annotation

    invoke-interface {p3}, LQf/f;->getContext()LQf/j;

    move-result-object v0

    invoke-direct {p0, v0, p3}, LEg/O;-><init>(LQf/j;LQf/f;)V

    iput-wide p1, p0, Lwg/t1;->f:J

    return-void
.end method


# virtual methods
.method public Y0()Ljava/lang/String;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lwg/a;->Y0()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "(timeMillis="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lwg/t1;->f:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public run()V
    .locals 3

    iget-wide v0, p0, Lwg/t1;->f:J

    invoke-virtual {p0}, Lwg/a;->getContext()LQf/j;

    move-result-object v2

    invoke-static {v2}, Lwg/c0;->d(LQf/j;)Lwg/b0;

    move-result-object v2

    invoke-static {v0, v1, v2, p0}, Lwg/u1;->a(JLwg/b0;Lwg/K0;)Lkotlinx/coroutines/TimeoutCancellationException;

    move-result-object v0

    invoke-virtual {p0, v0}, Lwg/R0;->j0(Ljava/lang/Throwable;)Z

    return-void
.end method
