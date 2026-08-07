.class public final Ldf/Z$a;
.super Llf/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldf/Z;
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
        "Llf/a<",
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
.method public constructor <init>(Laf/a;LXe/r;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Laf/a<",
            "-TT;>;",
            "LXe/r<",
            "-TT;>;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Llf/a;-><init>(Laf/a;)V

    iput-object p2, p0, Ldf/Z$a;->g:LXe/r;

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

    invoke-virtual {p0, p1}, Ldf/Z$a;->p(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Llf/a;->c:LCi/d;

    const-wide/16 v0, 0x1

    invoke-interface {p1, v0, v1}, LCi/d;->i(J)V

    :cond_0
    return-void
.end method

.method public m(I)I
    .locals 0

    invoke-virtual {p0, p1}, Llf/a;->e(I)I

    move-result p1

    return p1
.end method

.method public p(Ljava/lang/Object;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    iget-boolean v0, p0, Llf/a;->e:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget v0, p0, Llf/a;->f:I

    if-eqz v0, :cond_1

    iget-object p1, p0, Llf/a;->b:Laf/a;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Laf/a;->p(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_1
    const/4 v0, 0x1

    :try_start_0
    iget-object v2, p0, Ldf/Z$a;->g:LXe/r;

    invoke-interface {v2, p1}, LXe/r;->test(Ljava/lang/Object;)Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_2

    iget-object v2, p0, Llf/a;->b:Laf/a;

    invoke-interface {v2, p1}, Laf/a;->p(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    move v1, v0

    :cond_2
    return v1

    :catchall_0
    move-exception p1

    invoke-virtual {p0, p1}, Llf/a;->d(Ljava/lang/Throwable;)V

    return v0
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

    iget-object v0, p0, Llf/a;->d:Laf/l;

    iget-object v1, p0, Ldf/Z$a;->g:LXe/r;

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
    iget v2, p0, Llf/a;->f:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    const-wide/16 v2, 0x1

    invoke-interface {v0, v2, v3}, LCi/d;->i(J)V

    goto :goto_0
.end method
