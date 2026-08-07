.class public final Lif/N$a;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "SourceFile"

# interfaces
.implements LTe/N;
.implements LVe/c;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lif/N;
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
        "LTe/N<",
        "TT;>;",
        "LVe/c;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# static fields
.field public static final f:J = 0x30f5fcccee5fcf85L


# instance fields
.field public final b:LTe/N;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LTe/N<",
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
.method public constructor <init>(LTe/N;LTe/J;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LTe/N<",
            "-TT;>;",
            "LTe/J;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object p1, p0, Lif/N$a;->b:LTe/N;

    iput-object p2, p0, Lif/N$a;->c:LTe/J;

    return-void
.end method


# virtual methods
.method public b(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iput-object p1, p0, Lif/N$a;->d:Ljava/lang/Object;

    iget-object p1, p0, Lif/N$a;->c:LTe/J;

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

    iget-object p1, p0, Lif/N$a;->b:LTe/N;

    invoke-interface {p1, p0}, LTe/N;->e(LVe/c;)V

    :cond_0
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 0

    iput-object p1, p0, Lif/N$a;->e:Ljava/lang/Throwable;

    iget-object p1, p0, Lif/N$a;->c:LTe/J;

    invoke-virtual {p1, p0}, LTe/J;->f(Ljava/lang/Runnable;)LVe/c;

    move-result-object p1

    invoke-static {p0, p1}, LYe/d;->c(Ljava/util/concurrent/atomic/AtomicReference;LVe/c;)Z

    return-void
.end method

.method public run()V
    .locals 2

    iget-object v0, p0, Lif/N$a;->e:Ljava/lang/Throwable;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lif/N$a;->b:LTe/N;

    invoke-interface {v1, v0}, LTe/N;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lif/N$a;->b:LTe/N;

    iget-object v1, p0, Lif/N$a;->d:Ljava/lang/Object;

    invoke-interface {v0, v1}, LTe/N;->b(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method
