.class public final Ldf/h0;
.super LTe/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ldf/h0$a;,
        Ldf/h0$b;,
        Ldf/h0$c;
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
.field public final c:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>([Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;)V"
        }
    .end annotation

    invoke-direct {p0}, LTe/l;-><init>()V

    iput-object p1, p0, Ldf/h0;->c:[Ljava/lang/Object;

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

    instance-of v0, p1, Laf/a;

    if-eqz v0, :cond_0

    new-instance v0, Ldf/h0$a;

    move-object v1, p1

    check-cast v1, Laf/a;

    iget-object v2, p0, Ldf/h0;->c:[Ljava/lang/Object;

    invoke-direct {v0, v1, v2}, Ldf/h0$a;-><init>(Laf/a;[Ljava/lang/Object;)V

    invoke-interface {p1, v0}, LCi/c;->h(LCi/d;)V

    goto :goto_0

    :cond_0
    new-instance v0, Ldf/h0$b;

    iget-object v1, p0, Ldf/h0;->c:[Ljava/lang/Object;

    invoke-direct {v0, p1, v1}, Ldf/h0$b;-><init>(LCi/c;[Ljava/lang/Object;)V

    invoke-interface {p1, v0}, LCi/c;->h(LCi/d;)V

    :goto_0
    return-void
.end method
