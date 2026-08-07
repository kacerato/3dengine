.class public final Lcf/G$a;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "SourceFile"

# interfaces
.implements LTe/f;
.implements LVe/c;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcf/G;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/concurrent/atomic/AtomicReference<",
        "LVe/c;",
        ">;",
        "LTe/f;",
        "LVe/c;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# static fields
.field public static final e:J = 0x76f356c87ebda749L


# instance fields
.field public final b:LTe/f;

.field public final c:LTe/J;

.field public d:Ljava/lang/Throwable;


# direct methods
.method public constructor <init>(LTe/f;LTe/J;)V
    .locals 0

    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object p1, p0, Lcf/G$a;->b:LTe/f;

    iput-object p2, p0, Lcf/G$a;->c:LTe/J;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Lcf/G$a;->c:LTe/J;

    invoke-virtual {v0, p0}, LTe/J;->f(Ljava/lang/Runnable;)LVe/c;

    move-result-object v0

    invoke-static {p0, v0}, LYe/d;->c(Ljava/util/concurrent/atomic/AtomicReference;LVe/c;)Z

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

    iget-object p1, p0, Lcf/G$a;->b:LTe/f;

    invoke-interface {p1, p0}, LTe/f;->e(LVe/c;)V

    :cond_0
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 0

    iput-object p1, p0, Lcf/G$a;->d:Ljava/lang/Throwable;

    iget-object p1, p0, Lcf/G$a;->c:LTe/J;

    invoke-virtual {p1, p0}, LTe/J;->f(Ljava/lang/Runnable;)LVe/c;

    move-result-object p1

    invoke-static {p0, p1}, LYe/d;->c(Ljava/util/concurrent/atomic/AtomicReference;LVe/c;)Z

    return-void
.end method

.method public run()V
    .locals 2

    iget-object v0, p0, Lcf/G$a;->d:Ljava/lang/Throwable;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    iput-object v1, p0, Lcf/G$a;->d:Ljava/lang/Throwable;

    iget-object v1, p0, Lcf/G$a;->b:LTe/f;

    invoke-interface {v1, v0}, LTe/f;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcf/G$a;->b:LTe/f;

    invoke-interface {v0}, LTe/f;->a()V

    :goto_0
    return-void
.end method
