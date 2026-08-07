.class public final Ldf/k;
.super LTe/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "LTe/l<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final c:LWe/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LWe/a<",
            "+TT;>;"
        }
    .end annotation
.end field

.field public final d:I

.field public final e:LXe/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LXe/g<",
            "-",
            "LVe/c;",
            ">;"
        }
    .end annotation
.end field

.field public final f:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method public constructor <init>(LWe/a;ILXe/g;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LWe/a<",
            "+TT;>;I",
            "LXe/g<",
            "-",
            "LVe/c;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, LTe/l;-><init>()V

    iput-object p1, p0, Ldf/k;->c:LWe/a;

    iput p2, p0, Ldf/k;->d:I

    iput-object p3, p0, Ldf/k;->e:LXe/g;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object p1, p0, Ldf/k;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method


# virtual methods
.method public m6(LCi/c;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LCi/c<",
            "-TT;>;)V"
        }
    .end annotation

    iget-object v0, p0, Ldf/k;->c:LWe/a;

    invoke-virtual {v0, p1}, LTe/l;->l(LCi/c;)V

    iget-object p1, p0, Ldf/k;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result p1

    iget v0, p0, Ldf/k;->d:I

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Ldf/k;->c:LWe/a;

    iget-object v0, p0, Ldf/k;->e:LXe/g;

    invoke-virtual {p1, v0}, LWe/a;->S8(LXe/g;)V

    :cond_0
    return-void
.end method
