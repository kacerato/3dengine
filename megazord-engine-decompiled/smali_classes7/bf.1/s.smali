.class public final Lbf/s;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "SourceFile"

# interfaces
.implements LTe/I;
.implements LVe/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicReference<",
        "LVe/c;",
        ">;",
        "LTe/I<",
        "TT;>;",
        "LVe/c;"
    }
.end annotation


# static fields
.field public static final g:J = -0x4b2db39073b2fa8dL


# instance fields
.field public final b:Lbf/t;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbf/t<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final c:I

.field public d:Laf/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Laf/o<",
            "TT;>;"
        }
    .end annotation
.end field

.field public volatile e:Z

.field public f:I


# direct methods
.method public constructor <init>(Lbf/t;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbf/t<",
            "TT;>;I)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object p1, p0, Lbf/s;->b:Lbf/t;

    iput p2, p0, Lbf/s;->c:I

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Lbf/s;->b:Lbf/t;

    invoke-interface {v0, p0}, Lbf/t;->i(Lbf/s;)V

    return-void
.end method

.method public b()I
    .locals 1

    iget v0, p0, Lbf/s;->f:I

    return v0
.end method

.method public c()Z
    .locals 1

    iget-boolean v0, p0, Lbf/s;->e:Z

    return v0
.end method

.method public d()Z
    .locals 1

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LVe/c;

    invoke-static {v0}, LYe/d;->b(LVe/c;)Z

    move-result v0

    return v0
.end method

.method public dispose()V
    .locals 0

    invoke-static {p0}, LYe/d;->a(Ljava/util/concurrent/atomic/AtomicReference;)Z

    return-void
.end method

.method public e(LVe/c;)V
    .locals 2

    invoke-static {p0, p1}, LYe/d;->h(Ljava/util/concurrent/atomic/AtomicReference;LVe/c;)Z

    move-result v0

    if-eqz v0, :cond_2

    instance-of v0, p1, Laf/j;

    if-eqz v0, :cond_1

    check-cast p1, Laf/j;

    const/4 v0, 0x3

    invoke-interface {p1, v0}, Laf/k;->m(I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iput v0, p0, Lbf/s;->f:I

    iput-object p1, p0, Lbf/s;->d:Laf/o;

    iput-boolean v1, p0, Lbf/s;->e:Z

    iget-object p1, p0, Lbf/s;->b:Lbf/t;

    invoke-interface {p1, p0}, Lbf/t;->i(Lbf/s;)V

    return-void

    :cond_0
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    iput v0, p0, Lbf/s;->f:I

    iput-object p1, p0, Lbf/s;->d:Laf/o;

    return-void

    :cond_1
    iget p1, p0, Lbf/s;->c:I

    neg-int p1, p1

    invoke-static {p1}, Lio/reactivex/internal/util/u;->c(I)Laf/o;

    move-result-object p1

    iput-object p1, p0, Lbf/s;->d:Laf/o;

    :cond_2
    return-void
.end method

.method public f()Laf/o;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Laf/o<",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lbf/s;->d:Laf/o;

    return-object v0
.end method

.method public g(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget v0, p0, Lbf/s;->f:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lbf/s;->b:Lbf/t;

    invoke-interface {v0, p0, p1}, Lbf/t;->j(Lbf/s;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lbf/s;->b:Lbf/t;

    invoke-interface {p1}, Lbf/t;->f()V

    :goto_0
    return-void
.end method

.method public h()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lbf/s;->e:Z

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    iget-object v0, p0, Lbf/s;->b:Lbf/t;

    invoke-interface {v0, p0, p1}, Lbf/t;->h(Lbf/s;Ljava/lang/Throwable;)V

    return-void
.end method
