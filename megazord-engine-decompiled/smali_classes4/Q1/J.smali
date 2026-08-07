.class public final LQ1/J;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LQ1/g;
.implements LQ1/f;
.implements LQ1/d;
.implements LQ1/K;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TResult:",
        "Ljava/lang/Object;",
        "TContinuationResult:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "LQ1/g<",
        "TTContinuationResult;>;",
        "LQ1/f;",
        "LQ1/d;",
        "LQ1/K;"
    }
.end annotation


# instance fields
.field public final a:Ljava/util/concurrent/Executor;

.field public final b:LQ1/j;

.field public final c:LQ1/Q;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;LQ1/j;LQ1/Q;)V
    .locals 0
    .param p1    # Ljava/util/concurrent/Executor;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # LQ1/j;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # LQ1/Q;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LQ1/J;->a:Ljava/util/concurrent/Executor;

    iput-object p2, p0, LQ1/J;->b:LQ1/j;

    iput-object p3, p0, LQ1/J;->c:LQ1/Q;

    return-void
.end method

.method public static bridge synthetic e(LQ1/J;)LQ1/j;
    .locals 0

    iget-object p0, p0, LQ1/J;->b:LQ1/j;

    return-object p0
.end method


# virtual methods
.method public final O1()V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final a()V
    .locals 1

    iget-object v0, p0, LQ1/J;->c:LQ1/Q;

    invoke-virtual {v0}, LQ1/Q;->A()Z

    return-void
.end method

.method public final b(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTContinuationResult;)V"
        }
    .end annotation

    iget-object v0, p0, LQ1/J;->c:LQ1/Q;

    invoke-virtual {v0, p1}, LQ1/Q;->z(Ljava/lang/Object;)V

    return-void
.end method

.method public final c(LQ1/k;)V
    .locals 1
    .param p1    # LQ1/k;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    new-instance v0, LQ1/I;

    invoke-direct {v0, p0, p1}, LQ1/I;-><init>(LQ1/J;LQ1/k;)V

    iget-object p1, p0, LQ1/J;->a:Ljava/util/concurrent/Executor;

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final d(Ljava/lang/Exception;)V
    .locals 1
    .param p1    # Ljava/lang/Exception;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, LQ1/J;->c:LQ1/Q;

    invoke-virtual {v0, p1}, LQ1/Q;->y(Ljava/lang/Exception;)V

    return-void
.end method
