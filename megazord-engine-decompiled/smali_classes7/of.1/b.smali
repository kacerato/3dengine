.class public abstract Lof/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LTe/I;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "LTe/I<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public b:LVe/c;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final b()V
    .locals 2

    iget-object v0, p0, Lof/b;->b:LVe/c;

    sget-object v1, LYe/d;->DISPOSED:LYe/d;

    iput-object v1, p0, Lof/b;->b:LVe/c;

    invoke-interface {v0}, LVe/c;->dispose()V

    return-void
.end method

.method public c()V
    .locals 0

    return-void
.end method

.method public final e(LVe/c;)V
    .locals 2
    .param p1    # LVe/c;
        .annotation build LUe/f;
        .end annotation
    .end param

    iget-object v0, p0, Lof/b;->b:LVe/c;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v0, p1, v1}, Lio/reactivex/internal/util/i;->f(LVe/c;LVe/c;Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p1, p0, Lof/b;->b:LVe/c;

    invoke-virtual {p0}, Lof/b;->c()V

    :cond_0
    return-void
.end method
