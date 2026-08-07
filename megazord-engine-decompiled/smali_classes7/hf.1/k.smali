.class public final Lhf/k;
.super Lpf/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lhf/k$b;,
        Lhf/k$c;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Lpf/b<",
        "TR;>;"
    }
.end annotation


# instance fields
.field public final a:Lpf/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lpf/b<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final b:LXe/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LXe/o<",
            "-TT;+TR;>;"
        }
    .end annotation
.end field

.field public final c:LXe/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LXe/c<",
            "-",
            "Ljava/lang/Long;",
            "-",
            "Ljava/lang/Throwable;",
            "Lpf/a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lpf/b;LXe/o;LXe/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lpf/b<",
            "TT;>;",
            "LXe/o<",
            "-TT;+TR;>;",
            "LXe/c<",
            "-",
            "Ljava/lang/Long;",
            "-",
            "Ljava/lang/Throwable;",
            "Lpf/a;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lpf/b;-><init>()V

    iput-object p1, p0, Lhf/k;->a:Lpf/b;

    iput-object p2, p0, Lhf/k;->b:LXe/o;

    iput-object p3, p0, Lhf/k;->c:LXe/c;

    return-void
.end method


# virtual methods
.method public F()I
    .locals 1

    iget-object v0, p0, Lhf/k;->a:Lpf/b;

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
            "-TR;>;)V"
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
    if-ge v2, v0, :cond_2

    aget-object v3, p1, v2

    instance-of v4, v3, Laf/a;

    if-eqz v4, :cond_1

    new-instance v4, Lhf/k$b;

    check-cast v3, Laf/a;

    iget-object v5, p0, Lhf/k;->b:LXe/o;

    iget-object v6, p0, Lhf/k;->c:LXe/c;

    invoke-direct {v4, v3, v5, v6}, Lhf/k$b;-><init>(Laf/a;LXe/o;LXe/c;)V

    aput-object v4, v1, v2

    goto :goto_1

    :cond_1
    new-instance v4, Lhf/k$c;

    iget-object v5, p0, Lhf/k;->b:LXe/o;

    iget-object v6, p0, Lhf/k;->c:LXe/c;

    invoke-direct {v4, v3, v5, v6}, Lhf/k$c;-><init>(LCi/c;LXe/o;LXe/c;)V

    aput-object v4, v1, v2

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lhf/k;->a:Lpf/b;

    invoke-virtual {p1, v1}, Lpf/b;->Q([LCi/c;)V

    return-void
.end method
