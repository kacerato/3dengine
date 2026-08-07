.class public final Lgf/L$a;
.super Lbf/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgf/L;
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
        "Lbf/a<",
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
.method public constructor <init>(LTe/I;LXe/o;LXe/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LTe/I<",
            "-TT;>;",
            "LXe/o<",
            "-TT;TK;>;",
            "LXe/d<",
            "-TK;-TK;>;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lbf/a;-><init>(LTe/I;)V

    iput-object p2, p0, Lgf/L$a;->g:LXe/o;

    iput-object p3, p0, Lgf/L$a;->h:LXe/d;

    return-void
.end method


# virtual methods
.method public g(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget-boolean v0, p0, Lbf/a;->e:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lbf/a;->f:I

    if-eqz v0, :cond_1

    iget-object v0, p0, Lbf/a;->b:LTe/I;

    invoke-interface {v0, p1}, LTe/I;->g(Ljava/lang/Object;)V

    return-void

    :cond_1
    :try_start_0
    iget-object v0, p0, Lgf/L$a;->g:LXe/o;

    invoke-interface {v0, p1}, LXe/o;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iget-boolean v1, p0, Lgf/L$a;->j:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lgf/L$a;->h:LXe/d;

    iget-object v2, p0, Lgf/L$a;->i:Ljava/lang/Object;

    invoke-interface {v1, v2, v0}, LXe/d;->test(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    iput-object v0, p0, Lgf/L$a;->i:Ljava/lang/Object;

    if-eqz v1, :cond_3

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_2
    const/4 v1, 0x1

    iput-boolean v1, p0, Lgf/L$a;->j:Z

    iput-object v0, p0, Lgf/L$a;->i:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    iget-object v0, p0, Lbf/a;->b:LTe/I;

    invoke-interface {v0, p1}, LTe/I;->g(Ljava/lang/Object;)V

    return-void

    :goto_0
    invoke-virtual {p0, p1}, Lbf/a;->f(Ljava/lang/Throwable;)V

    return-void
.end method

.method public m(I)I
    .locals 0

    invoke-virtual {p0, p1}, Lbf/a;->h(I)I

    move-result p1

    return p1
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

    :goto_0
    iget-object v0, p0, Lbf/a;->d:Laf/j;

    invoke-interface {v0}, Laf/o;->poll()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v1, p0, Lgf/L$a;->g:LXe/o;

    invoke-interface {v1, v0}, LXe/o;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iget-boolean v2, p0, Lgf/L$a;->j:Z

    if-nez v2, :cond_1

    const/4 v2, 0x1

    iput-boolean v2, p0, Lgf/L$a;->j:Z

    iput-object v1, p0, Lgf/L$a;->i:Ljava/lang/Object;

    return-object v0

    :cond_1
    iget-object v2, p0, Lgf/L$a;->h:LXe/d;

    iget-object v3, p0, Lgf/L$a;->i:Ljava/lang/Object;

    invoke-interface {v2, v3, v1}, LXe/d;->test(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    iput-object v1, p0, Lgf/L$a;->i:Ljava/lang/Object;

    return-object v0

    :cond_2
    iput-object v1, p0, Lgf/L$a;->i:Ljava/lang/Object;

    goto :goto_0
.end method
