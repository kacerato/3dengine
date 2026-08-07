.class public final Ldf/A1;
.super Ldf/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ldf/A1$a;,
        Ldf/A1$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ldf/a<",
        "TT;TR;>;"
    }
.end annotation


# instance fields
.field public final d:LXe/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LXe/o<",
            "-TT;+",
            "LCi/b<",
            "+TR;>;>;"
        }
    .end annotation
.end field

.field public final e:I

.field public final f:Z


# direct methods
.method public constructor <init>(LTe/l;LXe/o;IZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LTe/l<",
            "TT;>;",
            "LXe/o<",
            "-TT;+",
            "LCi/b<",
            "+TR;>;>;IZ)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Ldf/a;-><init>(LTe/l;)V

    iput-object p2, p0, Ldf/A1;->d:LXe/o;

    iput p3, p0, Ldf/A1;->e:I

    iput-boolean p4, p0, Ldf/A1;->f:Z

    return-void
.end method


# virtual methods
.method public m6(LCi/c;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LCi/c<",
            "-TR;>;)V"
        }
    .end annotation

    iget-object v0, p0, Ldf/a;->c:LTe/l;

    iget-object v1, p0, Ldf/A1;->d:LXe/o;

    invoke-static {v0, p1, v1}, Ldf/k1;->b(LCi/b;LCi/c;LXe/o;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Ldf/a;->c:LTe/l;

    new-instance v1, Ldf/A1$b;

    iget-object v2, p0, Ldf/A1;->d:LXe/o;

    iget v3, p0, Ldf/A1;->e:I

    iget-boolean v4, p0, Ldf/A1;->f:Z

    invoke-direct {v1, p1, v2, v3, v4}, Ldf/A1$b;-><init>(LCi/c;LXe/o;IZ)V

    invoke-virtual {v0, v1}, LTe/l;->l6(LTe/q;)V

    return-void
.end method
