.class public final Ldf/F;
.super LTe/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ldf/F$f;,
        Ldf/F$c;,
        Ldf/F$e;,
        Ldf/F$d;,
        Ldf/F$h;,
        Ldf/F$g;,
        Ldf/F$b;,
        Ldf/F$i;
    }
.end annotation

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
.field public final c:LTe/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LTe/o<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final d:LTe/b;


# direct methods
.method public constructor <init>(LTe/o;LTe/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LTe/o<",
            "TT;>;",
            "LTe/b;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, LTe/l;-><init>()V

    iput-object p1, p0, Ldf/F;->c:LTe/o;

    iput-object p2, p0, Ldf/F;->d:LTe/b;

    return-void
.end method


# virtual methods
.method public m6(LCi/c;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LCi/c<",
            "-TT;>;)V"
        }
    .end annotation

    sget-object v0, Ldf/F$a;->a:[I

    iget-object v1, p0, Ldf/F;->d:LTe/b;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    new-instance v0, Ldf/F$c;

    invoke-static {}, LTe/l;->a0()I

    move-result v1

    invoke-direct {v0, p1, v1}, Ldf/F$c;-><init>(LCi/c;I)V

    goto :goto_0

    :cond_0
    new-instance v0, Ldf/F$f;

    invoke-direct {v0, p1}, Ldf/F$f;-><init>(LCi/c;)V

    goto :goto_0

    :cond_1
    new-instance v0, Ldf/F$d;

    invoke-direct {v0, p1}, Ldf/F$d;-><init>(LCi/c;)V

    goto :goto_0

    :cond_2
    new-instance v0, Ldf/F$e;

    invoke-direct {v0, p1}, Ldf/F$e;-><init>(LCi/c;)V

    goto :goto_0

    :cond_3
    new-instance v0, Ldf/F$g;

    invoke-direct {v0, p1}, Ldf/F$g;-><init>(LCi/c;)V

    :goto_0
    invoke-interface {p1, v0}, LCi/c;->h(LCi/d;)V

    :try_start_0
    iget-object p1, p0, Ldf/F;->c:LTe/o;

    invoke-interface {p1, v0}, LTe/o;->subscribe(LTe/n;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    invoke-static {p1}, Lio/reactivex/exceptions/a;->b(Ljava/lang/Throwable;)V

    invoke-virtual {v0, p1}, Ldf/F$b;->onError(Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method
