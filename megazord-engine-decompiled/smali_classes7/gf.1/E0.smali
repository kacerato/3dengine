.class public final Lgf/E0;
.super Lgf/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgf/E0$a;
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
.field public final c:LTe/J;

.field public final d:Z

.field public final e:I


# direct methods
.method public constructor <init>(LTe/G;LTe/J;ZI)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LTe/G<",
            "TT;>;",
            "LTe/J;",
            "ZI)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lgf/a;-><init>(LTe/G;)V

    iput-object p2, p0, Lgf/E0;->c:LTe/J;

    iput-boolean p3, p0, Lgf/E0;->d:Z

    iput p4, p0, Lgf/E0;->e:I

    return-void
.end method


# virtual methods
.method public J5(LTe/I;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LTe/I<",
            "-TT;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lgf/E0;->c:LTe/J;

    instance-of v1, v0, Lkf/s;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lgf/a;->b:LTe/G;

    invoke-interface {v0, p1}, LTe/G;->b(LTe/I;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, LTe/J;->c()LTe/J$c;

    move-result-object v0

    iget-object v1, p0, Lgf/a;->b:LTe/G;

    new-instance v2, Lgf/E0$a;

    iget-boolean v3, p0, Lgf/E0;->d:Z

    iget v4, p0, Lgf/E0;->e:I

    invoke-direct {v2, p1, v0, v3, v4}, Lgf/E0$a;-><init>(LTe/I;LTe/J$c;ZI)V

    invoke-interface {v1, v2}, LTe/G;->b(LTe/I;)V

    :goto_0
    return-void
.end method
