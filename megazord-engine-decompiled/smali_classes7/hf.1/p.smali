.class public final Lhf/p;
.super LTe/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lhf/p$a;,
        Lhf/p$b;
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
            "Ljava/util/List<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field public final d:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "-TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lpf/b;Ljava/util/Comparator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lpf/b<",
            "Ljava/util/List<",
            "TT;>;>;",
            "Ljava/util/Comparator<",
            "-TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, LTe/l;-><init>()V

    iput-object p1, p0, Lhf/p;->c:Lpf/b;

    iput-object p2, p0, Lhf/p;->d:Ljava/util/Comparator;

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

    new-instance v0, Lhf/p$b;

    iget-object v1, p0, Lhf/p;->c:Lpf/b;

    invoke-virtual {v1}, Lpf/b;->F()I

    move-result v1

    iget-object v2, p0, Lhf/p;->d:Ljava/util/Comparator;

    invoke-direct {v0, p1, v1, v2}, Lhf/p$b;-><init>(LCi/c;ILjava/util/Comparator;)V

    invoke-interface {p1, v0}, LCi/c;->h(LCi/d;)V

    iget-object p1, p0, Lhf/p;->c:Lpf/b;

    iget-object v0, v0, Lhf/p$b;->c:[Lhf/p$a;

    invoke-virtual {p1, v0}, Lpf/b;->Q([LCi/c;)V

    return-void
.end method
