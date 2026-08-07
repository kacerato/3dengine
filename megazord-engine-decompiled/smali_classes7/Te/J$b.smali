.class public final LTe/J$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LVe/c;
.implements Ljava/lang/Runnable;
.implements Lsf/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LTe/J;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public final b:Ljava/lang/Runnable;
    .annotation build LUe/f;
    .end annotation
.end field

.field public final c:LTe/J$c;
    .annotation build LUe/f;
    .end annotation
.end field

.field public volatile d:Z


# direct methods
.method public constructor <init>(Ljava/lang/Runnable;LTe/J$c;)V
    .locals 0
    .param p1    # Ljava/lang/Runnable;
        .annotation build LUe/f;
        .end annotation
    .end param
    .param p2    # LTe/J$c;
        .annotation build LUe/f;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LTe/J$b;->b:Ljava/lang/Runnable;

    iput-object p2, p0, LTe/J$b;->c:LTe/J$c;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, LTe/J$b;->b:Ljava/lang/Runnable;

    return-object v0
.end method

.method public d()Z
    .locals 1

    iget-boolean v0, p0, LTe/J$b;->d:Z

    return v0
.end method

.method public dispose()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, LTe/J$b;->d:Z

    iget-object v0, p0, LTe/J$b;->c:LTe/J$c;

    invoke-interface {v0}, LVe/c;->dispose()V

    return-void
.end method

.method public run()V
    .locals 2

    iget-boolean v0, p0, LTe/J$b;->d:Z

    if-nez v0, :cond_0

    :try_start_0
    iget-object v0, p0, LTe/J$b;->b:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {v0}, Lio/reactivex/exceptions/a;->b(Ljava/lang/Throwable;)V

    iget-object v1, p0, LTe/J$b;->c:LTe/J$c;

    invoke-interface {v1}, LVe/c;->dispose()V

    invoke-static {v0}, Lio/reactivex/internal/util/ExceptionHelper;->f(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    :cond_0
    :goto_0
    return-void
.end method
