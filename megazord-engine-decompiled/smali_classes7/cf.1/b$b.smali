.class public final Lcf/b$b;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "SourceFile"

# interfaces
.implements LTe/f;
.implements LVe/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcf/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/concurrent/atomic/AtomicReference<",
        "LVe/c;",
        ">;",
        "LTe/f;",
        "LVe/c;"
    }
.end annotation


# static fields
.field public static final d:J = -0x38ec1727c243e8a6L


# instance fields
.field public final b:LTe/f;

.field public final c:LTe/i;


# direct methods
.method public constructor <init>(LTe/f;LTe/i;)V
    .locals 0

    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object p1, p0, Lcf/b$b;->b:LTe/f;

    iput-object p2, p0, Lcf/b$b;->c:LTe/i;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    iget-object v0, p0, Lcf/b$b;->c:LTe/i;

    new-instance v1, Lcf/b$a;

    iget-object v2, p0, Lcf/b$b;->b:LTe/f;

    invoke-direct {v1, p0, v2}, Lcf/b$a;-><init>(Ljava/util/concurrent/atomic/AtomicReference;LTe/f;)V

    invoke-interface {v0, v1}, LTe/i;->b(LTe/f;)V

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

    iget-object p1, p0, Lcf/b$b;->b:LTe/f;

    invoke-interface {p1, p0}, LTe/f;->e(LVe/c;)V

    :cond_0
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    iget-object v0, p0, Lcf/b$b;->b:LTe/f;

    invoke-interface {v0, p1}, LTe/f;->onError(Ljava/lang/Throwable;)V

    return-void
.end method
