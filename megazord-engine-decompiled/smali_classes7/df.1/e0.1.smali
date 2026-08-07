.class public final Ldf/e0;
.super LTe/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "U:",
        "Ljava/lang/Object;",
        ">",
        "LTe/l<",
        "TU;>;"
    }
.end annotation


# instance fields
.field public final c:LCi/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LCi/b<",
            "TT;>;"
        }
    .end annotation
.end field

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
.method public constructor <init>(LCi/b;LXe/o;ZII)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LCi/b<",
            "TT;>;",
            "LXe/o<",
            "-TT;+",
            "LCi/b<",
            "+TU;>;>;ZII)V"
        }
    .end annotation

    invoke-direct {p0}, LTe/l;-><init>()V

    iput-object p1, p0, Ldf/e0;->c:LCi/b;

    iput-object p2, p0, Ldf/e0;->d:LXe/o;

    iput-boolean p3, p0, Ldf/e0;->e:Z

    iput p4, p0, Ldf/e0;->f:I

    iput p5, p0, Ldf/e0;->g:I

    return-void
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

    iget-object v0, p0, Ldf/e0;->c:LCi/b;

    iget-object v1, p0, Ldf/e0;->d:LXe/o;

    invoke-static {v0, p1, v1}, Ldf/k1;->b(LCi/b;LCi/c;LXe/o;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Ldf/e0;->c:LCi/b;

    iget-object v1, p0, Ldf/e0;->d:LXe/o;

    iget-boolean v2, p0, Ldf/e0;->e:Z

    iget v3, p0, Ldf/e0;->f:I

    iget v4, p0, Ldf/e0;->g:I

    invoke-static {p1, v1, v2, v3, v4}, Ldf/a0;->O8(LCi/c;LXe/o;ZII)LTe/q;

    move-result-object p1

    invoke-interface {v0, p1}, LCi/b;->l(LCi/c;)V

    return-void
.end method
