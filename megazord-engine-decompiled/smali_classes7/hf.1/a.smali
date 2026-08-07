.class public final Lhf/a;
.super Lpf/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lhf/a$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "C:",
        "Ljava/lang/Object;",
        ">",
        "Lpf/b<",
        "TC;>;"
    }
.end annotation


# instance fields
.field public final a:Lpf/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lpf/b<",
            "+TT;>;"
        }
    .end annotation
.end field

.field public final b:Ljava/util/concurrent/Callable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Callable<",
            "+TC;>;"
        }
    .end annotation
.end field

.field public final c:LXe/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LXe/b<",
            "-TC;-TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lpf/b;Ljava/util/concurrent/Callable;LXe/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lpf/b<",
            "+TT;>;",
            "Ljava/util/concurrent/Callable<",
            "+TC;>;",
            "LXe/b<",
            "-TC;-TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Lpf/b;-><init>()V

    iput-object p1, p0, Lhf/a;->a:Lpf/b;

    iput-object p2, p0, Lhf/a;->b:Ljava/util/concurrent/Callable;

    iput-object p3, p0, Lhf/a;->c:LXe/b;

    return-void
.end method


# virtual methods
.method public F()I
    .locals 1

    iget-object v0, p0, Lhf/a;->a:Lpf/b;

    invoke-virtual {v0}, Lpf/b;->F()I

    move-result v0

    return v0
.end method

.method public Q([LCi/c;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "LCi/c<",
            "-TC;>;)V"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lpf/b;->U([LCi/c;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    array-length v0, p1

    new-array v1, v0, [LCi/c;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    :try_start_0
    iget-object v3, p0, Lhf/a;->b:Ljava/util/concurrent/Callable;

    invoke-interface {v3}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v3

    const-string v4, "The initialSupplier returned a null value"

    invoke-static {v3, v4}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance v4, Lhf/a$a;

    aget-object v5, p1, v2

    iget-object v6, p0, Lhf/a;->c:LXe/b;

    invoke-direct {v4, v5, v3, v6}, Lhf/a$a;-><init>(LCi/c;Ljava/lang/Object;LXe/b;)V

    aput-object v4, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {v0}, Lio/reactivex/exceptions/a;->b(Ljava/lang/Throwable;)V

    invoke-virtual {p0, p1, v0}, Lhf/a;->V([LCi/c;Ljava/lang/Throwable;)V

    return-void

    :cond_1
    iget-object p1, p0, Lhf/a;->a:Lpf/b;

    invoke-virtual {p1, v1}, Lpf/b;->Q([LCi/c;)V

    return-void
.end method

.method public V([LCi/c;Ljava/lang/Throwable;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "LCi/c<",
            "*>;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    invoke-static {p2, v2}, Lmf/g;->b(Ljava/lang/Throwable;LCi/c;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
