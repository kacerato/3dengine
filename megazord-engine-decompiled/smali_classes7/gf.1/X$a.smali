.class public final Lgf/X$a;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "SourceFile"

# interfaces
.implements LTe/I;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgf/X;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "U:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicReference<",
        "LVe/c;",
        ">;",
        "LTe/I<",
        "TU;>;"
    }
.end annotation


# static fields
.field public static final g:J = -0x3fec6c572fe7d027L


# instance fields
.field public final b:J

.field public final c:Lgf/X$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lgf/X$b<",
            "TT;TU;>;"
        }
    .end annotation
.end field

.field public volatile d:Z

.field public volatile e:Laf/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Laf/o<",
            "TU;>;"
        }
    .end annotation
.end field

.field public f:I


# direct methods
.method public constructor <init>(Lgf/X$b;J)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lgf/X$b<",
            "TT;TU;>;J)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-wide p2, p0, Lgf/X$a;->b:J

    iput-object p1, p0, Lgf/X$a;->c:Lgf/X$b;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lgf/X$a;->d:Z

    iget-object v0, p0, Lgf/X$a;->c:Lgf/X$b;

    invoke-virtual {v0}, Lgf/X$b;->h()V

    return-void
.end method

.method public b()V
    .locals 0

    invoke-static {p0}, LYe/d;->a(Ljava/util/concurrent/atomic/AtomicReference;)Z

    return-void
.end method

.method public e(LVe/c;)V
    .locals 2

    invoke-static {p0, p1}, LYe/d;->h(Ljava/util/concurrent/atomic/AtomicReference;LVe/c;)Z

    move-result v0

    if-eqz v0, :cond_1

    instance-of v0, p1, Laf/j;

    if-eqz v0, :cond_1

    check-cast p1, Laf/j;

    const/4 v0, 0x7

    invoke-interface {p1, v0}, Laf/k;->m(I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iput v0, p0, Lgf/X$a;->f:I

    iput-object p1, p0, Lgf/X$a;->e:Laf/o;

    iput-boolean v1, p0, Lgf/X$a;->d:Z

    iget-object p1, p0, Lgf/X$a;->c:Lgf/X$b;

    invoke-virtual {p1}, Lgf/X$b;->h()V

    return-void

    :cond_0
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    iput v0, p0, Lgf/X$a;->f:I

    iput-object p1, p0, Lgf/X$a;->e:Laf/o;

    :cond_1
    return-void
.end method

.method public g(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TU;)V"
        }
    .end annotation

    iget v0, p0, Lgf/X$a;->f:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lgf/X$a;->c:Lgf/X$b;

    invoke-virtual {v0, p1, p0}, Lgf/X$b;->l(Ljava/lang/Object;Lgf/X$a;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lgf/X$a;->c:Lgf/X$b;

    invoke-virtual {p1}, Lgf/X$b;->h()V

    :goto_0
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    iget-object v0, p0, Lgf/X$a;->c:Lgf/X$b;

    iget-object v0, v0, Lgf/X$b;->i:Lio/reactivex/internal/util/c;

    invoke-virtual {v0, p1}, Lio/reactivex/internal/util/c;->a(Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p1, p0, Lgf/X$a;->c:Lgf/X$b;

    iget-boolean v0, p1, Lgf/X$b;->d:Z

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lgf/X$b;->f()Z

    :cond_0
    const/4 p1, 0x1

    iput-boolean p1, p0, Lgf/X$a;->d:Z

    iget-object p1, p0, Lgf/X$a;->c:Lgf/X$b;

    invoke-virtual {p1}, Lgf/X$b;->h()V

    goto :goto_0

    :cond_1
    invoke-static {p1}, Lqf/a;->Y(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
