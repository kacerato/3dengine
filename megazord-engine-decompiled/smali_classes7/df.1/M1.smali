.class public final Ldf/M1;
.super Ldf/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ldf/M1$a;,
        Ldf/M1$b;,
        Ldf/M1$d;,
        Ldf/M1$c;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "U:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ldf/a<",
        "TT;TT;>;"
    }
.end annotation


# instance fields
.field public final d:LCi/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LCi/b<",
            "TU;>;"
        }
    .end annotation
.end field

.field public final e:LXe/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LXe/o<",
            "-TT;+",
            "LCi/b<",
            "TV;>;>;"
        }
    .end annotation
.end field

.field public final f:LCi/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LCi/b<",
            "+TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(LTe/l;LCi/b;LXe/o;LCi/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LTe/l<",
            "TT;>;",
            "LCi/b<",
            "TU;>;",
            "LXe/o<",
            "-TT;+",
            "LCi/b<",
            "TV;>;>;",
            "LCi/b<",
            "+TT;>;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Ldf/a;-><init>(LTe/l;)V

    iput-object p2, p0, Ldf/M1;->d:LCi/b;

    iput-object p3, p0, Ldf/M1;->e:LXe/o;

    iput-object p4, p0, Ldf/M1;->f:LCi/b;

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

    iget-object v0, p0, Ldf/M1;->f:LCi/b;

    if-nez v0, :cond_0

    new-instance v0, Ldf/M1$d;

    iget-object v1, p0, Ldf/M1;->e:LXe/o;

    invoke-direct {v0, p1, v1}, Ldf/M1$d;-><init>(LCi/c;LXe/o;)V

    invoke-interface {p1, v0}, LCi/c;->h(LCi/d;)V

    iget-object p1, p0, Ldf/M1;->d:LCi/b;

    invoke-virtual {v0, p1}, Ldf/M1$d;->d(LCi/b;)V

    iget-object p1, p0, Ldf/a;->c:LTe/l;

    invoke-virtual {p1, v0}, LTe/l;->l6(LTe/q;)V

    goto :goto_0

    :cond_0
    new-instance v0, Ldf/M1$b;

    iget-object v1, p0, Ldf/M1;->e:LXe/o;

    iget-object v2, p0, Ldf/M1;->f:LCi/b;

    invoke-direct {v0, p1, v1, v2}, Ldf/M1$b;-><init>(LCi/c;LXe/o;LCi/b;)V

    invoke-interface {p1, v0}, LCi/c;->h(LCi/d;)V

    iget-object p1, p0, Ldf/M1;->d:LCi/b;

    invoke-virtual {v0, p1}, Ldf/M1$b;->m(LCi/b;)V

    iget-object p1, p0, Ldf/a;->c:LTe/l;

    invoke-virtual {p1, v0}, LTe/l;->l6(LTe/q;)V

    :goto_0
    return-void
.end method
