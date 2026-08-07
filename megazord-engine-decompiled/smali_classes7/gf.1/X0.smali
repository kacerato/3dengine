.class public final Lgf/X0;
.super Lgf/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgf/X0$a;,
        Lgf/X0$b;,
        Lgf/X0$d;,
        Lgf/X0$c;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lgf/a<",
        "TT;TT;>;"
    }
.end annotation


# instance fields
.field public final c:LTe/G;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LTe/G<",
            "*>;"
        }
    .end annotation
.end field

.field public final d:Z


# direct methods
.method public constructor <init>(LTe/G;LTe/G;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LTe/G<",
            "TT;>;",
            "LTe/G<",
            "*>;Z)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lgf/a;-><init>(LTe/G;)V

    iput-object p2, p0, Lgf/X0;->c:LTe/G;

    iput-boolean p3, p0, Lgf/X0;->d:Z

    return-void
.end method


# virtual methods
.method public J5(LTe/I;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LTe/I<",
            "-TT;>;)V"
        }
    .end annotation

    new-instance v0, Lof/m;

    invoke-direct {v0, p1}, Lof/m;-><init>(LTe/I;)V

    iget-boolean p1, p0, Lgf/X0;->d:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lgf/a;->b:LTe/G;

    new-instance v1, Lgf/X0$a;

    iget-object v2, p0, Lgf/X0;->c:LTe/G;

    invoke-direct {v1, v0, v2}, Lgf/X0$a;-><init>(LTe/I;LTe/G;)V

    invoke-interface {p1, v1}, LTe/G;->b(LTe/I;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lgf/a;->b:LTe/G;

    new-instance v1, Lgf/X0$b;

    iget-object v2, p0, Lgf/X0;->c:LTe/G;

    invoke-direct {v1, v0, v2}, Lgf/X0$b;-><init>(LTe/I;LTe/G;)V

    invoke-interface {p1, v1}, LTe/G;->b(LTe/I;)V

    :goto_0
    return-void
.end method
