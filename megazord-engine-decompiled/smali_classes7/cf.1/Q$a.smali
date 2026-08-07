.class public final Lcf/Q$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LTe/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcf/Q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation


# instance fields
.field public final b:LTe/N;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LTe/N<",
            "-TT;>;"
        }
    .end annotation
.end field

.field public final synthetic c:Lcf/Q;


# direct methods
.method public constructor <init>(Lcf/Q;LTe/N;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LTe/N<",
            "-TT;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcf/Q$a;->c:Lcf/Q;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcf/Q$a;->b:LTe/N;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    iget-object v0, p0, Lcf/Q$a;->c:Lcf/Q;

    iget-object v1, v0, Lcf/Q;->c:Ljava/util/concurrent/Callable;

    if-eqz v1, :cond_0

    :try_start_0
    invoke-interface {v1}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {v0}, Lio/reactivex/exceptions/a;->b(Ljava/lang/Throwable;)V

    iget-object v1, p0, Lcf/Q$a;->b:LTe/N;

    invoke-interface {v1, v0}, LTe/N;->onError(Ljava/lang/Throwable;)V

    return-void

    :cond_0
    iget-object v0, v0, Lcf/Q;->d:Ljava/lang/Object;

    :goto_0
    if-nez v0, :cond_1

    iget-object v0, p0, Lcf/Q$a;->b:LTe/N;

    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "The value supplied is null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, LTe/N;->onError(Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcf/Q$a;->b:LTe/N;

    invoke-interface {v1, v0}, LTe/N;->b(Ljava/lang/Object;)V

    :goto_1
    return-void
.end method

.method public e(LVe/c;)V
    .locals 1

    iget-object v0, p0, Lcf/Q$a;->b:LTe/N;

    invoke-interface {v0, p1}, LTe/N;->e(LVe/c;)V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    iget-object v0, p0, Lcf/Q$a;->b:LTe/N;

    invoke-interface {v0, p1}, LTe/N;->onError(Ljava/lang/Throwable;)V

    return-void
.end method
