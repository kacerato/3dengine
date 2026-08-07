.class public final LQ1/x;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LQ1/K;


# instance fields
.field public final a:Ljava/util/concurrent/Executor;

.field public final b:LQ1/c;

.field public final c:LQ1/Q;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;LQ1/c;LQ1/Q;)V
    .locals 0
    .param p1    # Ljava/util/concurrent/Executor;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # LQ1/c;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # LQ1/Q;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LQ1/x;->a:Ljava/util/concurrent/Executor;

    iput-object p2, p0, LQ1/x;->b:LQ1/c;

    iput-object p3, p0, LQ1/x;->c:LQ1/Q;

    return-void
.end method

.method public static bridge synthetic a(LQ1/x;)LQ1/c;
    .locals 0

    iget-object p0, p0, LQ1/x;->b:LQ1/c;

    return-object p0
.end method

.method public static bridge synthetic b(LQ1/x;)LQ1/Q;
    .locals 0

    iget-object p0, p0, LQ1/x;->c:LQ1/Q;

    return-object p0
.end method


# virtual methods
.method public final O1()V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final c(LQ1/k;)V
    .locals 1
    .param p1    # LQ1/k;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    new-instance v0, LQ1/w;

    invoke-direct {v0, p0, p1}, LQ1/w;-><init>(LQ1/x;LQ1/k;)V

    iget-object p1, p0, LQ1/x;->a:Ljava/util/concurrent/Executor;

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
