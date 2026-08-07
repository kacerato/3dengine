.class public final Lef/f0;
.super Lef/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lef/f0$a;,
        Lef/f0$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lef/a<",
        "TT;TT;>;"
    }
.end annotation


# instance fields
.field public final c:LTe/J;


# direct methods
.method public constructor <init>(LTe/y;LTe/J;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LTe/y<",
            "TT;>;",
            "LTe/J;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lef/a;-><init>(LTe/y;)V

    iput-object p2, p0, Lef/f0;->c:LTe/J;

    return-void
.end method


# virtual methods
.method public t1(LTe/v;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LTe/v<",
            "-TT;>;)V"
        }
    .end annotation

    new-instance v0, Lef/f0$a;

    invoke-direct {v0, p1}, Lef/f0$a;-><init>(LTe/v;)V

    invoke-interface {p1, v0}, LTe/v;->e(LVe/c;)V

    iget-object p1, v0, Lef/f0$a;->b:LYe/h;

    iget-object v1, p0, Lef/f0;->c:LTe/J;

    new-instance v2, Lef/f0$b;

    iget-object v3, p0, Lef/a;->b:LTe/y;

    invoke-direct {v2, v0, v3}, Lef/f0$b;-><init>(LTe/v;LTe/y;)V

    invoke-virtual {v1, v2}, LTe/J;->f(Ljava/lang/Runnable;)LVe/c;

    move-result-object v0

    invoke-virtual {p1, v0}, LYe/h;->a(LVe/c;)Z

    return-void
.end method
