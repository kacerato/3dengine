.class public abstract Luf/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LTe/q;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "LTe/q<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public b:LCi/d;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final b()V
    .locals 2

    iget-object v0, p0, Luf/a;->b:LCi/d;

    sget-object v1, Lmf/j;->CANCELLED:Lmf/j;

    iput-object v1, p0, Luf/a;->b:LCi/d;

    invoke-interface {v0}, LCi/d;->cancel()V

    return-void
.end method

.method public c()V
    .locals 2

    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, v0, v1}, Luf/a;->d(J)V

    return-void
.end method

.method public final d(J)V
    .locals 1

    iget-object v0, p0, Luf/a;->b:LCi/d;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, LCi/d;->i(J)V

    :cond_0
    return-void
.end method

.method public final h(LCi/d;)V
    .locals 2

    iget-object v0, p0, Luf/a;->b:LCi/d;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v0, p1, v1}, Lio/reactivex/internal/util/i;->e(LCi/d;LCi/d;Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p1, p0, Luf/a;->b:LCi/d;

    invoke-virtual {p0}, Luf/a;->c()V

    :cond_0
    return-void
.end method
