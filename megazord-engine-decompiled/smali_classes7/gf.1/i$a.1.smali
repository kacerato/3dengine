.class public final Lgf/i$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LTe/I;
.implements LVe/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgf/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "LTe/I<",
        "TT;>;",
        "LVe/c;"
    }
.end annotation


# instance fields
.field public final b:LTe/I;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LTe/I<",
            "-",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public final c:LXe/r;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LXe/r<",
            "-TT;>;"
        }
    .end annotation
.end field

.field public d:LVe/c;

.field public e:Z


# direct methods
.method public constructor <init>(LTe/I;LXe/r;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LTe/I<",
            "-",
            "Ljava/lang/Boolean;",
            ">;",
            "LXe/r<",
            "-TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lgf/i$a;->b:LTe/I;

    iput-object p2, p0, Lgf/i$a;->c:LXe/r;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-boolean v0, p0, Lgf/i$a;->e:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lgf/i$a;->e:Z

    iget-object v0, p0, Lgf/i$a;->b:LTe/I;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v0, v1}, LTe/I;->g(Ljava/lang/Object;)V

    iget-object v0, p0, Lgf/i$a;->b:LTe/I;

    invoke-interface {v0}, LTe/I;->a()V

    :cond_0
    return-void
.end method

.method public d()Z
    .locals 1

    iget-object v0, p0, Lgf/i$a;->d:LVe/c;

    invoke-interface {v0}, LVe/c;->d()Z

    move-result v0

    return v0
.end method

.method public dispose()V
    .locals 1

    iget-object v0, p0, Lgf/i$a;->d:LVe/c;

    invoke-interface {v0}, LVe/c;->dispose()V

    return-void
.end method

.method public e(LVe/c;)V
    .locals 1

    iget-object v0, p0, Lgf/i$a;->d:LVe/c;

    invoke-static {v0, p1}, LYe/d;->j(LVe/c;LVe/c;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p1, p0, Lgf/i$a;->d:LVe/c;

    iget-object p1, p0, Lgf/i$a;->b:LTe/I;

    invoke-interface {p1, p0}, LTe/I;->e(LVe/c;)V

    :cond_0
    return-void
.end method

.method public g(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget-boolean v0, p0, Lgf/i$a;->e:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lgf/i$a;->c:LXe/r;

    invoke-interface {v0, p1}, LXe/r;->test(Ljava/lang/Object;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    iput-boolean p1, p0, Lgf/i$a;->e:Z

    iget-object p1, p0, Lgf/i$a;->d:LVe/c;

    invoke-interface {p1}, LVe/c;->dispose()V

    iget-object p1, p0, Lgf/i$a;->b:LTe/I;

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p1, v0}, LTe/I;->g(Ljava/lang/Object;)V

    iget-object p1, p0, Lgf/i$a;->b:LTe/I;

    invoke-interface {p1}, LTe/I;->a()V

    :cond_1
    return-void

    :catchall_0
    move-exception p1

    invoke-static {p1}, Lio/reactivex/exceptions/a;->b(Ljava/lang/Throwable;)V

    iget-object v0, p0, Lgf/i$a;->d:LVe/c;

    invoke-interface {v0}, LVe/c;->dispose()V

    invoke-virtual {p0, p1}, Lgf/i$a;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    iget-boolean v0, p0, Lgf/i$a;->e:Z

    if-eqz v0, :cond_0

    invoke-static {p1}, Lqf/a;->Y(Ljava/lang/Throwable;)V

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lgf/i$a;->e:Z

    iget-object v0, p0, Lgf/i$a;->b:LTe/I;

    invoke-interface {v0, p1}, LTe/I;->onError(Ljava/lang/Throwable;)V

    return-void
.end method
