.class public final Lgf/k;
.super LTe/B;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "LTe/B<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final b:Lnf/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnf/a<",
            "+TT;>;"
        }
    .end annotation
.end field

.field public final c:I

.field public final d:LXe/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LXe/g<",
            "-",
            "LVe/c;",
            ">;"
        }
    .end annotation
.end field

.field public final e:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method public constructor <init>(Lnf/a;ILXe/g;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnf/a<",
            "+TT;>;I",
            "LXe/g<",
            "-",
            "LVe/c;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, LTe/B;-><init>()V

    iput-object p1, p0, Lgf/k;->b:Lnf/a;

    iput p2, p0, Lgf/k;->c:I

    iput-object p3, p0, Lgf/k;->d:LXe/g;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object p1, p0, Lgf/k;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method


# virtual methods
.method public J5(LTe/I;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LTe/I<",
            "-TT;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lgf/k;->b:Lnf/a;

    invoke-virtual {v0, p1}, LTe/B;->b(LTe/I;)V

    iget-object p1, p0, Lgf/k;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result p1

    iget v0, p0, Lgf/k;->c:I

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lgf/k;->b:Lnf/a;

    iget-object v0, p0, Lgf/k;->d:LXe/g;

    invoke-virtual {p1, v0}, Lnf/a;->n8(LXe/g;)V

    :cond_0
    return-void
.end method
