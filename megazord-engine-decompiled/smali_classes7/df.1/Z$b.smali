.class public final Ldf/Z$b;
.super Llf/b;
.source "SourceFile"

# interfaces
.implements Laf/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldf/Z;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Llf/b<",
        "TT;TT;>;",
        "Laf/a<",
        "TT;>;"
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
.method public constructor <init>(LCi/c;LXe/r;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LCi/c<",
            "-TT;>;",
            "LXe/r<",
            "-TT;>;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Llf/b;-><init>(LCi/c;)V

    iput-object p2, p0, Ldf/Z$b;->g:LXe/r;

    return-void
.end method


# virtual methods
.method public g(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    invoke-virtual {p0, p1}, Ldf/Z$b;->p(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Llf/b;->c:LCi/d;

    const-wide/16 v0, 0x1

    invoke-interface {p1, v0, v1}, LCi/d;->i(J)V

    :cond_0
    return-void
.end method

.method public m(I)I
    .locals 0

    invoke-virtual {p0, p1}, Llf/b;->e(I)I

    move-result p1

    return p1
.end method

.method public p(Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    iget-boolean v0, p0, Llf/b;->e:Z

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget v0, p0, Llf/b;->f:I

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget-object p1, p0, Llf/b;->b:LCi/c;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, LCi/c;->g(Ljava/lang/Object;)V

    return v1

    :cond_1
    :try_start_0
    iget-object v0, p0, Ldf/Z$b;->g:LXe/r;

    invoke-interface {v0, p1}, LXe/r;->test(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_2

    iget-object v1, p0, Llf/b;->b:LCi/c;

    invoke-interface {v1, p1}, LCi/c;->g(Ljava/lang/Object;)V

    :cond_2
    return v0

    :catchall_0
    move-exception p1

    invoke-virtual {p0, p1}, Llf/b;->d(Ljava/lang/Throwable;)V

    return v1
.end method

.method public poll()Ljava/lang/Object;
    .locals 4
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

    iget-object v0, p0, Llf/b;->d:Laf/l;

    iget-object v1, p0, Ldf/Z$b;->g:LXe/r;

    :cond_0
    :goto_0
    invoke-interface {v0}, Laf/o;->poll()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_1

    const/4 v0, 0x0

    return-object v0

    :cond_1
    invoke-interface {v1, v2}, LXe/r;->test(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    return-object v2

    :cond_2
    iget v2, p0, Llf/b;->f:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    const-wide/16 v2, 0x1

    invoke-interface {v0, v2, v3}, LCi/d;->i(J)V

    goto :goto_0
.end method
