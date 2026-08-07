.class public LKd/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LKd/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "LKd/a;"
    }
.end annotation


# instance fields
.field public final a:LId/j;

.field public final b:LId/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LId/i<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final c:LId/A;

.field public d:Z


# direct methods
.method public constructor <init>(LId/j;LId/i;LId/A;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LId/j;",
            "LId/i<",
            "TT;>;",
            "LId/A;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, LKd/e;->d:Z

    iput-object p1, p0, LKd/e;->a:LId/j;

    iput-object p2, p0, LKd/e;->b:LId/i;

    iput-object p3, p0, LKd/e;->c:LId/A;

    return-void
.end method


# virtual methods
.method public a()[LId/z;
    .locals 1

    iget-object v0, p0, LKd/e;->a:LId/j;

    invoke-interface {v0}, LId/j;->t()LId/z;

    move-result-object v0

    filled-new-array {v0}, [LId/z;

    move-result-object v0

    return-object v0
.end method

.method public b()Z
    .locals 1

    iget-boolean v0, p0, LKd/e;->d:Z

    return v0
.end method

.method public c()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, LKd/e;->d:Z

    return-void
.end method

.method public d(Ljava/util/concurrent/Executor;)V
    .locals 1

    iget-object v0, p0, LKd/e;->a:LId/j;

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public e()LId/A;
    .locals 1

    iget-object v0, p0, LKd/e;->c:LId/A;

    return-object v0
.end method

.method public f()LId/j;
    .locals 1

    iget-object v0, p0, LKd/e;->a:LId/j;

    return-object v0
.end method

.method public g()LId/i;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LId/i<",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p0, LKd/e;->b:LId/i;

    return-object v0
.end method

.method public j()V
    .locals 1

    iget-object v0, p0, LKd/e;->a:LId/j;

    invoke-interface {v0}, LId/j;->j()V

    return-void
.end method
