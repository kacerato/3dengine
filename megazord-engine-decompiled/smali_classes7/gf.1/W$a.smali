.class public final Lgf/W$a;
.super Lbf/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgf/W;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lbf/a<",
        "TT;TT;>;"
    }
.end annotation


# instance fields
.field public final g:LXe/r;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LXe/r<",
            "-TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(LTe/I;LXe/r;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LTe/I<",
            "-TT;>;",
            "LXe/r<",
            "-TT;>;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lbf/a;-><init>(LTe/I;)V

    iput-object p2, p0, Lgf/W$a;->g:LXe/r;

    return-void
.end method


# virtual methods
.method public g(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget v0, p0, Lbf/a;->f:I

    if-nez v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lgf/W$a;->g:LXe/r;

    invoke-interface {v0, p1}, LXe/r;->test(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lbf/a;->b:LTe/I;

    invoke-interface {v0, p1}, LTe/I;->g(Ljava/lang/Object;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-virtual {p0, p1}, Lbf/a;->f(Ljava/lang/Throwable;)V

    return-void

    :cond_0
    iget-object p1, p0, Lbf/a;->b:LTe/I;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, LTe/I;->g(Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public m(I)I
    .locals 0

    invoke-virtual {p0, p1}, Lbf/a;->h(I)I

    move-result p1

    return p1
.end method

.method public poll()Ljava/lang/Object;
    .locals 2
    .annotation build LUe/g;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    :cond_0
    iget-object v0, p0, Lbf/a;->d:Laf/j;

    invoke-interface {v0}, Laf/o;->poll()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lgf/W$a;->g:LXe/r;

    invoke-interface {v1, v0}, LXe/r;->test(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_1
    return-object v0
.end method
