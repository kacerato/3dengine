.class public abstract Lkf/q$f;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "SourceFile"

# interfaces
.implements LVe/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkf/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "f"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/concurrent/atomic/AtomicReference<",
        "LVe/c;",
        ">;",
        "LVe/c;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    sget-object v0, Lkf/q;->f:LVe/c;

    invoke-direct {p0, v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public a(LTe/J$c;LTe/f;)V
    .locals 2

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LVe/c;

    sget-object v1, Lkf/q;->g:LVe/c;

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    sget-object v1, Lkf/q;->f:LVe/c;

    if-eq v0, v1, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0, p1, p2}, Lkf/q$f;->b(LTe/J$c;LTe/f;)LVe/c;

    move-result-object p1

    invoke-virtual {p0, v1, p1}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2

    invoke-interface {p1}, LVe/c;->dispose()V

    :cond_2
    return-void
.end method

.method public abstract b(LTe/J$c;LTe/f;)LVe/c;
.end method

.method public d()Z
    .locals 1

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LVe/c;

    invoke-interface {v0}, LVe/c;->d()Z

    move-result v0

    return v0
.end method

.method public dispose()V
    .locals 3

    sget-object v0, Lkf/q;->g:LVe/c;

    :cond_0
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LVe/c;

    sget-object v2, Lkf/q;->g:LVe/c;

    if-ne v1, v2, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0, v1, v0}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v0, Lkf/q;->f:LVe/c;

    if-eq v1, v0, :cond_2

    invoke-interface {v1}, LVe/c;->dispose()V

    :cond_2
    return-void
.end method
