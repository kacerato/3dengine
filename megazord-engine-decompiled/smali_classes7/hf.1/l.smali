.class public final Lhf/l;
.super Lpf/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lhf/l$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lpf/b<",
        "TT;>;"
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

.field public final b:LXe/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LXe/g<",
            "-TT;>;"
        }
    .end annotation
.end field

.field public final c:LXe/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LXe/g<",
            "-TT;>;"
        }
    .end annotation
.end field

.field public final d:LXe/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LXe/g<",
            "-",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation
.end field

.field public final e:LXe/a;

.field public final f:LXe/a;

.field public final g:LXe/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LXe/g<",
            "-",
            "LCi/d;",
            ">;"
        }
    .end annotation
.end field

.field public final h:LXe/q;

.field public final i:LXe/a;


# direct methods
.method public constructor <init>(Lpf/b;LXe/g;LXe/g;LXe/g;LXe/a;LXe/a;LXe/g;LXe/q;LXe/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lpf/b<",
            "TT;>;",
            "LXe/g<",
            "-TT;>;",
            "LXe/g<",
            "-TT;>;",
            "LXe/g<",
            "-",
            "Ljava/lang/Throwable;",
            ">;",
            "LXe/a;",
            "LXe/a;",
            "LXe/g<",
            "-",
            "LCi/d;",
            ">;",
            "LXe/q;",
            "LXe/a;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Lpf/b;-><init>()V

    iput-object p1, p0, Lhf/l;->a:Lpf/b;

    const-string p1, "onNext is null"

    invoke-static {p2, p1}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LXe/g;

    iput-object p1, p0, Lhf/l;->b:LXe/g;

    const-string p1, "onAfterNext is null"

    invoke-static {p3, p1}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LXe/g;

    iput-object p1, p0, Lhf/l;->c:LXe/g;

    const-string p1, "onError is null"

    invoke-static {p4, p1}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LXe/g;

    iput-object p1, p0, Lhf/l;->d:LXe/g;

    const-string p1, "onComplete is null"

    invoke-static {p5, p1}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LXe/a;

    iput-object p1, p0, Lhf/l;->e:LXe/a;

    const-string p1, "onAfterTerminated is null"

    invoke-static {p6, p1}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LXe/a;

    iput-object p1, p0, Lhf/l;->f:LXe/a;

    const-string p1, "onSubscribe is null"

    invoke-static {p7, p1}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LXe/g;

    iput-object p1, p0, Lhf/l;->g:LXe/g;

    const-string p1, "onRequest is null"

    invoke-static {p8, p1}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LXe/q;

    iput-object p1, p0, Lhf/l;->h:LXe/q;

    const-string p1, "onCancel is null"

    invoke-static {p9, p1}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LXe/a;

    iput-object p1, p0, Lhf/l;->i:LXe/a;

    return-void
.end method


# virtual methods
.method public F()I
    .locals 1

    iget-object v0, p0, Lhf/l;->a:Lpf/b;

    invoke-virtual {v0}, Lpf/b;->F()I

    move-result v0

    return v0
.end method

.method public Q([LCi/c;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "LCi/c<",
            "-TT;>;)V"
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

    new-instance v3, Lhf/l$a;

    aget-object v4, p1, v2

    invoke-direct {v3, v4, p0}, Lhf/l$a;-><init>(LCi/c;Lhf/l;)V

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lhf/l;->a:Lpf/b;

    invoke-virtual {p1, v1}, Lpf/b;->Q([LCi/c;)V

    return-void
.end method
