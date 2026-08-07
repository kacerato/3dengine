.class public final Ldf/G0;
.super Ldf/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ldf/G0$a;
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
.field public final d:LTe/i;


# direct methods
.method public constructor <init>(LTe/l;LTe/i;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LTe/l<",
            "TT;>;",
            "LTe/i;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1}, Ldf/a;-><init>(LTe/l;)V

    iput-object p2, p0, Ldf/G0;->d:LTe/i;

    return-void
.end method


# virtual methods
.method public m6(LCi/c;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LCi/c<",
            "-TT;>;)V"
        }
    .end annotation

    new-instance v0, Ldf/G0$a;

    invoke-direct {v0, p1}, Ldf/G0$a;-><init>(LCi/c;)V

    invoke-interface {p1, v0}, LCi/c;->h(LCi/d;)V

    iget-object p1, p0, Ldf/a;->c:LTe/l;

    invoke-virtual {p1, v0}, LTe/l;->l6(LTe/q;)V

    iget-object p1, p0, Ldf/G0;->d:LTe/i;

    iget-object v0, v0, Ldf/G0$a;->d:Ldf/G0$a$a;

    invoke-interface {p1, v0}, LTe/i;->b(LTe/f;)V

    return-void
.end method
