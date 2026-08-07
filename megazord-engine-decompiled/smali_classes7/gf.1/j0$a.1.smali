.class public final Lgf/j0$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LTe/k;
.implements LVe/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgf/j0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "S:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "LTe/k<",
        "TT;>;",
        "LVe/c;"
    }
.end annotation


# instance fields
.field public final b:LTe/I;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LTe/I<",
            "-TT;>;"
        }
    .end annotation
.end field

.field public final c:LXe/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LXe/c<",
            "TS;-",
            "LTe/k<",
            "TT;>;TS;>;"
        }
    .end annotation
.end field

.field public final d:LXe/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LXe/g<",
            "-TS;>;"
        }
    .end annotation
.end field

.field public e:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TS;"
        }
    .end annotation
.end field

.field public volatile f:Z

.field public g:Z

.field public h:Z


# direct methods
.method public constructor <init>(LTe/I;LXe/c;LXe/g;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LTe/I<",
            "-TT;>;",
            "LXe/c<",
            "TS;-",
            "LTe/k<",
            "TT;>;TS;>;",
            "LXe/g<",
            "-TS;>;TS;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lgf/j0$a;->b:LTe/I;

    iput-object p2, p0, Lgf/j0$a;->c:LXe/c;

    iput-object p3, p0, Lgf/j0$a;->d:LXe/g;

    iput-object p4, p0, Lgf/j0$a;->e:Ljava/lang/Object;

    return-void
.end method

.method private b(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;)V"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lgf/j0$a;->d:LXe/g;

    invoke-interface {v0, p1}, LXe/g;->accept(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-static {p1}, Lio/reactivex/exceptions/a;->b(Ljava/lang/Throwable;)V

    invoke-static {p1}, Lqf/a;->Y(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-boolean v0, p0, Lgf/j0$a;->g:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lgf/j0$a;->g:Z

    iget-object v0, p0, Lgf/j0$a;->b:LTe/I;

    invoke-interface {v0}, LTe/I;->a()V

    :cond_0
    return-void
.end method

.method public d()Z
    .locals 1

    iget-boolean v0, p0, Lgf/j0$a;->f:Z

    return v0
.end method

.method public dispose()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lgf/j0$a;->f:Z

    return-void
.end method

.method public g(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget-boolean v0, p0, Lgf/j0$a;->g:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lgf/j0$a;->h:Z

    if-eqz v0, :cond_0

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "onNext already called in this generate turn"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lgf/j0$a;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "onNext called with null. Null values are generally not allowed in 2.x operators and sources."

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lgf/j0$a;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lgf/j0$a;->h:Z

    iget-object v0, p0, Lgf/j0$a;->b:LTe/I;

    invoke-interface {v0, p1}, LTe/I;->g(Ljava/lang/Object;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public h()V
    .locals 5

    iget-object v0, p0, Lgf/j0$a;->e:Ljava/lang/Object;

    iget-boolean v1, p0, Lgf/j0$a;->f:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iput-object v2, p0, Lgf/j0$a;->e:Ljava/lang/Object;

    invoke-direct {p0, v0}, Lgf/j0$a;->b(Ljava/lang/Object;)V

    return-void

    :cond_0
    iget-object v1, p0, Lgf/j0$a;->c:LXe/c;

    :cond_1
    iget-boolean v3, p0, Lgf/j0$a;->f:Z

    if-eqz v3, :cond_2

    iput-object v2, p0, Lgf/j0$a;->e:Ljava/lang/Object;

    invoke-direct {p0, v0}, Lgf/j0$a;->b(Ljava/lang/Object;)V

    return-void

    :cond_2
    const/4 v3, 0x0

    iput-boolean v3, p0, Lgf/j0$a;->h:Z

    const/4 v3, 0x1

    :try_start_0
    invoke-interface {v1, v0, p0}, LXe/c;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-boolean v4, p0, Lgf/j0$a;->g:Z

    if-eqz v4, :cond_1

    iput-boolean v3, p0, Lgf/j0$a;->f:Z

    iput-object v2, p0, Lgf/j0$a;->e:Ljava/lang/Object;

    invoke-direct {p0, v0}, Lgf/j0$a;->b(Ljava/lang/Object;)V

    return-void

    :catchall_0
    move-exception v1

    invoke-static {v1}, Lio/reactivex/exceptions/a;->b(Ljava/lang/Throwable;)V

    iput-object v2, p0, Lgf/j0$a;->e:Ljava/lang/Object;

    iput-boolean v3, p0, Lgf/j0$a;->f:Z

    invoke-virtual {p0, v1}, Lgf/j0$a;->onError(Ljava/lang/Throwable;)V

    invoke-direct {p0, v0}, Lgf/j0$a;->b(Ljava/lang/Object;)V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    iget-boolean v0, p0, Lgf/j0$a;->g:Z

    if-eqz v0, :cond_0

    invoke-static {p1}, Lqf/a;->Y(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "onError called with null. Null values are generally not allowed in 2.x operators and sources."

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lgf/j0$a;->g:Z

    iget-object v0, p0, Lgf/j0$a;->b:LTe/I;

    invoke-interface {v0, p1}, LTe/I;->onError(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
