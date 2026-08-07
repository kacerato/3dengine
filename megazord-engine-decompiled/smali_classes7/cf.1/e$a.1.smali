.class public final Lcf/e$a;
.super Ljava/util/concurrent/atomic/AtomicInteger;
.source "SourceFile"

# interfaces
.implements LTe/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcf/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# static fields
.field public static final f:J = -0x6e8ac9652ad7cd50L


# instance fields
.field public final b:LTe/f;

.field public final c:[LTe/i;

.field public d:I

.field public final e:LYe/h;


# direct methods
.method public constructor <init>(LTe/f;[LTe/i;)V
    .locals 0

    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object p1, p0, Lcf/e$a;->b:LTe/f;

    iput-object p2, p0, Lcf/e$a;->c:[LTe/i;

    new-instance p1, LYe/h;

    invoke-direct {p1}, LYe/h;-><init>()V

    iput-object p1, p0, Lcf/e$a;->e:LYe/h;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    invoke-virtual {p0}, Lcf/e$a;->b()V

    return-void
.end method

.method public b()V
    .locals 3

    iget-object v0, p0, Lcf/e$a;->e:LYe/h;

    invoke-virtual {v0}, LYe/h;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcf/e$a;->c:[LTe/i;

    :cond_2
    iget-object v1, p0, Lcf/e$a;->e:LYe/h;

    invoke-virtual {v1}, LYe/h;->d()Z

    move-result v1

    if-eqz v1, :cond_3

    return-void

    :cond_3
    iget v1, p0, Lcf/e$a;->d:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcf/e$a;->d:I

    array-length v2, v0

    if-ne v1, v2, :cond_4

    iget-object v0, p0, Lcf/e$a;->b:LTe/f;

    invoke-interface {v0}, LTe/f;->a()V

    return-void

    :cond_4
    aget-object v1, v0, v1

    invoke-interface {v1, p0}, LTe/i;->b(LTe/f;)V

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v1

    if-nez v1, :cond_2

    return-void
.end method

.method public e(LVe/c;)V
    .locals 1

    iget-object v0, p0, Lcf/e$a;->e:LYe/h;

    invoke-virtual {v0, p1}, LYe/h;->a(LVe/c;)Z

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    iget-object v0, p0, Lcf/e$a;->b:LTe/f;

    invoke-interface {v0, p1}, LTe/f;->onError(Ljava/lang/Throwable;)V

    return-void
.end method
