.class public final Lgf/h$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LVe/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgf/h;
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
        "LVe/c;"
    }
.end annotation


# instance fields
.field public final b:LTe/I;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LTe/I<",
            "-TT;>;"
        }
    .end annotation
.end field

.field public final c:[Lgf/h$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lgf/h$b<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final d:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method public constructor <init>(LTe/I;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LTe/I<",
            "-TT;>;I)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lgf/h$a;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    iput-object p1, p0, Lgf/h$a;->b:LTe/I;

    new-array p1, p2, [Lgf/h$b;

    iput-object p1, p0, Lgf/h$a;->c:[Lgf/h$b;

    return-void
.end method


# virtual methods
.method public a([LTe/G;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "LTe/G<",
            "+TT;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lgf/h$a;->c:[Lgf/h$b;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_0

    new-instance v4, Lgf/h$b;

    add-int/lit8 v5, v3, 0x1

    iget-object v6, p0, Lgf/h$a;->b:LTe/I;

    invoke-direct {v4, p0, v5, v6}, Lgf/h$b;-><init>(Lgf/h$a;ILTe/I;)V

    aput-object v4, v0, v3

    move v3, v5

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lgf/h$a;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->lazySet(I)V

    iget-object v3, p0, Lgf/h$a;->b:LTe/I;

    invoke-interface {v3, p0}, LTe/I;->e(LVe/c;)V

    :goto_1
    if-ge v2, v1, :cond_2

    iget-object v3, p0, Lgf/h$a;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    if-eqz v3, :cond_1

    return-void

    :cond_1
    aget-object v3, p1, v2

    aget-object v4, v0, v2

    invoke-interface {v3, v4}, LTe/G;->b(LTe/I;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method public b(I)Z
    .locals 5

    iget-object v0, p0, Lgf/h$a;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_3

    iget-object v0, p0, Lgf/h$a;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, v2, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lgf/h$a;->c:[Lgf/h$b;

    array-length v3, v0

    :goto_0
    if-ge v2, v3, :cond_1

    add-int/lit8 v4, v2, 0x1

    if-eq v4, p1, :cond_0

    aget-object v2, v0, v2

    invoke-virtual {v2}, Lgf/h$b;->b()V

    :cond_0
    move v2, v4

    goto :goto_0

    :cond_1
    return v1

    :cond_2
    return v2

    :cond_3
    if-ne v0, p1, :cond_4

    goto :goto_1

    :cond_4
    move v1, v2

    :goto_1
    return v1
.end method

.method public d()Z
    .locals 2

    iget-object v0, p0, Lgf/h$a;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public dispose()V
    .locals 4

    iget-object v0, p0, Lgf/h$a;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lgf/h$a;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->lazySet(I)V

    iget-object v0, p0, Lgf/h$a;->c:[Lgf/h$b;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    invoke-virtual {v3}, Lgf/h$b;->b()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
