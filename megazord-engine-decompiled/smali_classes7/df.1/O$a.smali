.class public final Ldf/O$a;
.super Llf/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldf/O;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "K:",
        "Ljava/lang/Object;",
        ">",
        "Llf/a<",
        "TT;TT;>;"
    }
.end annotation


# instance fields
.field public final g:LXe/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LXe/o<",
            "-TT;TK;>;"
        }
    .end annotation
.end field

.field public final h:LXe/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LXe/d<",
            "-TK;-TK;>;"
        }
    .end annotation
.end field

.field public i:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field

.field public j:Z


# direct methods
.method public constructor <init>(Laf/a;LXe/o;LXe/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Laf/a<",
            "-TT;>;",
            "LXe/o<",
            "-TT;TK;>;",
            "LXe/d<",
            "-TK;-TK;>;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Llf/a;-><init>(Laf/a;)V

    iput-object p2, p0, Ldf/O$a;->g:LXe/o;

    iput-object p3, p0, Ldf/O$a;->h:LXe/d;

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

    invoke-virtual {p0, p1}, Ldf/O$a;->p(Ljava/lang/Object;)Z

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
    .locals 5
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

    iget-object v0, p0, Llf/a;->b:Laf/a;

    invoke-interface {v0, p1}, Laf/a;->p(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_1
    const/4 v0, 0x1

    :try_start_0
    iget-object v2, p0, Ldf/O$a;->g:LXe/o;

    invoke-interface {v2, p1}, LXe/o;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    iget-boolean v3, p0, Ldf/O$a;->j:Z

    if-eqz v3, :cond_2

    iget-object v3, p0, Ldf/O$a;->h:LXe/d;

    iget-object v4, p0, Ldf/O$a;->i:Ljava/lang/Object;

    invoke-interface {v3, v4, v2}, LXe/d;->test(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    iput-object v2, p0, Ldf/O$a;->i:Ljava/lang/Object;

    if-eqz v3, :cond_3

    return v1

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_2
    iput-boolean v0, p0, Ldf/O$a;->j:Z

    iput-object v2, p0, Ldf/O$a;->i:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    iget-object v1, p0, Llf/a;->b:Laf/a;

    invoke-interface {v1, p1}, LCi/c;->g(Ljava/lang/Object;)V

    return v0

    :goto_0
    invoke-virtual {p0, p1}, Llf/a;->d(Ljava/lang/Throwable;)V

    return v0
.end method

.method public poll()Ljava/lang/Object;
    .locals 5
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
    :goto_0
    iget-object v0, p0, Llf/a;->d:Laf/l;

    invoke-interface {v0}, Laf/o;->poll()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    return-object v0

    :cond_1
    iget-object v1, p0, Ldf/O$a;->g:LXe/o;

    invoke-interface {v1, v0}, LXe/o;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iget-boolean v2, p0, Ldf/O$a;->j:Z

    const/4 v3, 0x1

    if-nez v2, :cond_2

    iput-boolean v3, p0, Ldf/O$a;->j:Z

    iput-object v1, p0, Ldf/O$a;->i:Ljava/lang/Object;

    return-object v0

    :cond_2
    iget-object v2, p0, Ldf/O$a;->h:LXe/d;

    iget-object v4, p0, Ldf/O$a;->i:Ljava/lang/Object;

    invoke-interface {v2, v4, v1}, LXe/d;->test(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    iput-object v1, p0, Ldf/O$a;->i:Ljava/lang/Object;

    return-object v0

    :cond_3
    iput-object v1, p0, Ldf/O$a;->i:Ljava/lang/Object;

    iget v0, p0, Llf/a;->f:I

    if-eq v0, v3, :cond_0

    iget-object v0, p0, Llf/a;->c:LCi/d;

    const-wide/16 v1, 0x1

    invoke-interface {v0, v1, v2}, LCi/d;->i(J)V

    goto :goto_0
.end method
