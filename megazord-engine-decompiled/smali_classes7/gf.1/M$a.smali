.class public final Lgf/M$a;
.super Lbf/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgf/M;
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
.field public final g:LXe/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LXe/g<",
            "-TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(LTe/I;LXe/g;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LTe/I<",
            "-TT;>;",
            "LXe/g<",
            "-TT;>;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lbf/a;-><init>(LTe/I;)V

    iput-object p2, p0, Lgf/M$a;->g:LXe/g;

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

    iget-object v0, p0, Lbf/a;->b:LTe/I;

    invoke-interface {v0, p1}, LTe/I;->g(Ljava/lang/Object;)V

    iget v0, p0, Lbf/a;->f:I

    if-nez v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lgf/M$a;->g:LXe/g;

    invoke-interface {v0, p1}, LXe/g;->accept(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-virtual {p0, p1}, Lbf/a;->f(Ljava/lang/Throwable;)V

    :cond_0
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

    iget-object v0, p0, Lbf/a;->d:Laf/j;

    invoke-interface {v0}, Laf/o;->poll()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lgf/M$a;->g:LXe/g;

    invoke-interface {v1, v0}, LXe/g;->accept(Ljava/lang/Object;)V

    :cond_0
    return-object v0
.end method
