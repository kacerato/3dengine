.class public abstract Lbf/m;
.super Lbf/l;
.source "SourceFile"

# interfaces
.implements LTe/I;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Lbf/l<",
        "TR;>;",
        "LTe/I<",
        "TT;>;"
    }
.end annotation


# static fields
.field public static final l:J = -0x3b1b71a072cf1ebL


# instance fields
.field public k:LVe/c;


# direct methods
.method public constructor <init>(LTe/I;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LTe/I<",
            "-TR;>;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lbf/l;-><init>(LTe/I;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Lbf/l;->d:Ljava/lang/Object;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    iput-object v1, p0, Lbf/l;->d:Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lbf/l;->f(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lbf/l;->c()V

    :goto_0
    return-void
.end method

.method public dispose()V
    .locals 1

    invoke-super {p0}, Lbf/l;->dispose()V

    iget-object v0, p0, Lbf/m;->k:LVe/c;

    invoke-interface {v0}, LVe/c;->dispose()V

    return-void
.end method

.method public e(LVe/c;)V
    .locals 1

    iget-object v0, p0, Lbf/m;->k:LVe/c;

    invoke-static {v0, p1}, LYe/d;->j(LVe/c;LVe/c;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p1, p0, Lbf/m;->k:LVe/c;

    iget-object p1, p0, Lbf/l;->c:LTe/I;

    invoke-interface {p1, p0}, LTe/I;->e(LVe/c;)V

    :cond_0
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lbf/l;->d:Ljava/lang/Object;

    invoke-virtual {p0, p1}, Lbf/l;->h(Ljava/lang/Throwable;)V

    return-void
.end method
