.class public final Ldf/i1;
.super LTe/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ldf/i1$a;,
        Ldf/i1$b;,
        Ldf/i1$d;,
        Ldf/i1$c;
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
.field public final c:LCi/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LCi/b<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final d:LCi/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LCi/b<",
            "*>;"
        }
    .end annotation
.end field

.field public final e:Z


# direct methods
.method public constructor <init>(LCi/b;LCi/b;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LCi/b<",
            "TT;>;",
            "LCi/b<",
            "*>;Z)V"
        }
    .end annotation

    invoke-direct {p0}, LTe/l;-><init>()V

    iput-object p1, p0, Ldf/i1;->c:LCi/b;

    iput-object p2, p0, Ldf/i1;->d:LCi/b;

    iput-boolean p3, p0, Ldf/i1;->e:Z

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

    new-instance v0, Luf/e;

    invoke-direct {v0, p1}, Luf/e;-><init>(LCi/c;)V

    iget-boolean p1, p0, Ldf/i1;->e:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Ldf/i1;->c:LCi/b;

    new-instance v1, Ldf/i1$a;

    iget-object v2, p0, Ldf/i1;->d:LCi/b;

    invoke-direct {v1, v0, v2}, Ldf/i1$a;-><init>(LCi/c;LCi/b;)V

    invoke-interface {p1, v1}, LCi/b;->l(LCi/c;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Ldf/i1;->c:LCi/b;

    new-instance v1, Ldf/i1$b;

    iget-object v2, p0, Ldf/i1;->d:LCi/b;

    invoke-direct {v1, v0, v2}, Ldf/i1$b;-><init>(LCi/c;LCi/b;)V

    invoke-interface {p1, v1}, LCi/b;->l(LCi/c;)V

    :goto_0
    return-void
.end method
