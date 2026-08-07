.class public final Lef/s0$a;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "SourceFile"

# interfaces
.implements LTe/v;
.implements LVe/c;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lef/s0;
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
.field public static final e:J = 0x2d321dfc37be109aL


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

.field public d:LVe/c;


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

    iput-object p1, p0, Lef/s0$a;->b:LTe/v;

    iput-object p2, p0, Lef/s0$a;->c:LTe/J;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Lef/s0$a;->b:LTe/v;

    invoke-interface {v0}, LTe/v;->a()V

    return-void
.end method

.method public b(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget-object v0, p0, Lef/s0$a;->b:LTe/v;

    invoke-interface {v0, p1}, LTe/v;->b(Ljava/lang/Object;)V

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
    .locals 2

    sget-object v0, LYe/d;->DISPOSED:LYe/d;

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LVe/c;

    if-eq v1, v0, :cond_0

    iput-object v1, p0, Lef/s0$a;->d:LVe/c;

    iget-object v0, p0, Lef/s0$a;->c:LTe/J;

    invoke-virtual {v0, p0}, LTe/J;->f(Ljava/lang/Runnable;)LVe/c;

    :cond_0
    return-void
.end method

.method public e(LVe/c;)V
    .locals 0

    invoke-static {p0, p1}, LYe/d;->h(Ljava/util/concurrent/atomic/AtomicReference;LVe/c;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lef/s0$a;->b:LTe/v;

    invoke-interface {p1, p0}, LTe/v;->e(LVe/c;)V

    :cond_0
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    iget-object v0, p0, Lef/s0$a;->b:LTe/v;

    invoke-interface {v0, p1}, LTe/v;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public run()V
    .locals 1

    iget-object v0, p0, Lef/s0$a;->d:LVe/c;

    invoke-interface {v0}, LVe/c;->dispose()V

    return-void
.end method
