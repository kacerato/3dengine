.class public final Lef/a0$a;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "SourceFile"

# interfaces
.implements LTe/v;
.implements LVe/c;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lef/a0;
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
        "Ljava/util/concurrent/atomic/AtomicReference<",
        "LVe/c;",
        ">;",
        "LTe/v<",
        "TT;>;",
        "LVe/c;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# static fields
.field public static final f:J = 0x76f356c87ebda749L


# instance fields
.field public final b:LTe/v;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LTe/v<",
            "-TT;>;"
        }
    .end annotation
.end field

.field public final c:LTe/J;

.field public d:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field public e:Ljava/lang/Throwable;


# direct methods
.method public constructor <init>(LTe/v;LTe/J;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LTe/v<",
            "-TT;>;",
            "LTe/J;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object p1, p0, Lef/a0$a;->b:LTe/v;

    iput-object p2, p0, Lef/a0$a;->c:LTe/J;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Lef/a0$a;->c:LTe/J;

    invoke-virtual {v0, p0}, LTe/J;->f(Ljava/lang/Runnable;)LVe/c;

    move-result-object v0

    invoke-static {p0, v0}, LYe/d;->c(Ljava/util/concurrent/atomic/AtomicReference;LVe/c;)Z

    return-void
.end method

.method public b(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iput-object p1, p0, Lef/a0$a;->d:Ljava/lang/Object;

    iget-object p1, p0, Lef/a0$a;->c:LTe/J;

    invoke-virtual {p1, p0}, LTe/J;->f(Ljava/lang/Runnable;)LVe/c;

    move-result-object p1

    invoke-static {p0, p1}, LYe/d;->c(Ljava/util/concurrent/atomic/AtomicReference;LVe/c;)Z

    return-void
.end method

.method public d()Z
    .locals 1

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LVe/c;

    invoke-static {v0}, LYe/d;->b(LVe/c;)Z

    move-result v0

    return v0
.end method

.method public dispose()V
    .locals 0

    invoke-static {p0}, LYe/d;->a(Ljava/util/concurrent/atomic/AtomicReference;)Z

    return-void
.end method

.method public e(LVe/c;)V
    .locals 0

    invoke-static {p0, p1}, LYe/d;->h(Ljava/util/concurrent/atomic/AtomicReference;LVe/c;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lef/a0$a;->b:LTe/v;

    invoke-interface {p1, p0}, LTe/v;->e(LVe/c;)V

    :cond_0
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 0

    iput-object p1, p0, Lef/a0$a;->e:Ljava/lang/Throwable;

    iget-object p1, p0, Lef/a0$a;->c:LTe/J;

    invoke-virtual {p1, p0}, LTe/J;->f(Ljava/lang/Runnable;)LVe/c;

    move-result-object p1

    invoke-static {p0, p1}, LYe/d;->c(Ljava/util/concurrent/atomic/AtomicReference;LVe/c;)Z

    return-void
.end method

.method public run()V
    .locals 2

    iget-object v0, p0, Lef/a0$a;->e:Ljava/lang/Throwable;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iput-object v1, p0, Lef/a0$a;->e:Ljava/lang/Throwable;

    iget-object v1, p0, Lef/a0$a;->b:LTe/v;

    invoke-interface {v1, v0}, LTe/v;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lef/a0$a;->d:Ljava/lang/Object;

    if-eqz v0, :cond_1

    iput-object v1, p0, Lef/a0$a;->d:Ljava/lang/Object;

    iget-object v1, p0, Lef/a0$a;->b:LTe/v;

    invoke-interface {v1, v0}, LTe/v;->b(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lef/a0$a;->b:LTe/v;

    invoke-interface {v0}, LTe/v;->a()V

    :goto_0
    return-void
.end method
