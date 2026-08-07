.class public final Ldf/U0;
.super LTe/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ldf/U0$b;,
        Ldf/U0$c;,
        Ldf/U0$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "LTe/l<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field public final c:I

.field public final d:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, LTe/l;-><init>()V

    iput p1, p0, Ldf/U0;->c:I

    add-int/2addr p1, p2

    iput p1, p0, Ldf/U0;->d:I

    return-void
.end method


# virtual methods
.method public m6(LCi/c;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LCi/c<",
            "-",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    instance-of v0, p1, Laf/a;

    if-eqz v0, :cond_0

    new-instance v0, Ldf/U0$b;

    move-object v1, p1

    check-cast v1, Laf/a;

    iget v2, p0, Ldf/U0;->c:I

    iget v3, p0, Ldf/U0;->d:I

    invoke-direct {v0, v1, v2, v3}, Ldf/U0$b;-><init>(Laf/a;II)V

    invoke-interface {p1, v0}, LCi/c;->h(LCi/d;)V

    goto :goto_0

    :cond_0
    new-instance v0, Ldf/U0$c;

    iget v1, p0, Ldf/U0;->c:I

    iget v2, p0, Ldf/U0;->d:I

    invoke-direct {v0, p1, v1, v2}, Ldf/U0$c;-><init>(LCi/c;II)V

    invoke-interface {p1, v0}, LCi/c;->h(LCi/d;)V

    :goto_0
    return-void
.end method
