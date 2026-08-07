.class public final Lhf/o;
.super Lpf/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lhf/o$c;,
        Lhf/o$d;,
        Lhf/o$a;,
        Lhf/o$b;
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
            "+TT;>;"
        }
    .end annotation
.end field

.field public final b:LTe/J;

.field public final c:I


# direct methods
.method public constructor <init>(Lpf/b;LTe/J;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lpf/b<",
            "+TT;>;",
            "LTe/J;",
            "I)V"
        }
    .end annotation

    invoke-direct {p0}, Lpf/b;-><init>()V

    iput-object p1, p0, Lhf/o;->a:Lpf/b;

    iput-object p2, p0, Lhf/o;->b:LTe/J;

    iput p3, p0, Lhf/o;->c:I

    return-void
.end method


# virtual methods
.method public F()I
    .locals 1

    iget-object v0, p0, Lhf/o;->a:Lpf/b;

    invoke-virtual {v0}, Lpf/b;->F()I

    move-result v0

    return v0
.end method

.method public Q([LCi/c;)V
    .locals 4
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

    iget-object v2, p0, Lhf/o;->b:LTe/J;

    instance-of v3, v2, Lkf/o;

    if-eqz v3, :cond_1

    check-cast v2, Lkf/o;

    new-instance v3, Lhf/o$b;

    invoke-direct {v3, p0, p1, v1}, Lhf/o$b;-><init>(Lhf/o;[LCi/c;[LCi/c;)V

    invoke-interface {v2, v0, v3}, Lkf/o;->a(ILkf/o$a;)V

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    iget-object v3, p0, Lhf/o;->b:LTe/J;

    invoke-virtual {v3}, LTe/J;->c()LTe/J$c;

    move-result-object v3

    invoke-virtual {p0, v2, p1, v1, v3}, Lhf/o;->V(I[LCi/c;[LCi/c;LTe/J$c;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    iget-object p1, p0, Lhf/o;->a:Lpf/b;

    invoke-virtual {p1, v1}, Lpf/b;->Q([LCi/c;)V

    return-void
.end method

.method public V(I[LCi/c;[LCi/c;LTe/J$c;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[",
            "LCi/c<",
            "-TT;>;[",
            "LCi/c<",
            "TT;>;",
            "LTe/J$c;",
            ")V"
        }
    .end annotation

    aget-object p2, p2, p1

    new-instance v0, Ljf/b;

    iget v1, p0, Lhf/o;->c:I

    invoke-direct {v0, v1}, Ljf/b;-><init>(I)V

    instance-of v1, p2, Laf/a;

    if-eqz v1, :cond_0

    new-instance v1, Lhf/o$c;

    check-cast p2, Laf/a;

    iget v2, p0, Lhf/o;->c:I

    invoke-direct {v1, p2, v2, v0, p4}, Lhf/o$c;-><init>(Laf/a;ILjf/b;LTe/J$c;)V

    aput-object v1, p3, p1

    goto :goto_0

    :cond_0
    new-instance v1, Lhf/o$d;

    iget v2, p0, Lhf/o;->c:I

    invoke-direct {v1, p2, v2, v0, p4}, Lhf/o$d;-><init>(LCi/c;ILjf/b;LTe/J$c;)V

    aput-object v1, p3, p1

    :goto_0
    return-void
.end method
