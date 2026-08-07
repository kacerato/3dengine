.class public final Lgf/s$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LTe/I;
.implements LVe/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgf/s;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "U:",
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
            "-TU;>;"
        }
    .end annotation
.end field

.field public final c:LXe/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LXe/b<",
            "-TU;-TT;>;"
        }
    .end annotation
.end field

.field public final d:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TU;"
        }
    .end annotation
.end field

.field public e:LVe/c;

.field public f:Z


# direct methods
.method public constructor <init>(LTe/I;Ljava/lang/Object;LXe/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LTe/I<",
            "-TU;>;TU;",
            "LXe/b<",
            "-TU;-TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lgf/s$a;->b:LTe/I;

    iput-object p3, p0, Lgf/s$a;->c:LXe/b;

    iput-object p2, p0, Lgf/s$a;->d:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-boolean v0, p0, Lgf/s$a;->f:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lgf/s$a;->f:Z

    iget-object v0, p0, Lgf/s$a;->b:LTe/I;

    iget-object v1, p0, Lgf/s$a;->d:Ljava/lang/Object;

    invoke-interface {v0, v1}, LTe/I;->g(Ljava/lang/Object;)V

    iget-object v0, p0, Lgf/s$a;->b:LTe/I;

    invoke-interface {v0}, LTe/I;->a()V

    return-void
.end method

.method public d()Z
    .locals 1

    iget-object v0, p0, Lgf/s$a;->e:LVe/c;

    invoke-interface {v0}, LVe/c;->d()Z

    move-result v0

    return v0
.end method

.method public dispose()V
    .locals 1

    iget-object v0, p0, Lgf/s$a;->e:LVe/c;

    invoke-interface {v0}, LVe/c;->dispose()V

    return-void
.end method

.method public e(LVe/c;)V
    .locals 1

    iget-object v0, p0, Lgf/s$a;->e:LVe/c;

    invoke-static {v0, p1}, LYe/d;->j(LVe/c;LVe/c;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p1, p0, Lgf/s$a;->e:LVe/c;

    iget-object p1, p0, Lgf/s$a;->b:LTe/I;

    invoke-interface {p1, p0}, LTe/I;->e(LVe/c;)V

    :cond_0
    return-void
.end method

.method public g(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget-boolean v0, p0, Lgf/s$a;->f:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lgf/s$a;->c:LXe/b;

    iget-object v1, p0, Lgf/s$a;->d:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, LXe/b;->accept(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lgf/s$a;->e:LVe/c;

    invoke-interface {v0}, LVe/c;->dispose()V

    invoke-virtual {p0, p1}, Lgf/s$a;->onError(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    iget-boolean v0, p0, Lgf/s$a;->f:Z

    if-eqz v0, :cond_0

    invoke-static {p1}, Lqf/a;->Y(Ljava/lang/Throwable;)V

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lgf/s$a;->f:Z

    iget-object v0, p0, Lgf/s$a;->b:LTe/I;

    invoke-interface {v0, p1}, LTe/I;->onError(Ljava/lang/Throwable;)V

    return-void
.end method
