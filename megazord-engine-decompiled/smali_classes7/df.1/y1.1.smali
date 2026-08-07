.class public final Ldf/y1;
.super Ldf/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ldf/y1$a;
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
.field public final d:LTe/J;

.field public final e:Z


# direct methods
.method public constructor <init>(LTe/l;LTe/J;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LTe/l<",
            "TT;>;",
            "LTe/J;",
            "Z)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Ldf/a;-><init>(LTe/l;)V

    iput-object p2, p0, Ldf/y1;->d:LTe/J;

    iput-boolean p3, p0, Ldf/y1;->e:Z

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

    iget-object v0, p0, Ldf/y1;->d:LTe/J;

    invoke-virtual {v0}, LTe/J;->c()LTe/J$c;

    move-result-object v0

    new-instance v1, Ldf/y1$a;

    iget-object v2, p0, Ldf/a;->c:LTe/l;

    iget-boolean v3, p0, Ldf/y1;->e:Z

    invoke-direct {v1, p1, v0, v2, v3}, Ldf/y1$a;-><init>(LCi/c;LTe/J$c;LCi/b;Z)V

    invoke-interface {p1, v1}, LCi/c;->h(LCi/d;)V

    invoke-virtual {v0, v1}, LTe/J$c;->b(Ljava/lang/Runnable;)LVe/c;

    return-void
.end method
