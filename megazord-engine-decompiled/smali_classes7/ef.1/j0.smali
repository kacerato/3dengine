.class public final Lef/j0;
.super Lef/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lef/j0$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "U:",
        "Ljava/lang/Object;",
        ">",
        "Lef/a<",
        "TT;TT;>;"
    }
.end annotation


# instance fields
.field public final c:LCi/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LCi/b<",
            "TU;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(LTe/y;LCi/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LTe/y<",
            "TT;>;",
            "LCi/b<",
            "TU;>;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lef/a;-><init>(LTe/y;)V

    iput-object p2, p0, Lef/j0;->c:LCi/b;

    return-void
.end method


# virtual methods
.method public t1(LTe/v;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LTe/v<",
            "-TT;>;)V"
        }
    .end annotation

    new-instance v0, Lef/j0$a;

    invoke-direct {v0, p1}, Lef/j0$a;-><init>(LTe/v;)V

    invoke-interface {p1, v0}, LTe/v;->e(LVe/c;)V

    iget-object p1, p0, Lef/j0;->c:LCi/b;

    iget-object v1, v0, Lef/j0$a;->c:Lef/j0$a$a;

    invoke-interface {p1, v1}, LCi/b;->l(LCi/c;)V

    iget-object p1, p0, Lef/a;->b:LTe/y;

    invoke-interface {p1, v0}, LTe/y;->d(LTe/v;)V

    return-void
.end method
