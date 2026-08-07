.class public final Lgf/x1;
.super Lgf/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgf/x1$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lgf/a<",
        "TT;",
        "Lsf/d<",
        "TT;>;>;"
    }
.end annotation


# instance fields
.field public final c:LTe/J;

.field public final d:Ljava/util/concurrent/TimeUnit;


# direct methods
.method public constructor <init>(LTe/G;Ljava/util/concurrent/TimeUnit;LTe/J;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LTe/G<",
            "TT;>;",
            "Ljava/util/concurrent/TimeUnit;",
            "LTe/J;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lgf/a;-><init>(LTe/G;)V

    iput-object p3, p0, Lgf/x1;->c:LTe/J;

    iput-object p2, p0, Lgf/x1;->d:Ljava/util/concurrent/TimeUnit;

    return-void
.end method


# virtual methods
.method public J5(LTe/I;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LTe/I<",
            "-",
            "Lsf/d<",
            "TT;>;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lgf/a;->b:LTe/G;

    new-instance v1, Lgf/x1$a;

    iget-object v2, p0, Lgf/x1;->d:Ljava/util/concurrent/TimeUnit;

    iget-object v3, p0, Lgf/x1;->c:LTe/J;

    invoke-direct {v1, p1, v2, v3}, Lgf/x1$a;-><init>(LTe/I;Ljava/util/concurrent/TimeUnit;LTe/J;)V

    invoke-interface {v0, v1}, LTe/G;->b(LTe/I;)V

    return-void
.end method
