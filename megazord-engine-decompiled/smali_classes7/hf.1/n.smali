.class public final Lhf/n;
.super LTe/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lhf/n$c;,
        Lhf/n$a;,
        Lhf/n$b;
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
.field public final c:Lpf/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lpf/b<",
            "+TT;>;"
        }
    .end annotation
.end field

.field public final d:LXe/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LXe/c<",
            "TT;TT;TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lpf/b;LXe/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lpf/b<",
            "+TT;>;",
            "LXe/c<",
            "TT;TT;TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, LTe/l;-><init>()V

    iput-object p1, p0, Lhf/n;->c:Lpf/b;

    iput-object p2, p0, Lhf/n;->d:LXe/c;

    return-void
.end method


# virtual methods
.method public m6(LCi/c;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LCi/c<",
            "-TT;>;)V"
        }
    .end annotation

    new-instance v0, Lhf/n$b;

    iget-object v1, p0, Lhf/n;->c:Lpf/b;

    invoke-virtual {v1}, Lpf/b;->F()I

    move-result v1

    iget-object v2, p0, Lhf/n;->d:LXe/c;

    invoke-direct {v0, p1, v1, v2}, Lhf/n$b;-><init>(LCi/c;ILXe/c;)V

    invoke-interface {p1, v0}, LCi/c;->h(LCi/d;)V

    iget-object p1, p0, Lhf/n;->c:Lpf/b;

    iget-object v0, v0, Lhf/n$b;->n:[Lhf/n$a;

    invoke-virtual {p1, v0}, Lpf/b;->Q([LCi/c;)V

    return-void
.end method
