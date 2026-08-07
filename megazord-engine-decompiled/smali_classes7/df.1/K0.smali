.class public final Ldf/K0;
.super Ldf/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ldf/K0$b;,
        Ldf/K0$c;,
        Ldf/K0$a;
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
.field public final d:LTe/J;

.field public final e:Z

.field public final f:I


# direct methods
.method public constructor <init>(LTe/l;LTe/J;ZI)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LTe/l<",
            "TT;>;",
            "LTe/J;",
            "ZI)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Ldf/a;-><init>(LTe/l;)V

    iput-object p2, p0, Ldf/K0;->d:LTe/J;

    iput-boolean p3, p0, Ldf/K0;->e:Z

    iput p4, p0, Ldf/K0;->f:I

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

    iget-object v0, p0, Ldf/K0;->d:LTe/J;

    invoke-virtual {v0}, LTe/J;->c()LTe/J$c;

    move-result-object v0

    instance-of v1, p1, Laf/a;

    if-eqz v1, :cond_0

    iget-object v1, p0, Ldf/a;->c:LTe/l;

    new-instance v2, Ldf/K0$b;

    check-cast p1, Laf/a;

    iget-boolean v3, p0, Ldf/K0;->e:Z

    iget v4, p0, Ldf/K0;->f:I

    invoke-direct {v2, p1, v0, v3, v4}, Ldf/K0$b;-><init>(Laf/a;LTe/J$c;ZI)V

    invoke-virtual {v1, v2}, LTe/l;->l6(LTe/q;)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Ldf/a;->c:LTe/l;

    new-instance v2, Ldf/K0$c;

    iget-boolean v3, p0, Ldf/K0;->e:Z

    iget v4, p0, Ldf/K0;->f:I

    invoke-direct {v2, p1, v0, v3, v4}, Ldf/K0$c;-><init>(LCi/c;LTe/J$c;ZI)V

    invoke-virtual {v1, v2}, LTe/l;->l6(LTe/q;)V

    :goto_0
    return-void
.end method
