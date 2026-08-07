.class public final Ldf/c1;
.super Ldf/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ldf/c1$a;
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
.field public final d:LXe/e;


# direct methods
.method public constructor <init>(LTe/l;LXe/e;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LTe/l<",
            "TT;>;",
            "LXe/e;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1}, Ldf/a;-><init>(LTe/l;)V

    iput-object p2, p0, Ldf/c1;->d:LXe/e;

    return-void
.end method


# virtual methods
.method public m6(LCi/c;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LCi/c<",
            "-TT;>;)V"
        }
    .end annotation

    new-instance v0, Lmf/i;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lmf/i;-><init>(Z)V

    invoke-interface {p1, v0}, LCi/c;->h(LCi/d;)V

    new-instance v1, Ldf/c1$a;

    iget-object v2, p0, Ldf/c1;->d:LXe/e;

    iget-object v3, p0, Ldf/a;->c:LTe/l;

    invoke-direct {v1, p1, v2, v0, v3}, Ldf/c1$a;-><init>(LCi/c;LXe/e;Lmf/i;LCi/b;)V

    invoke-virtual {v1}, Ldf/c1$a;->b()V

    return-void
.end method
