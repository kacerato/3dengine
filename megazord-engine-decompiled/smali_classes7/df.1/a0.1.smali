.class public final Ldf/a0;
.super Ldf/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ldf/a0$a;,
        Ldf/a0$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "U:",
        "Ljava/lang/Object;",
        ">",
        "Ldf/a<",
        "TT;TU;>;"
    }
.end annotation


# instance fields
.field public final d:LXe/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LXe/o<",
            "-TT;+",
            "LCi/b<",
            "+TU;>;>;"
        }
    .end annotation
.end field

.field public final e:Z

.field public final f:I

.field public final g:I


# direct methods
.method public constructor <init>(LTe/l;LXe/o;ZII)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LTe/l<",
            "TT;>;",
            "LXe/o<",
            "-TT;+",
            "LCi/b<",
            "+TU;>;>;ZII)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Ldf/a;-><init>(LTe/l;)V

    iput-object p2, p0, Ldf/a0;->d:LXe/o;

    iput-boolean p3, p0, Ldf/a0;->e:Z

    iput p4, p0, Ldf/a0;->f:I

    iput p5, p0, Ldf/a0;->g:I

    return-void
.end method

.method public static O8(LCi/c;LXe/o;ZII)LTe/q;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "U:",
            "Ljava/lang/Object;",
            ">(",
            "LCi/c<",
            "-TU;>;",
            "LXe/o<",
            "-TT;+",
            "LCi/b<",
            "+TU;>;>;ZII)",
            "LTe/q<",
            "TT;>;"
        }
    .end annotation

    new-instance v6, Ldf/a0$b;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Ldf/a0$b;-><init>(LCi/c;LXe/o;ZII)V

    return-object v6
.end method


# virtual methods
.method public m6(LCi/c;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LCi/c<",
            "-TU;>;)V"
        }
    .end annotation

    iget-object v0, p0, Ldf/a;->c:LTe/l;

    iget-object v1, p0, Ldf/a0;->d:LXe/o;

    invoke-static {v0, p1, v1}, Ldf/k1;->b(LCi/b;LCi/c;LXe/o;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Ldf/a;->c:LTe/l;

    iget-object v1, p0, Ldf/a0;->d:LXe/o;

    iget-boolean v2, p0, Ldf/a0;->e:Z

    iget v3, p0, Ldf/a0;->f:I

    iget v4, p0, Ldf/a0;->g:I

    invoke-static {p1, v1, v2, v3, v4}, Ldf/a0;->O8(LCi/c;LXe/o;ZII)LTe/q;

    move-result-object p1

    invoke-virtual {v0, p1}, LTe/l;->l6(LTe/q;)V

    return-void
.end method
