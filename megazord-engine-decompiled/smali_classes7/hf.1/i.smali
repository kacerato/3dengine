.class public final Lhf/i;
.super LTe/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lhf/i$a;,
        Lhf/i$d;,
        Lhf/i$b;,
        Lhf/i$c;
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

.field public final d:I

.field public final e:Z


# direct methods
.method public constructor <init>(Lpf/b;IZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lpf/b<",
            "+TT;>;IZ)V"
        }
    .end annotation

    invoke-direct {p0}, LTe/l;-><init>()V

    iput-object p1, p0, Lhf/i;->c:Lpf/b;

    iput p2, p0, Lhf/i;->d:I

    iput-boolean p3, p0, Lhf/i;->e:Z

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

    iget-boolean v0, p0, Lhf/i;->e:Z

    if-eqz v0, :cond_0

    new-instance v0, Lhf/i$d;

    iget-object v1, p0, Lhf/i;->c:Lpf/b;

    invoke-virtual {v1}, Lpf/b;->F()I

    move-result v1

    iget v2, p0, Lhf/i;->d:I

    invoke-direct {v0, p1, v1, v2}, Lhf/i$d;-><init>(LCi/c;II)V

    goto :goto_0

    :cond_0
    new-instance v0, Lhf/i$b;

    iget-object v1, p0, Lhf/i;->c:Lpf/b;

    invoke-virtual {v1}, Lpf/b;->F()I

    move-result v1

    iget v2, p0, Lhf/i;->d:I

    invoke-direct {v0, p1, v1, v2}, Lhf/i$b;-><init>(LCi/c;II)V

    :goto_0
    invoke-interface {p1, v0}, LCi/c;->h(LCi/d;)V

    iget-object p1, p0, Lhf/i;->c:Lpf/b;

    iget-object v0, v0, Lhf/i$c;->c:[Lhf/i$a;

    invoke-virtual {p1, v0}, Lpf/b;->Q([LCi/c;)V

    return-void
.end method
