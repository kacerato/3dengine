.class public final Ldf/d1;
.super Ldf/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ldf/d1$a;,
        Ldf/d1$c;,
        Ldf/d1$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ldf/a<",
        "TT;TT;>;"
    }
.end annotation


# instance fields
.field public final d:LXe/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LXe/o<",
            "-",
            "LTe/l<",
            "Ljava/lang/Object;",
            ">;+",
            "LCi/b<",
            "*>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(LTe/l;LXe/o;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LTe/l<",
            "TT;>;",
            "LXe/o<",
            "-",
            "LTe/l<",
            "Ljava/lang/Object;",
            ">;+",
            "LCi/b<",
            "*>;>;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Ldf/a;-><init>(LTe/l;)V

    iput-object p2, p0, Ldf/d1;->d:LXe/o;

    return-void
.end method


# virtual methods
.method public m6(LCi/c;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LCi/c<",
            "-TT;>;)V"
        }
    .end annotation

    new-instance v0, Luf/e;

    invoke-direct {v0, p1}, Luf/e;-><init>(LCi/c;)V

    const/16 v1, 0x8

    invoke-static {v1}, Lrf/h;->V8(I)Lrf/h;

    move-result-object v1

    invoke-virtual {v1}, Lrf/c;->S8()Lrf/c;

    move-result-object v1

    :try_start_0
    iget-object v2, p0, Ldf/d1;->d:LXe/o;

    invoke-interface {v2, v1}, LXe/o;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    const-string v3, "handler returned a null Publisher"

    invoke-static {v2, v3}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LCi/b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance v3, Ldf/d1$b;

    iget-object v4, p0, Ldf/a;->c:LTe/l;

    invoke-direct {v3, v4}, Ldf/d1$b;-><init>(LCi/b;)V

    new-instance v4, Ldf/d1$a;

    invoke-direct {v4, v0, v1, v3}, Ldf/d1$a;-><init>(LCi/c;Lrf/c;LCi/d;)V

    iput-object v4, v3, Ldf/d1$b;->e:Ldf/d1$c;

    invoke-interface {p1, v4}, LCi/c;->h(LCi/d;)V

    invoke-interface {v2, v3}, LCi/b;->l(LCi/c;)V

    const/4 p1, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v3, p1}, Ldf/d1$b;->g(Ljava/lang/Object;)V

    return-void

    :catchall_0
    move-exception v0

    invoke-static {v0}, Lio/reactivex/exceptions/a;->b(Ljava/lang/Throwable;)V

    invoke-static {v0, p1}, Lmf/g;->b(Ljava/lang/Throwable;LCi/c;)V

    return-void
.end method
