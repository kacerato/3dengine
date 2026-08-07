.class public final Lcf/B$a;
.super Ljava/util/concurrent/atomic/AtomicInteger;
.source "SourceFile"

# interfaces
.implements LTe/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcf/B;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# static fields
.field public static final e:J = -0x7406a1ef165c572aL


# instance fields
.field public final b:LTe/f;

.field public final c:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final d:LVe/b;


# direct methods
.method public constructor <init>(LTe/f;Ljava/util/concurrent/atomic/AtomicBoolean;LVe/b;I)V
    .locals 0

    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object p1, p0, Lcf/B$a;->b:LTe/f;

    iput-object p2, p0, Lcf/B$a;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p3, p0, Lcf/B$a;->d:LVe/b;

    invoke-virtual {p0, p4}, Ljava/util/concurrent/atomic/AtomicInteger;->lazySet(I)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcf/B$a;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcf/B$a;->b:LTe/f;

    invoke-interface {v0}, LTe/f;->a()V

    :cond_0
    return-void
.end method

.method public e(LVe/c;)V
    .locals 1

    iget-object v0, p0, Lcf/B$a;->d:LVe/b;

    invoke-virtual {v0, p1}, LVe/b;->b(LVe/c;)Z

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 3

    iget-object v0, p0, Lcf/B$a;->d:LVe/b;

    invoke-virtual {v0}, LVe/b;->dispose()V

    iget-object v0, p0, Lcf/B$a;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcf/B$a;->b:LTe/f;

    invoke-interface {v0, p1}, LTe/f;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lqf/a;->Y(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
