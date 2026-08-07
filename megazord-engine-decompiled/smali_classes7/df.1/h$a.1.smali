.class public final Ldf/h$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LCi/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldf/h;
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
        "Ljava/lang/Object;",
        "LCi/d;"
    }
.end annotation


# instance fields
.field public final b:LCi/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LCi/c<",
            "-TT;>;"
        }
    .end annotation
.end field

.field public final c:[Ldf/h$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ldf/h$b<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final d:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method public constructor <init>(LCi/c;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LCi/c<",
            "-TT;>;I)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Ldf/h$a;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    iput-object p1, p0, Ldf/h$a;->b:LCi/c;

    new-array p1, p2, [Ldf/h$b;

    iput-object p1, p0, Ldf/h$a;->c:[Ldf/h$b;

    return-void
.end method


# virtual methods
.method public a([LCi/b;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "LCi/b<",
            "+TT;>;)V"
        }
    .end annotation

    iget-object v0, p0, Ldf/h$a;->c:[Ldf/h$b;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_0

    new-instance v4, Ldf/h$b;

    add-int/lit8 v5, v3, 0x1

    iget-object v6, p0, Ldf/h$a;->b:LCi/c;

    invoke-direct {v4, p0, v5, v6}, Ldf/h$b;-><init>(Ldf/h$a;ILCi/c;)V

    aput-object v4, v0, v3

    move v3, v5

    goto :goto_0

    :cond_0
    iget-object v3, p0, Ldf/h$a;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->lazySet(I)V

    iget-object v3, p0, Ldf/h$a;->b:LCi/c;

    invoke-interface {v3, p0}, LCi/c;->h(LCi/d;)V

    :goto_1
    if-ge v2, v1, :cond_2

    iget-object v3, p0, Ldf/h$a;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    if-eqz v3, :cond_1

    return-void

    :cond_1
    aget-object v3, p1, v2

    aget-object v4, v0, v2

    invoke-interface {v3, v4}, LCi/b;->l(LCi/c;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method public b(I)Z
    .locals 4

    iget-object v0, p0, Ldf/h$a;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    iget-object v0, p0, Ldf/h$a;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, v1, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Ldf/h$a;->c:[Ldf/h$b;

    array-length v2, v0

    :goto_0
    if-ge v1, v2, :cond_1

    add-int/lit8 v3, v1, 0x1

    if-eq v3, p1, :cond_0

    aget-object v1, v0, v1

    invoke-virtual {v1}, Ldf/h$b;->cancel()V

    :cond_0
    move v1, v3

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    return p1

    :cond_2
    return v1
.end method

.method public cancel()V
    .locals 4

    iget-object v0, p0, Ldf/h$a;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Ldf/h$a;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->lazySet(I)V

    iget-object v0, p0, Ldf/h$a;->c:[Ldf/h$b;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    invoke-virtual {v3}, Ldf/h$b;->cancel()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public i(J)V
    .locals 4

    invoke-static {p1, p2}, Lmf/j;->m(J)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Ldf/h$a;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v1, p0, Ldf/h$a;->c:[Ldf/h$b;

    add-int/lit8 v0, v0, -0x1

    aget-object v0, v1, v0

    invoke-virtual {v0, p1, p2}, Ldf/h$b;->i(J)V

    goto :goto_1

    :cond_0
    if-nez v0, :cond_1

    iget-object v0, p0, Ldf/h$a;->c:[Ldf/h$b;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    invoke-virtual {v3, p1, p2}, Ldf/h$b;->i(J)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method
