.class public final Ldf/D0;
.super Ldf/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ldf/D0$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ldf/a<",
        "TT;TR;>;"
    }
.end annotation


# instance fields
.field public final d:LXe/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LXe/o<",
            "-TT;+TR;>;"
        }
    .end annotation
.end field

.field public final e:LXe/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LXe/o<",
            "-",
            "Ljava/lang/Throwable;",
            "+TR;>;"
        }
    .end annotation
.end field

.field public final f:Ljava/util/concurrent/Callable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Callable<",
            "+TR;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(LTe/l;LXe/o;LXe/o;Ljava/util/concurrent/Callable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LTe/l<",
            "TT;>;",
            "LXe/o<",
            "-TT;+TR;>;",
            "LXe/o<",
            "-",
            "Ljava/lang/Throwable;",
            "+TR;>;",
            "Ljava/util/concurrent/Callable<",
            "+TR;>;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Ldf/a;-><init>(LTe/l;)V

    iput-object p2, p0, Ldf/D0;->d:LXe/o;

    iput-object p3, p0, Ldf/D0;->e:LXe/o;

    iput-object p4, p0, Ldf/D0;->f:Ljava/util/concurrent/Callable;

    return-void
.end method


# virtual methods
.method public m6(LCi/c;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LCi/c<",
            "-TR;>;)V"
        }
    .end annotation

    iget-object v0, p0, Ldf/a;->c:LTe/l;

    new-instance v1, Ldf/D0$a;

    iget-object v2, p0, Ldf/D0;->d:LXe/o;

    iget-object v3, p0, Ldf/D0;->e:LXe/o;

    iget-object v4, p0, Ldf/D0;->f:Ljava/util/concurrent/Callable;

    invoke-direct {v1, p1, v2, v3, v4}, Ldf/D0$a;-><init>(LCi/c;LXe/o;LXe/o;Ljava/util/concurrent/Callable;)V

    invoke-virtual {v0, v1}, LTe/l;->l6(LTe/q;)V

    return-void
.end method
