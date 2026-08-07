.class public abstract Ldf/w$b;
.super Ljava/util/concurrent/atomic/AtomicInteger;
.source "SourceFile"

# interfaces
.implements LTe/q;
.implements Ldf/w$f;
.implements LCi/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldf/w;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicInteger;",
        "LTe/q<",
        "TT;>;",
        "Ldf/w$f<",
        "TR;>;",
        "LCi/d;"
    }
.end annotation


# static fields
.field public static final n:J = -0x30bac63fcc0431bbL


# instance fields
.field public final b:Ldf/w$e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldf/w$e<",
            "TR;>;"
        }
    .end annotation
.end field

.field public final c:LXe/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LXe/o<",
            "-TT;+",
            "LCi/b<",
            "+TR;>;>;"
        }
    .end annotation
.end field

.field public final d:I

.field public final e:I

.field public f:LCi/d;

.field public g:I

.field public h:Laf/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Laf/o<",
            "TT;>;"
        }
    .end annotation
.end field

.field public volatile i:Z

.field public volatile j:Z

.field public final k:Lio/reactivex/internal/util/c;

.field public volatile l:Z

.field public m:I


# direct methods
.method public constructor <init>(LXe/o;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LXe/o<",
            "-TT;+",
            "LCi/b<",
            "+TR;>;>;I)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object p1, p0, Ldf/w$b;->c:LXe/o;

    iput p2, p0, Ldf/w$b;->d:I

    shr-int/lit8 p1, p2, 0x2

    sub-int/2addr p2, p1

    iput p2, p0, Ldf/w$b;->e:I

    new-instance p1, Ldf/w$e;

    invoke-direct {p1, p0}, Ldf/w$e;-><init>(Ldf/w$f;)V

    iput-object p1, p0, Ldf/w$b;->b:Ldf/w$e;

    new-instance p1, Lio/reactivex/internal/util/c;

    invoke-direct {p1}, Lio/reactivex/internal/util/c;-><init>()V

    iput-object p1, p0, Ldf/w$b;->k:Lio/reactivex/internal/util/c;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Ldf/w$b;->i:Z

    invoke-virtual {p0}, Ldf/w$b;->b()V

    return-void
.end method

.method public abstract b()V
.end method

.method public final d()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Ldf/w$b;->l:Z

    invoke-virtual {p0}, Ldf/w$b;->b()V

    return-void
.end method

.method public abstract f()V
.end method

.method public final g(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget v0, p0, Ldf/w$b;->m:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Ldf/w$b;->h:Laf/o;

    invoke-interface {v0, p1}, Laf/o;->offer(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Ldf/w$b;->f:LCi/d;

    invoke-interface {p1}, LCi/d;->cancel()V

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Queue full?!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-interface {p0, p1}, LCi/c;->onError(Ljava/lang/Throwable;)V

    return-void

    :cond_0
    invoke-virtual {p0}, Ldf/w$b;->b()V

    return-void
.end method

.method public final h(LCi/d;)V
    .locals 3

    iget-object v0, p0, Ldf/w$b;->f:LCi/d;

    invoke-static {v0, p1}, Lmf/j;->n(LCi/d;LCi/d;)Z

    move-result v0

    if-eqz v0, :cond_2

    iput-object p1, p0, Ldf/w$b;->f:LCi/d;

    instance-of v0, p1, Laf/l;

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Laf/l;

    const/4 v1, 0x7

    invoke-interface {v0, v1}, Laf/k;->m(I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    iput v1, p0, Ldf/w$b;->m:I

    iput-object v0, p0, Ldf/w$b;->h:Laf/o;

    iput-boolean v2, p0, Ldf/w$b;->i:Z

    invoke-virtual {p0}, Ldf/w$b;->f()V

    invoke-virtual {p0}, Ldf/w$b;->b()V

    return-void

    :cond_0
    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    iput v1, p0, Ldf/w$b;->m:I

    iput-object v0, p0, Ldf/w$b;->h:Laf/o;

    invoke-virtual {p0}, Ldf/w$b;->f()V

    iget v0, p0, Ldf/w$b;->d:I

    int-to-long v0, v0

    invoke-interface {p1, v0, v1}, LCi/d;->i(J)V

    return-void

    :cond_1
    new-instance v0, Ljf/b;

    iget v1, p0, Ldf/w$b;->d:I

    invoke-direct {v0, v1}, Ljf/b;-><init>(I)V

    iput-object v0, p0, Ldf/w$b;->h:Laf/o;

    invoke-virtual {p0}, Ldf/w$b;->f()V

    iget v0, p0, Ldf/w$b;->d:I

    int-to-long v0, v0

    invoke-interface {p1, v0, v1}, LCi/d;->i(J)V

    :cond_2
    return-void
.end method
