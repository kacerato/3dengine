.class public final Lhf/i$a;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "SourceFile"

# interfaces
.implements LTe/q;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lhf/i;
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
        "Ljava/util/concurrent/atomic/AtomicReference<",
        "LCi/d;",
        ">;",
        "LTe/q<",
        "TT;>;"
    }
.end annotation


# static fields
.field public static final g:J = 0x74b67204a49678c3L


# instance fields
.field public final b:Lhf/i$c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lhf/i$c<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final c:I

.field public final d:I

.field public e:J

.field public volatile f:Laf/n;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Laf/n<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lhf/i$c;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lhf/i$c<",
            "TT;>;I)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object p1, p0, Lhf/i$a;->b:Lhf/i$c;

    iput p2, p0, Lhf/i$a;->c:I

    shr-int/lit8 p1, p2, 0x2

    sub-int/2addr p2, p1

    iput p2, p0, Lhf/i$a;->d:I

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Lhf/i$a;->b:Lhf/i$c;

    invoke-virtual {v0}, Lhf/i$c;->d()V

    return-void
.end method

.method public b()Z
    .locals 1

    invoke-static {p0}, Lmf/j;->a(Ljava/util/concurrent/atomic/AtomicReference;)Z

    move-result v0

    return v0
.end method

.method public c()Laf/n;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Laf/n<",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lhf/i$a;->f:Laf/n;

    if-nez v0, :cond_0

    new-instance v0, Ljf/b;

    iget v1, p0, Lhf/i$a;->c:I

    invoke-direct {v0, v1}, Ljf/b;-><init>(I)V

    iput-object v0, p0, Lhf/i$a;->f:Laf/n;

    :cond_0
    return-object v0
.end method

.method public d(J)V
    .locals 2

    iget-wide v0, p0, Lhf/i$a;->e:J

    add-long/2addr v0, p1

    iget p1, p0, Lhf/i$a;->d:I

    int-to-long p1, p1

    cmp-long p1, v0, p1

    if-ltz p1, :cond_0

    const-wide/16 p1, 0x0

    iput-wide p1, p0, Lhf/i$a;->e:J

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LCi/d;

    invoke-interface {p1, v0, v1}, LCi/d;->i(J)V

    goto :goto_0

    :cond_0
    iput-wide v0, p0, Lhf/i$a;->e:J

    :goto_0
    return-void
.end method

.method public e()V
    .locals 4

    iget-wide v0, p0, Lhf/i$a;->e:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iget v2, p0, Lhf/i$a;->d:I

    int-to-long v2, v2

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lhf/i$a;->e:J

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LCi/d;

    invoke-interface {v2, v0, v1}, LCi/d;->i(J)V

    goto :goto_0

    :cond_0
    iput-wide v0, p0, Lhf/i$a;->e:J

    :goto_0
    return-void
.end method

.method public g(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget-object v0, p0, Lhf/i$a;->b:Lhf/i$c;

    invoke-virtual {v0, p0, p1}, Lhf/i$c;->f(Lhf/i$a;Ljava/lang/Object;)V

    return-void
.end method

.method public h(LCi/d;)V
    .locals 2

    iget v0, p0, Lhf/i$a;->c:I

    int-to-long v0, v0

    invoke-static {p0, p1, v0, v1}, Lmf/j;->k(Ljava/util/concurrent/atomic/AtomicReference;LCi/d;J)Z

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    iget-object v0, p0, Lhf/i$a;->b:Lhf/i$c;

    invoke-virtual {v0, p1}, Lhf/i$c;->e(Ljava/lang/Throwable;)V

    return-void
.end method
