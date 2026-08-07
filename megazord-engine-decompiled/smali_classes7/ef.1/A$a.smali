.class public final Lef/A$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LTe/v;
.implements LVe/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lef/A;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lef/A$a$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "U:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "LTe/v<",
        "TT;>;",
        "LVe/c;"
    }
.end annotation


# instance fields
.field public final b:LXe/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LXe/o<",
            "-TT;+",
            "LTe/y<",
            "+TU;>;>;"
        }
    .end annotation
.end field

.field public final c:Lef/A$a$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lef/A$a$a<",
            "TT;TU;TR;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(LTe/v;LXe/o;LXe/c;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LTe/v<",
            "-TR;>;",
            "LXe/o<",
            "-TT;+",
            "LTe/y<",
            "+TU;>;>;",
            "LXe/c<",
            "-TT;-TU;+TR;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lef/A$a$a;

    invoke-direct {v0, p1, p3}, Lef/A$a$a;-><init>(LTe/v;LXe/c;)V

    iput-object v0, p0, Lef/A$a;->c:Lef/A$a$a;

    iput-object p2, p0, Lef/A$a;->b:LXe/o;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Lef/A$a;->c:Lef/A$a$a;

    iget-object v0, v0, Lef/A$a$a;->b:LTe/v;

    invoke-interface {v0}, LTe/v;->a()V

    return-void
.end method

.method public b(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lef/A$a;->b:LXe/o;

    invoke-interface {v0, p1}, LXe/o;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "The mapper returned a null MaybeSource"

    invoke-static {v0, v1}, LZe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LTe/y;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Lef/A$a;->c:Lef/A$a$a;

    const/4 v2, 0x0

    invoke-static {v1, v2}, LYe/d;->c(Ljava/util/concurrent/atomic/AtomicReference;LVe/c;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lef/A$a;->c:Lef/A$a$a;

    iput-object p1, v1, Lef/A$a$a;->d:Ljava/lang/Object;

    invoke-interface {v0, v1}, LTe/y;->d(LTe/v;)V

    :cond_0
    return-void

    :catchall_0
    move-exception p1

    invoke-static {p1}, Lio/reactivex/exceptions/a;->b(Ljava/lang/Throwable;)V

    iget-object v0, p0, Lef/A$a;->c:Lef/A$a$a;

    iget-object v0, v0, Lef/A$a$a;->b:LTe/v;

    invoke-interface {v0, p1}, LTe/v;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public d()Z
    .locals 1

    iget-object v0, p0, Lef/A$a;->c:Lef/A$a$a;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LVe/c;

    invoke-static {v0}, LYe/d;->b(LVe/c;)Z

    move-result v0

    return v0
.end method

.method public dispose()V
    .locals 1

    iget-object v0, p0, Lef/A$a;->c:Lef/A$a$a;

    invoke-static {v0}, LYe/d;->a(Ljava/util/concurrent/atomic/AtomicReference;)Z

    return-void
.end method

.method public e(LVe/c;)V
    .locals 1

    iget-object v0, p0, Lef/A$a;->c:Lef/A$a$a;

    invoke-static {v0, p1}, LYe/d;->h(Ljava/util/concurrent/atomic/AtomicReference;LVe/c;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lef/A$a;->c:Lef/A$a$a;

    iget-object p1, p1, Lef/A$a$a;->b:LTe/v;

    invoke-interface {p1, p0}, LTe/v;->e(LVe/c;)V

    :cond_0
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    iget-object v0, p0, Lef/A$a;->c:Lef/A$a$a;

    iget-object v0, v0, Lef/A$a$a;->b:LTe/v;

    invoke-interface {v0, p1}, LTe/v;->onError(Ljava/lang/Throwable;)V

    return-void
.end method
