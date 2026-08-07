.class public final Lff/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LTe/N;
.implements LTe/v;
.implements LTe/f;
.implements LVe/c;


# annotations
.annotation build LUe/e;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "LTe/N<",
        "TT;>;",
        "LTe/v<",
        "TT;>;",
        "LTe/f;",
        "LVe/c;"
    }
.end annotation


# instance fields
.field public final b:LTe/N;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LTe/N<",
            "-",
            "LTe/A<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field public c:LVe/c;


# direct methods
.method public constructor <init>(LTe/N;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LTe/N<",
            "-",
            "LTe/A<",
            "TT;>;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lff/i;->b:LTe/N;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Lff/i;->b:LTe/N;

    invoke-static {}, LTe/A;->a()LTe/A;

    move-result-object v1

    invoke-interface {v0, v1}, LTe/N;->b(Ljava/lang/Object;)V

    return-void
.end method

.method public b(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget-object v0, p0, Lff/i;->b:LTe/N;

    invoke-static {p1}, LTe/A;->c(Ljava/lang/Object;)LTe/A;

    move-result-object p1

    invoke-interface {v0, p1}, LTe/N;->b(Ljava/lang/Object;)V

    return-void
.end method

.method public d()Z
    .locals 1

    iget-object v0, p0, Lff/i;->c:LVe/c;

    invoke-interface {v0}, LVe/c;->d()Z

    move-result v0

    return v0
.end method

.method public dispose()V
    .locals 1

    iget-object v0, p0, Lff/i;->c:LVe/c;

    invoke-interface {v0}, LVe/c;->dispose()V

    return-void
.end method

.method public e(LVe/c;)V
    .locals 1

    iget-object v0, p0, Lff/i;->c:LVe/c;

    invoke-static {v0, p1}, LYe/d;->j(LVe/c;LVe/c;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p1, p0, Lff/i;->c:LVe/c;

    iget-object p1, p0, Lff/i;->b:LTe/N;

    invoke-interface {p1, p0}, LTe/N;->e(LVe/c;)V

    :cond_0
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    iget-object v0, p0, Lff/i;->b:LTe/N;

    invoke-static {p1}, LTe/A;->b(Ljava/lang/Throwable;)LTe/A;

    move-result-object p1

    invoke-interface {v0, p1}, LTe/N;->b(Ljava/lang/Object;)V

    return-void
.end method
