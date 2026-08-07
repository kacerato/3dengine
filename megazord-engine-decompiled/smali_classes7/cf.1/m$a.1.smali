.class public final Lcf/m$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LTe/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcf/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation


# instance fields
.field public final b:LTe/f;

.field public final synthetic c:Lcf/m;


# direct methods
.method public constructor <init>(Lcf/m;LTe/f;)V
    .locals 0

    iput-object p1, p0, Lcf/m$a;->c:Lcf/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcf/m$a;->b:LTe/f;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcf/m$a;->c:Lcf/m;

    iget-object v0, v0, Lcf/m;->c:LXe/g;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, LXe/g;->accept(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcf/m$a;->b:LTe/f;

    invoke-interface {v0}, LTe/f;->a()V

    return-void

    :catchall_0
    move-exception v0

    invoke-static {v0}, Lio/reactivex/exceptions/a;->b(Ljava/lang/Throwable;)V

    iget-object v1, p0, Lcf/m$a;->b:LTe/f;

    invoke-interface {v1, v0}, LTe/f;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public e(LVe/c;)V
    .locals 1

    iget-object v0, p0, Lcf/m$a;->b:LTe/f;

    invoke-interface {v0, p1}, LTe/f;->e(LVe/c;)V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcf/m$a;->c:Lcf/m;

    iget-object v0, v0, Lcf/m;->c:LXe/g;

    invoke-interface {v0, p1}, LXe/g;->accept(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {v0}, Lio/reactivex/exceptions/a;->b(Ljava/lang/Throwable;)V

    new-instance v1, Lio/reactivex/exceptions/CompositeException;

    filled-new-array {p1, v0}, [Ljava/lang/Throwable;

    move-result-object p1

    invoke-direct {v1, p1}, Lio/reactivex/exceptions/CompositeException;-><init>([Ljava/lang/Throwable;)V

    move-object p1, v1

    :goto_0
    iget-object v0, p0, Lcf/m$a;->b:LTe/f;

    invoke-interface {v0, p1}, LTe/f;->onError(Ljava/lang/Throwable;)V

    return-void
.end method
