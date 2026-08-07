.class public final Lef/v0;
.super LTe/s;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lef/v0$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "LTe/s<",
        "TR;>;"
    }
.end annotation


# instance fields
.field public final b:Ljava/lang/Iterable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Iterable<",
            "+",
            "LTe/y<",
            "+TT;>;>;"
        }
    .end annotation
.end field

.field public final c:LXe/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LXe/o<",
            "-[",
            "Ljava/lang/Object;",
            "+TR;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Iterable;LXe/o;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "LTe/y<",
            "+TT;>;>;",
            "LXe/o<",
            "-[",
            "Ljava/lang/Object;",
            "+TR;>;)V"
        }
    .end annotation

    invoke-direct {p0}, LTe/s;-><init>()V

    iput-object p1, p0, Lef/v0;->b:Ljava/lang/Iterable;

    iput-object p2, p0, Lef/v0;->c:LXe/o;

    return-void
.end method


# virtual methods
.method public t1(LTe/v;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LTe/v<",
            "-TR;>;)V"
        }
    .end annotation

    const/16 v0, 0x8

    new-array v0, v0, [LTe/y;

    :try_start_0
    iget-object v1, p0, Lef/v0;->b:Ljava/lang/Iterable;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, LTe/y;

    if-nez v4, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "One of the sources is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    invoke-static {v0, p1}, LYe/e;->g(Ljava/lang/Throwable;LTe/v;)V

    return-void

    :catchall_0
    move-exception v0

    goto :goto_2

    :cond_0
    array-length v5, v0

    if-ne v3, v5, :cond_1

    shr-int/lit8 v5, v3, 0x2

    add-int/2addr v5, v3

    invoke-static {v0, v5}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LTe/y;

    :cond_1
    add-int/lit8 v5, v3, 0x1

    aput-object v4, v0, v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v3, v5

    goto :goto_0

    :cond_2
    if-nez v3, :cond_3

    invoke-static {p1}, LYe/e;->b(LTe/v;)V

    return-void

    :cond_3
    const/4 v1, 0x1

    if-ne v3, v1, :cond_4

    aget-object v0, v0, v2

    new-instance v1, Lef/W$a;

    new-instance v2, Lef/v0$a;

    invoke-direct {v2, p0}, Lef/v0$a;-><init>(Lef/v0;)V

    invoke-direct {v1, p1, v2}, Lef/W$a;-><init>(LTe/v;LXe/o;)V

    invoke-interface {v0, v1}, LTe/y;->d(LTe/v;)V

    return-void

    :cond_4
    new-instance v1, Lef/u0$b;

    iget-object v4, p0, Lef/v0;->c:LXe/o;

    invoke-direct {v1, p1, v3, v4}, Lef/u0$b;-><init>(LTe/v;ILXe/o;)V

    invoke-interface {p1, v1}, LTe/v;->e(LVe/c;)V

    :goto_1
    if-ge v2, v3, :cond_6

    invoke-virtual {v1}, Lef/u0$b;->d()Z

    move-result p1

    if-eqz p1, :cond_5

    return-void

    :cond_5
    aget-object p1, v0, v2

    iget-object v4, v1, Lef/u0$b;->d:[Lef/u0$c;

    aget-object v4, v4, v2

    invoke-interface {p1, v4}, LTe/y;->d(LTe/v;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_6
    return-void

    :goto_2
    invoke-static {v0}, Lio/reactivex/exceptions/a;->b(Ljava/lang/Throwable;)V

    invoke-static {v0, p1}, LYe/e;->g(Ljava/lang/Throwable;LTe/v;)V

    return-void
.end method
