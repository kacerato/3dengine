.class public abstract Llf/h;
.super Lmf/f;
.source "SourceFile"

# interfaces
.implements LTe/q;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Lmf/f<",
        "TR;>;",
        "LTe/q<",
        "TT;>;"
    }
.end annotation


# static fields
.field public static final p:J = 0x296b17edcf9c299fL


# instance fields
.field public n:LCi/d;

.field public o:Z


# direct methods
.method public constructor <init>(LCi/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LCi/c<",
            "-TR;>;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lmf/f;-><init>(LCi/c;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-boolean v0, p0, Llf/h;->o:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmf/f;->d:Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lmf/f;->d(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lmf/f;->c:LCi/c;

    invoke-interface {v0}, LCi/c;->a()V

    :goto_0
    return-void
.end method

.method public cancel()V
    .locals 1

    invoke-super {p0}, Lmf/f;->cancel()V

    iget-object v0, p0, Llf/h;->n:LCi/d;

    invoke-interface {v0}, LCi/d;->cancel()V

    return-void
.end method

.method public h(LCi/d;)V
    .locals 2

    iget-object v0, p0, Llf/h;->n:LCi/d;

    invoke-static {v0, p1}, Lmf/j;->n(LCi/d;LCi/d;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p1, p0, Llf/h;->n:LCi/d;

    iget-object v0, p0, Lmf/f;->c:LCi/c;

    invoke-interface {v0, p0}, LCi/c;->h(LCi/d;)V

    const-wide v0, 0x7fffffffffffffffL

    invoke-interface {p1, v0, v1}, LCi/d;->i(J)V

    :cond_0
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lmf/f;->d:Ljava/lang/Object;

    iget-object v0, p0, Lmf/f;->c:LCi/c;

    invoke-interface {v0, p1}, LCi/c;->onError(Ljava/lang/Throwable;)V

    return-void
.end method
