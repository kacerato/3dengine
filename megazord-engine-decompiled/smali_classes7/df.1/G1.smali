.class public final Ldf/G1;
.super Ldf/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ldf/G1$a;
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
        "TT;TT;>;"
    }
.end annotation


# instance fields
.field public final d:LCi/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LCi/b<",
            "+TU;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(LTe/l;LCi/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LTe/l<",
            "TT;>;",
            "LCi/b<",
            "+TU;>;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Ldf/a;-><init>(LTe/l;)V

    iput-object p2, p0, Ldf/G1;->d:LCi/b;

    return-void
.end method


# virtual methods
.method public m6(LCi/c;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LCi/c<",
            "-TT;>;)V"
        }
    .end annotation

    new-instance v0, Ldf/G1$a;

    invoke-direct {v0, p1}, Ldf/G1$a;-><init>(LCi/c;)V

    invoke-interface {p1, v0}, LCi/c;->h(LCi/d;)V

    iget-object p1, p0, Ldf/G1;->d:LCi/b;

    iget-object v1, v0, Ldf/G1$a;->f:Ldf/G1$a$a;

    invoke-interface {p1, v1}, LCi/b;->l(LCi/c;)V

    iget-object p1, p0, Ldf/a;->c:LTe/l;

    invoke-virtual {p1, v0}, LTe/l;->l6(LTe/q;)V

    return-void
.end method
